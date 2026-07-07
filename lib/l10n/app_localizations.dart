import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('ur'),
    Locale('zh')
  ];

  /// The application title
  ///
  /// In en, this message translates to:
  /// **'InvoiceFlow'**
  String get appTitle;

  /// Subtitle shown on the splash screen
  ///
  /// In en, this message translates to:
  /// **'Professional invoices in 2 minutes'**
  String get splashSubtitle;

  /// No description provided for @bottomNavDashboard.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get bottomNavDashboard;

  /// No description provided for @bottomNavInvoices.
  ///
  /// In en, this message translates to:
  /// **'Invoices'**
  String get bottomNavInvoices;

  /// No description provided for @bottomNavClients.
  ///
  /// In en, this message translates to:
  /// **'Clients'**
  String get bottomNavClients;

  /// No description provided for @bottomNavSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get bottomNavSettings;

  /// No description provided for @commonCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get commonCancel;

  /// No description provided for @commonDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get commonDelete;

  /// No description provided for @commonSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get commonSave;

  /// No description provided for @commonSearch.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get commonSearch;

  /// No description provided for @commonBack.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get commonBack;

  /// No description provided for @commonContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get commonContinue;

  /// No description provided for @commonAdd.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get commonAdd;

  /// No description provided for @commonEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get commonEdit;

  /// No description provided for @commonCreate.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get commonCreate;

  /// No description provided for @commonClear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get commonClear;

  /// No description provided for @commonView.
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get commonView;

  /// No description provided for @commonShare.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get commonShare;

  /// No description provided for @commonExportPdf.
  ///
  /// In en, this message translates to:
  /// **'Export PDF'**
  String get commonExportPdf;

  /// No description provided for @commonSharePdf.
  ///
  /// In en, this message translates to:
  /// **'Share PDF'**
  String get commonSharePdf;

  /// No description provided for @commonSaveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get commonSaveChanges;

  /// No description provided for @commonRequired.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get commonRequired;

  /// No description provided for @commonInvalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid'**
  String get commonInvalid;

  /// No description provided for @commonSendLink.
  ///
  /// In en, this message translates to:
  /// **'Send Link'**
  String get commonSendLink;

  /// No description provided for @commonGeneratingPdf.
  ///
  /// In en, this message translates to:
  /// **'Generating PDF...'**
  String get commonGeneratingPdf;

  /// No description provided for @dashboardGreetingMorning.
  ///
  /// In en, this message translates to:
  /// **'Good morning'**
  String get dashboardGreetingMorning;

  /// No description provided for @dashboardGreetingAfternoon.
  ///
  /// In en, this message translates to:
  /// **'Good afternoon'**
  String get dashboardGreetingAfternoon;

  /// No description provided for @dashboardGreetingEvening.
  ///
  /// In en, this message translates to:
  /// **'Good evening'**
  String get dashboardGreetingEvening;

  /// No description provided for @dashboardSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Here\'s your business overview'**
  String get dashboardSubtitle;

  /// No description provided for @dashboardOutstanding.
  ///
  /// In en, this message translates to:
  /// **'Outstanding'**
  String get dashboardOutstanding;

  /// No description provided for @dashboardOverdue.
  ///
  /// In en, this message translates to:
  /// **'Overdue'**
  String get dashboardOverdue;

  /// No description provided for @dashboardThisMonth.
  ///
  /// In en, this message translates to:
  /// **'This Month'**
  String get dashboardThisMonth;

  /// No description provided for @dashboardInvoices.
  ///
  /// In en, this message translates to:
  /// **'invoices'**
  String get dashboardInvoices;

  /// No description provided for @dashboardPaidCount.
  ///
  /// In en, this message translates to:
  /// **'{count} paid'**
  String dashboardPaidCount(Object count);

  /// No description provided for @dashboardRecentInvoices.
  ///
  /// In en, this message translates to:
  /// **'Recent Invoices'**
  String get dashboardRecentInvoices;

  /// No description provided for @dashboardSeeAll.
  ///
  /// In en, this message translates to:
  /// **'See All →'**
  String get dashboardSeeAll;

  /// No description provided for @dashboardNewInvoice.
  ///
  /// In en, this message translates to:
  /// **'New Invoice'**
  String get dashboardNewInvoice;

  /// No description provided for @dashboardNoInvoicesYet.
  ///
  /// In en, this message translates to:
  /// **'No invoices yet'**
  String get dashboardNoInvoicesYet;

  /// No description provided for @dashboardNoInvoicesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Create your first professional invoice in under 2 minutes'**
  String get dashboardNoInvoicesSubtitle;

  /// No description provided for @dashboardCreateInvoice.
  ///
  /// In en, this message translates to:
  /// **'Create Invoice'**
  String get dashboardCreateInvoice;

  /// No description provided for @dashboardMarkPaid.
  ///
  /// In en, this message translates to:
  /// **'Mark Paid'**
  String get dashboardMarkPaid;

  /// No description provided for @dashboardDuePrefix.
  ///
  /// In en, this message translates to:
  /// **'Due '**
  String get dashboardDuePrefix;

  /// No description provided for @dashboardDaysOverdue.
  ///
  /// In en, this message translates to:
  /// **'{days} days overdue'**
  String dashboardDaysOverdue(Object days);

  /// No description provided for @deleteInvoiceTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete Invoice?'**
  String get deleteInvoiceTitle;

  /// No description provided for @deleteInvoiceMessage.
  ///
  /// In en, this message translates to:
  /// **'Delete {invoiceNumber}? This cannot be undone.'**
  String deleteInvoiceMessage(Object invoiceNumber);

  /// No description provided for @loginHeading.
  ///
  /// In en, this message translates to:
  /// **'Welcome back'**
  String get loginHeading;

  /// No description provided for @loginSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Sign in to your InvoiceFlow account'**
  String get loginSubtitle;

  /// No description provided for @loginEmailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email address'**
  String get loginEmailLabel;

  /// No description provided for @loginEmailHint.
  ///
  /// In en, this message translates to:
  /// **'you@example.com'**
  String get loginEmailHint;

  /// No description provided for @loginEmailRequired.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get loginEmailRequired;

  /// No description provided for @loginEmailInvalid.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email'**
  String get loginEmailInvalid;

  /// No description provided for @loginPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get loginPasswordLabel;

  /// No description provided for @loginPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'••••••••'**
  String get loginPasswordHint;

  /// No description provided for @loginPasswordRequired.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get loginPasswordRequired;

  /// No description provided for @loginPasswordMinLength.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters'**
  String get loginPasswordMinLength;

  /// No description provided for @loginForgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get loginForgotPassword;

  /// No description provided for @loginSignIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get loginSignIn;

  /// No description provided for @loginOrContinueWith.
  ///
  /// In en, this message translates to:
  /// **'or continue with'**
  String get loginOrContinueWith;

  /// No description provided for @loginContinueWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Continue with Google'**
  String get loginContinueWithGoogle;

  /// No description provided for @loginNoAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account? '**
  String get loginNoAccount;

  /// No description provided for @loginSignUp.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get loginSignUp;

  /// No description provided for @loginResetPasswordTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get loginResetPasswordTitle;

  /// No description provided for @loginResetPasswordMessage.
  ///
  /// In en, this message translates to:
  /// **'Enter your email and we\'ll send a reset link.'**
  String get loginResetPasswordMessage;

  /// No description provided for @loginResetPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'you@example.com'**
  String get loginResetPasswordHint;

  /// No description provided for @loginResetLinkSent.
  ///
  /// In en, this message translates to:
  /// **'Reset link sent! Check your email.'**
  String get loginResetLinkSent;

  /// No description provided for @loginResetLinkFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to send reset link.'**
  String get loginResetLinkFailed;

  /// No description provided for @registerHeading.
  ///
  /// In en, this message translates to:
  /// **'Create account'**
  String get registerHeading;

  /// No description provided for @registerSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Start sending professional invoices today'**
  String get registerSubtitle;

  /// No description provided for @registerNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get registerNameLabel;

  /// No description provided for @registerNameHint.
  ///
  /// In en, this message translates to:
  /// **'Ahmed Mohammed'**
  String get registerNameHint;

  /// No description provided for @registerNameRequired.
  ///
  /// In en, this message translates to:
  /// **'Name is required'**
  String get registerNameRequired;

  /// No description provided for @registerNameMinLength.
  ///
  /// In en, this message translates to:
  /// **'Name must be at least 2 characters'**
  String get registerNameMinLength;

  /// No description provided for @registerEmailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email address'**
  String get registerEmailLabel;

  /// No description provided for @registerEmailHint.
  ///
  /// In en, this message translates to:
  /// **'you@example.com'**
  String get registerEmailHint;

  /// No description provided for @registerEmailRequired.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get registerEmailRequired;

  /// No description provided for @registerEmailInvalid.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email'**
  String get registerEmailInvalid;

  /// No description provided for @registerPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get registerPasswordLabel;

  /// No description provided for @registerPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'At least 6 characters'**
  String get registerPasswordHint;

  /// No description provided for @registerPasswordRequired.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get registerPasswordRequired;

  /// No description provided for @registerPasswordMinLength.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters'**
  String get registerPasswordMinLength;

  /// No description provided for @registerConfirmPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get registerConfirmPasswordLabel;

  /// No description provided for @registerConfirmPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Repeat your password'**
  String get registerConfirmPasswordHint;

  /// No description provided for @registerConfirmPasswordRequired.
  ///
  /// In en, this message translates to:
  /// **'Please confirm your password'**
  String get registerConfirmPasswordRequired;

  /// No description provided for @registerPasswordsDoNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get registerPasswordsDoNotMatch;

  /// No description provided for @registerCreateAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get registerCreateAccount;

  /// No description provided for @registerHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account? '**
  String get registerHaveAccount;

  /// No description provided for @registerSignIn.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get registerSignIn;

  /// No description provided for @authErrorWeakPassword.
  ///
  /// In en, this message translates to:
  /// **'Password is too weak'**
  String get authErrorWeakPassword;

  /// No description provided for @authErrorEmailAlreadyInUse.
  ///
  /// In en, this message translates to:
  /// **'Account already exists'**
  String get authErrorEmailAlreadyInUse;

  /// No description provided for @authErrorUserNotFound.
  ///
  /// In en, this message translates to:
  /// **'No user found with this email'**
  String get authErrorUserNotFound;

  /// No description provided for @authErrorWrongPassword.
  ///
  /// In en, this message translates to:
  /// **'Incorrect password'**
  String get authErrorWrongPassword;

  /// No description provided for @authErrorInvalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Invalid email address'**
  String get authErrorInvalidEmail;

  /// No description provided for @authErrorTooManyRequests.
  ///
  /// In en, this message translates to:
  /// **'Too many attempts. Try again later'**
  String get authErrorTooManyRequests;

  /// No description provided for @authErrorDefault.
  ///
  /// In en, this message translates to:
  /// **'Authentication failed. Try again.'**
  String get authErrorDefault;

  /// No description provided for @authErrorGoogleSignInFailed.
  ///
  /// In en, this message translates to:
  /// **'Google sign in failed.'**
  String get authErrorGoogleSignInFailed;

  /// No description provided for @invoiceListTitle.
  ///
  /// In en, this message translates to:
  /// **'Invoices'**
  String get invoiceListTitle;

  /// No description provided for @invoiceListSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search invoices...'**
  String get invoiceListSearchHint;

  /// No description provided for @invoiceListSortDate.
  ///
  /// In en, this message translates to:
  /// **'Sort by Date'**
  String get invoiceListSortDate;

  /// No description provided for @invoiceListSortAmount.
  ///
  /// In en, this message translates to:
  /// **'Sort by Amount'**
  String get invoiceListSortAmount;

  /// No description provided for @invoiceListSortClient.
  ///
  /// In en, this message translates to:
  /// **'Sort by Client'**
  String get invoiceListSortClient;

  /// No description provided for @invoiceListTabAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get invoiceListTabAll;

  /// No description provided for @invoiceListTabPaid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get invoiceListTabPaid;

  /// No description provided for @invoiceListTabPending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get invoiceListTabPending;

  /// No description provided for @invoiceListTabOverdue.
  ///
  /// In en, this message translates to:
  /// **'Overdue'**
  String get invoiceListTabOverdue;

  /// No description provided for @invoiceListTabDraft.
  ///
  /// In en, this message translates to:
  /// **'Draft'**
  String get invoiceListTabDraft;

  /// No description provided for @invoiceListEmpty.
  ///
  /// In en, this message translates to:
  /// **'No invoices found'**
  String get invoiceListEmpty;

  /// No description provided for @invoiceCreateTitle.
  ///
  /// In en, this message translates to:
  /// **'New Invoice'**
  String get invoiceCreateTitle;

  /// No description provided for @invoiceEditTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit Invoice'**
  String get invoiceEditTitle;

  /// No description provided for @invoiceSaveDraft.
  ///
  /// In en, this message translates to:
  /// **'Save Draft'**
  String get invoiceSaveDraft;

  /// No description provided for @invoiceStepClient.
  ///
  /// In en, this message translates to:
  /// **'Client'**
  String get invoiceStepClient;

  /// No description provided for @invoiceStepItems.
  ///
  /// In en, this message translates to:
  /// **'Items'**
  String get invoiceStepItems;

  /// No description provided for @invoiceStepReview.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get invoiceStepReview;

  /// No description provided for @invoiceSelectClient.
  ///
  /// In en, this message translates to:
  /// **'Select a client'**
  String get invoiceSelectClient;

  /// No description provided for @invoiceSelectClientSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose who this invoice is for'**
  String get invoiceSelectClientSubtitle;

  /// No description provided for @invoiceSearchClients.
  ///
  /// In en, this message translates to:
  /// **'Search clients...'**
  String get invoiceSearchClients;

  /// No description provided for @invoiceAddNewClient.
  ///
  /// In en, this message translates to:
  /// **'Add New Client'**
  String get invoiceAddNewClient;

  /// No description provided for @invoiceNoClientsFound.
  ///
  /// In en, this message translates to:
  /// **'No clients found'**
  String get invoiceNoClientsFound;

  /// No description provided for @invoiceAddLineItem.
  ///
  /// In en, this message translates to:
  /// **'Add Line Item'**
  String get invoiceAddLineItem;

  /// No description provided for @invoiceItemDescription.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get invoiceItemDescription;

  /// No description provided for @invoiceItemDescriptionHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Web Development'**
  String get invoiceItemDescriptionHint;

  /// No description provided for @invoiceItemQuickAdd.
  ///
  /// In en, this message translates to:
  /// **'Quick Add:'**
  String get invoiceItemQuickAdd;

  /// No description provided for @invoiceItemQty.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get invoiceItemQty;

  /// No description provided for @invoiceItemQtyHint.
  ///
  /// In en, this message translates to:
  /// **'1'**
  String get invoiceItemQtyHint;

  /// No description provided for @invoiceItemRate.
  ///
  /// In en, this message translates to:
  /// **'Rate'**
  String get invoiceItemRate;

  /// No description provided for @invoiceItemRateHint.
  ///
  /// In en, this message translates to:
  /// **'0.00'**
  String get invoiceItemRateHint;

  /// No description provided for @invoiceAddItem.
  ///
  /// In en, this message translates to:
  /// **'Add Item'**
  String get invoiceAddItem;

  /// No description provided for @invoiceLineItems.
  ///
  /// In en, this message translates to:
  /// **'Line Items'**
  String get invoiceLineItems;

  /// No description provided for @invoiceLineItemsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Add services or products'**
  String get invoiceLineItemsSubtitle;

  /// No description provided for @invoiceNoItems.
  ///
  /// In en, this message translates to:
  /// **'No items yet. Add your first item.'**
  String get invoiceNoItems;

  /// No description provided for @invoiceTaxRate.
  ///
  /// In en, this message translates to:
  /// **'Tax Rate (%)'**
  String get invoiceTaxRate;

  /// No description provided for @invoiceSubtotal.
  ///
  /// In en, this message translates to:
  /// **'Subtotal'**
  String get invoiceSubtotal;

  /// No description provided for @invoiceTax.
  ///
  /// In en, this message translates to:
  /// **'Tax ({taxRate}%)'**
  String invoiceTax(Object taxRate);

  /// No description provided for @invoiceTotal.
  ///
  /// In en, this message translates to:
  /// **'TOTAL'**
  String get invoiceTotal;

  /// No description provided for @invoiceReviewHeading.
  ///
  /// In en, this message translates to:
  /// **'Review & Finalize'**
  String get invoiceReviewHeading;

  /// No description provided for @invoiceReviewSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Set dates, add notes, logo, and signature'**
  String get invoiceReviewSubtitle;

  /// No description provided for @invoiceCompanyLogo.
  ///
  /// In en, this message translates to:
  /// **'Company Logo'**
  String get invoiceCompanyLogo;

  /// No description provided for @invoiceAddLogo.
  ///
  /// In en, this message translates to:
  /// **'Add Logo'**
  String get invoiceAddLogo;

  /// No description provided for @invoiceInvoiceDate.
  ///
  /// In en, this message translates to:
  /// **'Invoice Date'**
  String get invoiceInvoiceDate;

  /// No description provided for @invoiceDueDate.
  ///
  /// In en, this message translates to:
  /// **'Due Date'**
  String get invoiceDueDate;

  /// No description provided for @invoiceNotesLabel.
  ///
  /// In en, this message translates to:
  /// **'Notes (Optional)'**
  String get invoiceNotesLabel;

  /// No description provided for @invoiceNotesHint.
  ///
  /// In en, this message translates to:
  /// **'Thank you for your business!'**
  String get invoiceNotesHint;

  /// No description provided for @invoicePaymentTermsLabel.
  ///
  /// In en, this message translates to:
  /// **'Payment Terms (Optional)'**
  String get invoicePaymentTermsLabel;

  /// No description provided for @invoicePaymentTermsHint.
  ///
  /// In en, this message translates to:
  /// **'Payment due within 30 days'**
  String get invoicePaymentTermsHint;

  /// No description provided for @invoiceSignatureLabel.
  ///
  /// In en, this message translates to:
  /// **'Signature'**
  String get invoiceSignatureLabel;

  /// No description provided for @invoiceSignatureOverwrite.
  ///
  /// In en, this message translates to:
  /// **'Existing signature saved. Draw above to overwrite.'**
  String get invoiceSignatureOverwrite;

  /// No description provided for @invoiceCreatedSnackbar.
  ///
  /// In en, this message translates to:
  /// **'Invoice created!'**
  String get invoiceCreatedSnackbar;

  /// No description provided for @invoiceUpdatedSnackbar.
  ///
  /// In en, this message translates to:
  /// **'Invoice updated!'**
  String get invoiceUpdatedSnackbar;

  /// No description provided for @invoiceDetailTitle.
  ///
  /// In en, this message translates to:
  /// **'INVOICE'**
  String get invoiceDetailTitle;

  /// No description provided for @invoiceDetailMarkAsPaid.
  ///
  /// In en, this message translates to:
  /// **'Mark as Paid'**
  String get invoiceDetailMarkAsPaid;

  /// No description provided for @invoiceDetailTotalAmount.
  ///
  /// In en, this message translates to:
  /// **'Total Amount'**
  String get invoiceDetailTotalAmount;

  /// No description provided for @invoiceDetailIssued.
  ///
  /// In en, this message translates to:
  /// **'Issued'**
  String get invoiceDetailIssued;

  /// No description provided for @invoiceDetailDue.
  ///
  /// In en, this message translates to:
  /// **'Due'**
  String get invoiceDetailDue;

  /// No description provided for @invoiceDetailPaid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get invoiceDetailPaid;

  /// No description provided for @invoiceDetailBillTo.
  ///
  /// In en, this message translates to:
  /// **'Bill To'**
  String get invoiceDetailBillTo;

  /// No description provided for @invoiceDetailItems.
  ///
  /// In en, this message translates to:
  /// **'Items'**
  String get invoiceDetailItems;

  /// No description provided for @invoiceDetailNotes.
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get invoiceDetailNotes;

  /// No description provided for @invoiceDetailSignature.
  ///
  /// In en, this message translates to:
  /// **'Signature'**
  String get invoiceDetailSignature;

  /// No description provided for @invoiceDetailMarkedPaidSnackbar.
  ///
  /// In en, this message translates to:
  /// **'Invoice marked as paid!'**
  String get invoiceDetailMarkedPaidSnackbar;

  /// No description provided for @invoiceDetailPdfFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to generate PDF'**
  String get invoiceDetailPdfFailed;

  /// No description provided for @clientListTitle.
  ///
  /// In en, this message translates to:
  /// **'Clients'**
  String get clientListTitle;

  /// No description provided for @clientListSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search clients...'**
  String get clientListSearchHint;

  /// No description provided for @clientListTotalClients.
  ///
  /// In en, this message translates to:
  /// **'Total Clients'**
  String get clientListTotalClients;

  /// No description provided for @clientListTotalBilled.
  ///
  /// In en, this message translates to:
  /// **'Total Billed'**
  String get clientListTotalBilled;

  /// No description provided for @clientListEmptySearch.
  ///
  /// In en, this message translates to:
  /// **'No clients found'**
  String get clientListEmptySearch;

  /// No description provided for @clientListEmpty.
  ///
  /// In en, this message translates to:
  /// **'No clients yet'**
  String get clientListEmpty;

  /// No description provided for @clientListEmptySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Add your first client to start creating invoices'**
  String get clientListEmptySubtitle;

  /// No description provided for @clientListAddClient.
  ///
  /// In en, this message translates to:
  /// **'Add Client'**
  String get clientListAddClient;

  /// No description provided for @clientListTotalBilledLabel.
  ///
  /// In en, this message translates to:
  /// **'total billed'**
  String get clientListTotalBilledLabel;

  /// No description provided for @clientListInvoiceCount.
  ///
  /// In en, this message translates to:
  /// **'{count} invoice'**
  String clientListInvoiceCount(Object count);

  /// No description provided for @clientCreateTitle.
  ///
  /// In en, this message translates to:
  /// **'New Client'**
  String get clientCreateTitle;

  /// No description provided for @clientEditTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit Client'**
  String get clientEditTitle;

  /// No description provided for @clientBasicInfo.
  ///
  /// In en, this message translates to:
  /// **'Basic Information'**
  String get clientBasicInfo;

  /// No description provided for @clientNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Full Name *'**
  String get clientNameLabel;

  /// No description provided for @clientNameHint.
  ///
  /// In en, this message translates to:
  /// **'Acme Corporation'**
  String get clientNameHint;

  /// No description provided for @clientNameRequired.
  ///
  /// In en, this message translates to:
  /// **'Name is required'**
  String get clientNameRequired;

  /// No description provided for @clientNameTooShort.
  ///
  /// In en, this message translates to:
  /// **'Name too short'**
  String get clientNameTooShort;

  /// No description provided for @clientEmailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email Address *'**
  String get clientEmailLabel;

  /// No description provided for @clientEmailHint.
  ///
  /// In en, this message translates to:
  /// **'billing@company.com'**
  String get clientEmailHint;

  /// No description provided for @clientEmailRequired.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get clientEmailRequired;

  /// No description provided for @clientEmailInvalid.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email'**
  String get clientEmailInvalid;

  /// No description provided for @clientPhoneLabel.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get clientPhoneLabel;

  /// No description provided for @clientPhoneHint.
  ///
  /// In en, this message translates to:
  /// **'+971 50 123 4567'**
  String get clientPhoneHint;

  /// No description provided for @clientAddressSection.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get clientAddressSection;

  /// No description provided for @clientAddressLabel.
  ///
  /// In en, this message translates to:
  /// **'Street Address'**
  String get clientAddressLabel;

  /// No description provided for @clientAddressHint.
  ///
  /// In en, this message translates to:
  /// **'123 Business Park, Office 45'**
  String get clientAddressHint;

  /// No description provided for @clientCityLabel.
  ///
  /// In en, this message translates to:
  /// **'City / Country'**
  String get clientCityLabel;

  /// No description provided for @clientCityHint.
  ///
  /// In en, this message translates to:
  /// **'Dubai, United Arab Emirates'**
  String get clientCityHint;

  /// No description provided for @clientBillingDefaults.
  ///
  /// In en, this message translates to:
  /// **'Billing Defaults'**
  String get clientBillingDefaults;

  /// No description provided for @clientDefaultCurrency.
  ///
  /// In en, this message translates to:
  /// **'Default Currency'**
  String get clientDefaultCurrency;

  /// No description provided for @clientDefaultTaxRate.
  ///
  /// In en, this message translates to:
  /// **'Default Tax Rate (VAT/GST)'**
  String get clientDefaultTaxRate;

  /// No description provided for @clientVatLabel.
  ///
  /// In en, this message translates to:
  /// **'VAT / Tax Registration Number'**
  String get clientVatLabel;

  /// No description provided for @clientVatHint.
  ///
  /// In en, this message translates to:
  /// **'123456789012345 (Optional)'**
  String get clientVatHint;

  /// No description provided for @clientUpdateButton.
  ///
  /// In en, this message translates to:
  /// **'Update Client'**
  String get clientUpdateButton;

  /// No description provided for @clientAddButton.
  ///
  /// In en, this message translates to:
  /// **'Add Client'**
  String get clientAddButton;

  /// No description provided for @clientUpdatedSnackbar.
  ///
  /// In en, this message translates to:
  /// **'Client updated!'**
  String get clientUpdatedSnackbar;

  /// No description provided for @clientAddedSnackbar.
  ///
  /// In en, this message translates to:
  /// **'Client added!'**
  String get clientAddedSnackbar;

  /// No description provided for @clientDetailInvoices.
  ///
  /// In en, this message translates to:
  /// **'Invoices'**
  String get clientDetailInvoices;

  /// No description provided for @clientDetailTotalBilled.
  ///
  /// In en, this message translates to:
  /// **'Total Billed'**
  String get clientDetailTotalBilled;

  /// No description provided for @clientDetailOutstanding.
  ///
  /// In en, this message translates to:
  /// **'Outstanding'**
  String get clientDetailOutstanding;

  /// No description provided for @clientDetailEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get clientDetailEdit;

  /// No description provided for @clientDetailNewInvoice.
  ///
  /// In en, this message translates to:
  /// **'New Invoice'**
  String get clientDetailNewInvoice;

  /// No description provided for @clientDetailEmailClient.
  ///
  /// In en, this message translates to:
  /// **'Email Client'**
  String get clientDetailEmailClient;

  /// No description provided for @clientDetailClientDetails.
  ///
  /// In en, this message translates to:
  /// **'Client Details'**
  String get clientDetailClientDetails;

  /// No description provided for @clientDetailEmail.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get clientDetailEmail;

  /// No description provided for @clientDetailPhone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get clientDetailPhone;

  /// No description provided for @clientDetailAddress.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get clientDetailAddress;

  /// No description provided for @clientDetailCity.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get clientDetailCity;

  /// No description provided for @clientDetailCurrency.
  ///
  /// In en, this message translates to:
  /// **'Currency'**
  String get clientDetailCurrency;

  /// No description provided for @clientDetailTaxRate.
  ///
  /// In en, this message translates to:
  /// **'Tax Rate'**
  String get clientDetailTaxRate;

  /// No description provided for @clientDetailVatNumber.
  ///
  /// In en, this message translates to:
  /// **'VAT Number'**
  String get clientDetailVatNumber;

  /// No description provided for @clientDetailInvoiceHistory.
  ///
  /// In en, this message translates to:
  /// **'Invoice History'**
  String get clientDetailInvoiceHistory;

  /// No description provided for @clientDetailNoInvoices.
  ///
  /// In en, this message translates to:
  /// **'No invoices yet for this client'**
  String get clientDetailNoInvoices;

  /// No description provided for @deleteClientTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete Client?'**
  String get deleteClientTitle;

  /// No description provided for @deleteClientMessage.
  ///
  /// In en, this message translates to:
  /// **'Delete {clientName}? This cannot be undone.'**
  String deleteClientMessage(Object clientName);

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @settingsYourName.
  ///
  /// In en, this message translates to:
  /// **'Your Name'**
  String get settingsYourName;

  /// No description provided for @settingsBackupTitle.
  ///
  /// In en, this message translates to:
  /// **'Backup your invoices'**
  String get settingsBackupTitle;

  /// No description provided for @settingsBackupDescription.
  ///
  /// In en, this message translates to:
  /// **'Sign in to sync your data securely and access it from anywhere.'**
  String get settingsBackupDescription;

  /// No description provided for @settingsSignInRegister.
  ///
  /// In en, this message translates to:
  /// **'Sign In or Register'**
  String get settingsSignInRegister;

  /// No description provided for @settingsBusinessSection.
  ///
  /// In en, this message translates to:
  /// **'BUSINESS SETTINGS'**
  String get settingsBusinessSection;

  /// No description provided for @settingsBusinessDetails.
  ///
  /// In en, this message translates to:
  /// **'Business Details'**
  String get settingsBusinessDetails;

  /// No description provided for @settingsBusinessDetailsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Set your business name'**
  String get settingsBusinessDetailsSubtitle;

  /// No description provided for @settingsInvoicePrefix.
  ///
  /// In en, this message translates to:
  /// **'Invoice Prefix'**
  String get settingsInvoicePrefix;

  /// No description provided for @settingsDefaultCurrency.
  ///
  /// In en, this message translates to:
  /// **'Default Currency'**
  String get settingsDefaultCurrency;

  /// No description provided for @settingsAppSection.
  ///
  /// In en, this message translates to:
  /// **'APP SETTINGS'**
  String get settingsAppSection;

  /// No description provided for @settingsDarkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get settingsDarkMode;

  /// No description provided for @settingsDailyNotification.
  ///
  /// In en, this message translates to:
  /// **'Daily Notification'**
  String get settingsDailyNotification;

  /// No description provided for @settingsDailyNotificationNotSet.
  ///
  /// In en, this message translates to:
  /// **'Not set'**
  String get settingsDailyNotificationNotSet;

  /// No description provided for @settingsLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLanguage;

  /// No description provided for @settingsLanguageLabel.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get settingsLanguageLabel;

  /// No description provided for @settingsAboutSection.
  ///
  /// In en, this message translates to:
  /// **'ABOUT'**
  String get settingsAboutSection;

  /// No description provided for @settingsRateApp.
  ///
  /// In en, this message translates to:
  /// **'Rate the App'**
  String get settingsRateApp;

  /// No description provided for @settingsHelpSupport.
  ///
  /// In en, this message translates to:
  /// **'Help & Support'**
  String get settingsHelpSupport;

  /// No description provided for @settingsPrivacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get settingsPrivacyPolicy;

  /// No description provided for @settingsVersion.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get settingsVersion;

  /// No description provided for @settingsVersionNumber.
  ///
  /// In en, this message translates to:
  /// **'1.0.0'**
  String get settingsVersionNumber;

  /// No description provided for @settingsSignOut.
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get settingsSignOut;

  /// No description provided for @settingsEditProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get settingsEditProfile;

  /// No description provided for @settingsProfileNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get settingsProfileNameLabel;

  /// No description provided for @settingsProfileNameHint.
  ///
  /// In en, this message translates to:
  /// **'Your name'**
  String get settingsProfileNameHint;

  /// No description provided for @settingsBusinessNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Business Name'**
  String get settingsBusinessNameLabel;

  /// No description provided for @settingsBusinessNameHint.
  ///
  /// In en, this message translates to:
  /// **'Your Company Ltd.'**
  String get settingsBusinessNameHint;

  /// No description provided for @settingsBusinessEmailLabel.
  ///
  /// In en, this message translates to:
  /// **'Business Email'**
  String get settingsBusinessEmailLabel;

  /// No description provided for @settingsBusinessEmailHint.
  ///
  /// In en, this message translates to:
  /// **'billing@company.com'**
  String get settingsBusinessEmailHint;

  /// No description provided for @settingsPhoneLabel.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get settingsPhoneLabel;

  /// No description provided for @settingsPhoneHint.
  ///
  /// In en, this message translates to:
  /// **'+971 50 123 4567'**
  String get settingsPhoneHint;

  /// No description provided for @settingsAddressLabel.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get settingsAddressLabel;

  /// No description provided for @settingsAddressHint.
  ///
  /// In en, this message translates to:
  /// **'Dubai, United Arab Emirates'**
  String get settingsAddressHint;

  /// No description provided for @settingsBusinessDetailsSaved.
  ///
  /// In en, this message translates to:
  /// **'Business details saved!'**
  String get settingsBusinessDetailsSaved;

  /// No description provided for @settingsInvoicePrefixTitle.
  ///
  /// In en, this message translates to:
  /// **'Invoice Number Prefix'**
  String get settingsInvoicePrefixTitle;

  /// No description provided for @settingsInvoicePrefixHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. INV-, #, Bill-'**
  String get settingsInvoicePrefixHint;

  /// No description provided for @settingsNotificationScheduled.
  ///
  /// In en, this message translates to:
  /// **'Daily notification scheduled successfully!'**
  String get settingsNotificationScheduled;

  /// No description provided for @settingsSignOutTitle.
  ///
  /// In en, this message translates to:
  /// **'Sign Out?'**
  String get settingsSignOutTitle;

  /// No description provided for @settingsSignOutMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to sign out of InvoiceFlow?'**
  String get settingsSignOutMessage;

  /// No description provided for @settingsSignedOut.
  ///
  /// In en, this message translates to:
  /// **'Successfully signed out.'**
  String get settingsSignedOut;

  /// No description provided for @statusPaid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get statusPaid;

  /// No description provided for @statusOverdue.
  ///
  /// In en, this message translates to:
  /// **'Overdue'**
  String get statusOverdue;

  /// No description provided for @statusPending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get statusPending;

  /// No description provided for @statusDraft.
  ///
  /// In en, this message translates to:
  /// **'Draft'**
  String get statusDraft;

  /// No description provided for @statusCancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get statusCancelled;

  /// No description provided for @notificationChannelName.
  ///
  /// In en, this message translates to:
  /// **'Daily Reminders'**
  String get notificationChannelName;

  /// No description provided for @notificationChannelDescription.
  ///
  /// In en, this message translates to:
  /// **'Reminds you to check your invoices daily'**
  String get notificationChannelDescription;

  /// No description provided for @notificationTitle.
  ///
  /// In en, this message translates to:
  /// **'Invoice Reminder'**
  String get notificationTitle;

  /// No description provided for @notificationBody.
  ///
  /// In en, this message translates to:
  /// **'Time to check your recent invoices and track pending payments.'**
  String get notificationBody;

  /// No description provided for @pdfInvoice.
  ///
  /// In en, this message translates to:
  /// **'INVOICE'**
  String get pdfInvoice;

  /// No description provided for @pdfInvoiceNumber.
  ///
  /// In en, this message translates to:
  /// **'Invoice #:'**
  String get pdfInvoiceNumber;

  /// No description provided for @pdfDate.
  ///
  /// In en, this message translates to:
  /// **'Date:'**
  String get pdfDate;

  /// No description provided for @pdfDueDate.
  ///
  /// In en, this message translates to:
  /// **'Due Date:'**
  String get pdfDueDate;

  /// No description provided for @pdfBillTo.
  ///
  /// In en, this message translates to:
  /// **'BILL TO:'**
  String get pdfBillTo;

  /// No description provided for @pdfDescription.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get pdfDescription;

  /// No description provided for @pdfQty.
  ///
  /// In en, this message translates to:
  /// **'Qty'**
  String get pdfQty;

  /// No description provided for @pdfRate.
  ///
  /// In en, this message translates to:
  /// **'Rate'**
  String get pdfRate;

  /// No description provided for @pdfAmount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get pdfAmount;

  /// No description provided for @pdfSubtotal.
  ///
  /// In en, this message translates to:
  /// **'Subtotal:'**
  String get pdfSubtotal;

  /// No description provided for @pdfTax.
  ///
  /// In en, this message translates to:
  /// **'Tax ({taxRate}%):'**
  String pdfTax(Object taxRate);

  /// No description provided for @pdfTotal.
  ///
  /// In en, this message translates to:
  /// **'TOTAL:'**
  String get pdfTotal;

  /// No description provided for @pdfSignature.
  ///
  /// In en, this message translates to:
  /// **'Signature:'**
  String get pdfSignature;

  /// No description provided for @pdfNotes.
  ///
  /// In en, this message translates to:
  /// **'Notes:'**
  String get pdfNotes;

  /// No description provided for @pdfPaymentTerms.
  ///
  /// In en, this message translates to:
  /// **'Payment Terms:'**
  String get pdfPaymentTerms;

  /// No description provided for @pdfThankYou.
  ///
  /// In en, this message translates to:
  /// **'Thank you for your business!'**
  String get pdfThankYou;

  /// No description provided for @quickAddWebDesign.
  ///
  /// In en, this message translates to:
  /// **'Web Design'**
  String get quickAddWebDesign;

  /// No description provided for @quickAddDevelopment.
  ///
  /// In en, this message translates to:
  /// **'Development'**
  String get quickAddDevelopment;

  /// No description provided for @quickAddConsulting.
  ///
  /// In en, this message translates to:
  /// **'Consulting'**
  String get quickAddConsulting;

  /// No description provided for @quickAddSeo.
  ///
  /// In en, this message translates to:
  /// **'SEO'**
  String get quickAddSeo;

  /// No description provided for @quickAddContentWriting.
  ///
  /// In en, this message translates to:
  /// **'Content Writing'**
  String get quickAddContentWriting;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'ar',
        'en',
        'es',
        'fr',
        'ur',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'ur':
      return AppLocalizationsUr();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
