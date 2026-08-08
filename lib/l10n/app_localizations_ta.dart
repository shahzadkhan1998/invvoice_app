// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => '2 நிமிடங்களில் தொழில்முறை விலைப்பட்டியல்கள்';

  @override
  String get bottomNavDashboard => 'டாஷ்போர்டு';

  @override
  String get bottomNavInvoices => 'விலைப்பட்டியல்கள்';

  @override
  String get bottomNavClients => 'வாடிக்கையாளர்கள்';

  @override
  String get bottomNavSettings => 'அமைப்புகள்';

  @override
  String get commonCancel => 'ரத்து';

  @override
  String get commonDelete => 'நீக்கு';

  @override
  String get commonSave => 'சேமி';

  @override
  String get commonSearch => 'தேடு';

  @override
  String get commonBack => 'பின்';

  @override
  String get commonContinue => 'தொடரவும்';

  @override
  String get commonAdd => 'சேர்';

  @override
  String get commonEdit => 'திருத்து';

  @override
  String get commonCreate => 'உருவாக்கு';

  @override
  String get commonClear => 'அழி';

  @override
  String get commonView => 'பார்';

  @override
  String get commonShare => 'பகிர்';

  @override
  String get commonExportPdf => 'PDF ஏற்றுமதி';

  @override
  String get commonSharePdf => 'PDF பகிர்';

  @override
  String get commonSaveChanges => 'மாற்றங்களைச் சேமி';

  @override
  String get commonRequired => 'தேவை';

  @override
  String get commonInvalid => 'தவறானது';

  @override
  String get commonSendLink => 'இணைப்பை அனுப்பு';

  @override
  String get commonGeneratingPdf => 'PDF உருவாகிறது...';

  @override
  String get dashboardGreetingMorning => 'காலை வணக்கம்';

  @override
  String get dashboardGreetingAfternoon => 'மதிய வணக்கம்';

  @override
  String get dashboardGreetingEvening => 'மாலை வணக்கம்';

  @override
  String get dashboardSubtitle => 'உங்கள் வணிக மேலோட்டம் இதோ';

  @override
  String get dashboardOutstanding => 'நிலுவை';

  @override
  String get dashboardOverdue => 'காலாவதியானது';

  @override
  String get dashboardThisMonth => 'இந்த மாதம்';

  @override
  String get dashboardInvoices => 'விலைப்பட்டியல்கள்';

  @override
  String dashboardPaidCount(Object count) {
    return '$count செலுத்தப்பட்டது';
  }

  @override
  String get dashboardRecentInvoices => 'சமீபத்திய விலைப்பட்டியல்கள்';

  @override
  String get dashboardSeeAll => 'அனைத்தையும் பார்';

  @override
  String get dashboardNotifications => 'அறிவிப்புகள்';

  @override
  String get dashboardNotificationsHint =>
      'காலாவதியான மற்றும் நிலுவையிலுள்ள விலைப்பட்டியல்களைத் தொடர்ந்து மதிப்பாய்வு செய்து பணப்புழக்கத்தைக் கண்காணிக்கவும்.';

  @override
  String get dashboardNewInvoice => 'புதிய விலைப்பட்டியல்';

  @override
  String get dashboardNoInvoicesYet => 'இன்னும் விலைப்பட்டியல்கள் இல்லை';

  @override
  String get dashboardNoInvoicesSubtitle =>
      '2 நிமிடங்களுக்குள் உங்கள் முதல் தொழில்முறை விலைப்பட்டியலை உருவாக்கவும்';

  @override
  String get dashboardCreateInvoice => 'விலைப்பட்டியல் உருவாக்கு';

  @override
  String get dashboardMarkPaid => 'செலுத்தப்பட்டதாகக் குறி';

  @override
  String get dashboardDuePrefix => 'காலக்கெடு ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days நாட்கள் காலாவதியானது';
  }

  @override
  String get deleteInvoiceTitle => 'விலைப்பட்டியலை நீக்கவா?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return '$invoiceNumber நீக்கவா? இதை மீட்டெடுக்க முடியாது.';
  }

  @override
  String get loginHeading => 'மீண்டும் வரவேற்கிறோம்';

  @override
  String get loginSubtitle => 'உங்கள் InvoiceFlow கணக்கில் உள்நுழைக';

  @override
  String get loginEmailLabel => 'மின்னஞ்சல் முகவரி';

  @override
  String get loginEmailHint => 'you@example.com';

  @override
  String get loginEmailRequired => 'மின்னஞ்சல் தேவை';

  @override
  String get loginEmailInvalid => 'சரியான மின்னஞ்சலை உள்ளிடவும்';

  @override
  String get loginPasswordLabel => 'கடவுச்சொல்';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'கடவுச்சொல் தேவை';

  @override
  String get loginPasswordMinLength =>
      'கடவுச்சொல் குறைந்தது 6 எழுத்துகள் இருக்க வேண்டும்';

  @override
  String get loginForgotPassword => 'கடவுச்சொல்லை மறந்துவிட்டீர்களா?';

  @override
  String get loginSignIn => 'உள்நுழைக';

  @override
  String get loginOrContinueWith => 'அல்லது இதனுடன் தொடரவும்';

  @override
  String get loginContinueWithGoogle => 'Google மூலம் தொடரவும்';

  @override
  String get loginNoAccount => 'கணக்கு இல்லையா? ';

  @override
  String get loginSignUp => 'பதிவு செய்க';

  @override
  String get loginResetPasswordTitle => 'கடவுச்சொல்லை மீட்டமை';

  @override
  String get loginResetPasswordMessage =>
      'உங்கள் மின்னஞ்சலை உள்ளிட்டால் மீட்டமைப்பு இணைப்பை அனுப்புவோம்.';

  @override
  String get loginResetPasswordHint => 'you@example.com';

  @override
  String get loginResetLinkSent =>
      'மீட்டமைப்பு இணைப்பு அனுப்பப்பட்டது! உங்கள் மின்னஞ்சலைச் சரிபார்க்கவும்.';

  @override
  String get loginResetLinkFailed => 'மீட்டமைப்பு இணைப்பை அனுப்ப முடியவில்லை.';

  @override
  String get registerHeading => 'கணக்கை உருவாக்கு';

  @override
  String get registerSubtitle =>
      'இன்றே தொழில்முறை விலைப்பட்டியல்களை அனுப்பத் தொடங்குங்கள்';

  @override
  String get registerNameLabel => 'முழுப் பெயர்';

  @override
  String get registerNameHint => 'அகமது முஹம்மது';

  @override
  String get registerNameRequired => 'பெயர் தேவை';

  @override
  String get registerNameMinLength =>
      'பெயர் குறைந்தது 2 எழுத்துகள் இருக்க வேண்டும்';

  @override
  String get registerEmailLabel => 'மின்னஞ்சல் முகவரி';

  @override
  String get registerEmailHint => 'you@example.com';

  @override
  String get registerEmailRequired => 'மின்னஞ்சல் தேவை';

  @override
  String get registerEmailInvalid => 'சரியான மின்னஞ்சலை உள்ளிடவும்';

  @override
  String get registerPasswordLabel => 'கடவுச்சொல்';

  @override
  String get registerPasswordHint => 'குறைந்தது 6 எழுத்துகள்';

  @override
  String get registerPasswordRequired => 'கடவுச்சொல் தேவை';

  @override
  String get registerPasswordMinLength =>
      'கடவுச்சொல் குறைந்தது 6 எழுத்துகள் இருக்க வேண்டும்';

  @override
  String get registerConfirmPasswordLabel => 'கடவுச்சொல்லை உறுதிசெய்';

  @override
  String get registerConfirmPasswordHint => 'கடவுச்சொல்லை மீண்டும் உள்ளிடவும்';

  @override
  String get registerConfirmPasswordRequired =>
      'உங்கள் கடவுச்சொல்லை உறுதிசெய்யவும்';

  @override
  String get registerPasswordsDoNotMatch => 'கடவுச்சொற்கள் பொருந்தவில்லை';

  @override
  String get registerCreateAccount => 'கணக்கை உருவாக்கு';

  @override
  String get registerHaveAccount => 'ஏற்கனவே கணக்கு உள்ளதா? ';

  @override
  String get registerSignIn => 'உள்நுழைக';

  @override
  String get authTermsOfService => 'சேவை விதிமுறைகள்';

  @override
  String get authPrivacyPolicy => 'தனியுரிமைக் கொள்கை';

  @override
  String get authAgreeRequired =>
      'தொடர சேவை விதிமுறைகள் மற்றும் தனியுரிமைக் கொள்கையை ஏற்கவும்';

  @override
  String get loginAgreePrefix => 'தொடர்வதன் மூலம், நீங்கள் எங்களுடைய ';

  @override
  String get registerAgreePrefix => 'நான் சம்மதிக்கிறேன் ';

  @override
  String get authAgreeAnd => ' மற்றும் ';

  @override
  String get authTermsSheet =>
      'இந்தச் சேவை விதிமுறைகள் InvoiceFlow-இன் உங்கள் பயன்பாட்டை நிர்வகிக்கின்றன. பயன்பாட்டை அணுகுவதன் மூலமோ பயன்படுத்துவதன் மூலமோ இந்த விதிமுறைகளுக்கு கட்டுப்படுவதற்கு நீங்கள் சம்மதிக்கிறீர்கள்.\n\n1. நீங்கள் உருவாக்கும் விலைப்பட்டியல்கள், மதிப்பீடுகள் மற்றும் பிற தரவுகளின் துல்லியத்திற்கு நீங்கள் பொறுப்பானவர்.\n2. இந்தப் பயன்பாடு \"உள்ளவாறே\" வழங்கப்படுகிறது, எந்த விதமான வாரண்டியும் இல்லாமல், வெளிப்படையான அல்லது மறைமுகமான.\n3. சேவையைப் பயன்படுத்துவதால் ஏற்படும் எந்த இழப்புகளுக்கும் நாங்கள் பொறுப்பல்ல.\n4. சட்டவிரோத அல்லது தடைசெய்யப்பட்ட எந்த நோக்கத்திற்காகவும் பயன்பாட்டைப் பயன்படுத்தக்கூடாது.\n5. இந்த விதிமுறைகளை அவ்வப்போது நாங்கள் புதுப்பிக்கலாம்; பயன்பாட்டைத் தொடர்ந்து பயன்படுத்துவது புதுப்பிக்கப்பட்ட விதிமுறைகளை ஏற்பதாகும்.';

  @override
  String get authPrivacySheet =>
      'உங்கள் தனியுரிமை எங்களுக்கு முக்கியம்.\n\n1. தரவு சேமிப்பு: உங்கள் விலைப்பட்டியல்கள், வாடிக்கையாளர்கள் மற்றும் அமைப்புகள் உங்கள் சாதனத்தில் உள்ளூரில் சேமிக்கப்படுகின்றன.\n2. கிளவுட் ஒத்திசைவு: நீங்கள் உள்நுழைந்தால், உங்கள் தரவு உங்கள் கணக்குடன் ஒத்திசைக்கப்பட்டு உங்கள் எல்லா சாதனங்களிலும் அணுகக்கூடியதாக இருக்கும்.\n3. உங்கள் தனிப்பட்ட தகவலை நாங்கள் ஒருபோதும் விற்கவோ பகிரவோ மாட்டோம்.\n4. பகுப்பாய்வு: பயன்பாட்டை மேம்படுத்த நாங்கள் அநாமதேய பயன்பாட்டுத் தரவைச் சேகரிக்கலாம்.\n5. தொடர்பு: தனியுரிமை தொடர்பான கேள்விகளுக்கு support@invoiceflow.app-ஐத் தொடர்பு கொள்ளவும்.';

  @override
  String get authErrorWeakPassword => 'கடவுச்சொல் மிகவும் பலவீனமாக உள்ளது';

  @override
  String get authErrorEmailAlreadyInUse => 'கணக்கு ஏற்கனவே உள்ளது';

  @override
  String get authErrorUserNotFound => 'இந்த மின்னஞ்சலுடன் பயனர் இல்லை';

  @override
  String get authErrorWrongPassword => 'தவறான கடவுச்சொல்';

  @override
  String get authErrorInvalidEmail => 'தவறான மின்னஞ்சல் முகவரி';

  @override
  String get authErrorTooManyRequests =>
      'அதிக முயற்சிகள். பிறகு முயற்சிக்கவும்';

  @override
  String get authErrorDefault =>
      'அங்கீகாரம் தோல்வியடைந்தது. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get authErrorGoogleSignInFailed => 'Google உள்நுழைவு தோல்வியடைந்தது.';

  @override
  String get invoiceListTitle => 'விலைப்பட்டியல்கள்';

  @override
  String get invoiceListSearchHint => 'விலைப்பட்டியல்களைத் தேடு...';

  @override
  String get invoiceListSortDate => 'தேதியின்படி வரிசை';

  @override
  String get invoiceListSortAmount => 'தொகையின்படி வரிசை';

  @override
  String get invoiceListSortClient => 'வாடிக்கையாளரின்படி வரிசை';

  @override
  String get invoiceListTabAll => 'அனைத்தும்';

  @override
  String get invoiceListTabPaid => 'செலுத்தப்பட்டது';

  @override
  String get invoiceListTabPending => 'நிலுவையில்';

  @override
  String get invoiceListTabOverdue => 'காலாவதியானது';

  @override
  String get invoiceListTabDraft => 'வரைவு';

  @override
  String get invoiceListEmpty => 'விலைப்பட்டியல்கள் காணப்படவில்லை';

  @override
  String get invoiceCreateTitle => 'புதிய விலைப்பட்டியல்';

  @override
  String get invoiceEditTitle => 'விலைப்பட்டியலைத் திருத்து';

  @override
  String get invoiceSaveDraft => 'வரைவைச் சேமி';

  @override
  String get invoiceStepClient => 'வாடிக்கையாளர்';

  @override
  String get invoiceStepItems => 'பொருட்கள்';

  @override
  String get invoiceStepReview => 'மதிப்பாய்வு';

  @override
  String get invoiceSelectClient => 'வாடிக்கையாளரைத் தேர்ந்தெடு';

  @override
  String get invoiceSelectClientSubtitle =>
      'இந்த விலைப்பட்டியல் யாருக்கு என்பதைத் தேர்ந்தெடு';

  @override
  String get invoiceSearchClients => 'வாடிக்கையாளர்களைத் தேடு...';

  @override
  String get invoiceAddNewClient => 'புதிய வாடிக்கையாளரைச் சேர்';

  @override
  String get invoiceNoClientsFound => 'வாடிக்கையாளர்கள் காணப்படவில்லை';

  @override
  String get invoiceSelectClientEmptyHint =>
      'விலைப்பட்டியல்களை உருவாக்க உங்கள் முதல் வாடிக்கையாளரை உருவாக்குங்கள்';

  @override
  String get invoiceAddLineItem => 'வரி உருப்படியைச் சேர்';

  @override
  String get invoiceItemDescription => 'விவரம்';

  @override
  String get invoiceItemDescriptionHint => 'எ.கா. வலை மேம்பாடு';

  @override
  String get invoiceItemQuickAdd => 'விரைவுச் சேர்:';

  @override
  String get invoiceItemQty => 'அளவு';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'விகிதம்';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'உருப்படியைச் சேர்';

  @override
  String get invoiceLineItems => 'வரி உருப்படிகள்';

  @override
  String get invoiceLineItemsSubtitle =>
      'சேவைகள் அல்லது தயாரிப்புகளைச் சேர்க்கவும்';

  @override
  String get invoiceNoItems =>
      'இன்னும் உருப்படிகள் இல்லை. உங்கள் முதல் உருப்படியைச் சேர்க்கவும்.';

  @override
  String get invoiceTaxRate => 'வரி விகிதம் (%)';

  @override
  String get invoiceSubtotal => 'கூட்டுத்தொகை';

  @override
  String invoiceTax(Object taxRate) {
    return 'வரி ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'மொத்தம்';

  @override
  String get invoiceReviewHeading => 'மதிப்பாய்வு & இறுதிசெய்';

  @override
  String get invoiceReviewSubtitle =>
      'தேதிகளை அமைத்து, குறிப்புகள், லோகோ மற்றும் கையொப்பத்தைச் சேர்க்கவும்';

  @override
  String get invoiceCompanyLogo => 'நிறுவன லோகோ';

  @override
  String get invoiceAddLogo => 'லோகோ சேர்';

  @override
  String get invoiceInvoiceDate => 'விலைப்பட்டியல் தேதி';

  @override
  String get invoiceDueDate => 'காலக்கெடு தேதி';

  @override
  String get invoiceNotesLabel => 'குறிப்புகள் (விருப்பம்)';

  @override
  String get invoiceNotesHint => 'உங்கள் வணிகத்திற்கு நன்றி!';

  @override
  String get invoicePaymentTermsLabel => 'கட்டண விதிமுறைகள் (விருப்பம்)';

  @override
  String get invoicePaymentTermsHint =>
      '30 நாட்களுக்குள் கட்டணம் செலுத்த வேண்டும்';

  @override
  String get invoiceSignatureLabel => 'கையொப்பம்';

  @override
  String get invoiceSignatureOverwrite =>
      'தற்போதைய கையொப்பம் சேமிக்கப்பட்டது. மாற்ற மேலே கையொப்பமிடவும்.';

  @override
  String get invoiceCreatedSnackbar => 'விலைப்பட்டியல் உருவாக்கப்பட்டது!';

  @override
  String get invoiceUpdatedSnackbar => 'விலைப்பட்டியல் புதுப்பிக்கப்பட்டது!';

  @override
  String get invoiceDetailTitle => 'விலைப்பட்டியல்';

  @override
  String get invoiceDetailMarkAsPaid => 'செலுத்தப்பட்டதாகக் குறி';

  @override
  String get invoiceDetailTotalAmount => 'மொத்தத் தொகை';

  @override
  String get invoiceDetailIssued => 'வழங்கப்பட்டது';

  @override
  String get invoiceDetailDue => 'காலக்கெடு';

  @override
  String get invoiceDetailPaid => 'செலுத்தப்பட்டது';

  @override
  String get invoiceDetailBillTo => 'பெறுநர்';

  @override
  String get invoiceDetailItems => 'பொருட்கள்';

  @override
  String get invoiceDetailNotes => 'குறிப்புகள்';

  @override
  String get invoiceDetailSignature => 'கையொப்பம்';

  @override
  String get invoiceDetailMarkedPaidSnackbar =>
      'விலைப்பட்டியல் செலுத்தப்பட்டதாகக் குறிக்கப்பட்டது!';

  @override
  String get invoiceDetailPdfFailed => 'PDF உருவாக்க முடியவில்லை';

  @override
  String get clientListTitle => 'வாடிக்கையாளர்கள்';

  @override
  String get clientListSearchHint => 'வாடிக்கையாளர்களைத் தேடு...';

  @override
  String get clientListTotalClients => 'மொத்த வாடிக்கையாளர்கள்';

  @override
  String get clientListTotalBilled => 'மொத்தம் பில் செய்யப்பட்டது';

  @override
  String get clientListEmptySearch => 'வாடிக்கையாளர்கள் காணப்படவில்லை';

  @override
  String get clientListEmpty => 'இன்னும் வாடிக்கையாளர்கள் இல்லை';

  @override
  String get clientListEmptySubtitle =>
      'விலைப்பட்டியல்களை உருவாக்க உங்கள் முதல் வாடிக்கையாளரைச் சேர்க்கவும்';

  @override
  String get clientListAddClient => 'வாடிக்கையாளரைச் சேர்';

  @override
  String get clientListTotalBilledLabel => 'மொத்தம் பில் செய்யப்பட்டது';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count விலைப்பட்டியல்';
  }

  @override
  String get clientCreateTitle => 'புதிய வாடிக்கையாளர்';

  @override
  String get clientEditTitle => 'வாடிக்கையாளரைத் திருத்து';

  @override
  String get clientBasicInfo => 'அடிப்படைத் தகவல்';

  @override
  String get clientNameLabel => 'முழுப் பெயர் *';

  @override
  String get clientNameHint => 'அக்மே கார்ப்பரேஷன்';

  @override
  String get clientNameRequired => 'பெயர் தேவை';

  @override
  String get clientNameTooShort => 'பெயர் மிகவும் சிறியது';

  @override
  String get clientEmailLabel => 'மின்னஞ்சல் முகவரி *';

  @override
  String get clientEmailHint => 'billing@company.com';

  @override
  String get clientEmailRequired => 'மின்னஞ்சல் தேவை';

  @override
  String get clientEmailInvalid => 'சரியான மின்னஞ்சலை உள்ளிடவும்';

  @override
  String get clientPhoneLabel => 'தொலைபேசி எண்';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'முகவரி';

  @override
  String get clientAddressLabel => 'தெரு முகவரி';

  @override
  String get clientAddressHint => '123 பிசினஸ் பார்க், அலுவலகம் 45';

  @override
  String get clientCityLabel => 'நகரம் / நாடு';

  @override
  String get clientCityHint => 'துபாய், ஐக்கிய அரபு எமிரேட்ஸ்';

  @override
  String get clientBillingDefaults => 'பில்லிங் இயல்புநிலைகள்';

  @override
  String get clientDefaultCurrency => 'இயல்புநிலை நாணயம்';

  @override
  String get clientDefaultTaxRate => 'இயல்புநிலை வரி விகிதம் (VAT/GST)';

  @override
  String get clientVatLabel => 'VAT / வரி பதிவு எண்';

  @override
  String get clientVatHint => '123456789012345 (விருப்பம்)';

  @override
  String get clientUpdateButton => 'வாடிக்கையாளரைப் புதுப்பி';

  @override
  String get clientAddButton => 'வாடிக்கையாளரைச் சேர்';

  @override
  String get clientUpdatedSnackbar => 'வாடிக்கையாளர் புதுப்பிக்கப்பட்டார்!';

  @override
  String get clientAddedSnackbar => 'வாடிக்கையாளர் சேர்க்கப்பட்டார்!';

  @override
  String get clientDetailInvoices => 'விலைப்பட்டியல்கள்';

  @override
  String get clientDetailTotalBilled => 'மொத்தம் பில் செய்யப்பட்டது';

  @override
  String get clientDetailOutstanding => 'நிலுவை';

  @override
  String get clientDetailEdit => 'திருத்து';

  @override
  String get clientDetailNewInvoice => 'புதிய விலைப்பட்டியல்';

  @override
  String get clientDetailEmailClient => 'வாடிக்கையாளருக்கு மின்னஞ்சல்';

  @override
  String get clientDetailClientDetails => 'வாடிக்கையாளர் விவரங்கள்';

  @override
  String get clientDetailEmail => 'மின்னஞ்சல்';

  @override
  String get clientDetailPhone => 'தொலைபேசி';

  @override
  String get clientDetailAddress => 'முகவரி';

  @override
  String get clientDetailCity => 'நகரம்';

  @override
  String get clientDetailCurrency => 'நாணயம்';

  @override
  String get clientDetailTaxRate => 'வரி விகிதம்';

  @override
  String get clientDetailVatNumber => 'VAT எண்';

  @override
  String get clientDetailInvoiceHistory => 'விலைப்பட்டியல் வரலாறு';

  @override
  String get clientDetailNoInvoices =>
      'இந்த வாடிக்கையாளருக்கு இன்னும் விலைப்பட்டியல்கள் இல்லை';

  @override
  String get deleteClientTitle => 'வாடிக்கையாளரை நீக்கவா?';

  @override
  String deleteClientMessage(Object clientName) {
    return '$clientName நீக்கவா? இதை மீட்டெடுக்க முடியாது.';
  }

  @override
  String get settingsTitle => 'அமைப்புகள்';

  @override
  String get settingsYourName => 'உங்கள் பெயர்';

  @override
  String get settingsBackupTitle =>
      'உங்கள் விலைப்பட்டியல்களை காப்புப் பிரதி எடுக்கவும்';

  @override
  String get settingsBackupDescription =>
      'உங்கள் தரவைப் பாதுகாப்பாக ஒத்திசைக்கவும் எங்கிருந்தும் அணுகவும் உள்நுழைக.';

  @override
  String get settingsSignInRegister => 'உள்நுழைக அல்லது பதிவு செய்க';

  @override
  String get settingsProUpsell =>
      'வரம்பற்ற விலைப்பட்டியல்கள், கிளவுட் ஒத்திசைவு மற்றும் வாட்டர்மார்க் இல்லாததற்கு Pro-வுக்கு மேம்படுத்தவும்.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'நீங்கள் $limit விலைப்பட்டியல்களின் இலவசத் திட்ட வரம்பை அடைந்துவிட்டீர்கள். வரம்பற்ற விலைப்பட்டியல்கள் மற்றும் கிளவுட் ஒத்திசைவுக்கு Pro-வுக்கு மேம்படுத்தவும்.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'நீங்கள் $limit வாடிக்கையாளர்களின் இலவசத் திட்ட வரம்பை அடைந்துவிட்டீர்கள். வரம்பற்ற வாடிக்கையாளர்கள் மற்றும் கிளவுட் ஒத்திசைவுக்கு Pro-வுக்கு மேம்படுத்தவும்.';
  }

  @override
  String get settingsUpgradePro => 'மேம்படுத்து';

  @override
  String get settingsBusinessSection => 'வணிக அமைப்புகள்';

  @override
  String get settingsBusinessDetails => 'வணிக விவரங்கள்';

  @override
  String get settingsBusinessDetailsSubtitle =>
      'உங்கள் வணிகப் பெயரை அமைக்கவும்';

  @override
  String get settingsInvoicePrefix => 'விலைப்பட்டியல் முன்னொட்டு';

  @override
  String get settingsDefaultCurrency => 'இயல்புநிலை நாணயம்';

  @override
  String get settingsAppSection => 'பயன்பாட்டு அமைப்புகள்';

  @override
  String get settingsDarkMode => 'இருண்ட பயன்முறை';

  @override
  String get settingsDailyNotification => 'தினசரி அறிவிப்பு';

  @override
  String get settingsDailyNotificationNotSet => 'அமைக்கப்படவில்லை';

  @override
  String get settingsLanguage => 'மொழி';

  @override
  String get settingsLanguageLabel => 'தமிழ்';

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
  String get settingsAboutSection => 'பற்றி';

  @override
  String get settingsRateApp => 'பயன்பாட்டை மதிப்பிடு';

  @override
  String get settingsHelpSupport => 'உதவி மற்றும் ஆதரவு';

  @override
  String get settingsPrivacyPolicy => 'தனியுரிமைக் கொள்கை';

  @override
  String get settingsHelpSupportSheet =>
      'உதவி தேவையா? support@invoiceflow.app-க்கு எழுதுங்கள், 24 மணி நேரத்திற்குள் உங்களைத் தொடர்புகொள்வோம்.';

  @override
  String get settingsPrivacySheet =>
      'உங்கள் தரவு உங்கள் சாதனத்தில் உள்நாட்டில் சேமிக்கப்படுகிறது. உங்கள் தனிப்பட்ட தகவலை நாங்கள் ஒருபோதும் விற்கவோ பகிரவோ மாட்டோம்.';

  @override
  String get settingsVersion => 'பதிப்பு';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'வெளியேறு';

  @override
  String get settingsEditProfile => 'சுயவிவரத்தைத் திருத்து';

  @override
  String get settingsProfileNameLabel => 'முழுப் பெயர்';

  @override
  String get settingsProfileNameHint => 'உங்கள் பெயர்';

  @override
  String get settingsBusinessNameLabel => 'வணிகப் பெயர்';

  @override
  String get settingsBusinessNameHint => 'உங்கள் நிறுவனம் லிமிடெட்';

  @override
  String get settingsBusinessEmailLabel => 'வணிக மின்னஞ்சல்';

  @override
  String get settingsBusinessEmailHint => 'billing@company.com';

  @override
  String get settingsPhoneLabel => 'தொலைபேசி';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'முகவரி';

  @override
  String get settingsAddressHint => 'துபாய், ஐக்கிய அரபு எமிரேட்ஸ்';

  @override
  String get settingsBusinessDetailsSaved => 'வணிக விவரங்கள் சேமிக்கப்பட்டன!';

  @override
  String get settingsInvoicePrefixTitle => 'விலைப்பட்டியல் எண் முன்னொட்டு';

  @override
  String get settingsInvoicePrefixHint => 'எ.கா. INV-, #, Bill-';

  @override
  String get settingsPrefixSaved => 'விலைப்பட்டியல் முன்னொட்டு சேமிக்கப்பட்டது';

  @override
  String get settingsNotificationScheduled =>
      'தினசரி அறிவிப்பு வெற்றிகரமாக திட்டமிடப்பட்டது!';

  @override
  String get settingsSignOutTitle => 'வெளியேறவா?';

  @override
  String get settingsSignOutMessage =>
      'InvoiceFlow-இலிருந்து வெளியேற விரும்புகிறீர்களா?';

  @override
  String get settingsSignedOut => 'வெற்றிகரமாக வெளியேறினீர்கள்.';

  @override
  String get statusPaid => 'செலுத்தப்பட்டது';

  @override
  String get statusOverdue => 'காலாவதியானது';

  @override
  String get statusPending => 'நிலுவையில்';

  @override
  String get statusDraft => 'வரைவு';

  @override
  String get statusCancelled => 'ரத்து செய்யப்பட்டது';

  @override
  String get notificationChannelName => 'தினசரி நினைவூட்டல்கள்';

  @override
  String get notificationChannelDescription =>
      'உங்கள் விலைப்பட்டியல்களைத் தினமும் சரிபார்க்க நினைவூட்டுகிறது';

  @override
  String get notificationTitle => 'விலைப்பட்டியல் நினைவூட்டல்';

  @override
  String get notificationBody =>
      'உங்கள் சமீபத்திய விலைப்பட்டியல்களைச் சரிபார்த்து நிலுவைக் கட்டணங்களைக் கண்காணிக்கும் நேரம் இது.';

  @override
  String get pdfInvoice => 'விலைப்பட்டியல்';

  @override
  String get pdfInvoiceNumber => 'விலைப்பட்டியல் #:';

  @override
  String get pdfDate => 'தேதி:';

  @override
  String get pdfDueDate => 'காலக்கெடு:';

  @override
  String get pdfBillTo => 'பெறுநர்:';

  @override
  String get pdfDescription => 'விவரம்';

  @override
  String get pdfQty => 'அளவு';

  @override
  String get pdfRate => 'விகிதம்';

  @override
  String get pdfAmount => 'தொகை';

  @override
  String get pdfSubtotal => 'கூட்டுத்தொகை:';

  @override
  String pdfTax(Object taxRate) {
    return 'வரி ($taxRate%):';
  }

  @override
  String get pdfTotal => 'மொத்தம்:';

  @override
  String get pdfSignature => 'கையொப்பம்:';

  @override
  String get pdfNotes => 'குறிப்புகள்:';

  @override
  String get pdfPaymentTerms => 'கட்டண விதிமுறைகள்:';

  @override
  String get pdfThankYou => 'உங்கள் வணிகத்திற்கு நன்றி!';

  @override
  String get quickAddWebDesign => 'வலை வடிவமைப்பு';

  @override
  String get quickAddDevelopment => 'மேம்பாடு';

  @override
  String get quickAddConsulting => 'ஆலோசனை';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'உள்ளடக்க எழுத்து';

  @override
  String get paywallTitle => 'InvoiceFlow Pro-வைத் திறக்கவும்';

  @override
  String get paywallSubtitle =>
      'வரம்பற்றதாகச் சென்று எங்கும் ஒத்திசைக்கவும். எப்போது வேண்டுமானாலும் ரத்து செய்யலாம்.';

  @override
  String get paywallFeatureUnlimited =>
      'வரம்பற்ற விலைப்பட்டியல்கள் மற்றும் வாடிக்கையாளர்கள்';

  @override
  String get paywallFeatureSync => 'சாதனங்களுக்கிடையே கிளவுட் ஒத்திசைவு';

  @override
  String get paywallFeatureNoWatermark => 'வாட்டர்மார்க்குகளே இல்லை';

  @override
  String get paywallMonthly => 'மாதாந்திர';

  @override
  String get paywallMonthlySub => 'மாதந்தோறும் பில்';

  @override
  String get paywallYearly => 'வருடாந்திர';

  @override
  String get paywallYearlySub => 'சிறந்த மதிப்பு — 2 மாதங்கள் இலவசம்';

  @override
  String get paywallRestore => 'கொள்முதல்களை மீட்டெடு';

  @override
  String get paywallTerms =>
      'சந்தாக்கள் தானாக புதுப்பிக்கப்படும். உங்கள் ஆப் ஸ்டோர் அமைப்புகளில் நிர்வகிக்கவும்.';

  @override
  String get purchaseSuccessTitle => 'நீங்கள் Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'வரம்பற்ற விலைப்பட்டியல்கள், கிளவுட் ஒத்திசைவு மற்றும் வாட்டர்மார்க் இல்லாமை இப்போது திறக்கப்பட்டுள்ளன. நன்றி!';

  @override
  String get purchaseSuccessContinue => 'தொடரவும்';

  @override
  String get paywallLoading => 'திட்டங்கள் ஏற்றப்படுகின்றன…';

  @override
  String get paywallLoadError =>
      'திட்டங்களை ஏற்ற முடியவில்லை. உங்கள் இணைப்பைச் சரிபார்த்து மீண்டும் முயற்சிக்கவும்.';

  @override
  String get paywallNoOffering => 'இப்போது எந்தத் திட்டமும் கிடைக்கவில்லை.';

  @override
  String get purchaseRestored => 'கொள்முதல்கள் வெற்றிகரமாக மீட்டமைக்கப்பட்டன';

  @override
  String get purchaseErrorGeneric =>
      'கொள்முதல் தோல்வியடைந்தது. மீண்டும் முயற்சிக்கவும்.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro செயலில் உள்ளது — வாட்டர்மார்க் இல்லாமல் வரம்பற்ற விலைப்பட்டியல்கள் மற்றும் வாடிக்கையாளர்கள்';

  @override
  String get settingsFreePlan => 'இலவச திட்டம்';

  @override
  String get settingsFreeHint =>
      'வரம்பற்ற விலைப்பட்டியல்கள், கிளவுட் ஒத்திசைவு மற்றும் பலவற்றிற்காக மேம்படுத்தவும்';

  @override
  String get settingsUpgradeToPro => 'Pro-க்கு மேம்படுத்தவும்';

  @override
  String get settingsManageSubscription => 'சந்தாவை நிர்வகிக்கவும்';

  @override
  String get customerCenterFailed => 'சந்தா நிர்வாகத்தைத் திறக்க முடியவில்லை.';

  @override
  String get onboardingSkip => 'தவிர்';

  @override
  String get onboardingNext => 'அடுத்து';

  @override
  String get onboardingGetStarted => 'தொடங்கு';

  @override
  String get onboardingWelcomeTitle => '2 நிமிடங்களில் விலைப்பட்டியல்கள்';

  @override
  String get onboardingWelcomeBody =>
      'உங்கள் வாடிக்கையாளர்களுக்காக தொழில்முறை PDF விலைப்பட்டியல்களை உருவாக்குங்கள் — வேகமாகவும் அழகாகவும்.';

  @override
  String get onboardingSyncTitle => 'எங்கும் ஒத்திசை';

  @override
  String get onboardingSyncBody =>
      'உங்கள் தரவைப் பாதுகாப்பாக கிளவுட்டில் காப்புப் பிரதி எடுத்து எந்தச் சாதனத்திலிருந்தும் அணுக உள்நுழைக.';

  @override
  String get onboardingProTitle => 'Pro-வுடன் வரம்பற்றதாகச் செல்லுங்கள்';

  @override
  String get onboardingProBody =>
      'InvoiceFlow Pro-வுடன் வரம்பற்ற விலைப்பட்டியல்கள், கிளவுட் ஒத்திசைவு ஆகியவற்றைத் திறந்து வாட்டர்மார்க்குகளை அகற்றவும்.';

  @override
  String get settingsAccentColor => 'முக்கிய வண்ணம்';

  @override
  String get settingsAccentColorHint =>
      'உங்கள் விருப்ப வண்ணத்துடன் பயன்பாட்டைத் தனிப்பயனாக்கவும்.';

  @override
  String get settingsCountry => 'நாடு';

  @override
  String get settingsTaxId => 'வரி பதிவு எண்';

  @override
  String get settingsTaxIdNotSet => 'அமைக்கப்படவில்லை';

  @override
  String get settingsTaxIdHint => 'எ.கா. 123456789012345';

  @override
  String get settingsTaxIdSaved => 'வரி ID சேமிக்கப்பட்டது';

  @override
  String get catalogTitle => 'தயாரிப்புகள் மற்றும் சேவைகள்';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count பொருட்கள்',
      one: '$count பொருள்',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'இன்னும் தயாரிப்புகள் இல்லை';

  @override
  String get catalogEmptySubtitle =>
      'மீண்டும் பயன்படுத்தக்கூடிய தயாரிப்புகள் மற்றும் சேவைகளைச் சேமித்து விலைப்பட்டியல்களில் வேகமாகச் சேர்க்கவும்.';

  @override
  String get catalogFromSaved => 'உங்கள் பட்டியலில் இருந்து';

  @override
  String get catalogSaveToCatalog => 'மீண்டும் பயன்படுத்த பட்டியலில் சேமி';

  @override
  String get catalogAddSnackbar => 'பட்டியலில் சேர்க்கப்பட்டது';

  @override
  String get catalogDeleteTitle => 'உருப்படியை நீக்கவா?';

  @override
  String catalogDeleteMessage(String description) {
    return '\"$description\" நீக்கவா? இதை மீட்டெடுக்க முடியாது.';
  }

  @override
  String get commonDone => 'முடிந்தது';

  @override
  String get estimateListTitle => 'மதிப்பீடுகள்';

  @override
  String get estimateListSearchHint => 'மதிப்பீடுகளைத் தேடு…';

  @override
  String get estimateListEmpty => 'இன்னும் மதிப்பீடுகள் இல்லை';

  @override
  String get estimateListTabAll => 'அனைத்தும்';

  @override
  String get estimateListTabDraft => 'வரைவு';

  @override
  String get estimateListTabSent => 'அனுப்பப்பட்டது';

  @override
  String get estimateListTabAccepted => 'ஏற்கப்பட்டது';

  @override
  String get estimateListTabExpired => 'காலாவதியானது';

  @override
  String get estimateCreateTitle => 'புதிய மதிப்பீடு';

  @override
  String get estimateEditTitle => 'மதிப்பீட்டைத் திருத்து';

  @override
  String get estimateCreatedSnackbar => 'மதிப்பீடு சேமிக்கப்பட்டது';

  @override
  String get estimateUpdatedSnackbar => 'மதிப்பீடு புதுப்பிக்கப்பட்டது';

  @override
  String get estimateIssueDate => 'வழங்கிய தேதி';

  @override
  String get estimateExpiryDate => 'காலாவதி தேதி';

  @override
  String get estimateExpiresPrefix => 'காலாவதியாகிறது ';

  @override
  String get estimateConvertToInvoice => 'விலைப்பட்டியலாக மாற்று';

  @override
  String get estimateConvertedSnackbar =>
      'மதிப்பீடு விலைப்பட்டியலாக மாற்றப்பட்டது';

  @override
  String get estimateConvertFailed => 'மதிப்பீட்டை மாற்ற முடியவில்லை';

  @override
  String get estimateMarkSent => 'அனுப்பப்பட்டதாகக் குறி';

  @override
  String get estimateMarkAccepted => 'ஏற்கப்பட்டதாகக் குறி';

  @override
  String get estimateMarkDeclined => 'நிராகரிக்கப்பட்டதாகக் குறி';

  @override
  String get estimateConvertedTitle => 'மாற்றப்பட்டது';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'விலைப்பட்டியல் $invoiceId-ஆக மாற்றப்பட்டது';
  }

  @override
  String get estimateDetailTotal => 'மதிப்பீட்டு மொத்தம்';

  @override
  String get estimateStatusSent => 'அனுப்பப்பட்டது';

  @override
  String get estimateStatusAccepted => 'ஏற்கப்பட்டது';

  @override
  String get estimateStatusDeclined => 'நிராகரிக்கப்பட்டது';

  @override
  String get estimateStatusExpired => 'காலாவதியானது';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count திறந்தவை',
      one: '1 திறந்தது',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'மதிப்பீட்டை நீக்கவா?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return '\"$estimateNumber\" நீக்கவா? இதை மீட்டெடுக்க முடியாது.';
  }

  @override
  String get estimatePdfFailed => 'PDF உருவாக்க முடியவில்லை';

  @override
  String get pdfEstimate => 'மதிப்பீடு';

  @override
  String get pdfEstimateNumber => 'மதிப்பீடு #:';

  @override
  String get pdfValidUntil => 'செல்லுபடியாகும் வரை:';

  @override
  String get invoiceDetailPaymentTerms => 'கட்டண விதிமுறைகள்';

  @override
  String get recurringListTitle => 'தொடர்ச்சியான விலைப்பட்டியல்கள்';

  @override
  String get recurringListEmpty =>
      'இன்னும் தொடர்ச்சியான விலைப்பட்டியல்கள் இல்லை';

  @override
  String get recurringListEmptySubtitle =>
      'வழக்கமான வாடிக்கையாளர்கள் மற்றும் சேவைகளுக்கு தானியங்கி விலைப்பட்டியல்களை அமைக்கவும்.';

  @override
  String get recurringCreateTitle => 'புதிய தொடர்ச்சி';

  @override
  String get recurringEditTitle => 'தொடர்ச்சியைத் திருத்து';

  @override
  String get recurringCreatedSnackbar =>
      'தொடர்ச்சியான விலைப்பட்டியல் சேமிக்கப்பட்டது';

  @override
  String get recurringUpdatedSnackbar =>
      'தொடர்ச்சியான விலைப்பட்டியல் புதுப்பிக்கப்பட்டது';

  @override
  String get recurringDeleteTitle => 'தொடர்ச்சியான விலைப்பட்டியலை நீக்கவா?';

  @override
  String recurringDeleteMessage(String title) {
    return '\"$title\" நீக்கவா? தற்போதுள்ள விலைப்பட்டியல்கள் நீக்கப்படாது.';
  }

  @override
  String get recurringTitleLabel => 'தலைப்பு';

  @override
  String get recurringTitleHint => 'எ.கா. மாதாந்திர ரெடெய்னர்';

  @override
  String get recurringClientLabel => 'வாடிக்கையாளர்';

  @override
  String get recurringFrequencyLabel => 'அதிர்வெண்';

  @override
  String get recurringFrequencyWeekly => 'வாரந்தோறும்';

  @override
  String get recurringFrequencyBiweekly => 'இருவாரத்திற்கு ஒருமுறை';

  @override
  String get recurringFrequencyMonthly => 'மாதந்தோறும்';

  @override
  String get recurringFrequencyQuarterly => 'காலாண்டுக்கு ஒருமுறை';

  @override
  String get recurringFrequencyYearly => 'வருடந்தோறும்';

  @override
  String get recurringNextRun => 'அடுத்த இயக்கம்';

  @override
  String get recurringDueDays => 'காலக்கெடு';

  @override
  String get recurringDays => 'நாட்களில்';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count செயலில்',
      one: '1 செயலில்',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'அறிக்கைகள்';

  @override
  String get reportsSubtitle => 'வணிக பகுப்பாய்வு';

  @override
  String get reportsEmpty =>
      'அறிக்கைகளைப் பார்க்க விலைப்பட்டியல்களை உருவாக்கவும்';

  @override
  String get reportsCollected => 'வசூலிக்கப்பட்டது';

  @override
  String get reportsOutstanding => 'நிலுவை';

  @override
  String get reportsMonthlyRevenue => 'மாதாந்திர வருவாய்';

  @override
  String get reportsLast6Months => 'கடந்த 6 மாதங்கள்';

  @override
  String get reportsByStatus => 'நிலை வாரியாக';

  @override
  String get reportsTopClients => 'சிறந்த வாடிக்கையாளர்கள்';

  @override
  String get paymentLinkTitle => 'கட்டண இணைப்பு';

  @override
  String get paymentLinkNotSet => 'அமைப்புகளில் கட்டண இணைப்பு அமைக்கப்படவில்லை';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'உங்கள் கட்டண இணைப்பு விலைப்பட்டியல் PDF-இல் சேர்க்கப்படும் மற்றும் விலைப்பட்டியல் மெனுவிலிருந்து நகலெடுக்கலாம்.';

  @override
  String get paymentLinkSaved => 'கட்டண இணைப்பு சேமிக்கப்பட்டது';

  @override
  String get settingsPaymentLinkNotSet => 'அமைக்கப்படவில்லை';

  @override
  String get invoiceDetailCopyPaymentLink => 'கட்டண இணைப்பை நகலெடு';

  @override
  String get paymentLinkCopied => 'கட்டண இணைப்பு நகலெடுக்கப்பட்டது';

  @override
  String get pdfPayOnline => 'ஆன்லைனில் செலுத்து';

  @override
  String get exportXml => 'XML ஏற்றுமதி';

  @override
  String get exportXmlFailed => 'XML ஏற்றுமதி செய்ய முடியவில்லை';
}
