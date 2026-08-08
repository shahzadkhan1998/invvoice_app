// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Επαγγελματικά τιμολόγια σε 2 λεπτά';

  @override
  String get bottomNavDashboard => 'Πίνακας ελέγχου';

  @override
  String get bottomNavInvoices => 'Τιμολόγια';

  @override
  String get bottomNavClients => 'Πελάτες';

  @override
  String get bottomNavSettings => 'Ρυθμίσεις';

  @override
  String get commonCancel => 'Άκυρο';

  @override
  String get commonDelete => 'Διαγραφή';

  @override
  String get commonSave => 'Αποθήκευση';

  @override
  String get commonSearch => 'Αναζήτηση';

  @override
  String get commonBack => 'Πίσω';

  @override
  String get commonContinue => 'Συνέχεια';

  @override
  String get commonAdd => 'Προσθήκη';

  @override
  String get commonEdit => 'Επεξεργασία';

  @override
  String get commonCreate => 'Δημιουργία';

  @override
  String get commonClear => 'Καθαρισμός';

  @override
  String get commonView => 'Προβολή';

  @override
  String get commonShare => 'Κοινή χρήση';

  @override
  String get commonExportPdf => 'Εξαγωγή PDF';

  @override
  String get commonSharePdf => 'Κοινή χρήση PDF';

  @override
  String get commonSaveChanges => 'Αποθήκευση αλλαγών';

  @override
  String get commonRequired => 'Απαιτείται';

  @override
  String get commonInvalid => 'Μη έγκυρο';

  @override
  String get commonSendLink => 'Αποστολή συνδέσμου';

  @override
  String get commonGeneratingPdf => 'Δημιουργία PDF...';

  @override
  String get dashboardGreetingMorning => 'Καλημέρα';

  @override
  String get dashboardGreetingAfternoon => 'Καλό απόγευμα';

  @override
  String get dashboardGreetingEvening => 'Καλησπέρα';

  @override
  String get dashboardSubtitle => 'Εδώ είναι η επισκόπηση της επιχείρησής σας';

  @override
  String get dashboardOutstanding => 'Εκκρεμές';

  @override
  String get dashboardOverdue => 'Καθυστερημένο';

  @override
  String get dashboardThisMonth => 'Αυτόν τον μήνα';

  @override
  String get dashboardInvoices => 'τιμολόγια';

  @override
  String dashboardPaidCount(Object count) {
    return '$count πληρωμένα';
  }

  @override
  String get dashboardRecentInvoices => 'Πρόσφατα Τιμολόγια';

  @override
  String get dashboardSeeAll => 'Προβολή όλων';

  @override
  String get dashboardNotifications => 'Ειδοποιήσεις';

  @override
  String get dashboardNotificationsHint =>
      'Μείνετε στην κορυφή των ταμειακών ροών εξετάζοντας τακτικά τα καθυστερημένα και τα εκκρεμή τιμολόγια.';

  @override
  String get dashboardNewInvoice => 'Νέο Τιμολόγιο';

  @override
  String get dashboardNoInvoicesYet => 'Δεν υπάρχουν ακόμη τιμολόγια';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Δημιουργήστε το πρώτο επαγγελματικό τιμολόγιό σας σε λιγότερο από 2 λεπτά';

  @override
  String get dashboardCreateInvoice => 'Δημιουργία Τιμολογίου';

  @override
  String get dashboardMarkPaid => 'Σημείωση ως πληρωμένο';

  @override
  String get dashboardDuePrefix => 'Λήγει ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days ημέρες καθυστέρησης';
  }

  @override
  String get deleteInvoiceTitle => 'Διαγραφή τιμολογίου;';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'Διαγραφή $invoiceNumber; Αυτή η ενέργεια δεν μπορεί να αναιρεθεί.';
  }

  @override
  String get loginHeading => 'Καλώς ήρθατε πίσω';

  @override
  String get loginSubtitle => 'Συνδεθείτε στον λογαριασμό σας στο InvoiceFlow';

  @override
  String get loginEmailLabel => 'Διεύθυνση email';

  @override
  String get loginEmailHint => 'you@example.com';

  @override
  String get loginEmailRequired => 'Το email είναι υποχρεωτικό';

  @override
  String get loginEmailInvalid => 'Εισάγετε ένα έγκυρο email';

  @override
  String get loginPasswordLabel => 'Κωδικός πρόσβασης';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'Ο κωδικός πρόσβασης είναι υποχρεωτικός';

  @override
  String get loginPasswordMinLength =>
      'Ο κωδικός πρόσβασης πρέπει να έχει τουλάχιστον 6 χαρακτήρες';

  @override
  String get loginForgotPassword => 'Ξεχάσατε τον κωδικό;';

  @override
  String get loginSignIn => 'Σύνδεση';

  @override
  String get loginOrContinueWith => 'ή συνεχίστε με';

  @override
  String get loginContinueWithGoogle => 'Συνέχεια με Google';

  @override
  String get loginNoAccount => 'Δεν έχετε λογαριασμό; ';

  @override
  String get loginSignUp => 'Εγγραφή';

  @override
  String get loginResetPasswordTitle => 'Επαναφορά Κωδικού';

  @override
  String get loginResetPasswordMessage =>
      'Εισάγετε το email σας και θα στείλουμε έναν σύνδεσμο επαναφοράς.';

  @override
  String get loginResetPasswordHint => 'you@example.com';

  @override
  String get loginResetLinkSent =>
      'Ο σύνδεσμος επαναφοράς στάλθηκε! Ελέγξτε το email σας.';

  @override
  String get loginResetLinkFailed =>
      'Απέτυχε η αποστολή του συνδέσμου επαναφοράς.';

  @override
  String get registerHeading => 'Δημιουργία λογαριασμού';

  @override
  String get registerSubtitle =>
      'Ξεκινήστε να στέλνετε επαγγελματικά τιμολόγια σήμερα';

  @override
  String get registerNameLabel => 'Ονοματεπώνυμο';

  @override
  String get registerNameHint => 'Νίκος Παπαδόπουλος';

  @override
  String get registerNameRequired => 'Το όνομα είναι υποχρεωτικό';

  @override
  String get registerNameMinLength =>
      'Το όνομα πρέπει να έχει τουλάχιστον 2 χαρακτήρες';

  @override
  String get registerEmailLabel => 'Διεύθυνση email';

  @override
  String get registerEmailHint => 'you@example.com';

  @override
  String get registerEmailRequired => 'Το email είναι υποχρεωτικό';

  @override
  String get registerEmailInvalid => 'Εισάγετε ένα έγκυρο email';

  @override
  String get registerPasswordLabel => 'Κωδικός πρόσβασης';

  @override
  String get registerPasswordHint => 'Τουλάχιστον 6 χαρακτήρες';

  @override
  String get registerPasswordRequired =>
      'Ο κωδικός πρόσβασης είναι υποχρεωτικός';

  @override
  String get registerPasswordMinLength =>
      'Ο κωδικός πρόσβασης πρέπει να έχει τουλάχιστον 6 χαρακτήρες';

  @override
  String get registerConfirmPasswordLabel => 'Επιβεβαίωση Κωδικού';

  @override
  String get registerConfirmPasswordHint =>
      'Επαναλάβετε τον κωδικό πρόσβασής σας';

  @override
  String get registerConfirmPasswordRequired =>
      'Παρακαλώ επιβεβαιώστε τον κωδικό πρόσβασής σας';

  @override
  String get registerPasswordsDoNotMatch => 'Οι κωδικοί δεν ταιριάζουν';

  @override
  String get registerCreateAccount => 'Δημιουργία Λογαριασμού';

  @override
  String get registerHaveAccount => 'Έχετε ήδη λογαριασμό; ';

  @override
  String get registerSignIn => 'Σύνδεση';

  @override
  String get authTermsOfService => 'Όροι Παροχής Υπηρεσιών';

  @override
  String get authPrivacyPolicy => 'Πολιτική Απορρήτου';

  @override
  String get authAgreeRequired =>
      'Για να συνεχίσετε, αποδεχθείτε τους Όρους Παροχής Υπηρεσιών και την Πολιτική Απορρήτου';

  @override
  String get loginAgreePrefix => 'Συνεχίζοντας, αποδέχεστε τους ';

  @override
  String get registerAgreePrefix => 'Αποδέχομαι τους ';

  @override
  String get authAgreeAnd => ' και την ';

  @override
  String get authTermsSheet =>
      'Οι παρόντες Όροι Παροχής Υπηρεσιών διέπουν τη χρήση του InvoiceFlow. Με την πρόσβαση ή τη χρήση της εφαρμογής συμφωνείτε να δεσμεύεστε από τους όρους αυτούς.\n\n1. Είστε υπεύθυνοι για την ακρίβεια των τιμολογίων, των προσφορών και άλλων δεδομένων που δημιουργείτε.\n2. Η εφαρμογή παρέχεται \"ως έχει\" χωρίς εγγυήσεις οποιουδήποτε είδους, ρητές ή σιωπηρές.\n3. Δεν φέρουμε ευθύνη για ζημίες που προκύπτουν από τη χρήση της υπηρεσίας.\n4. Δεν πρέπει να χρησιμοποιείτε την εφαρμογή για παράνομους ή απαγορευμένους σκοπούς.\n5. Ενδέχεται να ενημερώνουμε τους όρους αυτούς κατά καιρούς· η συνεχής χρήση της εφαρμογής συνιστά αποδοχή των ενημερωμένων όρων.';

  @override
  String get authPrivacySheet =>
      'Το απόρρητό σας είναι σημαντικό για εμάς.\n\n1. Αποθήκευση δεδομένων: Τα τιμολόγια, οι πελάτες και οι ρυθμίσεις σας αποθηκεύονται τοπικά στη συσκευή σας.\n2. Συγχρονισμός στο cloud: Αν συνδεθείτε, τα δεδομένα σας συγχρονίζονται στον λογαριασμό σας, ώστε να είναι διαθέσιμα σε όλες τις συσκευές σας.\n3. Δεν πωλούμε ούτε μοιραζόμαστε ποτέ τις προσωπικές σας πληροφορίες.\n4. Αναλυτικά στοιχεία: Ενδέχεται να συλλέγουμε ανωνυμοποιημένα δεδομένα χρήσης για τη βελτίωση της εφαρμογής.\n5. Επικοινωνία: Για οποιαδήποτε ερώτηση σχετικά με το απόρρητο, επικοινωνήστε στο support@invoiceflow.app.';

  @override
  String get authErrorWeakPassword => 'Ο κωδικός πρόσβασης είναι πολύ αδύναμος';

  @override
  String get authErrorEmailAlreadyInUse => 'Ο λογαριασμός υπάρχει ήδη';

  @override
  String get authErrorUserNotFound => 'Δεν βρέθηκε χρήστης με αυτό το email';

  @override
  String get authErrorWrongPassword => 'Λάθος κωδικός πρόσβασης';

  @override
  String get authErrorInvalidEmail => 'Μη έγκυρη διεύθυνση email';

  @override
  String get authErrorTooManyRequests =>
      'Πάρα πολλές προσπάθειες. Δοκιμάστε ξανά αργότερα';

  @override
  String get authErrorDefault => 'Η ταυτοποίηση απέτυχε. Δοκιμάστε ξανά.';

  @override
  String get authErrorGoogleSignInFailed => 'Η σύνδεση με Google απέτυχε.';

  @override
  String get invoiceListTitle => 'Τιμολόγια';

  @override
  String get invoiceListSearchHint => 'Αναζήτηση τιμολογίων...';

  @override
  String get invoiceListSortDate => 'Ταξινόμηση κατά Ημερομηνία';

  @override
  String get invoiceListSortAmount => 'Ταξινόμηση κατά Ποσό';

  @override
  String get invoiceListSortClient => 'Ταξινόμηση κατά Πελάτη';

  @override
  String get invoiceListTabAll => 'Όλα';

  @override
  String get invoiceListTabPaid => 'Πληρωμένα';

  @override
  String get invoiceListTabPending => 'Εκκρεμή';

  @override
  String get invoiceListTabOverdue => 'Καθυστερημένα';

  @override
  String get invoiceListTabDraft => 'Πρόχειρα';

  @override
  String get invoiceListEmpty => 'Δεν βρέθηκαν τιμολόγια';

  @override
  String get invoiceCreateTitle => 'Νέο Τιμολόγιο';

  @override
  String get invoiceEditTitle => 'Επεξεργασία Τιμολογίου';

  @override
  String get invoiceSaveDraft => 'Αποθήκευση Προχείρου';

  @override
  String get invoiceStepClient => 'Πελάτης';

  @override
  String get invoiceStepItems => 'Αντικείμενα';

  @override
  String get invoiceStepReview => 'Έλεγχος';

  @override
  String get invoiceSelectClient => 'Επιλέξτε πελάτη';

  @override
  String get invoiceSelectClientSubtitle =>
      'Επιλέξτε σε ποιον προορίζεται αυτό το τιμολόγιο';

  @override
  String get invoiceSearchClients => 'Αναζήτηση πελατών...';

  @override
  String get invoiceAddNewClient => 'Προσθήκη Νέου Πελάτη';

  @override
  String get invoiceNoClientsFound => 'Δεν βρέθηκαν πελάτες';

  @override
  String get invoiceSelectClientEmptyHint =>
      'Δημιουργήστε τον πρώτο σας πελάτη για να ξεκινήσετε να δημιουργείτε τιμολόγια';

  @override
  String get invoiceAddLineItem => 'Προσθήκη Γραμμής';

  @override
  String get invoiceItemDescription => 'Περιγραφή';

  @override
  String get invoiceItemDescriptionHint => 'π.χ. Ανάπτυξη Ιστοσελίδων';

  @override
  String get invoiceItemQuickAdd => 'Γρήγορη Προσθήκη:';

  @override
  String get invoiceItemQty => 'Ποσότητα';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Τιμή';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Προσθήκη Αντικειμένου';

  @override
  String get invoiceLineItems => 'Γραμμές Τιμολογίου';

  @override
  String get invoiceLineItemsSubtitle => 'Προσθέστε υπηρεσίες ή προϊόντα';

  @override
  String get invoiceNoItems =>
      'Δεν υπάρχουν ακόμη αντικείμενα. Προσθέστε το πρώτο σας αντικείμενο.';

  @override
  String get invoiceTaxRate => 'Φορολογικός Συντελεστής (%)';

  @override
  String get invoiceSubtotal => 'Υποσύνολο';

  @override
  String invoiceTax(Object taxRate) {
    return 'Φόρος ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'ΣΥΝΟΛΟ';

  @override
  String get invoiceReviewHeading => 'Έλεγχος & Ολοκλήρωση';

  @override
  String get invoiceReviewSubtitle =>
      'Ορίστε ημερομηνίες, προσθέστε σημειώσεις, λογότυπο και υπογραφή';

  @override
  String get invoiceCompanyLogo => 'Λογότυπο Εταιρείας';

  @override
  String get invoiceAddLogo => 'Προσθήκη Λογότυπου';

  @override
  String get invoiceInvoiceDate => 'Ημερομηνία Τιμολογίου';

  @override
  String get invoiceDueDate => 'Ημερομηνία Λήξης';

  @override
  String get invoiceNotesLabel => 'Σημειώσεις (Προαιρετικό)';

  @override
  String get invoiceNotesHint => 'Σας ευχαριστούμε για την προτίμησή σας!';

  @override
  String get invoicePaymentTermsLabel => 'Όροι Πληρωμής (Προαιρετικό)';

  @override
  String get invoicePaymentTermsHint => 'Πληρωμή εντός 30 ημερών';

  @override
  String get invoiceSignatureLabel => 'Υπογραφή';

  @override
  String get invoiceSignatureOverwrite =>
      'Η υπάρχουσα υπογραφή αποθηκεύτηκε. Σχεδιάστε από πάνω για να την αντικαταστήσετε.';

  @override
  String get invoiceCreatedSnackbar => 'Το τιμολόγιο δημιουργήθηκε!';

  @override
  String get invoiceUpdatedSnackbar => 'Το τιμολόγιο ενημερώθηκε!';

  @override
  String get invoiceDetailTitle => 'ΤΙΜΟΛΟΓΙΟ';

  @override
  String get invoiceDetailMarkAsPaid => 'Σημείωση ως πληρωμένο';

  @override
  String get invoiceDetailTotalAmount => 'Συνολικό Ποσό';

  @override
  String get invoiceDetailIssued => 'Εκδόθηκε';

  @override
  String get invoiceDetailDue => 'Λήγει';

  @override
  String get invoiceDetailPaid => 'Πληρωμένο';

  @override
  String get invoiceDetailBillTo => 'Προς Χρέωση';

  @override
  String get invoiceDetailItems => 'Αντικείμενα';

  @override
  String get invoiceDetailNotes => 'Σημειώσεις';

  @override
  String get invoiceDetailSignature => 'Υπογραφή';

  @override
  String get invoiceDetailMarkedPaidSnackbar =>
      'Το τιμολόγιο σημειώθηκε ως πληρωμένο!';

  @override
  String get invoiceDetailPdfFailed => 'Απέτυχε η δημιουργία PDF';

  @override
  String get clientListTitle => 'Πελάτες';

  @override
  String get clientListSearchHint => 'Αναζήτηση πελατών...';

  @override
  String get clientListTotalClients => 'Σύνολο Πελατών';

  @override
  String get clientListTotalBilled => 'Σύνολο Χρεώσεων';

  @override
  String get clientListEmptySearch => 'Δεν βρέθηκαν πελάτες';

  @override
  String get clientListEmpty => 'Δεν υπάρχουν ακόμη πελάτες';

  @override
  String get clientListEmptySubtitle =>
      'Προσθέστε τον πρώτο σας πελάτη για να ξεκινήσετε να δημιουργείτε τιμολόγια';

  @override
  String get clientListAddClient => 'Προσθήκη Πελάτη';

  @override
  String get clientListTotalBilledLabel => 'σύνολο χρεώσεων';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count τιμολόγιο';
  }

  @override
  String get clientCreateTitle => 'Νέος Πελάτης';

  @override
  String get clientEditTitle => 'Επεξεργασία Πελάτη';

  @override
  String get clientBasicInfo => 'Βασικές Πληροφορίες';

  @override
  String get clientNameLabel => 'Ονοματεπώνυμο *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'Το όνομα είναι υποχρεωτικό';

  @override
  String get clientNameTooShort => 'Το όνομα είναι πολύ σύντομο';

  @override
  String get clientEmailLabel => 'Διεύθυνση Email *';

  @override
  String get clientEmailHint => 'billing@company.com';

  @override
  String get clientEmailRequired => 'Το email είναι υποχρεωτικό';

  @override
  String get clientEmailInvalid => 'Εισάγετε ένα έγκυρο email';

  @override
  String get clientPhoneLabel => 'Αριθμός Τηλεφώνου';

  @override
  String get clientPhoneHint => '+30 210 123 4567';

  @override
  String get clientAddressSection => 'Διεύθυνση';

  @override
  String get clientAddressLabel => 'Οδός και Αριθμός';

  @override
  String get clientAddressHint => 'Λεωφ. Αμαλίας 123, Γραφείο 45';

  @override
  String get clientCityLabel => 'Πόλη / Χώρα';

  @override
  String get clientCityHint => 'Αθήνα, Ελλάδα';

  @override
  String get clientBillingDefaults => 'Προεπιλογές Χρέωσης';

  @override
  String get clientDefaultCurrency => 'Προεπιλεγμένο Νόμισμα';

  @override
  String get clientDefaultTaxRate =>
      'Προεπιλεγμένος Φορολογικός Συντελεστής (VAT/GST)';

  @override
  String get clientVatLabel => 'Αριθμός Μητρώου ΦΠΑ / Φόρου';

  @override
  String get clientVatHint => '123456789012345 (Προαιρετικό)';

  @override
  String get clientUpdateButton => 'Ενημέρωση Πελάτη';

  @override
  String get clientAddButton => 'Προσθήκη Πελάτη';

  @override
  String get clientUpdatedSnackbar => 'Ο πελάτης ενημερώθηκε!';

  @override
  String get clientAddedSnackbar => 'Ο πελάτης προστέθηκε!';

  @override
  String get clientDetailInvoices => 'Τιμολόγια';

  @override
  String get clientDetailTotalBilled => 'Σύνολο Χρεώσεων';

  @override
  String get clientDetailOutstanding => 'Εκκρεμές';

  @override
  String get clientDetailEdit => 'Επεξεργασία';

  @override
  String get clientDetailNewInvoice => 'Νέο Τιμολόγιο';

  @override
  String get clientDetailEmailClient => 'Email Πελάτη';

  @override
  String get clientDetailClientDetails => 'Στοιχεία Πελάτη';

  @override
  String get clientDetailEmail => 'Email';

  @override
  String get clientDetailPhone => 'Τηλέφωνο';

  @override
  String get clientDetailAddress => 'Διεύθυνση';

  @override
  String get clientDetailCity => 'Πόλη';

  @override
  String get clientDetailCurrency => 'Νόμισμα';

  @override
  String get clientDetailTaxRate => 'Φορολογικός Συντελεστής';

  @override
  String get clientDetailVatNumber => 'Αριθμός ΦΠΑ';

  @override
  String get clientDetailInvoiceHistory => 'Ιστορικό Τιμολογίων';

  @override
  String get clientDetailNoInvoices =>
      'Δεν υπάρχουν ακόμη τιμολόγια για αυτόν τον πελάτη';

  @override
  String get deleteClientTitle => 'Διαγραφή Πελάτη;';

  @override
  String deleteClientMessage(Object clientName) {
    return 'Διαγραφή $clientName; Αυτή η ενέργεια δεν μπορεί να αναιρεθεί.';
  }

  @override
  String get settingsTitle => 'Ρυθμίσεις';

  @override
  String get settingsYourName => 'Το Όνομά σας';

  @override
  String get settingsBackupTitle =>
      'Δημιουργία αντιγράφων ασφαλείας των τιμολογίων σας';

  @override
  String get settingsBackupDescription =>
      'Συνδεθείτε για να συγχρονίσετε τα δεδομένα σας με ασφάλεια και να έχετε πρόσβαση σε αυτά από οπουδήποτε.';

  @override
  String get settingsSignInRegister => 'Σύνδεση ή Εγγραφή';

  @override
  String get settingsProUpsell =>
      'Αναβαθμίστε σε Pro για απεριόριστα τιμολόγια, συγχρονισμό cloud και χωρίς υδατογραφήματα.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'Έχετε φτάσει το όριο της δωρεάν έκδοσης των $limit τιμολογίων. Αναβαθμίστε σε Pro για απεριόριστα τιμολόγια και συγχρονισμό cloud.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'Έχετε φτάσει το όριο της δωρεάν έκδοσης των $limit πελατών. Αναβαθμίστε σε Pro για απεριόριστους πελάτες και συγχρονισμό cloud.';
  }

  @override
  String get settingsUpgradePro => 'Αναβάθμιση';

  @override
  String get settingsBusinessSection => 'ΡΥΘΜΙΣΕΙΣ ΕΠΙΧΕΙΡΗΣΗΣ';

  @override
  String get settingsBusinessDetails => 'Στοιχεία Επιχείρησης';

  @override
  String get settingsBusinessDetailsSubtitle =>
      'Ορίστε το όνομα της επιχείρησής σας';

  @override
  String get settingsInvoicePrefix => 'Πρόθεμα Τιμολογίου';

  @override
  String get settingsDefaultCurrency => 'Προεπιλεγμένο Νόμισμα';

  @override
  String get settingsAppSection => 'ΡΥΘΜΙΣΕΙΣ ΕΦΑΡΜΟΓΗΣ';

  @override
  String get settingsDarkMode => 'Σκοτεινή Λειτουργία';

  @override
  String get settingsDailyNotification => 'Ημερήσια Ειδοποίηση';

  @override
  String get settingsDailyNotificationNotSet => 'Δεν έχει οριστεί';

  @override
  String get settingsLanguage => 'Γλώσσα';

  @override
  String get settingsLanguageLabel => 'Ελληνικά';

  @override
  String get languageEnglish => 'Αγγλικά';

  @override
  String get languageArabic => 'العربية';

  @override
  String get languageFrench => 'Γαλλικά';

  @override
  String get languageSpanish => 'Ισπανικά';

  @override
  String get languageUrdu => 'اردو';

  @override
  String get languageChinese => 'Κινεζικά';

  @override
  String get settingsAboutSection => 'ΣΧΕΤΙΚΑ';

  @override
  String get settingsRateApp => 'Αξιολογήστε την Εφαρμογή';

  @override
  String get settingsHelpSupport => 'Βοήθεια & Υποστήριξη';

  @override
  String get settingsPrivacyPolicy => 'Πολιτική Απορρήτου';

  @override
  String get settingsHelpSupportSheet =>
      'Χρειάζεστε βοήθεια; Επικοινωνήστε με το support@invoiceflow.app και θα σας απαντήσουμε εντός 24 ωρών.';

  @override
  String get settingsPrivacySheet =>
      'Τα δεδομένα σας αποθηκεύονται τοπικά στη συσκευή σας. Δεν πουλάμε ούτε μοιραζόμαστε ποτέ τα προσωπικά σας στοιχεία.';

  @override
  String get settingsVersion => 'Έκδοση';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Αποσύνδεση';

  @override
  String get settingsEditProfile => 'Επεξεργασία Προφίλ';

  @override
  String get settingsProfileNameLabel => 'Ονοματεπώνυμο';

  @override
  String get settingsProfileNameHint => 'Το όνομά σας';

  @override
  String get settingsBusinessNameLabel => 'Επωνυμία Επιχείρησης';

  @override
  String get settingsBusinessNameHint => 'Η Εταιρεία σας Α.Ε.';

  @override
  String get settingsBusinessEmailLabel => 'Επαγγελματικό Email';

  @override
  String get settingsBusinessEmailHint => 'billing@company.com';

  @override
  String get settingsPhoneLabel => 'Τηλέφωνο';

  @override
  String get settingsPhoneHint => '+30 210 123 4567';

  @override
  String get settingsAddressLabel => 'Διεύθυνση';

  @override
  String get settingsAddressHint => 'Αθήνα, Ελλάδα';

  @override
  String get settingsBusinessDetailsSaved =>
      'Τα στοιχεία της επιχείρησης αποθηκεύτηκαν!';

  @override
  String get settingsInvoicePrefixTitle => 'Πρόθεμα Αριθμού Τιμολογίου';

  @override
  String get settingsInvoicePrefixHint => 'π.χ. INV-, #, ΤΙΜ-';

  @override
  String get settingsPrefixSaved => 'Το πρόθεμα του τιμολογίου αποθηκεύτηκε';

  @override
  String get settingsNotificationScheduled =>
      'Η ημερήσια ειδοποίηση προγραμματίστηκε επιτυχώς!';

  @override
  String get settingsSignOutTitle => 'Αποσύνδεση;';

  @override
  String get settingsSignOutMessage =>
      'Είστε βέβαιοι ότι θέλετε να αποσυνδεθείτε από το InvoiceFlow;';

  @override
  String get settingsSignedOut => 'Η αποσύνδεση ολοκληρώθηκε.';

  @override
  String get statusPaid => 'Πληρωμένο';

  @override
  String get statusOverdue => 'Καθυστερημένο';

  @override
  String get statusPending => 'Εκκρεμές';

  @override
  String get statusDraft => 'Πρόχειρο';

  @override
  String get statusCancelled => 'Ακυρωμένο';

  @override
  String get notificationChannelName => 'Ημερήσιες Υπενθυμίσεις';

  @override
  String get notificationChannelDescription =>
      'Σας υπενθυμίζει να ελέγχετε τα τιμολόγιά σας καθημερινά';

  @override
  String get notificationTitle => 'Υπενθύμιση Τιμολογίου';

  @override
  String get notificationBody =>
      'Ώρα να ελέγξετε τα πρόσφατα τιμολόγιά σας και να παρακολουθήσετε τις εκκρεμείς πληρωμές.';

  @override
  String get pdfInvoice => 'ΤΙΜΟΛΟΓΙΟ';

  @override
  String get pdfInvoiceNumber => 'Τιμολόγιο #:';

  @override
  String get pdfDate => 'Ημερομηνία:';

  @override
  String get pdfDueDate => 'Ημερομηνία Λήξης:';

  @override
  String get pdfBillTo => 'ΠΡΟΣ ΧΡΕΩΣΗ:';

  @override
  String get pdfDescription => 'Περιγραφή';

  @override
  String get pdfQty => 'Ποσ.';

  @override
  String get pdfRate => 'Τιμή';

  @override
  String get pdfAmount => 'Ποσό';

  @override
  String get pdfSubtotal => 'Υποσύνολο:';

  @override
  String pdfTax(Object taxRate) {
    return 'Φόρος ($taxRate%):';
  }

  @override
  String get pdfTotal => 'ΣΥΝΟΛΟ:';

  @override
  String get pdfSignature => 'Υπογραφή:';

  @override
  String get pdfNotes => 'Σημειώσεις:';

  @override
  String get pdfPaymentTerms => 'Όροι Πληρωμής:';

  @override
  String get pdfThankYou => 'Σας ευχαριστούμε για την προτίμησή σας!';

  @override
  String get quickAddWebDesign => 'Σχεδιασμός Ιστοσελίδων';

  @override
  String get quickAddDevelopment => 'Ανάπτυξη';

  @override
  String get quickAddConsulting => 'Συμβουλευτική';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Συγγραφή Περιεχομένου';

  @override
  String get paywallTitle => 'Ξεκλειδώστε το InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'Απεριόριστα και συγχρονισμός παντού. Ακύρωση όποτε θέλετε.';

  @override
  String get paywallFeatureUnlimited => 'Απεριόριστα τιμολόγια & πελάτες';

  @override
  String get paywallFeatureSync => 'Συγχρονισμός cloud σε όλες τις συσκευές';

  @override
  String get paywallFeatureNoWatermark => 'Χωρίς υδατογραφήματα, ποτέ';

  @override
  String get paywallMonthly => 'Μηνιαία';

  @override
  String get paywallMonthlySub => 'Χρέωση μηνιαία';

  @override
  String get paywallYearly => 'Ετήσια';

  @override
  String get paywallYearlySub => 'Καλύτερη αξία — 2 μήνες δωρεάν';

  @override
  String get paywallRestore => 'Επαναφορά Αγορών';

  @override
  String get paywallTerms =>
      'Οι συνδρομές ανανεώνονται αυτόματα. Διαχειριστείτε από τις ρυθμίσεις του καταστήματος εφαρμογών.';

  @override
  String get purchaseSuccessTitle => 'Είστε Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'Απεριόριστα τιμολόγια, συγχρονισμός cloud και χωρίς υδατογραφήματα ξεκλειδώθηκαν. Ευχαριστούμε!';

  @override
  String get purchaseSuccessContinue => 'Συνέχεια';

  @override
  String get paywallLoading => 'Φόρτωση προγραμμάτων…';

  @override
  String get paywallLoadError =>
      'Δεν ήταν δυνατή η φόρτωση των προγραμμάτων. Ελέγξτε τη σύνδεσή σας και δοκιμάστε ξανά.';

  @override
  String get paywallNoOffering =>
      'Δεν υπάρχουν διαθέσιμα προγράμματα αυτή τη στιγμή.';

  @override
  String get purchaseRestored => 'Οι αγορές επαναφέρθηκαν με επιτυχία';

  @override
  String get purchaseErrorGeneric => 'Η αγορά απέτυχε. Δοκιμάστε ξανά.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Το Pro είναι ενεργό — απεριόριστα τιμολόγια και πελάτες χωρίς υδατογραφήματα';

  @override
  String get settingsFreePlan => 'Δωρεάν πρόγραμμα';

  @override
  String get settingsFreeHint =>
      'Αναβαθμίστε για απεριόριστα τιμολόγια, συγχρονισμό στο cloud και άλλα';

  @override
  String get settingsUpgradeToPro => 'Αναβάθμιση σε Pro';

  @override
  String get settingsManageSubscription => 'Διαχείριση συνδρομής';

  @override
  String get customerCenterFailed =>
      'Δεν ήταν δυνατό το άνοιγμα της διαχείρισης συνδρομής.';

  @override
  String get onboardingSkip => 'Παράβλεψη';

  @override
  String get onboardingNext => 'Επόμενο';

  @override
  String get onboardingGetStarted => 'Ξεκινήστε';

  @override
  String get onboardingWelcomeTitle => 'Τιμολόγια σε 2 λεπτά';

  @override
  String get onboardingWelcomeBody =>
      'Δημιουργήστε επαγγελματικά τιμολόγια PDF για τους πελάτες σας — γρήγορα και όμορφα.';

  @override
  String get onboardingSyncTitle => 'Συγχρονισμός παντού';

  @override
  String get onboardingSyncBody =>
      'Συνδεθείτε για να δημιουργήσετε αντίγραφα ασφαλείας των δεδομένων σας στο cloud και να έχετε πρόσβαση από οποιαδήποτε συσκευή.';

  @override
  String get onboardingProTitle => 'Απεριόριστα με το Pro';

  @override
  String get onboardingProBody =>
      'Ξεκλειδώστε απεριόριστα τιμολόγια, συγχρονισμό cloud και αφαιρέστε τα υδατογραφήματα με το InvoiceFlow Pro.';

  @override
  String get settingsAccentColor => 'Χρώμα Έμφασης';

  @override
  String get settingsAccentColorHint =>
      'Προσαρμόστε την εφαρμογή με ένα χρώμα της επιλογής σας.';

  @override
  String get settingsCountry => 'Χώρα';

  @override
  String get settingsTaxId => 'Αριθμός Μητρώου Φόρου';

  @override
  String get settingsTaxIdNotSet => 'Δεν έχει οριστεί';

  @override
  String get settingsTaxIdHint => 'π.χ. 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Ο ΑΦΜ αποθηκεύτηκε';

  @override
  String get catalogTitle => 'Προϊόντα & Υπηρεσίες';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count προϊόντα',
      one: '$count προϊόν',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'Δεν υπάρχουν ακόμη προϊόντα';

  @override
  String get catalogEmptySubtitle =>
      'Αποθηκεύστε επαναχρησιμοποιήσιμα προϊόντα και υπηρεσίες για να τα προσθέτετε στα τιμολόγιά σας πιο γρήγορα.';

  @override
  String get catalogFromSaved => 'Από τον κατάλογό σας';

  @override
  String get catalogSaveToCatalog =>
      'Αποθήκευση στον κατάλογο για επαναχρησιμοποίηση';

  @override
  String get catalogAddSnackbar => 'Προστέθηκε στον κατάλογο';

  @override
  String get catalogDeleteTitle => 'Διαγραφή αντικειμένου;';

  @override
  String catalogDeleteMessage(String description) {
    return 'Διαγραφή \"$description\"; Αυτή η ενέργεια δεν μπορεί να αναιρεθεί.';
  }

  @override
  String get commonDone => 'Ολοκληρώθηκε';

  @override
  String get estimateListTitle => 'Εκτιμήσεις';

  @override
  String get estimateListSearchHint => 'Αναζήτηση εκτιμήσεων…';

  @override
  String get estimateListEmpty => 'Δεν υπάρχουν ακόμη εκτιμήσεις';

  @override
  String get estimateListTabAll => 'Όλα';

  @override
  String get estimateListTabDraft => 'Πρόχειρα';

  @override
  String get estimateListTabSent => 'Στάλθηκαν';

  @override
  String get estimateListTabAccepted => 'Αποδεκτές';

  @override
  String get estimateListTabExpired => 'Έληξαν';

  @override
  String get estimateCreateTitle => 'Νέα Εκτίμηση';

  @override
  String get estimateEditTitle => 'Επεξεργασία Εκτίμησης';

  @override
  String get estimateCreatedSnackbar => 'Η εκτίμηση αποθηκεύτηκε';

  @override
  String get estimateUpdatedSnackbar => 'Η εκτίμηση ενημερώθηκε';

  @override
  String get estimateIssueDate => 'Ημερομηνία έκδοσης';

  @override
  String get estimateExpiryDate => 'Ημερομηνία λήξης';

  @override
  String get estimateExpiresPrefix => 'Λήγει ';

  @override
  String get estimateConvertToInvoice => 'Μετατροπή σε Τιμολόγιο';

  @override
  String get estimateConvertedSnackbar => 'Η εκτίμηση μετατράπηκε σε τιμολόγιο';

  @override
  String get estimateConvertFailed =>
      'Δεν ήταν δυνατή η μετατροπή της εκτίμησης';

  @override
  String get estimateMarkSent => 'Σημείωση ως στάλθηκε';

  @override
  String get estimateMarkAccepted => 'Σημείωση ως αποδεκτή';

  @override
  String get estimateMarkDeclined => 'Σημείωση ως απορρίφθηκε';

  @override
  String get estimateConvertedTitle => 'Μετατράπηκε';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'Μετατράπηκε σε τιμολόγιο $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'ΣΥΝΟΛΟ ΕΚΤΙΜΗΣΗΣ';

  @override
  String get estimateStatusSent => 'Στάλθηκε';

  @override
  String get estimateStatusAccepted => 'Αποδεκτή';

  @override
  String get estimateStatusDeclined => 'Απορρίφθηκε';

  @override
  String get estimateStatusExpired => 'Έληξε';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ανοιχτές',
      one: '1 ανοιχτή',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'Διαγραφή εκτίμησης;';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'Διαγραφή \"$estimateNumber\"; Αυτή η ενέργεια δεν μπορεί να αναιρεθεί.';
  }

  @override
  String get estimatePdfFailed => 'Δεν ήταν δυνατή η δημιουργία PDF';

  @override
  String get pdfEstimate => 'ΕΚΤΙΜΗΣΗ';

  @override
  String get pdfEstimateNumber => 'Εκτίμηση #:';

  @override
  String get pdfValidUntil => 'Ισχύει έως:';

  @override
  String get invoiceDetailPaymentTerms => 'Όροι Πληρωμής';

  @override
  String get recurringListTitle => 'Επαναλαμβανόμενα Τιμολόγια';

  @override
  String get recurringListEmpty =>
      'Δεν υπάρχουν ακόμη επαναλαμβανόμενα τιμολόγια';

  @override
  String get recurringListEmptySubtitle =>
      'Ρυθμίστε αυτόματα τιμολόγια για σταθερούς πελάτες και υπηρεσίες.';

  @override
  String get recurringCreateTitle => 'Νέο Επαναλαμβανόμενο';

  @override
  String get recurringEditTitle => 'Επεξεργασία Επαναλαμβανόμενου';

  @override
  String get recurringCreatedSnackbar =>
      'Το επαναλαμβανόμενο τιμολόγιο αποθηκεύτηκε';

  @override
  String get recurringUpdatedSnackbar =>
      'Το επαναλαμβανόμενο τιμολόγιο ενημερώθηκε';

  @override
  String get recurringDeleteTitle => 'Διαγραφή επαναλαμβανόμενου τιμολογίου;';

  @override
  String recurringDeleteMessage(String title) {
    return 'Διαγραφή \"$title\"; Τα υπάρχοντα τιμολόγια δεν θα αφαιρεθούν.';
  }

  @override
  String get recurringTitleLabel => 'Τίτλος';

  @override
  String get recurringTitleHint => 'π.χ. Μηνιαία αμοιβή';

  @override
  String get recurringClientLabel => 'Πελάτης';

  @override
  String get recurringFrequencyLabel => 'Συχνότητα';

  @override
  String get recurringFrequencyWeekly => 'Εβδομαδιαία';

  @override
  String get recurringFrequencyBiweekly => 'Δεκαπενθήμερη';

  @override
  String get recurringFrequencyMonthly => 'Μηνιαία';

  @override
  String get recurringFrequencyQuarterly => 'Τριμηνιαία';

  @override
  String get recurringFrequencyYearly => 'Ετήσια';

  @override
  String get recurringNextRun => 'Επόμενη εκτέλεση';

  @override
  String get recurringDueDays => 'Λήγει σε';

  @override
  String get recurringDays => 'ημέρες';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ενεργά',
      one: '1 ενεργό',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'Αναφορές';

  @override
  String get reportsSubtitle => 'Επιχειρηματική ανάλυση';

  @override
  String get reportsEmpty => 'Δημιουργήστε τιμολόγια για να δείτε αναφορές';

  @override
  String get reportsCollected => 'Εισπράχθηκαν';

  @override
  String get reportsOutstanding => 'Εκκρεμές';

  @override
  String get reportsMonthlyRevenue => 'Μηνιαία Έσοδα';

  @override
  String get reportsLast6Months => 'Τελευταίοι 6 μήνες';

  @override
  String get reportsByStatus => 'Ανά Κατάσταση';

  @override
  String get reportsTopClients => 'Κορυφαίοι Πελάτες';

  @override
  String get paymentLinkTitle => 'Σύνδεσμος Πληρωμής';

  @override
  String get paymentLinkNotSet =>
      'Δεν έχει οριστεί σύνδεσμος πληρωμής στις Ρυθμίσεις';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'Ο σύνδεσμος πληρωμής σας περιλαμβάνεται στο PDF του τιμολογίου και μπορεί να αντιγραφεί από το μενού του τιμολογίου.';

  @override
  String get paymentLinkSaved => 'Ο σύνδεσμος πληρωμής αποθηκεύτηκε';

  @override
  String get settingsPaymentLinkNotSet => 'Δεν έχει οριστεί';

  @override
  String get invoiceDetailCopyPaymentLink => 'Αντιγραφή Συνδέσμου Πληρωμής';

  @override
  String get paymentLinkCopied => 'Ο σύνδεσμος πληρωμής αντιγράφηκε';

  @override
  String get pdfPayOnline => 'Πληρωμή online';

  @override
  String get exportXml => 'Εξαγωγή XML';

  @override
  String get exportXmlFailed => 'Δεν ήταν δυνατή η εξαγωγή XML';
}
