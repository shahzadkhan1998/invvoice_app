import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/invoice.dart';
import '../models/client.dart';

/// Handles cloud sync of invoice & client JSON data to Firestore.
///
/// Cost model (Firebase Spark / free tier):
/// - Only small JSON documents are written to Firestore. PDFs are NEVER uploaded;
///   they are regenerated on-device from the invoice JSON via [PdfService].
/// - Free tier allows 20k writes + 50k reads + 1 GB stored per day, which is
///   far more than enough for a freelancer's invoice volume.
class SyncService {
  static final SyncService _instance = SyncService._internal();
  factory SyncService() => _instance;
  SyncService._internal();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  String? get _uid => FirebaseAuth.instance.currentUser?.uid;

  CollectionReference<Map<String, dynamic>>? get _invoiceCol {
    final uid = _uid;
    if (uid == null) return null;
    return _firestore
        .collection('users')
        .doc(uid)
        .collection('invoices');
  }

  CollectionReference<Map<String, dynamic>>? get _clientCol {
    final uid = _uid;
    if (uid == null) return null;
    return _firestore
        .collection('users')
        .doc(uid)
        .collection('clients');
  }

  bool get isSignedIn => _uid != null;

  /// Push a single invoice to Firestore (upsert by id).
  Future<void> uploadInvoice(Invoice invoice) async {
    final col = _invoiceCol;
    if (col == null) return;
    final data = invoice.toJson();
    data['isSynced'] = true;
    data['updatedAt'] = FieldValue.serverTimestamp();
    await col.doc(invoice.id).set(data);
  }

  /// Push a single client to Firestore (upsert by id).
  Future<void> uploadClient(Client client) async {
    final col = _clientCol;
    if (col == null) return;
    final data = client.toJson();
    data['isSynced'] = true;
    data['updatedAt'] = FieldValue.serverTimestamp();
    await col.doc(client.id).set(data);
  }

  /// Delete a document remotely (e.g. when user deletes locally).
  Future<void> deleteInvoice(String id) async {
    final col = _invoiceCol;
    if (col == null) return;
    await col.doc(id).delete();
  }

  Future<void> deleteClient(String id) async {
    final col = _clientCol;
    if (col == null) return;
    await col.doc(id).delete();
  }

  /// Full two-way sync.
  ///
  /// 1. Pushes all locally-changed (unsynced) records to Firestore.
  /// 2. Pulls remote records and merges by `updatedAt`, keeping the newest.
  ///
  /// Returns a summary of what changed so the UI can react.
  Future<SyncResult> syncAll({
    required List<Invoice> localInvoices,
    required List<Client> localClients,
    required Future<void> Function(Invoice) onUpdateLocalInvoice,
    required Future<void> Function(Client) onUpdateLocalClient,
  }) async {
    int uploaded = 0;
    int downloaded = 0;

    if (!isSignedIn) {
      return SyncResult(uploaded: 0, downloaded: 0, success: false);
    }

    // --- Push unsynced local invoices ---
    for (final inv in localInvoices) {
      if (!inv.isSynced) {
        await uploadInvoice(inv);
        uploaded++;
      }
    }

    // --- Pull remote invoices, merge by updatedAt ---
    final invSnap = await _invoiceCol!.get();
    for (final doc in invSnap.docs) {
      final remote = Invoice.fromJson(doc.data());
      final local = localInvoices.cast<Invoice?>().firstWhere(
            (i) => i?.id == remote.id,
            orElse: () => null,
          );
      if (local == null) {
        // New remote record -> store locally as synced.
        await onUpdateLocalInvoice(remote.copyWith(isSynced: true));
        downloaded++;
      } else if (!local.isSynced) {
        // Conflict: local has unsynced changes. Keep local (last writer wins
        // for the user's own device); re-push happened above.
        // No-op: local wins.
      } else {
        // Both synced: keep whichever was updated more recently.
        final remoteTs = _timestamp(doc.data()['updatedAt']);
        if (remoteTs != null && remoteTs.isAfter(local.invoiceDate)) {
          await onUpdateLocalInvoice(remote.copyWith(isSynced: true));
          downloaded++;
        }
      }
    }

    // --- Push unsynced local clients ---
    for (final c in localClients) {
      if (!c.isSynced) {
        await uploadClient(c);
        uploaded++;
      }
    }

    // --- Pull remote clients ---
    final clientSnap = await _clientCol!.get();
    for (final doc in clientSnap.docs) {
      final remote = Client.fromJson(doc.data());
      final local = localClients.cast<Client?>().firstWhere(
            (c) => c?.id == remote.id,
            orElse: () => null,
          );
      if (local == null) {
        await onUpdateLocalClient(remote.copyWith(isSynced: true));
        downloaded++;
      } else if (!local.isSynced) {
        // Local wins on conflict.
      } else {
        final remoteTs = _timestamp(doc.data()['updatedAt']);
        if (remoteTs != null && remoteTs.isAfter(local.createdAt)) {
          await onUpdateLocalClient(remote.copyWith(isSynced: true));
          downloaded++;
        }
      }
    }

    return SyncResult(uploaded: uploaded, downloaded: downloaded, success: true);
  }

  DateTime? _timestamp(dynamic value) {
    if (value is Timestamp) return value.toDate();
    return null;
  }
}

class SyncResult {
  final int uploaded;
  final int downloaded;
  final bool success;
  SyncResult({
    required this.uploaded,
    required this.downloaded,
    required this.success,
  });
}
