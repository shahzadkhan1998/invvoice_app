// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => '২ মিনিটে প্রফেশনাল ইনভয়েস';

  @override
  String get bottomNavDashboard => 'ড্যাশবোর্ড';

  @override
  String get bottomNavInvoices => 'ইনভয়েস';

  @override
  String get bottomNavClients => 'ক্লায়েন্ট';

  @override
  String get bottomNavSettings => 'সেটিংস';

  @override
  String get commonCancel => 'বাতিল';

  @override
  String get commonDelete => 'মুছুন';

  @override
  String get commonSave => 'সংরক্ষণ করুন';

  @override
  String get commonSearch => 'খুঁজুন';

  @override
  String get commonBack => 'ফিরে যান';

  @override
  String get commonContinue => 'চালিয়ে যান';

  @override
  String get commonAdd => 'যোগ করুন';

  @override
  String get commonEdit => 'সম্পাদনা';

  @override
  String get commonCreate => 'তৈরি করুন';

  @override
  String get commonClear => 'পরিষ্কার করুন';

  @override
  String get commonView => 'দেখুন';

  @override
  String get commonShare => 'শেয়ার করুন';

  @override
  String get commonExportPdf => 'PDF এক্সপোর্ট করুন';

  @override
  String get commonSharePdf => 'PDF শেয়ার করুন';

  @override
  String get commonSaveChanges => 'পরিবর্তন সংরক্ষণ করুন';

  @override
  String get commonRequired => 'প্রয়োজনীয়';

  @override
  String get commonInvalid => 'অবৈধ';

  @override
  String get commonSendLink => 'লিংক পাঠান';

  @override
  String get commonGeneratingPdf => 'PDF তৈরি হচ্ছে...';

  @override
  String get dashboardGreetingMorning => 'শুভ সকাল';

  @override
  String get dashboardGreetingAfternoon => 'শুভ বিকাল';

  @override
  String get dashboardGreetingEvening => 'শুভ সন্ধ্যা';

  @override
  String get dashboardSubtitle => 'আপনার ব্যবসার সারসংক্ষেপ';

  @override
  String get dashboardOutstanding => 'বকেয়া';

  @override
  String get dashboardOverdue => 'মেয়াদোত্তীর্ণ';

  @override
  String get dashboardThisMonth => 'এই মাস';

  @override
  String get dashboardInvoices => 'ইনভয়েস';

  @override
  String dashboardPaidCount(Object count) {
    return '$countটি পরিশোধিত';
  }

  @override
  String get dashboardRecentInvoices => 'সাম্প্রতিক ইনভয়েস';

  @override
  String get dashboardSeeAll => 'সব দেখুন';

  @override
  String get dashboardNotifications => 'নোটিফিকেশন';

  @override
  String get dashboardNotificationsHint =>
      'মেয়াদোত্তীর্ণ ও অপেক্ষমাণ ইনভয়েস নিয়মিত পর্যালোচনা করে নগদ প্রবাহের খবর রাখুন।';

  @override
  String get dashboardNewInvoice => 'নতুন ইনভয়েস';

  @override
  String get dashboardNoInvoicesYet => 'এখনো কোনো ইনভয়েস নেই';

  @override
  String get dashboardNoInvoicesSubtitle =>
      '২ মিনিটের কম সময়ে আপনার প্রথম প্রফেশনাল ইনভয়েস তৈরি করুন';

  @override
  String get dashboardCreateInvoice => 'ইনভয়েস তৈরি করুন';

  @override
  String get dashboardMarkPaid => 'পরিশোধিত হিসেবে চিহ্নিত করুন';

  @override
  String get dashboardDuePrefix => 'নির্ধারিত: ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days দিন মেয়াদোত্তীর্ণ';
  }

  @override
  String get deleteInvoiceTitle => 'ইনভয়েস মুছবেন?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return '$invoiceNumber মুছবেন? এটি পূর্বাবস্থায় ফেরানো যাবে না।';
  }

  @override
  String get loginHeading => 'আবার স্বাগতম';

  @override
  String get loginSubtitle => 'আপনার InvoiceFlow অ্যাকাউন্টে সাইন ইন করুন';

  @override
  String get loginEmailLabel => 'ইমেইল ঠিকানা';

  @override
  String get loginEmailHint => 'you@example.com';

  @override
  String get loginEmailRequired => 'ইমেইল প্রয়োজন';

  @override
  String get loginEmailInvalid => 'সঠিক ইমেইল লিখুন';

  @override
  String get loginPasswordLabel => 'পাসওয়ার্ড';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'পাসওয়ার্ড প্রয়োজন';

  @override
  String get loginPasswordMinLength => 'পাসওয়ার্ড কমপক্ষে ৬ অক্ষরের হতে হবে';

  @override
  String get loginForgotPassword => 'পাসওয়ার্ড ভুলে গেছেন?';

  @override
  String get loginSignIn => 'সাইন ইন';

  @override
  String get loginOrContinueWith => 'অথবা এর মাধ্যমে চালিয়ে যান';

  @override
  String get loginContinueWithGoogle => 'Google দিয়ে চালিয়ে যান';

  @override
  String get loginNoAccount => 'অ্যাকাউন্ট নেই? ';

  @override
  String get loginSignUp => 'সাইন আপ করুন';

  @override
  String get loginResetPasswordTitle => 'পাসওয়ার্ড রিসেট করুন';

  @override
  String get loginResetPasswordMessage =>
      'আপনার ইমেইল লিখুন, আমরা একটি রিসেট লিংক পাঠাব।';

  @override
  String get loginResetPasswordHint => 'you@example.com';

  @override
  String get loginResetLinkSent =>
      'রিসেট লিংক পাঠানো হয়েছে! আপনার ইমেইল চেক করুন।';

  @override
  String get loginResetLinkFailed => 'রিসেট লিংক পাঠানো যায়নি।';

  @override
  String get registerHeading => 'অ্যাকাউন্ট তৈরি করুন';

  @override
  String get registerSubtitle => 'আজই প্রফেশনাল ইনভয়েস পাঠানো শুরু করুন';

  @override
  String get registerNameLabel => 'সম্পূর্ণ নাম';

  @override
  String get registerNameHint => 'আহমেদ মোহাম্মদ';

  @override
  String get registerNameRequired => 'নাম প্রয়োজন';

  @override
  String get registerNameMinLength => 'নাম কমপক্ষে ২ অক্ষরের হতে হবে';

  @override
  String get registerEmailLabel => 'ইমেইল ঠিকানা';

  @override
  String get registerEmailHint => 'you@example.com';

  @override
  String get registerEmailRequired => 'ইমেইল প্রয়োজন';

  @override
  String get registerEmailInvalid => 'সঠিক ইমেইল লিখুন';

  @override
  String get registerPasswordLabel => 'পাসওয়ার্ড';

  @override
  String get registerPasswordHint => 'কমপক্ষে ৬ অক্ষর';

  @override
  String get registerPasswordRequired => 'পাসওয়ার্ড প্রয়োজন';

  @override
  String get registerPasswordMinLength =>
      'পাসওয়ার্ড কমপক্ষে ৬ অক্ষরের হতে হবে';

  @override
  String get registerConfirmPasswordLabel => 'পাসওয়ার্ড নিশ্চিত করুন';

  @override
  String get registerConfirmPasswordHint => 'আপনার পাসওয়ার্ড আবার লিখুন';

  @override
  String get registerConfirmPasswordRequired => 'আপনার পাসওয়ার্ড নিশ্চিত করুন';

  @override
  String get registerPasswordsDoNotMatch => 'পাসওয়ার্ড মিলছে না';

  @override
  String get registerCreateAccount => 'অ্যাকাউন্ট তৈরি করুন';

  @override
  String get registerHaveAccount => 'ইতিমধ্যে অ্যাকাউন্ট আছে? ';

  @override
  String get registerSignIn => 'সাইন ইন';

  @override
  String get authTermsOfService => 'পরিষেবার শর্তাবলী';

  @override
  String get authPrivacyPolicy => 'গোপনীয়তা নীতি';

  @override
  String get authAgreeRequired =>
      'চালিয়ে যেতে অনুগ্রহ করে পরিষেবার শর্তাবলী এবং গোপনীয়তা নীতিতে সম্মত হন';

  @override
  String get loginAgreePrefix => 'চালিয়ে যাওয়ার মাধ্যমে, আপনি আমাদের ';

  @override
  String get registerAgreePrefix => 'আমি সম্মত হচ্ছি ';

  @override
  String get authAgreeAnd => ' এবং ';

  @override
  String get authTermsSheet =>
      'এই পরিষেবার শর্তাবলী InvoiceFlow ব্যবহারের ক্ষেত্রে প্রযোজ্য। অ্যাপটি অ্যাক্সেস বা ব্যবহার করার মাধ্যমে আপনি এই শর্তাবলীতে আবদ্ধ হতে সম্মত হচ্ছেন।\n\n1. আপনি তৈরি করা ইনভয়েস, এন্টিমেট এবং অন্যান্য ডেটার নির্ভুলতার জন্য আপনি দায়ী।\n2. অ্যাপটি কোনো ধরনের ওয়ারেন্টি ছাড়াই \"যেমন আছে\" (as is) ভিত্তিতে প্রদান করা হয়।\n3. পরিষেবা ব্যবহারের ফলে উদ্ভূত কোনো ক্ষতির জন্য আমরা দায়ী নই।\n4. আপনাকে অবশ্যই অ্যাপটি কোনো অবৈধ বা নিষিদ্ধ উদ্দেশ্যে ব্যবহার করা উচিত নয়।\n5. আমরা সময়ে সময়ে এই শর্তাবলী আপডেট করতে পারি; অ্যাপটি অব্যাহতভাবে ব্যবহার করা আপডেটেড শর্তাবলী গ্রহণের সমতুল্য।';

  @override
  String get authPrivacySheet =>
      'আপনার গোপনীয়তা আমাদের কাছে গুরুত্বপূর্ণ।\n\n1. ডেটা স্টোরেজ: আপনার ইনভয়েস, ক্লায়েন্ট এবং সেটিংস আপনার ডিভাইসে স্থানীয়ভাবে সংরক্ষিত হয়।\n2. ক্লাউড সিঙ্ক: আপনি সাইন ইন করলে, আপনার ডেটা আপনার অ্যাকাউন্টে সিঙ্ক হয় যাতে আপনার সব ডিভাইসে সেগুলো অ্যাক্সেসযোগ্য থাকে।\n3. আমরা কখনো আপনার ব্যক্তিগত তথ্য বিক্রি বা শেয়ার করি না।\n4. অ্যানালিটিক্স: অ্যাপ উন্নত করতে আমরা বেনামী ব্যবহারের ডেটা সংগ্রহ করতে পারি।\n5. যোগাযোগ: যেকোনো গোপনীয়তা সংক্রান্ত প্রশ্নের জন্য support@invoiceflow.app-এ যোগাযোগ করুন।';

  @override
  String get authErrorWeakPassword => 'পাসওয়ার্ড খুবই দুর্বল';

  @override
  String get authErrorEmailAlreadyInUse => 'অ্যাকাউন্টটি ইতিমধ্যে বিদ্যমান';

  @override
  String get authErrorUserNotFound =>
      'এই ইমেইলে কোনো ব্যবহারকারী পাওয়া যায়নি';

  @override
  String get authErrorWrongPassword => 'ভুল পাসওয়ার্ড';

  @override
  String get authErrorInvalidEmail => 'অবৈধ ইমেইল ঠিকানা';

  @override
  String get authErrorTooManyRequests =>
      'অনেক বেশি চেষ্টা। পরে আবার চেষ্টা করুন';

  @override
  String get authErrorDefault => 'প্রমাণীকরণ ব্যর্থ হয়েছে। আবার চেষ্টা করুন।';

  @override
  String get authErrorGoogleSignInFailed => 'Google সাইন ইন ব্যর্থ হয়েছে।';

  @override
  String get invoiceListTitle => 'ইনভয়েস';

  @override
  String get invoiceListSearchHint => 'ইনভয়েস খুঁজুন...';

  @override
  String get invoiceListSortDate => 'তারিখ অনুযায়ী সাজান';

  @override
  String get invoiceListSortAmount => 'পরিমাণ অনুযায়ী সাজান';

  @override
  String get invoiceListSortClient => 'ক্লায়েন্ট অনুযায়ী সাজান';

  @override
  String get invoiceListTabAll => 'সব';

  @override
  String get invoiceListTabPaid => 'পরিশোধিত';

  @override
  String get invoiceListTabPending => 'অপেক্ষমাণ';

  @override
  String get invoiceListTabOverdue => 'মেয়াদোত্তীর্ণ';

  @override
  String get invoiceListTabDraft => 'খসড়া';

  @override
  String get invoiceListEmpty => 'কোনো ইনভয়েস পাওয়া যায়নি';

  @override
  String get invoiceCreateTitle => 'নতুন ইনভয়েস';

  @override
  String get invoiceEditTitle => 'ইনভয়েস সম্পাদনা করুন';

  @override
  String get invoiceSaveDraft => 'খসড়া সংরক্ষণ করুন';

  @override
  String get invoiceStepClient => 'ক্লায়েন্ট';

  @override
  String get invoiceStepItems => 'আইটেম';

  @override
  String get invoiceStepReview => 'পর্যালোচনা';

  @override
  String get invoiceSelectClient => 'একটি ক্লায়েন্ট নির্বাচন করুন';

  @override
  String get invoiceSelectClientSubtitle => 'এই ইনভয়েসটি কার জন্য তা বেছে নিন';

  @override
  String get invoiceSearchClients => 'ক্লায়েন্ট খুঁজুন...';

  @override
  String get invoiceAddNewClient => 'নতুন ক্লায়েন্ট যোগ করুন';

  @override
  String get invoiceNoClientsFound => 'কোনো ক্লায়েন্ট পাওয়া যায়নি';

  @override
  String get invoiceSelectClientEmptyHint =>
      'ইনভয়েস তৈরি শুরু করতে আপনার প্রথম ক্লায়েন্ট যোগ করুন';

  @override
  String get invoiceAddLineItem => 'লাইন আইটেম যোগ করুন';

  @override
  String get invoiceItemDescription => 'বিবরণ';

  @override
  String get invoiceItemDescriptionHint => 'যেমন: ওয়েব ডেভেলপমেন্ট';

  @override
  String get invoiceItemQuickAdd => 'দ্রুত যোগ: ';

  @override
  String get invoiceItemQty => 'পরিমাণ';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'হার';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'আইটেম যোগ করুন';

  @override
  String get invoiceLineItems => 'লাইন আইটেম';

  @override
  String get invoiceLineItemsSubtitle => 'সেবা বা পণ্য যোগ করুন';

  @override
  String get invoiceNoItems =>
      'এখনো কোনো আইটেম নেই। আপনার প্রথম আইটেম যোগ করুন।';

  @override
  String get invoiceTaxRate => 'করের হার (%)';

  @override
  String get invoiceSubtotal => 'উপমোট';

  @override
  String invoiceTax(Object taxRate) {
    return 'কর ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'মোট';

  @override
  String get invoiceReviewHeading => 'পর্যালোচনা ও চূড়ান্তকরণ';

  @override
  String get invoiceReviewSubtitle =>
      'তারিখ নির্ধারণ করুন, নোট, লোগো ও স্বাক্ষর যোগ করুন';

  @override
  String get invoiceCompanyLogo => 'কোম্পানির লোগো';

  @override
  String get invoiceAddLogo => 'লোগো যোগ করুন';

  @override
  String get invoiceInvoiceDate => 'ইনভয়েসের তারিখ';

  @override
  String get invoiceDueDate => 'নির্ধারিত তারিখ';

  @override
  String get invoiceNotesLabel => 'নোট (ঐচ্ছিক)';

  @override
  String get invoiceNotesHint => 'আপনার ব্যবসার সাথে থাকার জন্য ধন্যবাদ!';

  @override
  String get invoicePaymentTermsLabel => 'পেমেন্ট শর্ত (ঐচ্ছিক)';

  @override
  String get invoicePaymentTermsHint => '৩০ দিনের মধ্যে পেমেন্ট দিতে হবে';

  @override
  String get invoiceSignatureLabel => 'স্বাক্ষর';

  @override
  String get invoiceSignatureOverwrite =>
      'বিদ্যমান স্বাক্ষর সংরক্ষিত। প্রতিস্থাপন করতে উপরে আঁকুন।';

  @override
  String get invoiceCreatedSnackbar => 'ইনভয়েস তৈরি হয়েছে!';

  @override
  String get invoiceUpdatedSnackbar => 'ইনভয়েস আপডেট হয়েছে!';

  @override
  String get invoiceDetailTitle => 'ইনভয়েস';

  @override
  String get invoiceDetailMarkAsPaid => 'পরিশোধিত হিসেবে চিহ্নিত করুন';

  @override
  String get invoiceDetailTotalAmount => 'মোট পরিমাণ';

  @override
  String get invoiceDetailIssued => 'ইস্যুকৃত';

  @override
  String get invoiceDetailDue => 'নির্ধারিত';

  @override
  String get invoiceDetailPaid => 'পরিশোধিত';

  @override
  String get invoiceDetailBillTo => 'বিল প্রাপক';

  @override
  String get invoiceDetailItems => 'আইটেম';

  @override
  String get invoiceDetailNotes => 'নোট';

  @override
  String get invoiceDetailSignature => 'স্বাক্ষর';

  @override
  String get invoiceDetailMarkedPaidSnackbar =>
      'ইনভয়েস পরিশোধিত হিসেবে চিহ্নিত হয়েছে!';

  @override
  String get invoiceDetailPdfFailed => 'PDF তৈরি করা যায়নি';

  @override
  String get clientListTitle => 'ক্লায়েন্ট';

  @override
  String get clientListSearchHint => 'ক্লায়েন্ট খুঁজুন...';

  @override
  String get clientListTotalClients => 'মোট ক্লায়েন্ট';

  @override
  String get clientListTotalBilled => 'মোট বিলকৃত';

  @override
  String get clientListEmptySearch => 'কোনো ক্লায়েন্ট পাওয়া যায়নি';

  @override
  String get clientListEmpty => 'এখনো কোনো ক্লায়েন্ট নেই';

  @override
  String get clientListEmptySubtitle =>
      'ইনভয়েস তৈরি শুরু করতে আপনার প্রথম ক্লায়েন্ট যোগ করুন';

  @override
  String get clientListAddClient => 'ক্লায়েন্ট যোগ করুন';

  @override
  String get clientListTotalBilledLabel => 'মোট বিলকৃত';

  @override
  String clientListInvoiceCount(Object count) {
    return '$countটি ইনভয়েস';
  }

  @override
  String get clientCreateTitle => 'নতুন ক্লায়েন্ট';

  @override
  String get clientEditTitle => 'ক্লায়েন্ট সম্পাদনা করুন';

  @override
  String get clientBasicInfo => 'মৌলিক তথ্য';

  @override
  String get clientNameLabel => 'সম্পূর্ণ নাম *';

  @override
  String get clientNameHint => 'Acme কর্পোরেশন';

  @override
  String get clientNameRequired => 'নাম প্রয়োজন';

  @override
  String get clientNameTooShort => 'নাম খুব ছোট';

  @override
  String get clientEmailLabel => 'ইমেইল ঠিকানা *';

  @override
  String get clientEmailHint => 'billing@company.com';

  @override
  String get clientEmailRequired => 'ইমেইল প্রয়োজন';

  @override
  String get clientEmailInvalid => 'সঠিক ইমেইল লিখুন';

  @override
  String get clientPhoneLabel => 'ফোন নম্বর';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'ঠিকানা';

  @override
  String get clientAddressLabel => 'রাস্তার ঠিকানা';

  @override
  String get clientAddressHint => '123 Business Park, অফিস 45';

  @override
  String get clientCityLabel => 'শহর / দেশ';

  @override
  String get clientCityHint => 'দুবাই, সংযুক্ত আরব আমিরাত';

  @override
  String get clientBillingDefaults => 'বিলিং ডিফল্ট';

  @override
  String get clientDefaultCurrency => 'ডিফল্ট মুদ্রা';

  @override
  String get clientDefaultTaxRate => 'ডিফল্ট করের হার (VAT/GST)';

  @override
  String get clientVatLabel => 'VAT / কর নিবন্ধন নম্বর';

  @override
  String get clientVatHint => '123456789012345 (ঐচ্ছিক)';

  @override
  String get clientUpdateButton => 'ক্লায়েন্ট আপডেট করুন';

  @override
  String get clientAddButton => 'ক্লায়েন্ট যোগ করুন';

  @override
  String get clientUpdatedSnackbar => 'ক্লায়েন্ট আপডেট হয়েছে!';

  @override
  String get clientAddedSnackbar => 'ক্লায়েন্ট যোগ হয়েছে!';

  @override
  String get clientDetailInvoices => 'ইনভয়েস';

  @override
  String get clientDetailTotalBilled => 'মোট বিলকৃত';

  @override
  String get clientDetailOutstanding => 'বকেয়া';

  @override
  String get clientDetailEdit => 'সম্পাদনা';

  @override
  String get clientDetailNewInvoice => 'নতুন ইনভয়েস';

  @override
  String get clientDetailEmailClient => 'ক্লায়েন্টকে ইমেইল করুন';

  @override
  String get clientDetailClientDetails => 'ক্লায়েন্টের বিবরণ';

  @override
  String get clientDetailEmail => 'ইমেইল';

  @override
  String get clientDetailPhone => 'ফোন';

  @override
  String get clientDetailAddress => 'ঠিকানা';

  @override
  String get clientDetailCity => 'শহর';

  @override
  String get clientDetailCurrency => 'মুদ্রা';

  @override
  String get clientDetailTaxRate => 'করের হার';

  @override
  String get clientDetailVatNumber => 'VAT নম্বর';

  @override
  String get clientDetailInvoiceHistory => 'ইনভয়েস ইতিহাস';

  @override
  String get clientDetailNoInvoices =>
      'এই ক্লায়েন্টের জন্য এখনো কোনো ইনভয়েস নেই';

  @override
  String get deleteClientTitle => 'ক্লায়েন্ট মুছবেন?';

  @override
  String deleteClientMessage(Object clientName) {
    return '$clientName মুছবেন? এটি পূর্বাবস্থায় ফেরানো যাবে না।';
  }

  @override
  String get settingsTitle => 'সেটিংস';

  @override
  String get settingsYourName => 'আপনার নাম';

  @override
  String get settingsBackupTitle => 'আপনার ইনভয়েস ব্যাকআপ করুন';

  @override
  String get settingsBackupDescription =>
      'সুরক্ষিতভাবে ডেটা সিঙ্ক করতে এবং যেকোনো জায়গা থেকে অ্যাক্সেস করতে সাইন ইন করুন।';

  @override
  String get settingsSignInRegister => 'সাইন ইন বা নিবন্ধন করুন';

  @override
  String get settingsProUpsell =>
      'সীমাহীন ইনভয়েস, ক্লাউড সিঙ্ক ও ওয়াটারমার্ক ছাড়াই Pro-তে আপগ্রেড করুন।';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'আপনি ফ্রি প্ল্যানের $limit ইনভয়েসের সীমায় পৌঁছেছেন। সীমাহীন ইনভয়েস ও ক্লাউড সিঙ্কের জন্য Pro-তে আপগ্রেড করুন।';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'আপনি ফ্রি প্ল্যানের $limit ক্লায়েন্টের সীমায় পৌঁছেছেন। সীমাহীন ক্লায়েন্ট ও ক্লাউড সিঙ্কের জন্য Pro-তে আপগ্রেড করুন।';
  }

  @override
  String get settingsUpgradePro => 'আপগ্রেড';

  @override
  String get settingsBusinessSection => 'ব্যবসায়িক সেটিংস';

  @override
  String get settingsBusinessDetails => 'ব্যবসার বিবরণ';

  @override
  String get settingsBusinessDetailsSubtitle =>
      'আপনার ব্যবসার নাম নির্ধারণ করুন';

  @override
  String get settingsInvoicePrefix => 'ইনভয়েস প্রিফিক্স';

  @override
  String get settingsDefaultCurrency => 'ডিফল্ট মুদ্রা';

  @override
  String get settingsAppSection => 'অ্যাপ সেটিংস';

  @override
  String get settingsDarkMode => 'ডার্ক মোড';

  @override
  String get settingsDailyNotification => 'দৈনিক নোটিফিকেশন';

  @override
  String get settingsDailyNotificationNotSet => 'নির্ধারণ করা হয়নি';

  @override
  String get settingsLanguage => 'ভাষা';

  @override
  String get settingsLanguageLabel => 'বাংলা';

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
  String get settingsAboutSection => 'সম্পর্কে';

  @override
  String get settingsRateApp => 'অ্যাপ রেট করুন';

  @override
  String get settingsHelpSupport => 'সহায়তা ও সাপোর্ট';

  @override
  String get settingsPrivacyPolicy => 'গোপনীয়তা নীতি';

  @override
  String get settingsHelpSupportSheet =>
      'সাহায্য দরকার? support@invoiceflow.app-এ যোগাযোগ করুন, ২৪ ঘণ্টার মধ্যে আমরা ফিরে আসব।';

  @override
  String get settingsPrivacySheet =>
      'আপনার ডেটা আপনার ডিভাইসে স্থানীয়ভাবে সংরক্ষিত থাকে। আমরা কখনোই আপনার ব্যক্তিগত তথ্য বিক্রি বা শেয়ার করি না।';

  @override
  String get settingsVersion => 'সংস্করণ';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'সাইন আউট';

  @override
  String get settingsEditProfile => 'প্রোফাইল সম্পাদনা করুন';

  @override
  String get settingsProfileNameLabel => 'সম্পূর্ণ নাম';

  @override
  String get settingsProfileNameHint => 'আপনার নাম';

  @override
  String get settingsBusinessNameLabel => 'ব্যবসার নাম';

  @override
  String get settingsBusinessNameHint => 'আপনার কোম্পানি লি.';

  @override
  String get settingsBusinessEmailLabel => 'ব্যবসার ইমেইল';

  @override
  String get settingsBusinessEmailHint => 'billing@company.com';

  @override
  String get settingsPhoneLabel => 'ফোন';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'ঠিকানা';

  @override
  String get settingsAddressHint => 'দুবাই, সংযুক্ত আরব আমিরাত';

  @override
  String get settingsBusinessDetailsSaved => 'ব্যবসার বিবরণ সংরক্ষিত হয়েছে!';

  @override
  String get settingsInvoicePrefixTitle => 'ইনভয়েস নম্বর প্রিফিক্স';

  @override
  String get settingsInvoicePrefixHint => 'যেমন: INV-, #, Bill-';

  @override
  String get settingsPrefixSaved => 'ইনভয়েস প্রিফিক্স সংরক্ষিত হয়েছে';

  @override
  String get settingsNotificationScheduled =>
      'দৈনিক নোটিফিকেশন সফলভাবে নির্ধারিত হয়েছে!';

  @override
  String get settingsSignOutTitle => 'সাইন আউট করবেন?';

  @override
  String get settingsSignOutMessage =>
      'আপনি কি InvoiceFlow থেকে সাইন আউট করতে নিশ্চিত?';

  @override
  String get settingsSignedOut => 'সফলভাবে সাইন আউট হয়েছে।';

  @override
  String get statusPaid => 'পরিশোধিত';

  @override
  String get statusOverdue => 'মেয়াদোত্তীর্ণ';

  @override
  String get statusPending => 'অপেক্ষমাণ';

  @override
  String get statusDraft => 'খসড়া';

  @override
  String get statusCancelled => 'বাতিল';

  @override
  String get notificationChannelName => 'দৈনিক রিমাইন্ডার';

  @override
  String get notificationChannelDescription =>
      'প্রতিদিন আপনার ইনভয়েস চেক করার কথা মনে করিয়ে দেয়';

  @override
  String get notificationTitle => 'ইনভয়েস রিমাইন্ডার';

  @override
  String get notificationBody =>
      'আপনার সাম্প্রতিক ইনভয়েস চেক এবং অপেক্ষমাণ পেমেন্ট ট্র্যাক করার সময়।';

  @override
  String get pdfInvoice => 'ইনভয়েস';

  @override
  String get pdfInvoiceNumber => 'ইনভয়েস #:';

  @override
  String get pdfDate => 'তারিখ:';

  @override
  String get pdfDueDate => 'নির্ধারিত তারিখ:';

  @override
  String get pdfBillTo => 'বিল প্রাপক:';

  @override
  String get pdfDescription => 'বিবরণ';

  @override
  String get pdfQty => 'পরিমাণ';

  @override
  String get pdfRate => 'হার';

  @override
  String get pdfAmount => 'অঙ্ক';

  @override
  String get pdfSubtotal => 'উপমোট:';

  @override
  String pdfTax(Object taxRate) {
    return 'কর ($taxRate%):';
  }

  @override
  String get pdfTotal => 'মোট:';

  @override
  String get pdfSignature => 'স্বাক্ষর:';

  @override
  String get pdfNotes => 'নোট:';

  @override
  String get pdfPaymentTerms => 'পেমেন্ট শর্ত:';

  @override
  String get pdfThankYou => 'আপনার ব্যবসার সাথে থাকার জন্য ধন্যবাদ!';

  @override
  String get quickAddWebDesign => 'ওয়েব ডিজাইন';

  @override
  String get quickAddDevelopment => 'ডেভেলপমেন্ট';

  @override
  String get quickAddConsulting => 'কনসালটিং';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'কন্টেন্ট রাইটিং';

  @override
  String get paywallTitle => 'InvoiceFlow Pro আনলক করুন';

  @override
  String get paywallSubtitle =>
      'সীমাহীন ব্যবহার করুন এবং সব জায়গায় সিঙ্ক করুন। যেকোনো সময় বাতিল করুন।';

  @override
  String get paywallFeatureUnlimited => 'সীমাহীন ইনভয়েস ও ক্লায়েন্ট';

  @override
  String get paywallFeatureSync => 'ডিভাইসজুড়ে ক্লাউড সিঙ্ক';

  @override
  String get paywallFeatureNoWatermark => 'কখনোই ওয়াটারমার্ক নেই';

  @override
  String get paywallMonthly => 'মাসিক';

  @override
  String get paywallMonthlySub => 'মাসিক বিলিং';

  @override
  String get paywallYearly => 'বার্ষিক';

  @override
  String get paywallYearlySub => 'সেরা মূল্য — ২ মাস ফ্রি';

  @override
  String get paywallRestore => 'ক্রয় পুনরুদ্ধার করুন';

  @override
  String get paywallTerms =>
      'সাবস্ক্রিপশন স্বয়ংক্রিয়ভাবে নবায়ন হয়। আপনার অ্যাপ স্টোর সেটিংসে পরিচালনা করুন।';

  @override
  String get purchaseSuccessTitle => 'আপনি Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'সীমাহীন ইনভয়েস, ক্লাউড সিঙ্ক এবং ওয়াটারমার্ক-মুক্ত এখন আনলক হয়েছে। ধন্যবাদ!';

  @override
  String get purchaseSuccessContinue => 'চালিয়ে যান';

  @override
  String get paywallLoading => 'প্ল্যান লোড হচ্ছে…';

  @override
  String get paywallLoadError =>
      'প্ল্যান লোড করা যায়নি। আপনার সংযোগ পরীক্ষা করে আবার চেষ্টা করুন।';

  @override
  String get paywallNoOffering => 'এই মুহূর্তে কোনো প্ল্যান পাওয়া যাচ্ছে না।';

  @override
  String get paywallChoosePlan => 'Choose your plan';

  @override
  String get paywallLifetime => 'Lifetime';

  @override
  String get paywallLifetimeSub => 'One-time payment';

  @override
  String get paywallPerMonth => '/mo';

  @override
  String get paywallBestValue => 'Best Value';

  @override
  String get paywallSubscribe => 'Subscribe Now';

  @override
  String get purchaseRestored => 'ক্রয় সফলভাবে পুনরুদ্ধার করা হয়েছে';

  @override
  String get purchaseErrorGeneric =>
      'ক্রয় ব্যর্থ হয়েছে। অনুগ্রহ করে আবার চেষ্টা করুন।';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro সক্রিয় — সীমাহীন ইনভয়েস, ক্লায়েন্ট ও ওয়াটারমার্ক ছাড়া';

  @override
  String get settingsFreePlan => 'ফ্রি প্ল্যান';

  @override
  String get settingsFreeHint =>
      'সীমাহীন ইনভয়েস, ক্লাউড সিঙ্ক ও আরও অনেক কিছু পেতে আপগ্রেড করুন';

  @override
  String get settingsUpgradeToPro => 'Pro-তে আপগ্রেড করুন';

  @override
  String get settingsManageSubscription => 'সাবস্ক্রিপশন পরিচালনা করুন';

  @override
  String get customerCenterFailed => 'সাবস্ক্রিপশন ব্যবস্থাপনা খোলা যাচ্ছে না।';

  @override
  String get onboardingSkip => 'স্কিপ';

  @override
  String get onboardingNext => 'পরবর্তী';

  @override
  String get onboardingGetStarted => 'শুরু করুন';

  @override
  String get onboardingWelcomeTitle => '২ মিনিটে ইনভয়েস';

  @override
  String get onboardingWelcomeBody =>
      'আপনার ক্লায়েন্টদের জন্য প্রফেশনাল PDF ইনভয়েস তৈরি করুন — দ্রুত এবং সুন্দর।';

  @override
  String get onboardingSyncTitle => 'সব জায়গায় সিঙ্ক করুন';

  @override
  String get onboardingSyncBody =>
      'সাইন ইন করে নিরাপদে আপনার ডেটা ক্লাউডে ব্যাকআপ করুন এবং যেকোনো ডিভাইস থেকে অ্যাক্সেস করুন।';

  @override
  String get onboardingProTitle => 'Pro-এর মাধ্যমে সীমাহীন ব্যবহার করুন';

  @override
  String get onboardingProBody =>
      'InvoiceFlow Pro-এর মাধ্যমে সীমাহীন ইনভয়েস, ক্লাউড সিঙ্ক আনলক করুন এবং ওয়াটারমার্ক সরিয়ে ফেলুন।';

  @override
  String get settingsAccentColor => 'অ্যাকসেন্ট রং';

  @override
  String get settingsAccentColorHint =>
      'আপনার পছন্দের রং দিয়ে অ্যাপটি ব্যক্তিগতকৃত করুন।';

  @override
  String get settingsCountry => 'দেশ';

  @override
  String get settingsTaxId => 'কর নিবন্ধন নম্বর';

  @override
  String get settingsTaxIdNotSet => 'নির্ধারণ করা হয়নি';

  @override
  String get settingsTaxIdHint => 'যেমন: 123456789012345';

  @override
  String get settingsTaxIdSaved => 'কর আইডি সংরক্ষিত হয়েছে';

  @override
  String get catalogTitle => 'পণ্য ও সেবা';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি আইটেম',
      one: '$countটি আইটেম',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'এখনো কোনো পণ্য নেই';

  @override
  String get catalogEmptySubtitle =>
      'পুনরায় ব্যবহারযোগ্য পণ্য ও সেবা সংরক্ষণ করুন, দ্রুত ইনভয়েসে যোগ করতে।';

  @override
  String get catalogFromSaved => 'আপনার ক্যাটালগ থেকে';

  @override
  String get catalogSaveToCatalog =>
      'পুনরায় ব্যবহারের জন্য ক্যাটালগে সংরক্ষণ করুন';

  @override
  String get catalogAddSnackbar => 'ক্যাটালগে যোগ হয়েছে';

  @override
  String get catalogDeleteTitle => 'আইটেম মুছবেন?';

  @override
  String catalogDeleteMessage(String description) {
    return '«$description» মুছবেন? এটি ফেরানো যাবে না।';
  }

  @override
  String get commonDone => 'সম্পন্ন';

  @override
  String get estimateListTitle => 'এস্টিমেট';

  @override
  String get estimateListSearchHint => 'এস্টিমেট খুঁজুন…';

  @override
  String get estimateListEmpty => 'এখনো কোনো এস্টিমেট নেই';

  @override
  String get estimateListTabAll => 'সব';

  @override
  String get estimateListTabDraft => 'খসড়া';

  @override
  String get estimateListTabSent => 'পাঠানো';

  @override
  String get estimateListTabAccepted => 'গৃহীত';

  @override
  String get estimateListTabExpired => 'মেয়াদোত্তীর্ণ';

  @override
  String get estimateCreateTitle => 'নতুন এস্টিমেট';

  @override
  String get estimateEditTitle => 'এস্টিমেট সম্পাদনা করুন';

  @override
  String get estimateCreatedSnackbar => 'এস্টিমেট সংরক্ষিত হয়েছে';

  @override
  String get estimateUpdatedSnackbar => 'এস্টিমেট আপডেট হয়েছে';

  @override
  String get estimateIssueDate => 'ইস্যুর তারিখ';

  @override
  String get estimateExpiryDate => 'মেয়াদ শেষের তারিখ';

  @override
  String get estimateExpiresPrefix => 'মেয়াদ শেষ: ';

  @override
  String get estimateConvertToInvoice => 'ইনভয়েসে রূপান্তর করুন';

  @override
  String get estimateConvertedSnackbar => 'এস্টিমেট ইনভয়েসে রূপান্তরিত হয়েছে';

  @override
  String get estimateConvertFailed => 'এস্টিমেট রূপান্তর করা যায়নি';

  @override
  String get estimateMarkSent => 'পাঠানো হিসেবে চিহ্নিত করুন';

  @override
  String get estimateMarkAccepted => 'গৃহীত হিসেবে চিহ্নিত করুন';

  @override
  String get estimateMarkDeclined => 'প্রত্যাখ্যাত হিসেবে চিহ্নিত করুন';

  @override
  String get estimateConvertedTitle => 'রূপান্তরিত';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'ইনভয়েস $invoiceId এ রূপান্তরিত হয়েছে';
  }

  @override
  String get estimateDetailTotal => 'এস্টিমেট মোট';

  @override
  String get estimateStatusSent => 'পাঠানো';

  @override
  String get estimateStatusAccepted => 'গৃহীত';

  @override
  String get estimateStatusDeclined => 'প্রত্যাখ্যাত';

  @override
  String get estimateStatusExpired => 'মেয়াদোত্তীর্ণ';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি খোলা',
      one: '$countটি খোলা',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'এস্টিমেট মুছবেন?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return '«$estimateNumber» মুছবেন? এটি ফেরানো যাবে না।';
  }

  @override
  String get estimatePdfFailed => 'PDF তৈরি করা যায়নি';

  @override
  String get pdfEstimate => 'এস্টিমেট';

  @override
  String get pdfEstimateNumber => 'এস্টিমেট #:';

  @override
  String get pdfValidUntil => 'বৈধ পর্যন্ত:';

  @override
  String get invoiceDetailPaymentTerms => 'পেমেন্ট শর্ত';

  @override
  String get recurringListTitle => 'পুনরাবৃত্ত ইনভয়েস';

  @override
  String get recurringListEmpty => 'এখনো কোনো পুনরাবৃত্ত ইনভয়েস নেই';

  @override
  String get recurringListEmptySubtitle =>
      'নিয়মিত ক্লায়েন্ট ও সেবার জন্য স্বয়ংক্রিয় ইনভয়েস সেট আপ করুন।';

  @override
  String get recurringCreateTitle => 'নতুন পুনরাবৃত্ত';

  @override
  String get recurringEditTitle => 'পুনরাবৃত্ত সম্পাদনা করুন';

  @override
  String get recurringCreatedSnackbar => 'পুনরাবৃত্ত ইনভয়েস সংরক্ষিত হয়েছে';

  @override
  String get recurringUpdatedSnackbar => 'পুনরাবৃত্ত ইনভয়েস আপডেট হয়েছে';

  @override
  String get recurringDeleteTitle => 'পুনরাবৃত্ত ইনভয়েস মুছবেন?';

  @override
  String recurringDeleteMessage(String title) {
    return '«$title» মুছবেন? বিদ্যমান ইনভয়েসগুলো সরানো হবে না।';
  }

  @override
  String get recurringTitleLabel => 'শিরোনাম';

  @override
  String get recurringTitleHint => 'যেমন: মাসিক রিটেইনার';

  @override
  String get recurringClientLabel => 'ক্লায়েন্ট';

  @override
  String get recurringFrequencyLabel => 'ফ্রিকোয়েন্সি';

  @override
  String get recurringFrequencyWeekly => 'সাপ্তাহিক';

  @override
  String get recurringFrequencyBiweekly => 'দ্বি-সাপ্তাহিক';

  @override
  String get recurringFrequencyMonthly => 'মাসিক';

  @override
  String get recurringFrequencyQuarterly => 'ত্রৈমাসিক';

  @override
  String get recurringFrequencyYearly => 'বার্ষিক';

  @override
  String get recurringNextRun => 'পরবর্তী চালান';

  @override
  String get recurringDueDays => 'নির্ধারিত';

  @override
  String get recurringDays => 'দিন';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countটি সক্রিয়',
      one: '$countটি সক্রিয়',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'রিপোর্ট';

  @override
  String get reportsSubtitle => 'ব্যবসা বিশ্লেষণ';

  @override
  String get reportsEmpty => 'রিপোর্ট দেখতে ইনভয়েস তৈরি করুন';

  @override
  String get reportsCollected => 'আদায়কৃত';

  @override
  String get reportsOutstanding => 'বকেয়া';

  @override
  String get reportsMonthlyRevenue => 'মাসিক আয়';

  @override
  String get reportsLast6Months => 'শেষ ৬ মাস';

  @override
  String get reportsByStatus => 'অবস্থা অনুযায়ী';

  @override
  String get reportsTopClients => 'শীর্ষ ক্লায়েন্ট';

  @override
  String get paymentLinkTitle => 'পেমেন্ট লিংক';

  @override
  String get paymentLinkNotSet => 'সেটিংসে কোনো পেমেন্ট লিংক নেই';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'আপনার পেমেন্ট লিংক ইনভয়েস PDF-এ অন্তর্ভুক্ত থাকে এবং ইনভয়েস মেনু থেকে কপি করা যায়।';

  @override
  String get paymentLinkSaved => 'পেমেন্ট লিংক সংরক্ষিত হয়েছে';

  @override
  String get settingsPaymentLinkNotSet => 'নির্ধারণ করা হয়নি';

  @override
  String get invoiceDetailCopyPaymentLink => 'পেমেন্ট লিংক কপি করুন';

  @override
  String get paymentLinkCopied => 'পেমেন্ট লিংক কপি হয়েছে';

  @override
  String get pdfPayOnline => 'অনলাইনে পেমেন্ট করুন';

  @override
  String get exportXml => 'XML এক্সপোর্ট করুন';

  @override
  String get exportXmlFailed => 'XML এক্সপোর্ট করা যায়নি';
}
