import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:invoice_app/l10n/app_localizations.dart';

class AuthProvider with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  User? _user;
  bool _isLoading = true;
  String? _error;

  User? get currentUser => _user;
  bool get isLoading => _isLoading;
  String? get error => _error;
  bool get isAuthenticated => _user != null;

  AuthProvider() {
    _auth.authStateChanges().listen((user) {
      _user = user; _isLoading = false; notifyListeners();
    });
  }

  Future<bool> signUp({required String email, required String password, required String name, required BuildContext context}) async {
    try {
      _isLoading = true; _error = null; notifyListeners();
      final cred = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      await cred.user?.updateDisplayName(name);
      _user = cred.user; _isLoading = false; notifyListeners();
      return true;
    } on FirebaseAuthException catch (e) {
      _error = _msg(e, context); _isLoading = false; notifyListeners(); return false;
    }
  }

  Future<bool> signIn({required String email, required String password, required BuildContext context}) async {
    try {
      _isLoading = true; _error = null; notifyListeners();
      final cred = await _auth.signInWithEmailAndPassword(email: email, password: password);
      _user = cred.user; _isLoading = false; notifyListeners(); return true;
    } on FirebaseAuthException catch (e) {
      _error = _msg(e, context); _isLoading = false; notifyListeners(); return false;
    }
  }

  Future<bool> signInWithGoogle({required BuildContext context}) async {
    try {
      _isLoading = true; _error = null; notifyListeners();
      final gUser = await _googleSignIn.signIn();
      if (gUser == null) { _isLoading = false; notifyListeners(); return false; }
      final gAuth = await gUser.authentication;
      final cred = GoogleAuthProvider.credential(accessToken: gAuth.accessToken, idToken: gAuth.idToken);
      final userCred = await _auth.signInWithCredential(cred);
      _user = userCred.user; _isLoading = false; notifyListeners(); return true;
    } catch (e) {
      _error = AppLocalizations.of(context)!.authErrorGoogleSignInFailed; _isLoading = false; notifyListeners(); return false;
    }
  }

  Future<bool> resetPassword(String email, BuildContext context) async {
    try {
      _error = null;
      await _auth.sendPasswordResetEmail(email: email);
      return true;
    } on FirebaseAuthException catch (e) {
      _error = _msg(e, context); notifyListeners(); return false;
    }
  }

  Future<void> signOut() async {
    await Future.wait([_auth.signOut(), _googleSignIn.signOut()]);
    _user = null; notifyListeners();
  }

  String _msg(FirebaseAuthException e, BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    switch (e.code) {
      case 'weak-password': return l10n.authErrorWeakPassword;
      case 'email-already-in-use': return l10n.authErrorEmailAlreadyInUse;
      case 'user-not-found': return l10n.authErrorUserNotFound;
      case 'wrong-password': return l10n.authErrorWrongPassword;
      case 'invalid-email': return l10n.authErrorInvalidEmail;
      case 'too-many-requests': return l10n.authErrorTooManyRequests;
      default: return l10n.authErrorDefault;
    }
  }

  void clearError() { _error = null; notifyListeners(); }
}
