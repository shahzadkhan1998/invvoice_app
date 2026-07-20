// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'إنفويس فلو';

  @override
  String get splashSubtitle => 'فواتير احترافية في دقيقتين';

  @override
  String get bottomNavDashboard => 'لوحة التحكم';

  @override
  String get bottomNavInvoices => 'الفواتير';

  @override
  String get bottomNavClients => 'العملاء';

  @override
  String get bottomNavSettings => 'الإعدادات';

  @override
  String get commonCancel => 'إلغاء';

  @override
  String get commonDelete => 'حذف';

  @override
  String get commonSave => 'حفظ';

  @override
  String get commonSearch => 'بحث';

  @override
  String get commonBack => 'رجوع';

  @override
  String get commonContinue => 'متابعة';

  @override
  String get commonAdd => 'إضافة';

  @override
  String get commonEdit => 'تعديل';

  @override
  String get commonCreate => 'إنشاء';

  @override
  String get commonClear => 'مسح';

  @override
  String get commonView => 'عرض';

  @override
  String get commonShare => 'مشاركة';

  @override
  String get commonExportPdf => 'تصدير PDF';

  @override
  String get commonSharePdf => 'مشاركة PDF';

  @override
  String get commonSaveChanges => 'حفظ التغييرات';

  @override
  String get commonRequired => 'مطلوب';

  @override
  String get commonInvalid => 'غير صالح';

  @override
  String get commonSendLink => 'إرسال الرابط';

  @override
  String get commonGeneratingPdf => 'جارٍ إنشاء PDF...';

  @override
  String get dashboardGreetingMorning => 'صباح الخير';

  @override
  String get dashboardGreetingAfternoon => 'مساء الخير';

  @override
  String get dashboardGreetingEvening => 'مساء الخير';

  @override
  String get dashboardSubtitle => 'نظرة عامة على أعمالك';

  @override
  String get dashboardOutstanding => 'مستحق';

  @override
  String get dashboardOverdue => 'متأخر';

  @override
  String get dashboardThisMonth => 'هذا الشهر';

  @override
  String get dashboardInvoices => 'فواتير';

  @override
  String dashboardPaidCount(Object count) {
    return '$count مدفوعة';
  }

  @override
  String get dashboardRecentInvoices => 'الفواتير الأخيرة';

  @override
  String get dashboardSeeAll => 'عرض الكل ←';

  @override
  String get dashboardNewInvoice => 'فاتورة جديدة';

  @override
  String get dashboardNoInvoicesYet => 'لا توجد فواتير بعد';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'أنشئ أول فاتورة احترافية لك في أقل من دقيقتين';

  @override
  String get dashboardCreateInvoice => 'إنشاء فاتورة';

  @override
  String get dashboardMarkPaid => 'تعليم كمدفوعة';

  @override
  String get dashboardDuePrefix => 'مستحق ';

  @override
  String dashboardDaysOverdue(Object days) {
    return 'متأخرة $days أيام';
  }

  @override
  String get deleteInvoiceTitle => 'حذف الفاتورة؟';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'حذف $invoiceNumber؟ لا يمكن التراجع عن هذا الإجراء.';
  }

  @override
  String get loginHeading => 'مرحبًا بعودتك';

  @override
  String get loginSubtitle => 'تسجيل الدخول إلى حساب إنفويس فلو';

  @override
  String get loginEmailLabel => 'البريد الإلكتروني';

  @override
  String get loginEmailHint => 'you@example.com';

  @override
  String get loginEmailRequired => 'البريد الإلكتروني مطلوب';

  @override
  String get loginEmailInvalid => 'أدخل بريدًا إلكترونيًا صحيحًا';

  @override
  String get loginPasswordLabel => 'كلمة المرور';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'كلمة المرور مطلوبة';

  @override
  String get loginPasswordMinLength =>
      'كلمة المرور يجب أن تكون 6 أحرف على الأقل';

  @override
  String get loginForgotPassword => 'نسيت كلمة المرور؟';

  @override
  String get loginSignIn => 'تسجيل الدخول';

  @override
  String get loginOrContinueWith => 'أو المتابعة عبر';

  @override
  String get loginContinueWithGoogle => 'المتابعة مع Google';

  @override
  String get loginNoAccount => 'ليس لديك حساب؟ ';

  @override
  String get loginSignUp => 'اشتراك';

  @override
  String get loginResetPasswordTitle => 'إعادة تعيين كلمة المرور';

  @override
  String get loginResetPasswordMessage =>
      'أدخل بريدك الإلكتروني وسنرسل رابط إعادة التعيين.';

  @override
  String get loginResetPasswordHint => 'you@example.com';

  @override
  String get loginResetLinkSent =>
      'تم إرسال رابط إعادة التعيين! تحقق من بريدك الإلكتروني.';

  @override
  String get loginResetLinkFailed => 'فشل إرسال رابط إعادة التعيين.';

  @override
  String get registerHeading => 'إنشاء حساب';

  @override
  String get registerSubtitle => 'ابدأ بإرسال الفواتير الاحترافية اليوم';

  @override
  String get registerNameLabel => 'الاسم الكامل';

  @override
  String get registerNameHint => 'أحمد محمد';

  @override
  String get registerNameRequired => 'الاسم مطلوب';

  @override
  String get registerNameMinLength => 'الاسم يجب أن يكون حرفين على الأقل';

  @override
  String get registerEmailLabel => 'البريد الإلكتروني';

  @override
  String get registerEmailHint => 'you@example.com';

  @override
  String get registerEmailRequired => 'البريد الإلكتروني مطلوب';

  @override
  String get registerEmailInvalid => 'أدخل بريدًا إلكترونيًا صحيحًا';

  @override
  String get registerPasswordLabel => 'كلمة المرور';

  @override
  String get registerPasswordHint => '6 أحرف على الأقل';

  @override
  String get registerPasswordRequired => 'كلمة المرور مطلوبة';

  @override
  String get registerPasswordMinLength =>
      'كلمة المرور يجب أن تكون 6 أحرف على الأقل';

  @override
  String get registerConfirmPasswordLabel => 'تأكيد كلمة المرور';

  @override
  String get registerConfirmPasswordHint => 'أعد إدخال كلمة المرور';

  @override
  String get registerConfirmPasswordRequired => 'يرجى تأكيد كلمة المرور';

  @override
  String get registerPasswordsDoNotMatch => 'كلمتا المرور غير متطابقتين';

  @override
  String get registerCreateAccount => 'إنشاء حساب';

  @override
  String get registerHaveAccount => 'لديك حساب بالفعل؟ ';

  @override
  String get registerSignIn => 'تسجيل الدخول';

  @override
  String get authErrorWeakPassword => 'كلمة المرور ضعيفة جدًا';

  @override
  String get authErrorEmailAlreadyInUse => 'الحساب موجود بالفعل';

  @override
  String get authErrorUserNotFound => 'لا يوجد مستخدم بهذا البريد الإلكتروني';

  @override
  String get authErrorWrongPassword => 'كلمة مرور غير صحيحة';

  @override
  String get authErrorInvalidEmail => 'بريد إلكتروني غير صالح';

  @override
  String get authErrorTooManyRequests =>
      'محاولات كثيرة جدًا. حاول مرة أخرى لاحقًا.';

  @override
  String get authErrorDefault => 'فشل التحقق. حاول مرة أخرى.';

  @override
  String get authErrorGoogleSignInFailed => 'فشل تسجيل الدخول عبر Google.';

  @override
  String get invoiceListTitle => 'الفواتير';

  @override
  String get invoiceListSearchHint => 'ابحث في الفواتير...';

  @override
  String get invoiceListSortDate => 'ترتيب حسب التاريخ';

  @override
  String get invoiceListSortAmount => 'ترتيب حسب المبلغ';

  @override
  String get invoiceListSortClient => 'ترتيب حسب العميل';

  @override
  String get invoiceListTabAll => 'الكل';

  @override
  String get invoiceListTabPaid => 'مدفوعة';

  @override
  String get invoiceListTabPending => 'قيد الانتظار';

  @override
  String get invoiceListTabOverdue => 'متأخرة';

  @override
  String get invoiceListTabDraft => 'مسودة';

  @override
  String get invoiceListEmpty => 'لم يتم العثور على فواتير';

  @override
  String get invoiceCreateTitle => 'فاتورة جديدة';

  @override
  String get invoiceEditTitle => 'تعديل الفاتورة';

  @override
  String get invoiceSaveDraft => 'حفظ كمسودة';

  @override
  String get invoiceStepClient => 'العميل';

  @override
  String get invoiceStepItems => 'البنود';

  @override
  String get invoiceStepReview => 'مراجعة';

  @override
  String get invoiceSelectClient => 'اختر عميلاً';

  @override
  String get invoiceSelectClientSubtitle => 'اختر من ستصدر له الفاتورة';

  @override
  String get invoiceSearchClients => 'ابحث عن عملاء...';

  @override
  String get invoiceAddNewClient => 'إضافة عميل جديد';

  @override
  String get invoiceNoClientsFound => 'لم يتم العثور على عملاء';

  @override
  String get invoiceAddLineItem => 'إضافة بند';

  @override
  String get invoiceItemDescription => 'الوصف';

  @override
  String get invoiceItemDescriptionHint => 'مثال: تطوير ويب';

  @override
  String get invoiceItemQuickAdd => 'إضافة سريعة:';

  @override
  String get invoiceItemQty => 'الكمية';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'السعر';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'إضافة بند';

  @override
  String get invoiceLineItems => 'بنود الفاتورة';

  @override
  String get invoiceLineItemsSubtitle => 'أضف الخدمات أو المنتجات';

  @override
  String get invoiceNoItems => 'لا توجد بنود بعد. أضف أول بند.';

  @override
  String get invoiceTaxRate => 'نسبة الضريبة (%)';

  @override
  String get invoiceSubtotal => 'المجموع الفرعي';

  @override
  String invoiceTax(Object taxRate) {
    return 'الضريبة ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'الإجمالي';

  @override
  String get invoiceReviewHeading => 'مراجعة وإصدار';

  @override
  String get invoiceReviewSubtitle =>
      'حدد التواريخ وأضف الملاحظات والشعار والتوقيع';

  @override
  String get invoiceCompanyLogo => 'شعار الشركة';

  @override
  String get invoiceAddLogo => 'إضافة شعار';

  @override
  String get invoiceInvoiceDate => 'تاريخ الفاتورة';

  @override
  String get invoiceDueDate => 'تاريخ الاستحقاق';

  @override
  String get invoiceNotesLabel => 'ملاحظات (اختياري)';

  @override
  String get invoiceNotesHint => 'شكرًا لتعاملكم معنا!';

  @override
  String get invoicePaymentTermsLabel => 'شروط الدفع (اختياري)';

  @override
  String get invoicePaymentTermsHint => 'الدفع خلال 30 يومًا';

  @override
  String get invoiceSignatureLabel => 'التوقيع';

  @override
  String get invoiceSignatureOverwrite =>
      'تم حفظ التوقيع السابق. ارسم أعلاه للاستبدال.';

  @override
  String get invoiceCreatedSnackbar => 'تم إنشاء الفاتورة!';

  @override
  String get invoiceUpdatedSnackbar => 'تم تحديث الفاتورة!';

  @override
  String get invoiceDetailTitle => 'فاتورة';

  @override
  String get invoiceDetailMarkAsPaid => 'تعليم كمدفوعة';

  @override
  String get invoiceDetailTotalAmount => 'المبلغ الإجمالي';

  @override
  String get invoiceDetailIssued => 'صدرت';

  @override
  String get invoiceDetailDue => 'مستحق';

  @override
  String get invoiceDetailPaid => 'مدفوعة';

  @override
  String get invoiceDetailBillTo => 'المفوتر إليه';

  @override
  String get invoiceDetailItems => 'البنود';

  @override
  String get invoiceDetailNotes => 'ملاحظات';

  @override
  String get invoiceDetailSignature => 'التوقيع';

  @override
  String get invoiceDetailMarkedPaidSnackbar => 'تم تعليم الفاتورة كمدفوعة!';

  @override
  String get invoiceDetailPdfFailed => 'فشل إنشاء PDF';

  @override
  String get clientListTitle => 'العملاء';

  @override
  String get clientListSearchHint => 'ابحث عن عملاء...';

  @override
  String get clientListTotalClients => 'إجمالي العملاء';

  @override
  String get clientListTotalBilled => 'إجمالي الفوترة';

  @override
  String get clientListEmptySearch => 'لم يتم العثور على عملاء';

  @override
  String get clientListEmpty => 'لا يوجد عملاء بعد';

  @override
  String get clientListEmptySubtitle => 'أضف أول عميل لبدء إنشاء الفواتير';

  @override
  String get clientListAddClient => 'إضافة عميل';

  @override
  String get clientListTotalBilledLabel => 'إجمالي الفوترة';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count فاتورة';
  }

  @override
  String get clientCreateTitle => 'عميل جديد';

  @override
  String get clientEditTitle => 'تعديل العميل';

  @override
  String get clientBasicInfo => 'المعلومات الأساسية';

  @override
  String get clientNameLabel => 'الاسم الكامل *';

  @override
  String get clientNameHint => 'شركة أكمة';

  @override
  String get clientNameRequired => 'الاسم مطلوب';

  @override
  String get clientNameTooShort => 'الاسم قصير جدًا';

  @override
  String get clientEmailLabel => 'البريد الإلكتروني *';

  @override
  String get clientEmailHint => 'billing@company.com';

  @override
  String get clientEmailRequired => 'البريد الإلكتروني مطلوب';

  @override
  String get clientEmailInvalid => 'أدخل بريدًا إلكترونيًا صحيحًا';

  @override
  String get clientPhoneLabel => 'رقم الهاتف';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'العنوان';

  @override
  String get clientAddressLabel => 'العنوان';

  @override
  String get clientAddressHint => '123 مجمع الأعمال، مكتب 45';

  @override
  String get clientCityLabel => 'المدينة / الدولة';

  @override
  String get clientCityHint => 'دبي، الإمارات العربية المتحدة';

  @override
  String get clientBillingDefaults => 'الإعدادات الافتراضية للفوترة';

  @override
  String get clientDefaultCurrency => 'العملة الافتراضية';

  @override
  String get clientDefaultTaxRate => 'نسبة الضريبة الافتراضية (VAT/GST)';

  @override
  String get clientVatLabel => 'رقم التسجيل الضريبي';

  @override
  String get clientVatHint => '123456789012345 (اختياري)';

  @override
  String get clientUpdateButton => 'تحديث العميل';

  @override
  String get clientAddButton => 'إضافة عميل';

  @override
  String get clientUpdatedSnackbar => 'تم تحديث العميل!';

  @override
  String get clientAddedSnackbar => 'تم إضافة العميل!';

  @override
  String get clientDetailInvoices => 'الفواتير';

  @override
  String get clientDetailTotalBilled => 'إجمالي الفوترة';

  @override
  String get clientDetailOutstanding => 'مستحق';

  @override
  String get clientDetailEdit => 'تعديل';

  @override
  String get clientDetailNewInvoice => 'فاتورة جديدة';

  @override
  String get clientDetailEmailClient => 'إرسال بريد إلكتروني';

  @override
  String get clientDetailClientDetails => 'تفاصيل العميل';

  @override
  String get clientDetailEmail => 'البريد الإلكتروني';

  @override
  String get clientDetailPhone => 'الهاتف';

  @override
  String get clientDetailAddress => 'العنوان';

  @override
  String get clientDetailCity => 'المدينة';

  @override
  String get clientDetailCurrency => 'العملة';

  @override
  String get clientDetailTaxRate => 'نسبة الضريبة';

  @override
  String get clientDetailVatNumber => 'الرقم الضريبي';

  @override
  String get clientDetailInvoiceHistory => 'سجل الفواتير';

  @override
  String get clientDetailNoInvoices => 'لا توجد فواتير لهذا العميل بعد';

  @override
  String get deleteClientTitle => 'حذف العميل؟';

  @override
  String deleteClientMessage(Object clientName) {
    return 'حذف $clientName؟ لا يمكن التراجع عن هذا الإجراء.';
  }

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get settingsYourName => 'اسمك';

  @override
  String get settingsBackupTitle => 'نسخ احتياطي لفواتيرك';

  @override
  String get settingsBackupDescription =>
      'سجل الدخول لمزامنة بياناتك بشكل آمن والوصول إليها من أي مكان.';

  @override
  String get settingsSignInRegister => 'تسجيل الدخول أو الاشتراك';

  @override
  String get settingsProUpsell =>
      'قم بترقية إلى برو للحصول على فواتير غير محدودة ومزامنة سحابية وبدون علامات مائية.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'لقد وصلت إلى حد الخطة المجانية وهو $limit فواتير. قم بترقية إلى برو للحصول على فواتير غير محدودة ومزامنة سحابية.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'لقد وصلت إلى حد الخطة المجانية وهو $limit عملاء. قم بترقية إلى برو للحصول على عملاء غير محدودين ومزامنة سحابية.';
  }

  @override
  String get settingsUpgradePro => 'ترقية';

  @override
  String get settingsBusinessSection => 'إعدادات الأعمال';

  @override
  String get settingsBusinessDetails => 'تفاصيل النشاط التجاري';

  @override
  String get settingsBusinessDetailsSubtitle => 'حدد اسم نشاطك التجاري';

  @override
  String get settingsInvoicePrefix => 'بادئة الفاتورة';

  @override
  String get settingsDefaultCurrency => 'العملة الافتراضية';

  @override
  String get settingsAppSection => 'إعدادات التطبيق';

  @override
  String get settingsDarkMode => 'الوضع الداكن';

  @override
  String get settingsDailyNotification => 'إشعار يومي';

  @override
  String get settingsDailyNotificationNotSet => 'غير مضبوط';

  @override
  String get settingsLanguage => 'اللغة';

  @override
  String get settingsLanguageLabel => 'العربية';

  @override
  String get languageEnglish => 'الإنجليزية';

  @override
  String get languageArabic => 'العربية';

  @override
  String get languageFrench => 'الفرنسية';

  @override
  String get languageSpanish => 'الإسبانية';

  @override
  String get languageUrdu => 'الأردية';

  @override
  String get languageChinese => 'الصينية';

  @override
  String get settingsAboutSection => 'حول';

  @override
  String get settingsRateApp => 'تقييم التطبيق';

  @override
  String get settingsHelpSupport => 'المساعدة والدعم';

  @override
  String get settingsPrivacyPolicy => 'سياسة الخصوصية';

  @override
  String get settingsVersion => 'الإصدار';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'تسجيل الخروج';

  @override
  String get settingsEditProfile => 'تعديل الملف الشخصي';

  @override
  String get settingsProfileNameLabel => 'الاسم الكامل';

  @override
  String get settingsProfileNameHint => 'اسمك';

  @override
  String get settingsBusinessNameLabel => 'اسم النشاط التجاري';

  @override
  String get settingsBusinessNameHint => 'شركتك المحدودة';

  @override
  String get settingsBusinessEmailLabel => 'البريد الإلكتروني للنشاط التجاري';

  @override
  String get settingsBusinessEmailHint => 'billing@company.com';

  @override
  String get settingsPhoneLabel => 'الهاتف';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'العنوان';

  @override
  String get settingsAddressHint => 'دبي، الإمارات العربية المتحدة';

  @override
  String get settingsBusinessDetailsSaved => 'تم حفظ تفاصيل النشاط التجاري!';

  @override
  String get settingsInvoicePrefixTitle => 'بادئة رقم الفاتورة';

  @override
  String get settingsInvoicePrefixHint => 'مثال: INV-, #, Bill-';

  @override
  String get settingsNotificationScheduled => 'تم جدولة الإشعار اليومي بنجاح!';

  @override
  String get settingsSignOutTitle => 'تسجيل الخروج؟';

  @override
  String get settingsSignOutMessage =>
      'هل أنت متأكد من رغبتك في تسجيل الخروج من إنفويس فلو؟';

  @override
  String get settingsSignedOut => 'تم تسجيل الخروج بنجاح.';

  @override
  String get statusPaid => 'مدفوعة';

  @override
  String get statusOverdue => 'متأخرة';

  @override
  String get statusPending => 'قيد الانتظار';

  @override
  String get statusDraft => 'مسودة';

  @override
  String get statusCancelled => 'ملغاة';

  @override
  String get notificationChannelName => 'التذكيرات اليومية';

  @override
  String get notificationChannelDescription => 'يذكرك بمراجعة فواتيرك يوميًا';

  @override
  String get notificationTitle => 'تذكير الفواتير';

  @override
  String get notificationBody =>
      'حان الوقت لمراجعة فواتيرك الأخيرة ومتابعة المدفوعات المعلقة.';

  @override
  String get pdfInvoice => 'فاتورة';

  @override
  String get pdfInvoiceNumber => 'رقم الفاتورة:';

  @override
  String get pdfDate => 'التاريخ:';

  @override
  String get pdfDueDate => 'تاريخ الاستحقاق:';

  @override
  String get pdfBillTo => 'المفوتر إليه:';

  @override
  String get pdfDescription => 'الوصف';

  @override
  String get pdfQty => 'الكمية';

  @override
  String get pdfRate => 'السعر';

  @override
  String get pdfAmount => 'المبلغ';

  @override
  String get pdfSubtotal => 'المجموع الفرعي:';

  @override
  String pdfTax(Object taxRate) {
    return 'الضريبة ($taxRate%):';
  }

  @override
  String get pdfTotal => 'الإجمالي:';

  @override
  String get pdfSignature => 'التوقيع:';

  @override
  String get pdfNotes => 'ملاحظات:';

  @override
  String get pdfPaymentTerms => 'شروط الدفع:';

  @override
  String get pdfThankYou => 'شكرًا لتعاملكم معنا!';

  @override
  String get quickAddWebDesign => 'تصميم ويب';

  @override
  String get quickAddDevelopment => 'تطوير';

  @override
  String get quickAddConsulting => 'استشارات';

  @override
  String get quickAddSeo => 'تحسين محركات البحث';

  @override
  String get quickAddContentWriting => 'كتابة المحتوى';

  @override
  String get paywallTitle => 'افتح إنفويس فلو برو';

  @override
  String get paywallSubtitle =>
      'بلا حدود ومزامنة في كل مكان. يمكنك الإلغاء في أي وقت.';

  @override
  String get paywallFeatureUnlimited => 'فواتير وعملاء غير محدودين';

  @override
  String get paywallFeatureSync => 'مزامنة سحابية عبر الأجهزة';

  @override
  String get paywallFeatureNoWatermark => 'بدون علامات مائية أبدًا';

  @override
  String get paywallMonthly => 'شهري';

  @override
  String get paywallMonthlySub => 'يُحسب شهريًا';

  @override
  String get paywallYearly => 'سنوي';

  @override
  String get paywallYearlySub => 'الأفضل قيمة — شهران مجانًا';

  @override
  String get paywallRestore => 'استعادة المشتريات';

  @override
  String get paywallTerms =>
      'تجديد تلقائي للاشتراكات. إدارة عبر إعدادات متجر التطبيقات.';

  @override
  String get purchaseSuccessTitle => 'أنت الآن برو!';

  @override
  String get purchaseSuccessSubtitle =>
      'تم فتح الفواتير غير المحدودة والمزامنة السحابية وبدون علامات مائية. شكرًا لك!';

  @override
  String get purchaseSuccessContinue => 'متابعة';

  @override
  String get onboardingSkip => 'تخطي';

  @override
  String get onboardingNext => 'التالي';

  @override
  String get onboardingGetStarted => 'ابدأ الآن';

  @override
  String get onboardingWelcomeTitle => 'فواتير في دقيقتين';

  @override
  String get onboardingWelcomeBody =>
      'أنشئ فواتير PDF احترافية لعملائك — بسرعة وأناقة.';

  @override
  String get onboardingSyncTitle => 'زامن في كل مكان';

  @override
  String get onboardingSyncBody =>
      'سجّل الدخول لعمل نسخة احتياطية آمنة لبياناتك على السحابة والوصول إليها من أي جهاز.';

  @override
  String get onboardingProTitle => 'كن غير محدود مع برو';

  @override
  String get onboardingProBody =>
      'افتح الفواتير غير المحدودة والمزامنة السحابية وأزل العلامات المائية مع إنفويس فلو برو.';

  @override
  String get settingsAccentColor => 'لون التمييز';

  @override
  String get settingsAccentColorHint => 'خصّص التطبيق باللون الذي تختاره.';

  @override
  String get commonDone => 'تم';
}
