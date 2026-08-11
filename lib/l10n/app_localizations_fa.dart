// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'فاکتورهای حرفه‌ای در ۲ دقیقه';

  @override
  String get bottomNavDashboard => 'داشبورد';

  @override
  String get bottomNavInvoices => 'فاکتورها';

  @override
  String get bottomNavClients => 'مشتریان';

  @override
  String get bottomNavSettings => 'تنظیمات';

  @override
  String get commonCancel => 'انصراف';

  @override
  String get commonDelete => 'حذف';

  @override
  String get commonSave => 'ذخیره';

  @override
  String get commonSearch => 'جستجو';

  @override
  String get commonBack => 'بازگشت';

  @override
  String get commonContinue => 'ادامه';

  @override
  String get commonAdd => 'افزودن';

  @override
  String get commonEdit => 'ویرایش';

  @override
  String get commonCreate => 'ایجاد';

  @override
  String get commonClear => 'پاک‌کردن';

  @override
  String get commonView => 'مشاهده';

  @override
  String get commonShare => 'اشتراک‌گذاری';

  @override
  String get commonExportPdf => 'خروجی PDF';

  @override
  String get commonSharePdf => 'اشتراک PDF';

  @override
  String get commonSaveChanges => 'ذخیره تغییرات';

  @override
  String get commonRequired => 'الزامی';

  @override
  String get commonInvalid => 'نامعتبر';

  @override
  String get commonSendLink => 'ارسال لینک';

  @override
  String get commonGeneratingPdf => 'در حال تولید PDF...';

  @override
  String get dashboardGreetingMorning => 'صبح بخیر';

  @override
  String get dashboardGreetingAfternoon => 'ظهر بخیر';

  @override
  String get dashboardGreetingEvening => 'عصر بخیر';

  @override
  String get dashboardSubtitle => 'این خلاصه کسب‌وکار شماست';

  @override
  String get dashboardOutstanding => 'مانده';

  @override
  String get dashboardOverdue => 'معوق';

  @override
  String get dashboardThisMonth => 'این ماه';

  @override
  String get dashboardInvoices => 'فاکتور';

  @override
  String dashboardPaidCount(Object count) {
    return '$count پرداخت‌شده';
  }

  @override
  String get dashboardRecentInvoices => 'فاکتورهای اخیر';

  @override
  String get dashboardSeeAll => 'مشاهده همه';

  @override
  String get dashboardNotifications => 'اعلان‌ها';

  @override
  String get dashboardNotificationsHint =>
      'با بررسی منظم فاکتورهای معوق و در انتظار، جریان نقدی خود را پیگیری کنید.';

  @override
  String get dashboardNewInvoice => 'فاکتور جدید';

  @override
  String get dashboardNoInvoicesYet => 'هنوز فاکتوری نیست';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'اولین فاکتور حرفه‌ای خود را در کمتر از ۲ دقیقه ایجاد کنید';

  @override
  String get dashboardCreateInvoice => 'ایجاد فاکتور';

  @override
  String get dashboardMarkPaid => 'علامت‌گذاری به‌عنوان پرداخت‌شده';

  @override
  String get dashboardDuePrefix => 'سررسید ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days روز معوق';
  }

  @override
  String get deleteInvoiceTitle => 'حذف فاکتور؟';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return '$invoiceNumber حذف شود؟ این عمل قابل بازگشت نیست.';
  }

  @override
  String get loginHeading => 'خوش آمدید';

  @override
  String get loginSubtitle => 'به حساب InvoiceFlow خود وارد شوید';

  @override
  String get loginEmailLabel => 'نشانی ایمیل';

  @override
  String get loginEmailHint => 'you@example.com';

  @override
  String get loginEmailRequired => 'ایمیل الزامی است';

  @override
  String get loginEmailInvalid => 'یک ایمیل معتبر وارد کنید';

  @override
  String get loginPasswordLabel => 'رمز عبور';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'رمز عبور الزامی است';

  @override
  String get loginPasswordMinLength => 'رمز عبور باید حداقل ۶ کاراکتر باشد';

  @override
  String get loginForgotPassword => 'رمز عبور را فراموش کرده‌اید؟';

  @override
  String get loginSignIn => 'ورود';

  @override
  String get loginOrContinueWith => 'یا ادامه با';

  @override
  String get loginContinueWithGoogle => 'ادامه با Google';

  @override
  String get loginNoAccount => 'حساب کاربری ندارید؟ ';

  @override
  String get loginSignUp => 'ثبت‌نام';

  @override
  String get loginResetPasswordTitle => 'بازنشانی رمز عبور';

  @override
  String get loginResetPasswordMessage =>
      'ایمیل خود را وارد کنید تا لینک بازنشانی برای شما ارسال شود.';

  @override
  String get loginResetPasswordHint => 'you@example.com';

  @override
  String get loginResetLinkSent =>
      'لینک بازنشانی ارسال شد! ایمیل خود را بررسی کنید.';

  @override
  String get loginResetLinkFailed => 'ارسال لینک بازنشانی انجام نشد.';

  @override
  String get registerHeading => 'ایجاد حساب';

  @override
  String get registerSubtitle => 'از امروز فاکتورهای حرفه‌ای ارسال کنید';

  @override
  String get registerNameLabel => 'نام کامل';

  @override
  String get registerNameHint => 'احمد محمدی';

  @override
  String get registerNameRequired => 'نام الزامی است';

  @override
  String get registerNameMinLength => 'نام باید حداقل ۲ کاراکتر باشد';

  @override
  String get registerEmailLabel => 'نشانی ایمیل';

  @override
  String get registerEmailHint => 'you@example.com';

  @override
  String get registerEmailRequired => 'ایمیل الزامی است';

  @override
  String get registerEmailInvalid => 'یک ایمیل معتبر وارد کنید';

  @override
  String get registerPasswordLabel => 'رمز عبور';

  @override
  String get registerPasswordHint => 'حداقل ۶ کاراکتر';

  @override
  String get registerPasswordRequired => 'رمز عبور الزامی است';

  @override
  String get registerPasswordMinLength => 'رمز عبور باید حداقل ۶ کاراکتر باشد';

  @override
  String get registerConfirmPasswordLabel => 'تأیید رمز عبور';

  @override
  String get registerConfirmPasswordHint => 'رمز عبور را تکرار کنید';

  @override
  String get registerConfirmPasswordRequired =>
      'لطفاً رمز عبور خود را تأیید کنید';

  @override
  String get registerPasswordsDoNotMatch => 'رمزهای عبور مطابقت ندارند';

  @override
  String get registerCreateAccount => 'ایجاد حساب';

  @override
  String get registerHaveAccount => 'از قبل حساب دارید؟ ';

  @override
  String get registerSignIn => 'ورود';

  @override
  String get authTermsOfService => 'شرایط استفاده از خدمات';

  @override
  String get authPrivacyPolicy => 'سیاست حفظ حریم خصوصی';

  @override
  String get authAgreeRequired =>
      'برای ادامه، لطفاً شرایط استفاده از خدمات و سیاست حفظ حریم خصوصی را بپذیرید';

  @override
  String get loginAgreePrefix => 'با ادامه، شما شرایط ';

  @override
  String get registerAgreePrefix => 'من شرایط ';

  @override
  String get authAgreeAnd => ' و ';

  @override
  String get authTermsSheet =>
      'این شرایط استفاده از خدمات، استفاده شما از InvoiceFlow را تنظیم می‌کند. با دسترسی یا استفاده از برنامه، موافقت می‌کنید که به این شرایط پایبند باشید.\n\n1. شما مسئول صحت فاکتورها، پیش‌فاکتورها و سایر داده‌هایی هستید که ایجاد می‌کنید.\n2. برنامه «همان‌طور که هست» و بدون هرگونه ضمانت، صریح یا ضمنی، ارائه می‌شود.\n3. ما در قبال خسارت‌های ناشی از استفاده شما از سرویس مسئول نیستیم.\n4. شما نباید از برنامه برای اهداف غیرقانونی یا ممنوع استفاده کنید.\n5. ما ممکن است این شرایط را گاهی به‌روزرسانی کنیم؛ ادامه استفاده از برنامه به‌منزله پذیرش شرایط به‌روزرسانی‌شده است.';

  @override
  String get authPrivacySheet =>
      'حریم خصوصی شما برای ما مهم است.\n\n1. ذخیره‌سازی داده‌ها: فاکتورها، مشتریان و تنظیمات شما به‌صورت محلی روی دستگاه شما ذخیره می‌شوند.\n2. همگام‌سازی ابری: اگر وارد شوید، داده‌های شما با حساب شما همگام می‌شوند تا در همه دستگاه‌های شما در دسترس باشند.\n3. ما هرگز اطلاعات شخصی شما را نمی‌فروشیم یا به اشتراک نمی‌گذاریم.\n4. تجزیه‌وتحلیل: ممکن است داده‌های استفاده ناشناس را برای بهبود برنامه جمع‌آوری کنیم.\n5. تماس: برای هر سؤالی درباره حریم خصوصی، با support@invoiceflow.app تماس بگیرید.';

  @override
  String get authErrorWeakPassword => 'رمز عبور بسیار ضعیف است';

  @override
  String get authErrorEmailAlreadyInUse => 'حساب کاربری از قبل وجود دارد';

  @override
  String get authErrorUserNotFound => 'کاربری با این ایمیل یافت نشد';

  @override
  String get authErrorWrongPassword => 'رمز عبور اشتباه است';

  @override
  String get authErrorInvalidEmail => 'نشانی ایمیل نامعتبر است';

  @override
  String get authErrorTooManyRequests =>
      'تعداد تلاش‌ها بیش از حد است. بعداً دوباره تلاش کنید';

  @override
  String get authErrorDefault => 'احراز هویت انجام نشد. دوباره تلاش کنید.';

  @override
  String get authErrorGoogleSignInFailed => 'ورود با Google انجام نشد.';

  @override
  String get invoiceListTitle => 'فاکتورها';

  @override
  String get invoiceListSearchHint => 'جستجوی فاکتورها...';

  @override
  String get invoiceListSortDate => 'مرتب‌سازی بر اساس تاریخ';

  @override
  String get invoiceListSortAmount => 'مرتب‌سازی بر اساس مبلغ';

  @override
  String get invoiceListSortClient => 'مرتب‌سازی بر اساس مشتری';

  @override
  String get invoiceListTabAll => 'همه';

  @override
  String get invoiceListTabPaid => 'پرداخت‌شده';

  @override
  String get invoiceListTabPending => 'در انتظار';

  @override
  String get invoiceListTabOverdue => 'معوق';

  @override
  String get invoiceListTabDraft => 'پیش‌نویس';

  @override
  String get invoiceListEmpty => 'فاکتوری یافت نشد';

  @override
  String get invoiceCreateTitle => 'فاکتور جدید';

  @override
  String get invoiceEditTitle => 'ویرایش فاکتور';

  @override
  String get invoiceSaveDraft => 'ذخیره پیش‌نویس';

  @override
  String get invoiceStepClient => 'مشتری';

  @override
  String get invoiceStepItems => 'آیتم‌ها';

  @override
  String get invoiceStepReview => 'بررسی';

  @override
  String get invoiceSelectClient => 'انتخاب مشتری';

  @override
  String get invoiceSelectClientSubtitle =>
      'انتخاب کنید که این فاکتور برای چه کسی است';

  @override
  String get invoiceSearchClients => 'جستجوی مشتریان...';

  @override
  String get invoiceAddNewClient => 'افزودن مشتری جدید';

  @override
  String get invoiceNoClientsFound => 'مشتری‌ای یافت نشد';

  @override
  String get invoiceSelectClientEmptyHint =>
      'برای شروع ساخت فاکتورها، اولین مشتری خود را ایجاد کنید';

  @override
  String get invoiceAddLineItem => 'افزودن آیتم';

  @override
  String get invoiceItemDescription => 'شرح';

  @override
  String get invoiceItemDescriptionHint => 'مثلاً طراحی وب';

  @override
  String get invoiceItemQuickAdd => 'افزودن سریع:';

  @override
  String get invoiceItemQty => 'تعداد';

  @override
  String get invoiceItemQtyHint => '۱';

  @override
  String get invoiceItemRate => 'نرخ';

  @override
  String get invoiceItemRateHint => '۰٫۰۰';

  @override
  String get invoiceAddItem => 'افزودن آیتم';

  @override
  String get invoiceLineItems => 'اقلام فاکتور';

  @override
  String get invoiceLineItemsSubtitle => 'خدمات یا محصولات را اضافه کنید';

  @override
  String get invoiceNoItems => 'هنوز آیتمی نیست. اولین آیتم خود را اضافه کنید.';

  @override
  String get invoiceTaxRate => 'نرخ مالیات (%)';

  @override
  String get invoiceSubtotal => 'جمع جزء';

  @override
  String invoiceTax(Object taxRate) {
    return 'مالیات ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'جمع کل';

  @override
  String get invoiceReviewHeading => 'بررسی و نهایی‌سازی';

  @override
  String get invoiceReviewSubtitle =>
      'تاریخ‌ها را تعیین کنید، یادداشت، لوگو و امضا اضافه کنید';

  @override
  String get invoiceCompanyLogo => 'لوگوی شرکت';

  @override
  String get invoiceAddLogo => 'افزودن لوگو';

  @override
  String get invoiceInvoiceDate => 'تاریخ فاکتور';

  @override
  String get invoiceDueDate => 'تاریخ سررسید';

  @override
  String get invoiceNotesLabel => 'یادداشت‌ها (اختیاری)';

  @override
  String get invoiceNotesHint => 'از همکاری با شما سپاسگزاریم!';

  @override
  String get invoicePaymentTermsLabel => 'شرایط پرداخت (اختیاری)';

  @override
  String get invoicePaymentTermsHint => 'پرداخت تا ۳۰ روز';

  @override
  String get invoiceSignatureLabel => 'امضا';

  @override
  String get invoiceSignatureOverwrite =>
      'امضای قبلی ذخیره شد. برای جایگزینی، در بالا امضا کنید.';

  @override
  String get invoiceCreatedSnackbar => 'فاکتور ایجاد شد!';

  @override
  String get invoiceUpdatedSnackbar => 'فاکتور به‌روزرسانی شد!';

  @override
  String get invoiceDetailTitle => 'فاکتور';

  @override
  String get invoiceDetailMarkAsPaid => 'علامت‌گذاری به‌عنوان پرداخت‌شده';

  @override
  String get invoiceDetailTotalAmount => 'مبلغ کل';

  @override
  String get invoiceDetailIssued => 'صادرشده';

  @override
  String get invoiceDetailDue => 'سررسید';

  @override
  String get invoiceDetailPaid => 'پرداخت‌شده';

  @override
  String get invoiceDetailBillTo => 'پرداخت‌کننده';

  @override
  String get invoiceDetailItems => 'آیتم‌ها';

  @override
  String get invoiceDetailNotes => 'یادداشت‌ها';

  @override
  String get invoiceDetailSignature => 'امضا';

  @override
  String get invoiceDetailMarkedPaidSnackbar =>
      'فاکتور به‌عنوان پرداخت‌شده علامت‌گذاری شد!';

  @override
  String get invoiceDetailPdfFailed => 'ایجاد PDF انجام نشد';

  @override
  String get clientListTitle => 'مشتریان';

  @override
  String get clientListSearchHint => 'جستجوی مشتریان...';

  @override
  String get clientListTotalClients => 'کل مشتریان';

  @override
  String get clientListTotalBilled => 'کل فاکتور شده';

  @override
  String get clientListEmptySearch => 'مشتری‌ای یافت نشد';

  @override
  String get clientListEmpty => 'هنوز مشتری‌ای نیست';

  @override
  String get clientListEmptySubtitle =>
      'برای شروع ایجاد فاکتور، اولین مشتری خود را اضافه کنید';

  @override
  String get clientListAddClient => 'افزودن مشتری';

  @override
  String get clientListTotalBilledLabel => 'کل فاکتور شده';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count فاکتور';
  }

  @override
  String get clientCreateTitle => 'مشتری جدید';

  @override
  String get clientEditTitle => 'ویرایش مشتری';

  @override
  String get clientBasicInfo => 'اطلاعات پایه';

  @override
  String get clientNameLabel => 'نام کامل *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'نام الزامی است';

  @override
  String get clientNameTooShort => 'نام بسیار کوتاه است';

  @override
  String get clientEmailLabel => 'نشانی ایمیل *';

  @override
  String get clientEmailHint => 'billing@company.com';

  @override
  String get clientEmailRequired => 'ایمیل الزامی است';

  @override
  String get clientEmailInvalid => 'یک ایمیل معتبر وارد کنید';

  @override
  String get clientPhoneLabel => 'شماره تلفن';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'نشانی';

  @override
  String get clientAddressLabel => 'نشانی خیابان';

  @override
  String get clientAddressHint => 'مرکز تجاری ۱۲۳، دفتر ۴۵';

  @override
  String get clientCityLabel => 'شهر / کشور';

  @override
  String get clientCityHint => 'دبی، امارات متحده عربی';

  @override
  String get clientBillingDefaults => 'پیش‌فرض‌های صورت‌حساب';

  @override
  String get clientDefaultCurrency => 'ارز پیش‌فرض';

  @override
  String get clientDefaultTaxRate => 'نرخ مالیات پیش‌فرض (VAT/GST)';

  @override
  String get clientVatLabel => 'شماره ثبت VAT / مالیات';

  @override
  String get clientVatHint => '123456789012345 (اختیاری)';

  @override
  String get clientUpdateButton => 'به‌روزرسانی مشتری';

  @override
  String get clientAddButton => 'افزودن مشتری';

  @override
  String get clientUpdatedSnackbar => 'مشتری به‌روزرسانی شد!';

  @override
  String get clientAddedSnackbar => 'مشتری اضافه شد!';

  @override
  String get clientDetailInvoices => 'فاکتورها';

  @override
  String get clientDetailTotalBilled => 'کل فاکتور شده';

  @override
  String get clientDetailOutstanding => 'مانده';

  @override
  String get clientDetailEdit => 'ویرایش';

  @override
  String get clientDetailNewInvoice => 'فاکتور جدید';

  @override
  String get clientDetailEmailClient => 'ارسال ایمیل به مشتری';

  @override
  String get clientDetailClientDetails => 'جزئیات مشتری';

  @override
  String get clientDetailEmail => 'ایمیل';

  @override
  String get clientDetailPhone => 'تلفن';

  @override
  String get clientDetailAddress => 'نشانی';

  @override
  String get clientDetailCity => 'شهر';

  @override
  String get clientDetailCurrency => 'ارز';

  @override
  String get clientDetailTaxRate => 'نرخ مالیات';

  @override
  String get clientDetailVatNumber => 'شماره VAT';

  @override
  String get clientDetailInvoiceHistory => 'تاریخچه فاکتورها';

  @override
  String get clientDetailNoInvoices => 'هنوز فاکتوری برای این مشتری نیست';

  @override
  String get deleteClientTitle => 'حذف مشتری؟';

  @override
  String deleteClientMessage(Object clientName) {
    return '$clientName حذف شود؟ این عمل قابل بازگشت نیست.';
  }

  @override
  String get settingsTitle => 'تنظیمات';

  @override
  String get settingsYourName => 'نام شما';

  @override
  String get settingsBackupTitle => 'پشتیبان‌گیری از فاکتورهای شما';

  @override
  String get settingsBackupDescription =>
      'برای همگام‌سازی امن داده‌های خود وارد شوید و از هر جایی به آن‌ها دسترسی داشته باشید.';

  @override
  String get settingsSignInRegister => 'ورود یا ثبت‌نام';

  @override
  String get settingsProUpsell =>
      'برای فاکتورهای نامحدود، همگام‌سازی ابری و بدون واترمارک به Pro ارتقا دهید.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'به محدودیت $limit فاکتور پلن رایگان رسیده‌اید. برای فاکتورهای نامحدود و همگام‌سازی ابری به Pro ارتقا دهید.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'به محدودیت $limit مشتری پلن رایگان رسیده‌اید. برای مشتریان نامحدود و همگام‌سازی ابری به Pro ارتقا دهید.';
  }

  @override
  String get settingsUpgradePro => 'ارتقا';

  @override
  String get settingsBusinessSection => 'تنظیمات کسب‌وکار';

  @override
  String get settingsBusinessDetails => 'جزئیات کسب‌وکار';

  @override
  String get settingsBusinessDetailsSubtitle =>
      'نام کسب‌وکار خود را تعیین کنید';

  @override
  String get settingsInvoicePrefix => 'پیشوند فاکتور';

  @override
  String get settingsDefaultCurrency => 'ارز پیش‌فرض';

  @override
  String get settingsAppSection => 'تنظیمات برنامه';

  @override
  String get settingsDarkMode => 'حالت تیره';

  @override
  String get settingsDailyNotification => 'اعلان روزانه';

  @override
  String get settingsDailyNotificationNotSet => 'تنظیم نشده';

  @override
  String get settingsLanguage => 'زبان';

  @override
  String get settingsLanguageLabel => 'فارسی';

  @override
  String get languageEnglish => 'انگلیسی';

  @override
  String get languageArabic => 'العربية';

  @override
  String get languageFrench => 'فرانسوی';

  @override
  String get languageSpanish => 'اسپانیایی';

  @override
  String get languageUrdu => 'اردو';

  @override
  String get languageChinese => 'چینی';

  @override
  String get settingsAboutSection => 'درباره';

  @override
  String get settingsRateApp => 'امتیاز به برنامه';

  @override
  String get settingsHelpSupport => 'راهنما و پشتیبانی';

  @override
  String get settingsPrivacyPolicy => 'سیاست حفظ حریم خصوصی';

  @override
  String get settingsHelpSupportSheet =>
      'نیاز به کمک دارید؟ به support@invoiceflow.app پیام دهید و ظرف ۲۴ ساعت پاسخ شما را می‌دهیم.';

  @override
  String get settingsPrivacySheet =>
      'داده‌های شما به‌صورت محلی روی دستگاه شما ذخیره می‌شود. ما هرگز اطلاعات شخصی شما را نمی‌فروشیم یا به اشتراک نمی‌گذاریم.';

  @override
  String get settingsVersion => 'نسخه';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'خروج';

  @override
  String get settingsEditProfile => 'ویرایش پروفایل';

  @override
  String get settingsProfileNameLabel => 'نام کامل';

  @override
  String get settingsProfileNameHint => 'نام شما';

  @override
  String get settingsBusinessNameLabel => 'نام کسب‌وکار';

  @override
  String get settingsBusinessNameHint => 'شرکت شما با مسئولیت محدود';

  @override
  String get settingsBusinessEmailLabel => 'ایمیل کاری';

  @override
  String get settingsBusinessEmailHint => 'billing@company.com';

  @override
  String get settingsPhoneLabel => 'تلفن';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'نشانی';

  @override
  String get settingsAddressHint => 'دبی، امارات متحده عربی';

  @override
  String get settingsBusinessDetailsSaved => 'جزئیات کسب‌وکار ذخیره شد!';

  @override
  String get settingsInvoicePrefixTitle => 'پیشوند شماره فاکتور';

  @override
  String get settingsInvoicePrefixHint => 'مثلاً INV-، #، Bill-';

  @override
  String get settingsPrefixSaved => 'پیشوند فاکتور ذخیره شد';

  @override
  String get settingsNotificationScheduled =>
      'اعلان روزانه با موفقیت زمان‌بندی شد!';

  @override
  String get settingsSignOutTitle => 'خروج؟';

  @override
  String get settingsSignOutMessage =>
      'مطمئن هستید که می‌خواهید از InvoiceFlow خارج شوید؟';

  @override
  String get settingsSignedOut => 'با موفقیت خارج شدید.';

  @override
  String get statusPaid => 'پرداخت‌شده';

  @override
  String get statusOverdue => 'معوق';

  @override
  String get statusPending => 'در انتظار';

  @override
  String get statusDraft => 'پیش‌نویس';

  @override
  String get statusCancelled => 'لغو‌شده';

  @override
  String get notificationChannelName => 'یادآوری‌های روزانه';

  @override
  String get notificationChannelDescription =>
      'هر روز بررسی فاکتورهایتان را به شما یادآوری می‌کند';

  @override
  String get notificationTitle => 'یادآوری فاکتور';

  @override
  String get notificationBody =>
      'زمان بررسی فاکتورهای اخیر و پیگیری پرداخت‌های در انتظار شماست.';

  @override
  String get pdfInvoice => 'فاکتور';

  @override
  String get pdfInvoiceNumber => 'شماره فاکتور:';

  @override
  String get pdfDate => 'تاریخ:';

  @override
  String get pdfDueDate => 'تاریخ سررسید:';

  @override
  String get pdfBillTo => 'پرداخت‌کننده:';

  @override
  String get pdfDescription => 'شرح';

  @override
  String get pdfQty => 'تعداد';

  @override
  String get pdfRate => 'نرخ';

  @override
  String get pdfAmount => 'مبلغ';

  @override
  String get pdfSubtotal => 'جمع جزء:';

  @override
  String pdfTax(Object taxRate) {
    return 'مالیات ($taxRate%):';
  }

  @override
  String get pdfTotal => 'جمع کل:';

  @override
  String get pdfSignature => 'امضا:';

  @override
  String get pdfNotes => 'یادداشت‌ها:';

  @override
  String get pdfPaymentTerms => 'شرایط پرداخت:';

  @override
  String get pdfThankYou => 'از همکاری با شما سپاسگزاریم!';

  @override
  String get quickAddWebDesign => 'طراحی وب';

  @override
  String get quickAddDevelopment => 'توسعه';

  @override
  String get quickAddConsulting => 'مشاوره';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'تولید محتوا';

  @override
  String get paywallTitle => 'باز کردن InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'نامحدود شوید و همه‌جا همگام کنید. هر زمان لغو کنید.';

  @override
  String get paywallFeatureUnlimited => 'فاکتورها و مشتریان نامحدود';

  @override
  String get paywallFeatureSync => 'همگام‌سازی ابری بین دستگاه‌ها';

  @override
  String get paywallFeatureNoWatermark => 'هرگز بدون واترمارک';

  @override
  String get paywallMonthly => 'ماهانه';

  @override
  String get paywallMonthlySub => 'صورت‌حساب ماهانه';

  @override
  String get paywallYearly => 'سالانه';

  @override
  String get paywallYearlySub => 'بهترین ارزش — ۲ ماه رایگان';

  @override
  String get paywallRestore => 'بازیابی خریدها';

  @override
  String get paywallTerms =>
      'اشتراک‌ها به‌صورت خودکار تمدید می‌شوند. در تنظیمات فروشگاه برنامه مدیریت کنید.';

  @override
  String get purchaseSuccessTitle => 'شما Pro هستید!';

  @override
  String get purchaseSuccessSubtitle =>
      'فاکتورهای نامحدود، همگام‌سازی ابری و بدون واترمارک اکنون فعال شدند. سپاسگزاریم!';

  @override
  String get purchaseSuccessContinue => 'ادامه';

  @override
  String get paywallLoading => 'در حال بارگذاری طرح‌ها…';

  @override
  String get paywallLoadError =>
      'طرح‌ها بارگذاری نشدند. اتصال خود را بررسی و دوباره تلاش کنید.';

  @override
  String get paywallNoOffering => 'در حال حاضر طرحی در دسترس نیست.';

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
  String get purchaseRestored => 'خریدها با موفقیت بازیابی شدند';

  @override
  String get purchaseErrorGeneric => 'خرید انجام نشد. لطفاً دوباره تلاش کنید.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'پرو فعال است — فاکتورها و مشتریان نامحدود بدون واترمارک';

  @override
  String get settingsFreePlan => 'طرح رایگان';

  @override
  String get settingsFreeHint =>
      'برای فاکتورهای نامحدود، همگام‌سازی ابری و موارد بیشتر ارتقا دهید';

  @override
  String get settingsUpgradeToPro => 'ارتقا به نسخه حرفه‌ای';

  @override
  String get settingsManageSubscription => 'مدیریت اشتراک';

  @override
  String get customerCenterFailed => 'باز کردن مدیریت اشتراک ممکن نشد.';

  @override
  String get onboardingSkip => 'رد کردن';

  @override
  String get onboardingNext => 'بعدی';

  @override
  String get onboardingGetStarted => 'شروع کنید';

  @override
  String get onboardingWelcomeTitle => 'فاکتور در ۲ دقیقه';

  @override
  String get onboardingWelcomeBody =>
      'فاکتورهای PDF حرفه‌ای برای مشتریان خود ایجاد کنید — سریع و زیبا.';

  @override
  String get onboardingSyncTitle => 'همگام‌سازی همه‌جا';

  @override
  String get onboardingSyncBody =>
      'برای پشتیبان‌گیری امن داده‌ها در ابر و دسترسی از هر دستگاهی وارد شوید.';

  @override
  String get onboardingProTitle => 'با Pro نامحدود شوید';

  @override
  String get onboardingProBody =>
      'فاکتورهای نامحدود، همگام‌سازی ابری و حذف واترمارک را با InvoiceFlow Pro فعال کنید.';

  @override
  String get settingsAccentColor => 'رنگ تأکیدی';

  @override
  String get settingsAccentColorHint =>
      'برنامه را با رنگ دلخواه خود شخصی‌سازی کنید.';

  @override
  String get settingsCountry => 'کشور';

  @override
  String get settingsTaxId => 'شماره ثبت مالیات';

  @override
  String get settingsTaxIdNotSet => 'تنظیم نشده';

  @override
  String get settingsTaxIdHint => 'مثلاً 123456789012345';

  @override
  String get settingsTaxIdSaved => 'شماره مالیات ذخیره شد';

  @override
  String get catalogTitle => 'محصولات و خدمات';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count آیتم',
      one: '$count آیتم',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'هنوز محصولی نیست';

  @override
  String get catalogEmptySubtitle =>
      'محصولات و خدمات قابل استفاده مجدد را ذخیره کنید تا سریع‌تر به فاکتورها اضافه شوند.';

  @override
  String get catalogFromSaved => 'از فهرست شما';

  @override
  String get catalogSaveToCatalog => 'برای استفاده مجدد در فهرست ذخیره کنید';

  @override
  String get catalogAddSnackbar => 'به فهرست اضافه شد';

  @override
  String get catalogDeleteTitle => 'حذف آیتم؟';

  @override
  String catalogDeleteMessage(String description) {
    return '\"$description\" حذف شود؟ این عمل قابل بازگشت نیست.';
  }

  @override
  String get commonDone => 'انجام شد';

  @override
  String get estimateListTitle => 'پیش‌فاکتورها';

  @override
  String get estimateListSearchHint => 'جستجوی پیش‌فاکتورها…';

  @override
  String get estimateListEmpty => 'هنوز پیش‌فاکتوری نیست';

  @override
  String get estimateListTabAll => 'همه';

  @override
  String get estimateListTabDraft => 'پیش‌نویس';

  @override
  String get estimateListTabSent => 'ارسال‌شده';

  @override
  String get estimateListTabAccepted => 'پذیرفته‌شده';

  @override
  String get estimateListTabExpired => 'منقضی‌شده';

  @override
  String get estimateCreateTitle => 'پیش‌فاکتور جدید';

  @override
  String get estimateEditTitle => 'ویرایش پیش‌فاکتور';

  @override
  String get estimateCreatedSnackbar => 'پیش‌فاکتور ذخیره شد';

  @override
  String get estimateUpdatedSnackbar => 'پیش‌فاکتور به‌روزرسانی شد';

  @override
  String get estimateIssueDate => 'تاریخ صدور';

  @override
  String get estimateExpiryDate => 'تاریخ انقضا';

  @override
  String get estimateExpiresPrefix => 'انقضا ';

  @override
  String get estimateConvertToInvoice => 'تبدیل به فاکتور';

  @override
  String get estimateConvertedSnackbar => 'پیش‌فاکتور به فاکتور تبدیل شد';

  @override
  String get estimateConvertFailed => 'تبدیل پیش‌فاکتور ممکن نشد';

  @override
  String get estimateMarkSent => 'علامت‌گذاری به‌عنوان ارسال‌شده';

  @override
  String get estimateMarkAccepted => 'علامت‌گذاری به‌عنوان پذیرفته‌شده';

  @override
  String get estimateMarkDeclined => 'علامت‌گذاری به‌عنوان ردشده';

  @override
  String get estimateConvertedTitle => 'تبدیل شد';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'به فاکتور $invoiceId تبدیل شد';
  }

  @override
  String get estimateDetailTotal => 'جمع کل پیش‌فاکتور';

  @override
  String get estimateStatusSent => 'ارسال‌شده';

  @override
  String get estimateStatusAccepted => 'پذیرفته‌شده';

  @override
  String get estimateStatusDeclined => 'ردشده';

  @override
  String get estimateStatusExpired => 'منقضی‌شده';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count باز',
      one: '۱ باز',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'حذف پیش‌فاکتور؟';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return '\"$estimateNumber\" حذف شود؟ این عمل قابل بازگشت نیست.';
  }

  @override
  String get estimatePdfFailed => 'ایجاد PDF ممکن نشد';

  @override
  String get pdfEstimate => 'پیش‌فاکتور';

  @override
  String get pdfEstimateNumber => 'شماره پیش‌فاکتور:';

  @override
  String get pdfValidUntil => 'معتبر تا:';

  @override
  String get invoiceDetailPaymentTerms => 'شرایط پرداخت';

  @override
  String get recurringListTitle => 'فاکتورهای دوره‌ای';

  @override
  String get recurringListEmpty => 'هنوز فاکتور دوره‌ای نیست';

  @override
  String get recurringListEmptySubtitle =>
      'برای مشتریان و خدمات منظم، فاکتورهای خودکار تنظیم کنید.';

  @override
  String get recurringCreateTitle => 'دوره‌ای جدید';

  @override
  String get recurringEditTitle => 'ویرایش دوره‌ای';

  @override
  String get recurringCreatedSnackbar => 'فاکتور دوره‌ای ذخیره شد';

  @override
  String get recurringUpdatedSnackbar => 'فاکتور دوره‌ای به‌روزرسانی شد';

  @override
  String get recurringDeleteTitle => 'حذف فاکتور دوره‌ای؟';

  @override
  String recurringDeleteMessage(String title) {
    return '\"$title\" حذف شود؟ فاکتورهای موجود حذف نخواهند شد.';
  }

  @override
  String get recurringTitleLabel => 'عنوان';

  @override
  String get recurringTitleHint => 'مثلاً حق‌الزحمه ماهانه';

  @override
  String get recurringClientLabel => 'مشتری';

  @override
  String get recurringFrequencyLabel => 'بازه';

  @override
  String get recurringFrequencyWeekly => 'هفتگی';

  @override
  String get recurringFrequencyBiweekly => 'دوهفته‌ای';

  @override
  String get recurringFrequencyMonthly => 'ماهانه';

  @override
  String get recurringFrequencyQuarterly => 'سه‌ماهه';

  @override
  String get recurringFrequencyYearly => 'سالانه';

  @override
  String get recurringNextRun => 'اجرای بعدی';

  @override
  String get recurringDueDays => 'سررسید تا';

  @override
  String get recurringDays => 'روز';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count فعال',
      one: '۱ فعال',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'گزارش‌ها';

  @override
  String get reportsSubtitle => 'تحلیل کسب‌وکار';

  @override
  String get reportsEmpty => 'برای دیدن گزارش‌ها فاکتور ایجاد کنید';

  @override
  String get reportsCollected => 'وصول‌شده';

  @override
  String get reportsOutstanding => 'مانده';

  @override
  String get reportsMonthlyRevenue => 'درآمد ماهانه';

  @override
  String get reportsLast6Months => '۶ ماه اخیر';

  @override
  String get reportsByStatus => 'بر اساس وضعیت';

  @override
  String get reportsTopClients => 'مشتریان برتر';

  @override
  String get paymentLinkTitle => 'لینک پرداخت';

  @override
  String get paymentLinkNotSet => 'لینک پرداختی در تنظیمات تعیین نشده است';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'لینک پرداخت شما در PDF فاکتور قرار می‌گیرد و از منوی فاکتور قابل کپی است.';

  @override
  String get paymentLinkSaved => 'لینک پرداخت ذخیره شد';

  @override
  String get settingsPaymentLinkNotSet => 'تنظیم نشده';

  @override
  String get invoiceDetailCopyPaymentLink => 'کپی لینک پرداخت';

  @override
  String get paymentLinkCopied => 'لینک پرداخت کپی شد';

  @override
  String get pdfPayOnline => 'پرداخت آنلاین';

  @override
  String get exportXml => 'خروجی XML';

  @override
  String get exportXmlFailed => 'خروجی XML ممکن نشد';
}
