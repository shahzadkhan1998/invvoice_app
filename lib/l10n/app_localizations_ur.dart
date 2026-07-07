// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appTitle => 'انوائس فلو';

  @override
  String get splashSubtitle => '2 منٹ میں پیشہ ورانہ انوائس';

  @override
  String get bottomNavDashboard => 'ڈیش بورڈ';

  @override
  String get bottomNavInvoices => 'انوائسز';

  @override
  String get bottomNavClients => 'کلائنٹس';

  @override
  String get bottomNavSettings => 'سیٹنگز';

  @override
  String get commonCancel => 'منسوخ کریں';

  @override
  String get commonDelete => 'حذف کریں';

  @override
  String get commonSave => 'محفوظ کریں';

  @override
  String get commonSearch => 'تلاش کریں';

  @override
  String get commonBack => 'واپس';

  @override
  String get commonContinue => 'جاری رکھیں';

  @override
  String get commonAdd => 'شامل کریں';

  @override
  String get commonEdit => 'ترمیم کریں';

  @override
  String get commonCreate => 'بنائیں';

  @override
  String get commonClear => 'صاف کریں';

  @override
  String get commonView => 'دیکھیں';

  @override
  String get commonShare => 'شیئر کریں';

  @override
  String get commonExportPdf => 'PDF برآمد کریں';

  @override
  String get commonSharePdf => 'PDF شیئر کریں';

  @override
  String get commonSaveChanges => 'تبدیلیاں محفوظ کریں';

  @override
  String get commonRequired => 'ضروری';

  @override
  String get commonInvalid => 'غلط';

  @override
  String get commonSendLink => 'لنک بھیجیں';

  @override
  String get commonGeneratingPdf => 'PDF تیار ہو رہا ہے...';

  @override
  String get dashboardGreetingMorning => 'صبح بخیر';

  @override
  String get dashboardGreetingAfternoon => 'دوپہر بخیر';

  @override
  String get dashboardGreetingEvening => 'شام بخیر';

  @override
  String get dashboardSubtitle => 'آپ کے کاروبار کا جائزہ';

  @override
  String get dashboardOutstanding => 'زیر التواء';

  @override
  String get dashboardOverdue => 'واجب الادا';

  @override
  String get dashboardThisMonth => 'اس ماہ';

  @override
  String get dashboardInvoices => 'انوائسز';

  @override
  String dashboardPaidCount(Object count) {
    return '$count ادا شدہ';
  }

  @override
  String get dashboardRecentInvoices => 'حالیہ انوائسز';

  @override
  String get dashboardSeeAll => 'سب دیکھیں →';

  @override
  String get dashboardNewInvoice => 'نئی انوائس';

  @override
  String get dashboardNoInvoicesYet => 'ابھی تک کوئی انوائس نہیں';

  @override
  String get dashboardNoInvoicesSubtitle =>
      '2 منٹ میں اپنی پہلی پیشہ ورانہ انوائس بنائیں';

  @override
  String get dashboardCreateInvoice => 'انوائس بنائیں';

  @override
  String get dashboardMarkPaid => 'ادا شدہ نشان زد کریں';

  @override
  String get dashboardDuePrefix => 'واجب الادا ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days دن واجب الادا';
  }

  @override
  String get deleteInvoiceTitle => 'انوائس حذف کریں؟';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return '$invoiceNumber حذف کریں؟ یہ عمل واپس نہیں کیا جا سکتا۔';
  }

  @override
  String get loginHeading => 'خوش آمدید';

  @override
  String get loginSubtitle => 'اپنے انوائس فلو اکاؤنٹ میں سائن ان کریں';

  @override
  String get loginEmailLabel => 'ای میل ایڈریس';

  @override
  String get loginEmailHint => 'you@example.com';

  @override
  String get loginEmailRequired => 'ای میل ضروری ہے';

  @override
  String get loginEmailInvalid => 'ایک درست ای میل درج کریں';

  @override
  String get loginPasswordLabel => 'پاس ورڈ';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'پاس ورڈ ضروری ہے';

  @override
  String get loginPasswordMinLength => 'پاس ورڈ کم از کم 6 حروف کا ہونا چاہیے';

  @override
  String get loginForgotPassword => 'پاس ورڈ بھول گئے؟';

  @override
  String get loginSignIn => 'سائن ان';

  @override
  String get loginOrContinueWith => 'یا جاری رکھیں';

  @override
  String get loginContinueWithGoogle => 'Google کے ساتھ جاری رکھیں';

  @override
  String get loginNoAccount => 'اکاؤنٹ نہیں ہے؟ ';

  @override
  String get loginSignUp => 'سائن اپ';

  @override
  String get loginResetPasswordTitle => 'پاس ورڈ ری سیٹ کریں';

  @override
  String get loginResetPasswordMessage =>
      'اپنا ای میل درج کریں ہم آپ کو ری سیٹ لنک بھیجیں گے۔';

  @override
  String get loginResetPasswordHint => 'you@example.com';

  @override
  String get loginResetLinkSent =>
      'ری سیٹ لنک بھیج دیا گیا! اپنا ای میل چیک کریں۔';

  @override
  String get loginResetLinkFailed => 'ری سیٹ لنک بھیجنے میں ناکامی۔';

  @override
  String get registerHeading => 'اکاؤنٹ بنائیں';

  @override
  String get registerSubtitle => 'آج ہی پیشہ ورانہ انوائس بھیجنا شروع کریں';

  @override
  String get registerNameLabel => 'مکمل نام';

  @override
  String get registerNameHint => 'احمد محمد';

  @override
  String get registerNameRequired => 'نام ضروری ہے';

  @override
  String get registerNameMinLength => 'نام کم از کم 2 حروف کا ہونا چاہیے';

  @override
  String get registerEmailLabel => 'ای میل ایڈریس';

  @override
  String get registerEmailHint => 'you@example.com';

  @override
  String get registerEmailRequired => 'ای میل ضروری ہے';

  @override
  String get registerEmailInvalid => 'ایک درست ای میل درج کریں';

  @override
  String get registerPasswordLabel => 'پاس ورڈ';

  @override
  String get registerPasswordHint => 'کم از کم 6 حروف';

  @override
  String get registerPasswordRequired => 'پاس ورڈ ضروری ہے';

  @override
  String get registerPasswordMinLength =>
      'پاس ورڈ کم از کم 6 حروف کا ہونا چاہیے';

  @override
  String get registerConfirmPasswordLabel => 'پاس ورڈ کی تصدیق کریں';

  @override
  String get registerConfirmPasswordHint => 'اپنا پاس ورڈ دوبارہ درج کریں';

  @override
  String get registerConfirmPasswordRequired =>
      'براہ کرم اپنے پاس ورڈ کی تصدیق کریں';

  @override
  String get registerPasswordsDoNotMatch => 'پاس ورڈ مماثل نہیں ہیں';

  @override
  String get registerCreateAccount => 'اکاؤنٹ بنائیں';

  @override
  String get registerHaveAccount => 'پہلے سے اکاؤنٹ ہے؟ ';

  @override
  String get registerSignIn => 'سائن ان';

  @override
  String get authErrorWeakPassword => 'پاس ورڈ بہت کمزور ہے';

  @override
  String get authErrorEmailAlreadyInUse => 'اکاؤنٹ پہلے سے موجود ہے';

  @override
  String get authErrorUserNotFound => 'اس ای میل سے کوئی صارف نہیں ملا';

  @override
  String get authErrorWrongPassword => 'غلط پاس ورڈ';

  @override
  String get authErrorInvalidEmail => 'غلط ای میل پتہ';

  @override
  String get authErrorTooManyRequests =>
      'بہت زیادہ کوششیں۔ بعد میں دوبارہ کوشش کریں۔';

  @override
  String get authErrorDefault => 'تصدیق ناکام۔ دوبارہ کوشش کریں۔';

  @override
  String get authErrorGoogleSignInFailed => 'Google سائن ان ناکام۔';

  @override
  String get invoiceListTitle => 'انوائسز';

  @override
  String get invoiceListSearchHint => 'انوائسز تلاش کریں...';

  @override
  String get invoiceListSortDate => 'تاریخ کے مطابق ترتیب دیں';

  @override
  String get invoiceListSortAmount => 'رقم کے مطابق ترتیب دیں';

  @override
  String get invoiceListSortClient => 'کلائنٹ کے مطابق ترتیب دیں';

  @override
  String get invoiceListTabAll => 'تمام';

  @override
  String get invoiceListTabPaid => 'ادا شدہ';

  @override
  String get invoiceListTabPending => 'زیر التواء';

  @override
  String get invoiceListTabOverdue => 'واجب الادا';

  @override
  String get invoiceListTabDraft => 'مسودہ';

  @override
  String get invoiceListEmpty => 'کوئی انوائس نہیں ملی';

  @override
  String get invoiceCreateTitle => 'نئی انوائس';

  @override
  String get invoiceEditTitle => 'انوائس میں ترمیم کریں';

  @override
  String get invoiceSaveDraft => 'مسودہ محفوظ کریں';

  @override
  String get invoiceStepClient => 'کلائنٹ';

  @override
  String get invoiceStepItems => 'آئٹمز';

  @override
  String get invoiceStepReview => 'جائزہ';

  @override
  String get invoiceSelectClient => 'کلائنٹ منتخب کریں';

  @override
  String get invoiceSelectClientSubtitle => 'منتخب کریں یہ انوائس کس کے لیے ہے';

  @override
  String get invoiceSearchClients => 'کلائنٹس تلاش کریں...';

  @override
  String get invoiceAddNewClient => 'نیا کلائنٹ شامل کریں';

  @override
  String get invoiceNoClientsFound => 'کوئی کلائنٹ نہیں ملا';

  @override
  String get invoiceAddLineItem => 'آئٹم شامل کریں';

  @override
  String get invoiceItemDescription => 'وضاحت';

  @override
  String get invoiceItemDescriptionHint => 'مثلاً ویب ڈیولپمنٹ';

  @override
  String get invoiceItemQuickAdd => 'فوری اضافہ:';

  @override
  String get invoiceItemQty => 'مقدار';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'شرح';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'آئٹم شامل کریں';

  @override
  String get invoiceLineItems => 'انوائس آئٹمز';

  @override
  String get invoiceLineItemsSubtitle => 'خدمات یا مصنوعات شامل کریں';

  @override
  String get invoiceNoItems =>
      'ابھی تک کوئی آئٹم نہیں۔ اپنا پہلا آئٹم شامل کریں۔';

  @override
  String get invoiceTaxRate => 'ٹیکس کی شرح (%)';

  @override
  String get invoiceSubtotal => 'ذیلی کل';

  @override
  String invoiceTax(Object taxRate) {
    return 'ٹیکس ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'کل';

  @override
  String get invoiceReviewHeading => 'جائزہ لیں اور حتمی شکل دیں';

  @override
  String get invoiceReviewSubtitle =>
      'تاریخیں مقرر کریں، نوٹس، لوگو اور دستخط شامل کریں';

  @override
  String get invoiceCompanyLogo => 'کمپنی کا لوگو';

  @override
  String get invoiceAddLogo => 'لوگو شامل کریں';

  @override
  String get invoiceInvoiceDate => 'انوائس کی تاریخ';

  @override
  String get invoiceDueDate => 'واجب الادا تاریخ';

  @override
  String get invoiceNotesLabel => 'نوٹس (اختیاری)';

  @override
  String get invoiceNotesHint => 'آپ کے کاروبار کا شکریہ!';

  @override
  String get invoicePaymentTermsLabel => 'ادائیگی کی شرائط (اختیاری)';

  @override
  String get invoicePaymentTermsHint => '30 دنوں میں ادائیگی';

  @override
  String get invoiceSignatureLabel => 'دستخط';

  @override
  String get invoiceSignatureOverwrite =>
      'موجودہ دستخط محفوظ ہے۔ تبدیل کرنے کے لیے اوپر ڈرا کریں۔';

  @override
  String get invoiceCreatedSnackbar => 'انوائس بن گئی!';

  @override
  String get invoiceUpdatedSnackbar => 'انوائس اپ ڈیٹ ہو گئی!';

  @override
  String get invoiceDetailTitle => 'انوائس';

  @override
  String get invoiceDetailMarkAsPaid => 'ادا شدہ نشان زد کریں';

  @override
  String get invoiceDetailTotalAmount => 'کل رقم';

  @override
  String get invoiceDetailIssued => 'جاری کردہ';

  @override
  String get invoiceDetailDue => 'واجب الادا';

  @override
  String get invoiceDetailPaid => 'ادا شدہ';

  @override
  String get invoiceDetailBillTo => 'بل وصول کنندہ';

  @override
  String get invoiceDetailItems => 'آئٹمز';

  @override
  String get invoiceDetailNotes => 'نوٹس';

  @override
  String get invoiceDetailSignature => 'دستخط';

  @override
  String get invoiceDetailMarkedPaidSnackbar => 'انوائس ادا شدہ نشان زد!';

  @override
  String get invoiceDetailPdfFailed => 'PDF تیار کرنے میں ناکامی';

  @override
  String get clientListTitle => 'کلائنٹس';

  @override
  String get clientListSearchHint => 'کلائنٹس تلاش کریں...';

  @override
  String get clientListTotalClients => 'کل کلائنٹس';

  @override
  String get clientListTotalBilled => 'کل بل';

  @override
  String get clientListEmptySearch => 'کوئی کلائنٹ نہیں ملا';

  @override
  String get clientListEmpty => 'ابھی تک کوئی کلائنٹ نہیں';

  @override
  String get clientListEmptySubtitle =>
      'انوائس بنانا شروع کرنے کے لیے اپنا پہلا کلائنٹ شامل کریں';

  @override
  String get clientListAddClient => 'کلائنٹ شامل کریں';

  @override
  String get clientListTotalBilledLabel => 'کل بل شدہ';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count انوائس';
  }

  @override
  String get clientCreateTitle => 'نیا کلائنٹ';

  @override
  String get clientEditTitle => 'کلائنٹ میں ترمیم کریں';

  @override
  String get clientBasicInfo => 'بنیادی معلومات';

  @override
  String get clientNameLabel => 'مکمل نام *';

  @override
  String get clientNameHint => 'Acme کارپوریشن';

  @override
  String get clientNameRequired => 'نام ضروری ہے';

  @override
  String get clientNameTooShort => 'نام بہت چھوٹا ہے';

  @override
  String get clientEmailLabel => 'ای میل ایڈریس *';

  @override
  String get clientEmailHint => 'billing@company.com';

  @override
  String get clientEmailRequired => 'ای میل ضروری ہے';

  @override
  String get clientEmailInvalid => 'ایک درست ای میل درج کریں';

  @override
  String get clientPhoneLabel => 'فون نمبر';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'پتہ';

  @override
  String get clientAddressLabel => 'پتہ';

  @override
  String get clientAddressHint => '123 بزنس پارک، آفس 45';

  @override
  String get clientCityLabel => 'شہر / ملک';

  @override
  String get clientCityHint => 'دبئی، متحدہ عرب امارات';

  @override
  String get clientBillingDefaults => 'بلنگ ڈیفالٹس';

  @override
  String get clientDefaultCurrency => 'ڈیفالٹ کرنسی';

  @override
  String get clientDefaultTaxRate => 'ڈیفالٹ ٹیکس کی شرح (VAT/GST)';

  @override
  String get clientVatLabel => 'VAT / ٹیکس رجسٹریشن نمبر';

  @override
  String get clientVatHint => '123456789012345 (اختیاری)';

  @override
  String get clientUpdateButton => 'کلائنٹ اپ ڈیٹ کریں';

  @override
  String get clientAddButton => 'کلائنٹ شامل کریں';

  @override
  String get clientUpdatedSnackbar => 'کلائنٹ اپ ڈیٹ ہو گیا!';

  @override
  String get clientAddedSnackbar => 'کلائنٹ شامل ہو گیا!';

  @override
  String get clientDetailInvoices => 'انوائسز';

  @override
  String get clientDetailTotalBilled => 'کل بل شدہ';

  @override
  String get clientDetailOutstanding => 'زیر التواء';

  @override
  String get clientDetailEdit => 'ترمیم کریں';

  @override
  String get clientDetailNewInvoice => 'نئی انوائس';

  @override
  String get clientDetailEmailClient => 'ای میل بھیجیں';

  @override
  String get clientDetailClientDetails => 'کلائنٹ کی تفصیلات';

  @override
  String get clientDetailEmail => 'ای میل';

  @override
  String get clientDetailPhone => 'فون';

  @override
  String get clientDetailAddress => 'پتہ';

  @override
  String get clientDetailCity => 'شہر';

  @override
  String get clientDetailCurrency => 'کرنسی';

  @override
  String get clientDetailTaxRate => 'ٹیکس کی شرح';

  @override
  String get clientDetailVatNumber => 'VAT نمبر';

  @override
  String get clientDetailInvoiceHistory => 'انوائس کی تاریخ';

  @override
  String get clientDetailNoInvoices =>
      'ابھی تک اس کلائنٹ کے لیے کوئی انوائس نہیں';

  @override
  String get deleteClientTitle => 'کلائنٹ حذف کریں؟';

  @override
  String deleteClientMessage(Object clientName) {
    return '$clientName حذف کریں؟ یہ عمل واپس نہیں کیا جا سکتا۔';
  }

  @override
  String get settingsTitle => 'سیٹنگز';

  @override
  String get settingsYourName => 'آپ کا نام';

  @override
  String get settingsBackupTitle => 'اپنی انوائسز کا بیک اپ لیں';

  @override
  String get settingsBackupDescription =>
      'محفوظ طریقے سے ڈیٹا سنک کرنے اور کہیں سے بھی رسائی حاصل کرنے کے لیے سائن ان کریں۔';

  @override
  String get settingsSignInRegister => 'سائن ان یا رجسٹر کریں';

  @override
  String get settingsBusinessSection => 'کاروباری سیٹنگز';

  @override
  String get settingsBusinessDetails => 'کاروباری تفصیلات';

  @override
  String get settingsBusinessDetailsSubtitle => 'اپنے کاروبار کا نام مقرر کریں';

  @override
  String get settingsInvoicePrefix => 'انوائس کا سابقہ';

  @override
  String get settingsDefaultCurrency => 'ڈیفالٹ کرنسی';

  @override
  String get settingsAppSection => 'ایپ سیٹنگز';

  @override
  String get settingsDarkMode => 'ڈارک موڈ';

  @override
  String get settingsDailyNotification => 'یومیہ اطلاع';

  @override
  String get settingsDailyNotificationNotSet => 'مقرر نہیں';

  @override
  String get settingsLanguage => 'زبان';

  @override
  String get settingsLanguageLabel => 'اردو';

  @override
  String get settingsAboutSection => 'معلومات';

  @override
  String get settingsRateApp => 'ایپ کی درجہ بندی کریں';

  @override
  String get settingsHelpSupport => 'مدد اور معاونت';

  @override
  String get settingsPrivacyPolicy => 'رازداری کی پالیسی';

  @override
  String get settingsVersion => 'ورژن';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'سائن آؤٹ';

  @override
  String get settingsEditProfile => 'پروفائل میں ترمیم کریں';

  @override
  String get settingsProfileNameLabel => 'مکمل نام';

  @override
  String get settingsProfileNameHint => 'آپ کا نام';

  @override
  String get settingsBusinessNameLabel => 'کاروبار کا نام';

  @override
  String get settingsBusinessNameHint => 'آپ کی کمپنی لمیٹڈ';

  @override
  String get settingsBusinessEmailLabel => 'کاروباری ای میل';

  @override
  String get settingsBusinessEmailHint => 'billing@company.com';

  @override
  String get settingsPhoneLabel => 'فون';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'پتہ';

  @override
  String get settingsAddressHint => 'دبئی، متحدہ عرب امارات';

  @override
  String get settingsBusinessDetailsSaved => 'کاروباری تفصیلات محفوظ ہو گئیں!';

  @override
  String get settingsInvoicePrefixTitle => 'انوائس نمبر کا سابقہ';

  @override
  String get settingsInvoicePrefixHint => 'مثلاً INV-, #, Bill-';

  @override
  String get settingsNotificationScheduled =>
      'یومیہ اطلاع کامیابی سے شیڈول ہو گئی!';

  @override
  String get settingsSignOutTitle => 'سائن آؤٹ کریں؟';

  @override
  String get settingsSignOutMessage =>
      'کیا آپ واقعی انوائس فلو سے سائن آؤٹ کرنا چاہتے ہیں؟';

  @override
  String get settingsSignedOut => 'کامیابی سے سائن آؤٹ کر لیا گیا۔';

  @override
  String get statusPaid => 'ادا شدہ';

  @override
  String get statusOverdue => 'واجب الادا';

  @override
  String get statusPending => 'زیر التواء';

  @override
  String get statusDraft => 'مسودہ';

  @override
  String get statusCancelled => 'منسوخ شدہ';

  @override
  String get notificationChannelName => 'یومیہ یاد دہانیاں';

  @override
  String get notificationChannelDescription =>
      'آپ کو یومیہ انوائس چیک کرنے کی یاد دلاتا ہے';

  @override
  String get notificationTitle => 'انوائس یاد دہانی';

  @override
  String get notificationBody =>
      'وقت ہے اپنی حالیہ انوائسز چیک کرنے اور زیر التواء ادائیگیوں کو ٹریک کرنے کا۔';

  @override
  String get pdfInvoice => 'انوائس';

  @override
  String get pdfInvoiceNumber => 'انوائس نمبر:';

  @override
  String get pdfDate => 'تاریخ:';

  @override
  String get pdfDueDate => 'واجب الادا تاریخ:';

  @override
  String get pdfBillTo => 'بل وصول کنندہ:';

  @override
  String get pdfDescription => 'وضاحت';

  @override
  String get pdfQty => 'مقدار';

  @override
  String get pdfRate => 'شرح';

  @override
  String get pdfAmount => 'رقم';

  @override
  String get pdfSubtotal => 'ذیلی کل:';

  @override
  String pdfTax(Object taxRate) {
    return 'ٹیکس ($taxRate%):';
  }

  @override
  String get pdfTotal => 'کل:';

  @override
  String get pdfSignature => 'دستخط:';

  @override
  String get pdfNotes => 'نوٹس:';

  @override
  String get pdfPaymentTerms => 'ادائیگی کی شرائط:';

  @override
  String get pdfThankYou => 'آپ کے کاروبار کا شکریہ!';

  @override
  String get quickAddWebDesign => 'ویب ڈیزائن';

  @override
  String get quickAddDevelopment => 'ڈیولپمنٹ';

  @override
  String get quickAddConsulting => 'کنسلٹنگ';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'مواد نویسی';
}
