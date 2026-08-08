// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'חשבוניות מקצועיות תוך 2 דקות';

  @override
  String get bottomNavDashboard => 'לוח בקרה';

  @override
  String get bottomNavInvoices => 'חשבוניות';

  @override
  String get bottomNavClients => 'לקוחות';

  @override
  String get bottomNavSettings => 'הגדרות';

  @override
  String get commonCancel => 'ביטול';

  @override
  String get commonDelete => 'מחיקה';

  @override
  String get commonSave => 'שמירה';

  @override
  String get commonSearch => 'חיפוש';

  @override
  String get commonBack => 'חזרה';

  @override
  String get commonContinue => 'המשך';

  @override
  String get commonAdd => 'הוספה';

  @override
  String get commonEdit => 'עריכה';

  @override
  String get commonCreate => 'יצירה';

  @override
  String get commonClear => 'ניקוי';

  @override
  String get commonView => 'צפייה';

  @override
  String get commonShare => 'שיתוף';

  @override
  String get commonExportPdf => 'ייצוא PDF';

  @override
  String get commonSharePdf => 'שיתוף PDF';

  @override
  String get commonSaveChanges => 'שמירת שינויים';

  @override
  String get commonRequired => 'שדה חובה';

  @override
  String get commonInvalid => 'לא תקין';

  @override
  String get commonSendLink => 'שליחת קישור';

  @override
  String get commonGeneratingPdf => 'מייצר PDF...';

  @override
  String get dashboardGreetingMorning => 'בוקר טוב';

  @override
  String get dashboardGreetingAfternoon => 'צהריים טובים';

  @override
  String get dashboardGreetingEvening => 'ערב טוב';

  @override
  String get dashboardSubtitle => 'הנה סקירת העסק שלך';

  @override
  String get dashboardOutstanding => 'יתרה פתוחה';

  @override
  String get dashboardOverdue => 'באיחור';

  @override
  String get dashboardThisMonth => 'החודש';

  @override
  String get dashboardInvoices => 'חשבוניות';

  @override
  String dashboardPaidCount(Object count) {
    return '$count שולמו';
  }

  @override
  String get dashboardRecentInvoices => 'חשבוניות אחרונות';

  @override
  String get dashboardSeeAll => 'הצג הכל';

  @override
  String get dashboardNotifications => 'התראות';

  @override
  String get dashboardNotificationsHint =>
      'הישאר מעודכן לגבי תזרים המזומנים על ידי בדיקה שוטפת של חשבוניות באיחור ובהמתנה.';

  @override
  String get dashboardNewInvoice => 'חשבונית חדשה';

  @override
  String get dashboardNoInvoicesYet => 'אין חשבוניות עדיין';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'צור את החשבונית המקצועית הראשונה שלך תוך פחות מ-2 דקות';

  @override
  String get dashboardCreateInvoice => 'צור חשבונית';

  @override
  String get dashboardMarkPaid => 'סמן כשולם';

  @override
  String get dashboardDuePrefix => 'תשלום עד ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days ימי איחור';
  }

  @override
  String get deleteInvoiceTitle => 'למחוק חשבונית?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'למחוק $invoiceNumber? לא ניתן לבטל פעולה זו.';
  }

  @override
  String get loginHeading => 'ברוך שובך';

  @override
  String get loginSubtitle => 'היכנס לחשבון InvoiceFlow שלך';

  @override
  String get loginEmailLabel => 'כתובת אימייל';

  @override
  String get loginEmailHint => 'you@example.com';

  @override
  String get loginEmailRequired => 'האימייל הוא שדה חובה';

  @override
  String get loginEmailInvalid => 'הזן כתובת אימייל תקינה';

  @override
  String get loginPasswordLabel => 'סיסמה';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'הסיסמה היא שדה חובה';

  @override
  String get loginPasswordMinLength => 'הסיסמה חייבת להכיל לפחות 6 תווים';

  @override
  String get loginForgotPassword => 'שכחת סיסמה?';

  @override
  String get loginSignIn => 'התחברות';

  @override
  String get loginOrContinueWith => 'או המשך עם';

  @override
  String get loginContinueWithGoogle => 'המשך עם Google';

  @override
  String get loginNoAccount => 'אין לך חשבון? ';

  @override
  String get loginSignUp => 'הרשמה';

  @override
  String get loginResetPasswordTitle => 'איפוס סיסמה';

  @override
  String get loginResetPasswordMessage =>
      'הזן את כתובת האימייל שלך ונשלח אליך קישור לאיפוס הסיסמה.';

  @override
  String get loginResetPasswordHint => 'you@example.com';

  @override
  String get loginResetLinkSent => 'קישור האיפוס נשלח! בדוק את תיבת הדואר שלך.';

  @override
  String get loginResetLinkFailed => 'שליחת קישור האיפוס נכשלה.';

  @override
  String get registerHeading => 'יצירת חשבון';

  @override
  String get registerSubtitle => 'התחל לשלוח חשבוניות מקצועיות כבר היום';

  @override
  String get registerNameLabel => 'שם מלא';

  @override
  String get registerNameHint => 'אחמד מוחמד';

  @override
  String get registerNameRequired => 'השם הוא שדה חובה';

  @override
  String get registerNameMinLength => 'השם חייב להכיל לפחות 2 תווים';

  @override
  String get registerEmailLabel => 'כתובת אימייל';

  @override
  String get registerEmailHint => 'you@example.com';

  @override
  String get registerEmailRequired => 'האימייל הוא שדה חובה';

  @override
  String get registerEmailInvalid => 'הזן כתובת אימייל תקינה';

  @override
  String get registerPasswordLabel => 'סיסמה';

  @override
  String get registerPasswordHint => 'לפחות 6 תווים';

  @override
  String get registerPasswordRequired => 'הסיסמה היא שדה חובה';

  @override
  String get registerPasswordMinLength => 'הסיסמה חייבת להכיל לפחות 6 תווים';

  @override
  String get registerConfirmPasswordLabel => 'אימות סיסמה';

  @override
  String get registerConfirmPasswordHint => 'חזור על הסיסמה';

  @override
  String get registerConfirmPasswordRequired => 'אנא אמת את הסיסמה';

  @override
  String get registerPasswordsDoNotMatch => 'הסיסמאות אינן תואמות';

  @override
  String get registerCreateAccount => 'יצירת חשבון';

  @override
  String get registerHaveAccount => 'כבר יש לך חשבון? ';

  @override
  String get registerSignIn => 'התחברות';

  @override
  String get authTermsOfService => 'תנאי השירות';

  @override
  String get authPrivacyPolicy => 'מדיניות הפרטיות';

  @override
  String get authAgreeRequired =>
      'אנא קבל את תנאי השירות ומדיניות הפרטיות כדי להמשיך';

  @override
  String get loginAgreePrefix => 'בהמשך, אתה מסכים ל';

  @override
  String get registerAgreePrefix => 'אני מסכים ל';

  @override
  String get authAgreeAnd => ' ול';

  @override
  String get authTermsSheet =>
      'תנאי שירות אלו מסדירים את השימוש שלך ב-InvoiceFlow. בגישה לאפליקציה או בשימוש בה אתה מסכים להיות כפוף לתנאים אלו.\n\n1. אתה אחראי לדיוק החשבוניות, ההצעות והנתונים האחרים שאתה יוצר.\n2. האפליקציה מסופקת \"כמות שהיא\", ללא כל אחריות, מפורשת או משתמעת.\n3. איננו אחראים לכל הפסד הנובע מהשימוש שלך בשירות.\n4. אסור לך להשתמש באפליקציה לכל מטרה בלתי חוקית או אסורה.\n5. אנו עשויים לעדכן תנאים אלו מעת לעת; המשך השימוש באפליקציה מהווה קבלת התנאים המעודכנים.';

  @override
  String get authPrivacySheet =>
      'הפרטיות שלך חשובה לנו.\n\n1. אחסון נתונים: החשבוניות, הלקוחות וההגדרות שלך מאוחסנים מקומית במכשיר שלך.\n2. סנכרון ענן: אם תיכנס, הנתונים שלך יסונכרנו לחשבון שלך כך שיהיו זמינים בכל המכשירים שלך.\n3. לעולם לא נמכור או נשתף את המידע האישי שלך.\n4. ניתוח: אנו עשויים לאסוף נתוני שימוש אנונימיים כדי לשפר את האפליקציה.\n5. יצירת קשר: לשאלות בנושא פרטיות, פנה אל support@invoiceflow.app.';

  @override
  String get authErrorWeakPassword => 'הסיסמה חלשה מדי';

  @override
  String get authErrorEmailAlreadyInUse => 'החשבון כבר קיים';

  @override
  String get authErrorUserNotFound => 'לא נמצא משתמש עם כתובת אימייל זו';

  @override
  String get authErrorWrongPassword => 'סיסמה שגויה';

  @override
  String get authErrorInvalidEmail => 'כתובת אימייל לא תקינה';

  @override
  String get authErrorTooManyRequests =>
      'ניסיונות רבים מדי. נסה שוב מאוחר יותר';

  @override
  String get authErrorDefault => 'האימות נכשל. נסה שוב.';

  @override
  String get authErrorGoogleSignInFailed => 'ההתחברות עם Google נכשלה.';

  @override
  String get invoiceListTitle => 'חשבוניות';

  @override
  String get invoiceListSearchHint => 'חיפוש חשבוניות...';

  @override
  String get invoiceListSortDate => 'מיון לפי תאריך';

  @override
  String get invoiceListSortAmount => 'מיון לפי סכום';

  @override
  String get invoiceListSortClient => 'מיון לפי לקוח';

  @override
  String get invoiceListTabAll => 'הכל';

  @override
  String get invoiceListTabPaid => 'שולמו';

  @override
  String get invoiceListTabPending => 'בהמתנה';

  @override
  String get invoiceListTabOverdue => 'באיחור';

  @override
  String get invoiceListTabDraft => 'טיוטה';

  @override
  String get invoiceListEmpty => 'לא נמצאו חשבוניות';

  @override
  String get invoiceCreateTitle => 'חשבונית חדשה';

  @override
  String get invoiceEditTitle => 'עריכת חשבונית';

  @override
  String get invoiceSaveDraft => 'שמור טיוטה';

  @override
  String get invoiceStepClient => 'לקוח';

  @override
  String get invoiceStepItems => 'פריטים';

  @override
  String get invoiceStepReview => 'סקירה';

  @override
  String get invoiceSelectClient => 'בחר לקוח';

  @override
  String get invoiceSelectClientSubtitle => 'בחר למי מיועדת חשבונית זו';

  @override
  String get invoiceSearchClients => 'חיפוש לקוחות...';

  @override
  String get invoiceAddNewClient => 'הוספת לקוח חדש';

  @override
  String get invoiceNoClientsFound => 'לא נמצאו לקוחות';

  @override
  String get invoiceSelectClientEmptyHint =>
      'צור את הלקוח הראשון שלך כדי להתחיל לבנות חשבוניות';

  @override
  String get invoiceAddLineItem => 'הוסף שורת פריט';

  @override
  String get invoiceItemDescription => 'תיאור';

  @override
  String get invoiceItemDescriptionHint => 'למשל: פיתוח אתרים';

  @override
  String get invoiceItemQuickAdd => 'הוספה מהירה:';

  @override
  String get invoiceItemQty => 'כמות';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'תעריף';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'הוסף פריט';

  @override
  String get invoiceLineItems => 'שורות פריטים';

  @override
  String get invoiceLineItemsSubtitle => 'הוסף שירותים או מוצרים';

  @override
  String get invoiceNoItems => 'אין פריטים עדיין. הוסף את הפריט הראשון.';

  @override
  String get invoiceTaxRate => 'שיעור מס (%)';

  @override
  String get invoiceSubtotal => 'סכום ביניים';

  @override
  String invoiceTax(Object taxRate) {
    return 'מס ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'סה\"כ';

  @override
  String get invoiceReviewHeading => 'סקירה וסיום';

  @override
  String get invoiceReviewSubtitle => 'קבע תאריכים, הוסף הערות, לוגו וחתימה';

  @override
  String get invoiceCompanyLogo => 'לוגו החברה';

  @override
  String get invoiceAddLogo => 'הוספת לוגו';

  @override
  String get invoiceInvoiceDate => 'תאריך חשבונית';

  @override
  String get invoiceDueDate => 'תאריך תשלום';

  @override
  String get invoiceNotesLabel => 'הערות (אופציונלי)';

  @override
  String get invoiceNotesHint => 'תודה על העבודה איתנו!';

  @override
  String get invoicePaymentTermsLabel => 'תנאי תשלום (אופציונלי)';

  @override
  String get invoicePaymentTermsHint => 'התשלום אמור להתבצע תוך 30 יום';

  @override
  String get invoiceSignatureLabel => 'חתימה';

  @override
  String get invoiceSignatureOverwrite =>
      'החתימה הקיימת נשמרה. צייר למעלה כדי להחליף.';

  @override
  String get invoiceCreatedSnackbar => 'החשבונית נוצרה!';

  @override
  String get invoiceUpdatedSnackbar => 'החשבונית עודכנה!';

  @override
  String get invoiceDetailTitle => 'חשבונית';

  @override
  String get invoiceDetailMarkAsPaid => 'סמן כשולם';

  @override
  String get invoiceDetailTotalAmount => 'סכום כולל';

  @override
  String get invoiceDetailIssued => 'הונפקה';

  @override
  String get invoiceDetailDue => 'לתשלום';

  @override
  String get invoiceDetailPaid => 'שולם';

  @override
  String get invoiceDetailBillTo => 'חיוב עבור';

  @override
  String get invoiceDetailItems => 'פריטים';

  @override
  String get invoiceDetailNotes => 'הערות';

  @override
  String get invoiceDetailSignature => 'חתימה';

  @override
  String get invoiceDetailMarkedPaidSnackbar => 'החשבונית סומנה כשולמה!';

  @override
  String get invoiceDetailPdfFailed => 'יצירת ה-PDF נכשלה';

  @override
  String get clientListTitle => 'לקוחות';

  @override
  String get clientListSearchHint => 'חיפוש לקוחות...';

  @override
  String get clientListTotalClients => 'סך הלקוחות';

  @override
  String get clientListTotalBilled => 'סך החיוב';

  @override
  String get clientListEmptySearch => 'לא נמצאו לקוחות';

  @override
  String get clientListEmpty => 'אין לקוחות עדיין';

  @override
  String get clientListEmptySubtitle =>
      'הוסף את הלקוח הראשון שלך כדי להתחיל ליצור חשבוניות';

  @override
  String get clientListAddClient => 'הוספת לקוח';

  @override
  String get clientListTotalBilledLabel => 'סך חיוב';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count חשבונית';
  }

  @override
  String get clientCreateTitle => 'לקוח חדש';

  @override
  String get clientEditTitle => 'עריכת לקוח';

  @override
  String get clientBasicInfo => 'מידע בסיסי';

  @override
  String get clientNameLabel => 'שם מלא *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'השם הוא שדה חובה';

  @override
  String get clientNameTooShort => 'השם קצר מדי';

  @override
  String get clientEmailLabel => 'כתובת אימייל *';

  @override
  String get clientEmailHint => 'billing@company.com';

  @override
  String get clientEmailRequired => 'האימייל הוא שדה חובה';

  @override
  String get clientEmailInvalid => 'הזן כתובת אימייל תקינה';

  @override
  String get clientPhoneLabel => 'מספר טלפון';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'כתובת';

  @override
  String get clientAddressLabel => 'כתובת רחוב';

  @override
  String get clientAddressHint => 'בית עסקים 123, משרד 45';

  @override
  String get clientCityLabel => 'עיר / מדינה';

  @override
  String get clientCityHint => 'דובאי, איחוד האמירויות הערביות';

  @override
  String get clientBillingDefaults => 'ברירות מחדל לחיוב';

  @override
  String get clientDefaultCurrency => 'מטבע ברירת מחדל';

  @override
  String get clientDefaultTaxRate => 'שיעור מס ברירת מחדל (מע\"מ / GST)';

  @override
  String get clientVatLabel => 'מספר רישום מע\"מ / מס';

  @override
  String get clientVatHint => '123456789012345 (אופציונלי)';

  @override
  String get clientUpdateButton => 'עדכון לקוח';

  @override
  String get clientAddButton => 'הוספת לקוח';

  @override
  String get clientUpdatedSnackbar => 'הלקוח עודכן!';

  @override
  String get clientAddedSnackbar => 'הלקוח נוסף!';

  @override
  String get clientDetailInvoices => 'חשבוניות';

  @override
  String get clientDetailTotalBilled => 'סך החיוב';

  @override
  String get clientDetailOutstanding => 'יתרה פתוחה';

  @override
  String get clientDetailEdit => 'עריכה';

  @override
  String get clientDetailNewInvoice => 'חשבונית חדשה';

  @override
  String get clientDetailEmailClient => 'שליחת אימייל ללקוח';

  @override
  String get clientDetailClientDetails => 'פרטי הלקוח';

  @override
  String get clientDetailEmail => 'אימייל';

  @override
  String get clientDetailPhone => 'טלפון';

  @override
  String get clientDetailAddress => 'כתובת';

  @override
  String get clientDetailCity => 'עיר';

  @override
  String get clientDetailCurrency => 'מטבע';

  @override
  String get clientDetailTaxRate => 'שיעור מס';

  @override
  String get clientDetailVatNumber => 'מספר מע\"מ';

  @override
  String get clientDetailInvoiceHistory => 'היסטוריית חשבוניות';

  @override
  String get clientDetailNoInvoices => 'אין עדיין חשבוניות עבור לקוח זה';

  @override
  String get deleteClientTitle => 'למחוק לקוח?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'למחוק $clientName? לא ניתן לבטל פעולה זו.';
  }

  @override
  String get settingsTitle => 'הגדרות';

  @override
  String get settingsYourName => 'השם שלך';

  @override
  String get settingsBackupTitle => 'גבה את החשבוניות שלך';

  @override
  String get settingsBackupDescription =>
      'היכנס כדי לסנכרן את הנתונים שלך בצורה מאובטחת ולגשת אליהם מכל מקום.';

  @override
  String get settingsSignInRegister => 'התחברות או הרשמה';

  @override
  String get settingsProUpsell =>
      'שדרג ל-Pro לקבלת חשבוניות ללא הגבלה, סנכרון ענן וללא סימני מים.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'הגעת למגבלת התוכנית החינמית של $limit חשבוניות. שדרג ל-Pro לקבלת חשבוניות ללא הגבלה וסנכרון ענן.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'הגעת למגבלת התוכנית החינמית של $limit לקוחות. שדרג ל-Pro לקבלת לקוחות ללא הגבלה וסנכרון ענן.';
  }

  @override
  String get settingsUpgradePro => 'שדרוג';

  @override
  String get settingsBusinessSection => 'הגדרות עסק';

  @override
  String get settingsBusinessDetails => 'פרטי העסק';

  @override
  String get settingsBusinessDetailsSubtitle => 'הגדר את שם העסק';

  @override
  String get settingsInvoicePrefix => 'קידומת חשבונית';

  @override
  String get settingsDefaultCurrency => 'מטבע ברירת מחדל';

  @override
  String get settingsAppSection => 'הגדרות אפליקציה';

  @override
  String get settingsDarkMode => 'מצב כהה';

  @override
  String get settingsDailyNotification => 'התראה יומית';

  @override
  String get settingsDailyNotificationNotSet => 'לא הוגדר';

  @override
  String get settingsLanguage => 'שפה';

  @override
  String get settingsLanguageLabel => 'עברית';

  @override
  String get languageEnglish => 'אנגלית';

  @override
  String get languageArabic => 'العربية';

  @override
  String get languageFrench => 'צרפתית';

  @override
  String get languageSpanish => 'ספרדית';

  @override
  String get languageUrdu => 'اردو';

  @override
  String get languageChinese => '中文';

  @override
  String get settingsAboutSection => 'אודות';

  @override
  String get settingsRateApp => 'דרג את האפליקציה';

  @override
  String get settingsHelpSupport => 'עזרה ותמיכה';

  @override
  String get settingsPrivacyPolicy => 'מדיניות פרטיות';

  @override
  String get settingsHelpSupportSheet =>
      'צריך עזרה? פנה אלינו בכתובת support@invoiceflow.app ונחזור אליך תוך 24 שעות.';

  @override
  String get settingsPrivacySheet =>
      'הנתונים שלך מאוחסנים מקומית במכשיר שלך. לעולם לא נמכור או נשתף את המידע האישי שלך.';

  @override
  String get settingsVersion => 'גרסה';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'התנתקות';

  @override
  String get settingsEditProfile => 'עריכת פרופיל';

  @override
  String get settingsProfileNameLabel => 'שם מלא';

  @override
  String get settingsProfileNameHint => 'השם שלך';

  @override
  String get settingsBusinessNameLabel => 'שם העסק';

  @override
  String get settingsBusinessNameHint => 'החברה בע\"מ';

  @override
  String get settingsBusinessEmailLabel => 'אימייל עסקי';

  @override
  String get settingsBusinessEmailHint => 'billing@company.com';

  @override
  String get settingsPhoneLabel => 'טלפון';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'כתובת';

  @override
  String get settingsAddressHint => 'דובאי, איחוד האמירויות הערביות';

  @override
  String get settingsBusinessDetailsSaved => 'פרטי העסק נשמרו!';

  @override
  String get settingsInvoicePrefixTitle => 'קידומת מספר חשבונית';

  @override
  String get settingsInvoicePrefixHint => 'למשל: INV-, #, חשבונית-';

  @override
  String get settingsPrefixSaved => 'קידומת החשבונית נשמרה';

  @override
  String get settingsNotificationScheduled => 'ההתראה היומית נקבעה בהצלחה!';

  @override
  String get settingsSignOutTitle => 'להתנתק?';

  @override
  String get settingsSignOutMessage =>
      'האם אתה בטוח שברצונך להתנתק מ-InvoiceFlow?';

  @override
  String get settingsSignedOut => 'ההתנתקות הושלמה בהצלחה.';

  @override
  String get statusPaid => 'שולם';

  @override
  String get statusOverdue => 'באיחור';

  @override
  String get statusPending => 'בהמתנה';

  @override
  String get statusDraft => 'טיוטה';

  @override
  String get statusCancelled => 'בוטל';

  @override
  String get notificationChannelName => 'תזכורות יומיות';

  @override
  String get notificationChannelDescription =>
      'מזכיר לך לבדוק את החשבוניות שלך מדי יום';

  @override
  String get notificationTitle => 'תזכורת חשבונית';

  @override
  String get notificationBody =>
      'הגיע הזמן לבדוק את החשבוניות האחרונות שלך ולעקוב אחר תשלומים בהמתנה.';

  @override
  String get pdfInvoice => 'חשבונית';

  @override
  String get pdfInvoiceNumber => 'חשבונית מס\':';

  @override
  String get pdfDate => 'תאריך:';

  @override
  String get pdfDueDate => 'תאריך תשלום:';

  @override
  String get pdfBillTo => 'חיוב עבור:';

  @override
  String get pdfDescription => 'תיאור';

  @override
  String get pdfQty => 'כמות';

  @override
  String get pdfRate => 'תעריף';

  @override
  String get pdfAmount => 'סכום';

  @override
  String get pdfSubtotal => 'סכום ביניים:';

  @override
  String pdfTax(Object taxRate) {
    return 'מס ($taxRate%):';
  }

  @override
  String get pdfTotal => 'סה\"כ:';

  @override
  String get pdfSignature => 'חתימה:';

  @override
  String get pdfNotes => 'הערות:';

  @override
  String get pdfPaymentTerms => 'תנאי תשלום:';

  @override
  String get pdfThankYou => 'תודה על העבודה איתנו!';

  @override
  String get quickAddWebDesign => 'עיצוב אתרים';

  @override
  String get quickAddDevelopment => 'פיתוח';

  @override
  String get quickAddConsulting => 'ייעוץ';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'כתיבת תוכן';

  @override
  String get paywallTitle => 'שחרר את InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'עבור לבלתי מוגבל וסנכרן בכל מקום. ניתן לבטל בכל עת.';

  @override
  String get paywallFeatureUnlimited => 'חשבוניות ולקוחות ללא הגבלה';

  @override
  String get paywallFeatureSync => 'סנכרון ענן בין מכשירים';

  @override
  String get paywallFeatureNoWatermark => 'ללא סימני מים, לעולם';

  @override
  String get paywallMonthly => 'חודשי';

  @override
  String get paywallMonthlySub => 'חיוב חודשי';

  @override
  String get paywallYearly => 'שנתי';

  @override
  String get paywallYearlySub => 'הערך הטוב ביותר — חודשיים בחינם';

  @override
  String get paywallRestore => 'שחזור רכישות';

  @override
  String get paywallTerms =>
      'המנויים מתחדשים אוטומטית. נהל בהגדרות חנות האפליקציות.';

  @override
  String get purchaseSuccessTitle => 'אתה Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'חשבוניות ללא הגבלה, סנכרון ענן וללא סימני מים — הכל נפתח. תודה!';

  @override
  String get purchaseSuccessContinue => 'המשך';

  @override
  String get paywallLoading => 'טוען תוכניות…';

  @override
  String get paywallLoadError =>
      'לא ניתן היה לטעון את התוכניות. בדוק את החיבור ונסה שוב.';

  @override
  String get paywallNoOffering => 'אין תוכניות זמינות כרגע.';

  @override
  String get purchaseRestored => 'הרכישות שוחזרו בהצלחה';

  @override
  String get purchaseErrorGeneric => 'הרכישה נכשלה. נסה שוב.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro פעיל — חשבוניות ולקוחות ללא הגבלה וללא סימני מים';

  @override
  String get settingsFreePlan => 'תוכנית חינמית';

  @override
  String get settingsFreeHint => 'שדרג לחשבוניות ללא הגבלה, סנכרון ענן ועוד';

  @override
  String get settingsUpgradeToPro => 'שדרג ל-Pro';

  @override
  String get settingsManageSubscription => 'ניהול מינוי';

  @override
  String get customerCenterFailed => 'לא ניתן היה לפתוח את ניהול המינוי.';

  @override
  String get onboardingSkip => 'דלג';

  @override
  String get onboardingNext => 'הבא';

  @override
  String get onboardingGetStarted => 'התחל';

  @override
  String get onboardingWelcomeTitle => 'חשבוניות תוך 2 דקות';

  @override
  String get onboardingWelcomeBody =>
      'צור חשבוניות PDF מקצועיות עבור הלקוחות שלך — מהר ויפה.';

  @override
  String get onboardingSyncTitle => 'סנכרון בכל מקום';

  @override
  String get onboardingSyncBody =>
      'היכנס כדי לגבות את הנתונים שלך בענן בצורה מאובטחת ולגשת אליהם מכל מכשיר.';

  @override
  String get onboardingProTitle => 'עבור לבלתי מוגבל עם Pro';

  @override
  String get onboardingProBody =>
      'פתח חשבוניות ללא הגבלה, סנכרון ענן והסר סימני מים עם InvoiceFlow Pro.';

  @override
  String get settingsAccentColor => 'צבע מבטא';

  @override
  String get settingsAccentColorHint =>
      'התאם אישית את האפליקציה עם צבע לבחירתך.';

  @override
  String get settingsCountry => 'מדינה';

  @override
  String get settingsTaxId => 'מספר רישום מס';

  @override
  String get settingsTaxIdNotSet => 'לא הוגדר';

  @override
  String get settingsTaxIdHint => 'למשל: 123456789012345';

  @override
  String get settingsTaxIdSaved => 'מספר המס נשמר';

  @override
  String get catalogTitle => 'מוצרים ושירותים';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count פריטים',
      one: '$count פריט',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'אין מוצרים עדיין';

  @override
  String get catalogEmptySubtitle =>
      'שמור מוצרים ושירותים לשימוש חוזר כדי להוסיף אותם לחשבוניות מהר יותר.';

  @override
  String get catalogFromSaved => 'מהקטלוג שלך';

  @override
  String get catalogSaveToCatalog => 'שמור בקטלוג לשימוש חוזר';

  @override
  String get catalogAddSnackbar => 'נוסף לקטלוג';

  @override
  String get catalogDeleteTitle => 'למחוק פריט?';

  @override
  String catalogDeleteMessage(String description) {
    return 'למחוק \"$description\"? לא ניתן לבטל פעולה זו.';
  }

  @override
  String get commonDone => 'סיום';

  @override
  String get estimateListTitle => 'הערכות מחיר';

  @override
  String get estimateListSearchHint => 'חיפוש הערכות מחיר…';

  @override
  String get estimateListEmpty => 'אין הערכות מחיר עדיין';

  @override
  String get estimateListTabAll => 'הכל';

  @override
  String get estimateListTabDraft => 'טיוטה';

  @override
  String get estimateListTabSent => 'נשלח';

  @override
  String get estimateListTabAccepted => 'התקבל';

  @override
  String get estimateListTabExpired => 'פג תוקף';

  @override
  String get estimateCreateTitle => 'הערכת מחיר חדשה';

  @override
  String get estimateEditTitle => 'עריכת הערכת מחיר';

  @override
  String get estimateCreatedSnackbar => 'הערכת המחיר נשמרה';

  @override
  String get estimateUpdatedSnackbar => 'הערכת המחיר עודכנה';

  @override
  String get estimateIssueDate => 'תאריך הנפקה';

  @override
  String get estimateExpiryDate => 'תאריך תפוגה';

  @override
  String get estimateExpiresPrefix => 'פג תוקף ';

  @override
  String get estimateConvertToInvoice => 'המר לחשבונית';

  @override
  String get estimateConvertedSnackbar => 'הערכת המחיר הומרה לחשבונית';

  @override
  String get estimateConvertFailed => 'לא ניתן היה להמיר את הערכת המחיר';

  @override
  String get estimateMarkSent => 'סמן כנשלח';

  @override
  String get estimateMarkAccepted => 'סמן כהתקבל';

  @override
  String get estimateMarkDeclined => 'סמן כנדחה';

  @override
  String get estimateConvertedTitle => 'הומר';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'הומר לחשבונית $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'סה\"כ הערכת מחיר';

  @override
  String get estimateStatusSent => 'נשלח';

  @override
  String get estimateStatusAccepted => 'התקבל';

  @override
  String get estimateStatusDeclined => 'נדחה';

  @override
  String get estimateStatusExpired => 'פג תוקף';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count פתוחים',
      one: '1 פתוח',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'למחוק הערכת מחיר?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'למחוק \"$estimateNumber\"? לא ניתן לבטל פעולה זו.';
  }

  @override
  String get estimatePdfFailed => 'לא ניתן היה ליצור PDF';

  @override
  String get pdfEstimate => 'הערכת מחיר';

  @override
  String get pdfEstimateNumber => 'הערכת מחיר מס\':';

  @override
  String get pdfValidUntil => 'בתוקף עד:';

  @override
  String get invoiceDetailPaymentTerms => 'תנאי תשלום';

  @override
  String get recurringListTitle => 'חשבוניות חוזרות';

  @override
  String get recurringListEmpty => 'אין חשבוניות חוזרות עדיין';

  @override
  String get recurringListEmptySubtitle =>
      'הגדר חשבוניות אוטומטיות עבור לקוחות ושירותים קבועים.';

  @override
  String get recurringCreateTitle => 'חשבונית חוזרת חדשה';

  @override
  String get recurringEditTitle => 'עריכת חשבונית חוזרת';

  @override
  String get recurringCreatedSnackbar => 'החשבונית החוזרת נשמרה';

  @override
  String get recurringUpdatedSnackbar => 'החשבונית החוזרת עודכנה';

  @override
  String get recurringDeleteTitle => 'למחוק חשבונית חוזרת?';

  @override
  String recurringDeleteMessage(String title) {
    return 'למחוק \"$title\"? חשבוניות קיימות לא יוסרו.';
  }

  @override
  String get recurringTitleLabel => 'כותרת';

  @override
  String get recurringTitleHint => 'למשל: תשלום חודשי קבוע';

  @override
  String get recurringClientLabel => 'לקוח';

  @override
  String get recurringFrequencyLabel => 'תדירות';

  @override
  String get recurringFrequencyWeekly => 'שבועית';

  @override
  String get recurringFrequencyBiweekly => 'דו-שבועית';

  @override
  String get recurringFrequencyMonthly => 'חודשית';

  @override
  String get recurringFrequencyQuarterly => 'רבעונית';

  @override
  String get recurringFrequencyYearly => 'שנתית';

  @override
  String get recurringNextRun => 'הפעלה הבאה';

  @override
  String get recurringDueDays => 'תשלום בעוד';

  @override
  String get recurringDays => 'ימים';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count פעילים',
      one: '1 פעיל',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'דוחות';

  @override
  String get reportsSubtitle => 'ניתוח עסקי';

  @override
  String get reportsEmpty => 'צור חשבוניות כדי לראות דוחות';

  @override
  String get reportsCollected => 'נגבה';

  @override
  String get reportsOutstanding => 'יתרה פתוחה';

  @override
  String get reportsMonthlyRevenue => 'הכנסה חודשית';

  @override
  String get reportsLast6Months => '6 החודשים האחרונים';

  @override
  String get reportsByStatus => 'לפי סטטוס';

  @override
  String get reportsTopClients => 'לקוחות מובילים';

  @override
  String get paymentLinkTitle => 'קישור תשלום';

  @override
  String get paymentLinkNotSet => 'לא הוגדר קישור תשלום בהגדרות';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'קישור התשלום שלך כלול ב-PDF של החשבונית וניתן להעתיקו מתפריט החשבונית.';

  @override
  String get paymentLinkSaved => 'קישור התשלום נשמר';

  @override
  String get settingsPaymentLinkNotSet => 'לא הוגדר';

  @override
  String get invoiceDetailCopyPaymentLink => 'העתק קישור תשלום';

  @override
  String get paymentLinkCopied => 'קישור התשלום הועתק';

  @override
  String get pdfPayOnline => 'שלם באינטרנט';

  @override
  String get exportXml => 'ייצוא XML';

  @override
  String get exportXmlFailed => 'לא ניתן היה לייצא XML';
}
