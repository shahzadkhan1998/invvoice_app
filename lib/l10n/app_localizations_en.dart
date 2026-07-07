// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Professional invoices in 2 minutes';

  @override
  String get bottomNavDashboard => 'Dashboard';

  @override
  String get bottomNavInvoices => 'Invoices';

  @override
  String get bottomNavClients => 'Clients';

  @override
  String get bottomNavSettings => 'Settings';

  @override
  String get commonCancel => 'Cancel';

  @override
  String get commonDelete => 'Delete';

  @override
  String get commonSave => 'Save';

  @override
  String get commonSearch => 'Search';

  @override
  String get commonBack => 'Back';

  @override
  String get commonContinue => 'Continue';

  @override
  String get commonAdd => 'Add';

  @override
  String get commonEdit => 'Edit';

  @override
  String get commonCreate => 'Create';

  @override
  String get commonClear => 'Clear';

  @override
  String get commonView => 'View';

  @override
  String get commonShare => 'Share';

  @override
  String get commonExportPdf => 'Export PDF';

  @override
  String get commonSharePdf => 'Share PDF';

  @override
  String get commonSaveChanges => 'Save Changes';

  @override
  String get commonRequired => 'Required';

  @override
  String get commonInvalid => 'Invalid';

  @override
  String get commonSendLink => 'Send Link';

  @override
  String get commonGeneratingPdf => 'Generating PDF...';

  @override
  String get dashboardGreetingMorning => 'Good morning';

  @override
  String get dashboardGreetingAfternoon => 'Good afternoon';

  @override
  String get dashboardGreetingEvening => 'Good evening';

  @override
  String get dashboardSubtitle => 'Here\'s your business overview';

  @override
  String get dashboardOutstanding => 'Outstanding';

  @override
  String get dashboardOverdue => 'Overdue';

  @override
  String get dashboardThisMonth => 'This Month';

  @override
  String get dashboardInvoices => 'invoices';

  @override
  String dashboardPaidCount(Object count) {
    return '$count paid';
  }

  @override
  String get dashboardRecentInvoices => 'Recent Invoices';

  @override
  String get dashboardSeeAll => 'See All →';

  @override
  String get dashboardNewInvoice => 'New Invoice';

  @override
  String get dashboardNoInvoicesYet => 'No invoices yet';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Create your first professional invoice in under 2 minutes';

  @override
  String get dashboardCreateInvoice => 'Create Invoice';

  @override
  String get dashboardMarkPaid => 'Mark Paid';

  @override
  String get dashboardDuePrefix => 'Due ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days days overdue';
  }

  @override
  String get deleteInvoiceTitle => 'Delete Invoice?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'Delete $invoiceNumber? This cannot be undone.';
  }

  @override
  String get loginHeading => 'Welcome back';

  @override
  String get loginSubtitle => 'Sign in to your InvoiceFlow account';

  @override
  String get loginEmailLabel => 'Email address';

  @override
  String get loginEmailHint => 'you@example.com';

  @override
  String get loginEmailRequired => 'Email is required';

  @override
  String get loginEmailInvalid => 'Enter a valid email';

  @override
  String get loginPasswordLabel => 'Password';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'Password is required';

  @override
  String get loginPasswordMinLength => 'Password must be at least 6 characters';

  @override
  String get loginForgotPassword => 'Forgot password?';

  @override
  String get loginSignIn => 'Sign In';

  @override
  String get loginOrContinueWith => 'or continue with';

  @override
  String get loginContinueWithGoogle => 'Continue with Google';

  @override
  String get loginNoAccount => 'Don\'t have an account? ';

  @override
  String get loginSignUp => 'Sign up';

  @override
  String get loginResetPasswordTitle => 'Reset Password';

  @override
  String get loginResetPasswordMessage =>
      'Enter your email and we\'ll send a reset link.';

  @override
  String get loginResetPasswordHint => 'you@example.com';

  @override
  String get loginResetLinkSent => 'Reset link sent! Check your email.';

  @override
  String get loginResetLinkFailed => 'Failed to send reset link.';

  @override
  String get registerHeading => 'Create account';

  @override
  String get registerSubtitle => 'Start sending professional invoices today';

  @override
  String get registerNameLabel => 'Full Name';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => 'Name is required';

  @override
  String get registerNameMinLength => 'Name must be at least 2 characters';

  @override
  String get registerEmailLabel => 'Email address';

  @override
  String get registerEmailHint => 'you@example.com';

  @override
  String get registerEmailRequired => 'Email is required';

  @override
  String get registerEmailInvalid => 'Enter a valid email';

  @override
  String get registerPasswordLabel => 'Password';

  @override
  String get registerPasswordHint => 'At least 6 characters';

  @override
  String get registerPasswordRequired => 'Password is required';

  @override
  String get registerPasswordMinLength =>
      'Password must be at least 6 characters';

  @override
  String get registerConfirmPasswordLabel => 'Confirm Password';

  @override
  String get registerConfirmPasswordHint => 'Repeat your password';

  @override
  String get registerConfirmPasswordRequired => 'Please confirm your password';

  @override
  String get registerPasswordsDoNotMatch => 'Passwords do not match';

  @override
  String get registerCreateAccount => 'Create Account';

  @override
  String get registerHaveAccount => 'Already have an account? ';

  @override
  String get registerSignIn => 'Sign in';

  @override
  String get authErrorWeakPassword => 'Password is too weak';

  @override
  String get authErrorEmailAlreadyInUse => 'Account already exists';

  @override
  String get authErrorUserNotFound => 'No user found with this email';

  @override
  String get authErrorWrongPassword => 'Incorrect password';

  @override
  String get authErrorInvalidEmail => 'Invalid email address';

  @override
  String get authErrorTooManyRequests => 'Too many attempts. Try again later';

  @override
  String get authErrorDefault => 'Authentication failed. Try again.';

  @override
  String get authErrorGoogleSignInFailed => 'Google sign in failed.';

  @override
  String get invoiceListTitle => 'Invoices';

  @override
  String get invoiceListSearchHint => 'Search invoices...';

  @override
  String get invoiceListSortDate => 'Sort by Date';

  @override
  String get invoiceListSortAmount => 'Sort by Amount';

  @override
  String get invoiceListSortClient => 'Sort by Client';

  @override
  String get invoiceListTabAll => 'All';

  @override
  String get invoiceListTabPaid => 'Paid';

  @override
  String get invoiceListTabPending => 'Pending';

  @override
  String get invoiceListTabOverdue => 'Overdue';

  @override
  String get invoiceListTabDraft => 'Draft';

  @override
  String get invoiceListEmpty => 'No invoices found';

  @override
  String get invoiceCreateTitle => 'New Invoice';

  @override
  String get invoiceEditTitle => 'Edit Invoice';

  @override
  String get invoiceSaveDraft => 'Save Draft';

  @override
  String get invoiceStepClient => 'Client';

  @override
  String get invoiceStepItems => 'Items';

  @override
  String get invoiceStepReview => 'Review';

  @override
  String get invoiceSelectClient => 'Select a client';

  @override
  String get invoiceSelectClientSubtitle => 'Choose who this invoice is for';

  @override
  String get invoiceSearchClients => 'Search clients...';

  @override
  String get invoiceAddNewClient => 'Add New Client';

  @override
  String get invoiceNoClientsFound => 'No clients found';

  @override
  String get invoiceAddLineItem => 'Add Line Item';

  @override
  String get invoiceItemDescription => 'Description';

  @override
  String get invoiceItemDescriptionHint => 'e.g. Web Development';

  @override
  String get invoiceItemQuickAdd => 'Quick Add:';

  @override
  String get invoiceItemQty => 'Quantity';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Rate';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Add Item';

  @override
  String get invoiceLineItems => 'Line Items';

  @override
  String get invoiceLineItemsSubtitle => 'Add services or products';

  @override
  String get invoiceNoItems => 'No items yet. Add your first item.';

  @override
  String get invoiceTaxRate => 'Tax Rate (%)';

  @override
  String get invoiceSubtotal => 'Subtotal';

  @override
  String invoiceTax(Object taxRate) {
    return 'Tax ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'TOTAL';

  @override
  String get invoiceReviewHeading => 'Review & Finalize';

  @override
  String get invoiceReviewSubtitle =>
      'Set dates, add notes, logo, and signature';

  @override
  String get invoiceCompanyLogo => 'Company Logo';

  @override
  String get invoiceAddLogo => 'Add Logo';

  @override
  String get invoiceInvoiceDate => 'Invoice Date';

  @override
  String get invoiceDueDate => 'Due Date';

  @override
  String get invoiceNotesLabel => 'Notes (Optional)';

  @override
  String get invoiceNotesHint => 'Thank you for your business!';

  @override
  String get invoicePaymentTermsLabel => 'Payment Terms (Optional)';

  @override
  String get invoicePaymentTermsHint => 'Payment due within 30 days';

  @override
  String get invoiceSignatureLabel => 'Signature';

  @override
  String get invoiceSignatureOverwrite =>
      'Existing signature saved. Draw above to overwrite.';

  @override
  String get invoiceCreatedSnackbar => 'Invoice created!';

  @override
  String get invoiceUpdatedSnackbar => 'Invoice updated!';

  @override
  String get invoiceDetailTitle => 'INVOICE';

  @override
  String get invoiceDetailMarkAsPaid => 'Mark as Paid';

  @override
  String get invoiceDetailTotalAmount => 'Total Amount';

  @override
  String get invoiceDetailIssued => 'Issued';

  @override
  String get invoiceDetailDue => 'Due';

  @override
  String get invoiceDetailPaid => 'Paid';

  @override
  String get invoiceDetailBillTo => 'Bill To';

  @override
  String get invoiceDetailItems => 'Items';

  @override
  String get invoiceDetailNotes => 'Notes';

  @override
  String get invoiceDetailSignature => 'Signature';

  @override
  String get invoiceDetailMarkedPaidSnackbar => 'Invoice marked as paid!';

  @override
  String get invoiceDetailPdfFailed => 'Failed to generate PDF';

  @override
  String get clientListTitle => 'Clients';

  @override
  String get clientListSearchHint => 'Search clients...';

  @override
  String get clientListTotalClients => 'Total Clients';

  @override
  String get clientListTotalBilled => 'Total Billed';

  @override
  String get clientListEmptySearch => 'No clients found';

  @override
  String get clientListEmpty => 'No clients yet';

  @override
  String get clientListEmptySubtitle =>
      'Add your first client to start creating invoices';

  @override
  String get clientListAddClient => 'Add Client';

  @override
  String get clientListTotalBilledLabel => 'total billed';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count invoice';
  }

  @override
  String get clientCreateTitle => 'New Client';

  @override
  String get clientEditTitle => 'Edit Client';

  @override
  String get clientBasicInfo => 'Basic Information';

  @override
  String get clientNameLabel => 'Full Name *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'Name is required';

  @override
  String get clientNameTooShort => 'Name too short';

  @override
  String get clientEmailLabel => 'Email Address *';

  @override
  String get clientEmailHint => 'billing@company.com';

  @override
  String get clientEmailRequired => 'Email is required';

  @override
  String get clientEmailInvalid => 'Enter a valid email';

  @override
  String get clientPhoneLabel => 'Phone Number';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'Address';

  @override
  String get clientAddressLabel => 'Street Address';

  @override
  String get clientAddressHint => '123 Business Park, Office 45';

  @override
  String get clientCityLabel => 'City / Country';

  @override
  String get clientCityHint => 'Dubai, United Arab Emirates';

  @override
  String get clientBillingDefaults => 'Billing Defaults';

  @override
  String get clientDefaultCurrency => 'Default Currency';

  @override
  String get clientDefaultTaxRate => 'Default Tax Rate (VAT/GST)';

  @override
  String get clientVatLabel => 'VAT / Tax Registration Number';

  @override
  String get clientVatHint => '123456789012345 (Optional)';

  @override
  String get clientUpdateButton => 'Update Client';

  @override
  String get clientAddButton => 'Add Client';

  @override
  String get clientUpdatedSnackbar => 'Client updated!';

  @override
  String get clientAddedSnackbar => 'Client added!';

  @override
  String get clientDetailInvoices => 'Invoices';

  @override
  String get clientDetailTotalBilled => 'Total Billed';

  @override
  String get clientDetailOutstanding => 'Outstanding';

  @override
  String get clientDetailEdit => 'Edit';

  @override
  String get clientDetailNewInvoice => 'New Invoice';

  @override
  String get clientDetailEmailClient => 'Email Client';

  @override
  String get clientDetailClientDetails => 'Client Details';

  @override
  String get clientDetailEmail => 'Email';

  @override
  String get clientDetailPhone => 'Phone';

  @override
  String get clientDetailAddress => 'Address';

  @override
  String get clientDetailCity => 'City';

  @override
  String get clientDetailCurrency => 'Currency';

  @override
  String get clientDetailTaxRate => 'Tax Rate';

  @override
  String get clientDetailVatNumber => 'VAT Number';

  @override
  String get clientDetailInvoiceHistory => 'Invoice History';

  @override
  String get clientDetailNoInvoices => 'No invoices yet for this client';

  @override
  String get deleteClientTitle => 'Delete Client?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'Delete $clientName? This cannot be undone.';
  }

  @override
  String get settingsTitle => 'Settings';

  @override
  String get settingsYourName => 'Your Name';

  @override
  String get settingsBackupTitle => 'Backup your invoices';

  @override
  String get settingsBackupDescription =>
      'Sign in to sync your data securely and access it from anywhere.';

  @override
  String get settingsSignInRegister => 'Sign In or Register';

  @override
  String get settingsBusinessSection => 'BUSINESS SETTINGS';

  @override
  String get settingsBusinessDetails => 'Business Details';

  @override
  String get settingsBusinessDetailsSubtitle => 'Set your business name';

  @override
  String get settingsInvoicePrefix => 'Invoice Prefix';

  @override
  String get settingsDefaultCurrency => 'Default Currency';

  @override
  String get settingsAppSection => 'APP SETTINGS';

  @override
  String get settingsDarkMode => 'Dark Mode';

  @override
  String get settingsDailyNotification => 'Daily Notification';

  @override
  String get settingsDailyNotificationNotSet => 'Not set';

  @override
  String get settingsLanguage => 'Language';

  @override
  String get settingsLanguageLabel => 'English';

  @override
  String get settingsAboutSection => 'ABOUT';

  @override
  String get settingsRateApp => 'Rate the App';

  @override
  String get settingsHelpSupport => 'Help & Support';

  @override
  String get settingsPrivacyPolicy => 'Privacy Policy';

  @override
  String get settingsVersion => 'Version';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Sign Out';

  @override
  String get settingsEditProfile => 'Edit Profile';

  @override
  String get settingsProfileNameLabel => 'Full Name';

  @override
  String get settingsProfileNameHint => 'Your name';

  @override
  String get settingsBusinessNameLabel => 'Business Name';

  @override
  String get settingsBusinessNameHint => 'Your Company Ltd.';

  @override
  String get settingsBusinessEmailLabel => 'Business Email';

  @override
  String get settingsBusinessEmailHint => 'billing@company.com';

  @override
  String get settingsPhoneLabel => 'Phone';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'Address';

  @override
  String get settingsAddressHint => 'Dubai, United Arab Emirates';

  @override
  String get settingsBusinessDetailsSaved => 'Business details saved!';

  @override
  String get settingsInvoicePrefixTitle => 'Invoice Number Prefix';

  @override
  String get settingsInvoicePrefixHint => 'e.g. INV-, #, Bill-';

  @override
  String get settingsNotificationScheduled =>
      'Daily notification scheduled successfully!';

  @override
  String get settingsSignOutTitle => 'Sign Out?';

  @override
  String get settingsSignOutMessage =>
      'Are you sure you want to sign out of InvoiceFlow?';

  @override
  String get settingsSignedOut => 'Successfully signed out.';

  @override
  String get statusPaid => 'Paid';

  @override
  String get statusOverdue => 'Overdue';

  @override
  String get statusPending => 'Pending';

  @override
  String get statusDraft => 'Draft';

  @override
  String get statusCancelled => 'Cancelled';

  @override
  String get notificationChannelName => 'Daily Reminders';

  @override
  String get notificationChannelDescription =>
      'Reminds you to check your invoices daily';

  @override
  String get notificationTitle => 'Invoice Reminder';

  @override
  String get notificationBody =>
      'Time to check your recent invoices and track pending payments.';

  @override
  String get pdfInvoice => 'INVOICE';

  @override
  String get pdfInvoiceNumber => 'Invoice #:';

  @override
  String get pdfDate => 'Date:';

  @override
  String get pdfDueDate => 'Due Date:';

  @override
  String get pdfBillTo => 'BILL TO:';

  @override
  String get pdfDescription => 'Description';

  @override
  String get pdfQty => 'Qty';

  @override
  String get pdfRate => 'Rate';

  @override
  String get pdfAmount => 'Amount';

  @override
  String get pdfSubtotal => 'Subtotal:';

  @override
  String pdfTax(Object taxRate) {
    return 'Tax ($taxRate%):';
  }

  @override
  String get pdfTotal => 'TOTAL:';

  @override
  String get pdfSignature => 'Signature:';

  @override
  String get pdfNotes => 'Notes:';

  @override
  String get pdfPaymentTerms => 'Payment Terms:';

  @override
  String get pdfThankYou => 'Thank you for your business!';

  @override
  String get quickAddWebDesign => 'Web Design';

  @override
  String get quickAddDevelopment => 'Development';

  @override
  String get quickAddConsulting => 'Consulting';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Content Writing';
}
