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
  String get dashboardSeeAll => 'See All';

  @override
  String get dashboardNotifications => 'Notifications';

  @override
  String get dashboardNotificationsHint =>
      'Stay on top of cash flow by reviewing overdue and pending invoices regularly.';

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
  String get authTermsOfService => 'Terms of Service';

  @override
  String get authPrivacyPolicy => 'Privacy Policy';

  @override
  String get authAgreeRequired =>
      'Please agree to the Terms of Service and Privacy Policy to continue';

  @override
  String get loginAgreePrefix => 'By continuing, you agree to our ';

  @override
  String get registerAgreePrefix => 'I agree to the ';

  @override
  String get authAgreeAnd => ' and ';

  @override
  String get authTermsSheet =>
      'These Terms of Service govern your use of InvoiceFlow. By accessing or using the app you agree to be bound by these terms.\n\n1. You are responsible for the accuracy of the invoices, estimates, and other data you create.\n2. The app is provided \"as is\" without warranties of any kind, express or implied.\n3. We are not liable for any losses arising from your use of the service.\n4. You must not use the app for any unlawful or prohibited purpose.\n5. We may update these terms from time to time; continued use of the app constitutes acceptance of the updated terms.';

  @override
  String get authPrivacySheet =>
      'Your privacy matters to us.\n\n1. Data storage: Your invoices, clients, and settings are stored locally on your device.\n2. Cloud sync: If you sign in, your data is synchronized to your account so it is accessible across your devices.\n3. We never sell or share your personal information.\n4. Analytics: We may collect anonymized usage data to help improve the app.\n5. Contact: For any privacy questions, reach out to support@invoiceflow.app.';

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
  String get invoiceSelectClientEmptyHint =>
      'Create your first client to start building invoices';

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
  String get settingsProUpsell =>
      'Upgrade to Pro for unlimited invoices, cloud sync & no watermarks.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'You have reached the free plan limit of $limit invoices. Upgrade to Pro for unlimited invoices and cloud sync.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'You have reached the free plan limit of $limit clients. Upgrade to Pro for unlimited clients and cloud sync.';
  }

  @override
  String get settingsUpgradePro => 'Upgrade';

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
  String get languageEnglish => 'English';

  @override
  String get languageArabic => 'العربية';

  @override
  String get languageFrench => 'Français';

  @override
  String get languageSpanish => 'Español';

  @override
  String get languageUrdu => 'اردو';

  @override
  String get languageChinese => '中文';

  @override
  String get settingsAboutSection => 'ABOUT';

  @override
  String get settingsRateApp => 'Rate the App';

  @override
  String get settingsHelpSupport => 'Help & Support';

  @override
  String get settingsPrivacyPolicy => 'Privacy Policy';

  @override
  String get settingsHelpSupportSheet =>
      'Need help? Reach out to support@invoiceflow.app and we\'ll get back to you within 24 hours.';

  @override
  String get settingsPrivacySheet =>
      'Your data is stored locally on your device. We never sell or share your personal information.';

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
  String get settingsPrefixSaved => 'Invoice prefix saved';

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

  @override
  String get paywallTitle => 'Unlock InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'Go unlimited and sync everywhere. Cancel anytime.';

  @override
  String get paywallFeatureUnlimited => 'Unlimited invoices & clients';

  @override
  String get paywallFeatureSync => 'Cloud sync across devices';

  @override
  String get paywallFeatureNoWatermark => 'No watermarks, ever';

  @override
  String get paywallMonthly => 'Monthly';

  @override
  String get paywallMonthlySub => 'Billed monthly';

  @override
  String get paywallYearly => 'Yearly';

  @override
  String get paywallYearlySub => 'Best value — 2 months free';

  @override
  String get paywallRestore => 'Restore Purchases';

  @override
  String get paywallTerms =>
      'Subscriptions auto-renew. Manage in your app store settings.';

  @override
  String get purchaseSuccessTitle => 'You\'re Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'Unlimited invoices, cloud sync, and no watermarks are now unlocked. Thank you!';

  @override
  String get purchaseSuccessContinue => 'Continue';

  @override
  String get paywallLoading => 'Loading plans…';

  @override
  String get paywallLoadError =>
      'Couldn\'t load plans. Check your connection and try again.';

  @override
  String get paywallNoOffering => 'No plans are available right now.';

  @override
  String get purchaseRestored => 'Purchases restored successfully';

  @override
  String get purchaseErrorGeneric => 'Purchase failed. Please try again.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro is active — unlimited invoices, clients & no watermarks';

  @override
  String get settingsFreePlan => 'Free plan';

  @override
  String get settingsFreeHint =>
      'Upgrade for unlimited invoices, cloud sync and more';

  @override
  String get settingsUpgradeToPro => 'Upgrade to Pro';

  @override
  String get settingsManageSubscription => 'Manage Subscription';

  @override
  String get customerCenterFailed => 'Unable to open subscription management.';

  @override
  String get onboardingSkip => 'Skip';

  @override
  String get onboardingNext => 'Next';

  @override
  String get onboardingGetStarted => 'Get Started';

  @override
  String get onboardingWelcomeTitle => 'Invoices in 2 minutes';

  @override
  String get onboardingWelcomeBody =>
      'Create professional PDF invoices for your clients — fast and beautiful.';

  @override
  String get onboardingSyncTitle => 'Sync everywhere';

  @override
  String get onboardingSyncBody =>
      'Sign in to securely back up your data to the cloud and access it from any device.';

  @override
  String get onboardingProTitle => 'Go unlimited with Pro';

  @override
  String get onboardingProBody =>
      'Unlock unlimited invoices, cloud sync, and remove watermarks with InvoiceFlow Pro.';

  @override
  String get settingsAccentColor => 'Accent Color';

  @override
  String get settingsAccentColorHint =>
      'Personalize the app with a color of your choice.';

  @override
  String get settingsCountry => 'Country';

  @override
  String get settingsTaxId => 'Tax Registration Number';

  @override
  String get settingsTaxIdNotSet => 'Not set';

  @override
  String get settingsTaxIdHint => 'e.g. 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Tax ID saved';

  @override
  String get catalogTitle => 'Products & Services';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items',
      one: '$count item',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'No products yet';

  @override
  String get catalogEmptySubtitle =>
      'Save reusable products and services to add them to invoices faster.';

  @override
  String get catalogFromSaved => 'From your catalog';

  @override
  String get catalogSaveToCatalog => 'Save to catalog for reuse';

  @override
  String get catalogAddSnackbar => 'Added to catalog';

  @override
  String get catalogDeleteTitle => 'Delete item?';

  @override
  String catalogDeleteMessage(String description) {
    return 'Delete \"$description\"? This can\'t be undone.';
  }

  @override
  String get commonDone => 'Done';

  @override
  String get estimateListTitle => 'Estimates';

  @override
  String get estimateListSearchHint => 'Search estimates…';

  @override
  String get estimateListEmpty => 'No estimates yet';

  @override
  String get estimateListTabAll => 'All';

  @override
  String get estimateListTabDraft => 'Draft';

  @override
  String get estimateListTabSent => 'Sent';

  @override
  String get estimateListTabAccepted => 'Accepted';

  @override
  String get estimateListTabExpired => 'Expired';

  @override
  String get estimateCreateTitle => 'New Estimate';

  @override
  String get estimateEditTitle => 'Edit Estimate';

  @override
  String get estimateCreatedSnackbar => 'Estimate saved';

  @override
  String get estimateUpdatedSnackbar => 'Estimate updated';

  @override
  String get estimateIssueDate => 'Issue date';

  @override
  String get estimateExpiryDate => 'Expiry date';

  @override
  String get estimateExpiresPrefix => 'Expires ';

  @override
  String get estimateConvertToInvoice => 'Convert to Invoice';

  @override
  String get estimateConvertedSnackbar => 'Estimate converted to invoice';

  @override
  String get estimateConvertFailed => 'Could not convert estimate';

  @override
  String get estimateMarkSent => 'Mark as sent';

  @override
  String get estimateMarkAccepted => 'Mark as accepted';

  @override
  String get estimateMarkDeclined => 'Mark as declined';

  @override
  String get estimateConvertedTitle => 'Converted';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'Converted to invoice $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'ESTIMATE TOTAL';

  @override
  String get estimateStatusSent => 'Sent';

  @override
  String get estimateStatusAccepted => 'Accepted';

  @override
  String get estimateStatusDeclined => 'Declined';

  @override
  String get estimateStatusExpired => 'Expired';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count open',
      one: '1 open',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'Delete estimate?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'Delete \"$estimateNumber\"? This can\'t be undone.';
  }

  @override
  String get estimatePdfFailed => 'Could not generate PDF';

  @override
  String get pdfEstimate => 'ESTIMATE';

  @override
  String get pdfEstimateNumber => 'Estimate #:';

  @override
  String get pdfValidUntil => 'Valid until:';

  @override
  String get invoiceDetailPaymentTerms => 'Payment Terms';

  @override
  String get recurringListTitle => 'Recurring Invoices';

  @override
  String get recurringListEmpty => 'No recurring invoices yet';

  @override
  String get recurringListEmptySubtitle =>
      'Set up automatic invoices for regular clients and services.';

  @override
  String get recurringCreateTitle => 'New Recurring';

  @override
  String get recurringEditTitle => 'Edit Recurring';

  @override
  String get recurringCreatedSnackbar => 'Recurring invoice saved';

  @override
  String get recurringUpdatedSnackbar => 'Recurring invoice updated';

  @override
  String get recurringDeleteTitle => 'Delete recurring invoice?';

  @override
  String recurringDeleteMessage(String title) {
    return 'Delete \"$title\"? Existing invoices won\'t be removed.';
  }

  @override
  String get recurringTitleLabel => 'Title';

  @override
  String get recurringTitleHint => 'e.g. Monthly retainer';

  @override
  String get recurringClientLabel => 'Client';

  @override
  String get recurringFrequencyLabel => 'Frequency';

  @override
  String get recurringFrequencyWeekly => 'Weekly';

  @override
  String get recurringFrequencyBiweekly => 'Bi-weekly';

  @override
  String get recurringFrequencyMonthly => 'Monthly';

  @override
  String get recurringFrequencyQuarterly => 'Quarterly';

  @override
  String get recurringFrequencyYearly => 'Yearly';

  @override
  String get recurringNextRun => 'Next run';

  @override
  String get recurringDueDays => 'Due in';

  @override
  String get recurringDays => 'days';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count active',
      one: '1 active',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'Reports';

  @override
  String get reportsSubtitle => 'Business analytics';

  @override
  String get reportsEmpty => 'Create invoices to see reports';

  @override
  String get reportsCollected => 'Collected';

  @override
  String get reportsOutstanding => 'Outstanding';

  @override
  String get reportsMonthlyRevenue => 'Monthly Revenue';

  @override
  String get reportsLast6Months => 'Last 6 months';

  @override
  String get reportsByStatus => 'By Status';

  @override
  String get reportsTopClients => 'Top Clients';

  @override
  String get paymentLinkTitle => 'Payment Link';

  @override
  String get paymentLinkNotSet => 'No payment link set in Settings';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'Your payment link is included on the invoice PDF and can be copied from the invoice menu.';

  @override
  String get paymentLinkSaved => 'Payment link saved';

  @override
  String get settingsPaymentLinkNotSet => 'Not set';

  @override
  String get invoiceDetailCopyPaymentLink => 'Copy Payment Link';

  @override
  String get paymentLinkCopied => 'Payment link copied';

  @override
  String get pdfPayOnline => 'Pay online';

  @override
  String get exportXml => 'Export XML';

  @override
  String get exportXmlFailed => 'Could not export XML';
}
