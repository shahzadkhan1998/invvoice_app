// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => '2 मिनट में पेशेवर इनवॉइस';

  @override
  String get bottomNavDashboard => 'डैशबोर्ड';

  @override
  String get bottomNavInvoices => 'इनवॉइस';

  @override
  String get bottomNavClients => 'ग्राहक';

  @override
  String get bottomNavSettings => 'सेटिंग्स';

  @override
  String get commonCancel => 'रद्द करें';

  @override
  String get commonDelete => 'हटाएँ';

  @override
  String get commonSave => 'सहेजें';

  @override
  String get commonSearch => 'खोजें';

  @override
  String get commonBack => 'वापस';

  @override
  String get commonContinue => 'जारी रखें';

  @override
  String get commonAdd => 'जोड़ें';

  @override
  String get commonEdit => 'संपादित करें';

  @override
  String get commonCreate => 'बनाएँ';

  @override
  String get commonClear => 'साफ़ करें';

  @override
  String get commonView => 'देखें';

  @override
  String get commonShare => 'साझा करें';

  @override
  String get commonExportPdf => 'PDF निर्यात करें';

  @override
  String get commonSharePdf => 'PDF साझा करें';

  @override
  String get commonSaveChanges => 'परिवर्तन सहेजें';

  @override
  String get commonRequired => 'आवश्यक';

  @override
  String get commonInvalid => 'अमान्य';

  @override
  String get commonSendLink => 'लिंक भेजें';

  @override
  String get commonGeneratingPdf => 'PDF बन रहा है...';

  @override
  String get dashboardGreetingMorning => 'सुप्रभात';

  @override
  String get dashboardGreetingAfternoon => 'नमस्कार';

  @override
  String get dashboardGreetingEvening => 'शुभ संध्या';

  @override
  String get dashboardSubtitle => 'यहाँ आपका व्यवसाय अवलोकन है';

  @override
  String get dashboardOutstanding => 'बकाया';

  @override
  String get dashboardOverdue => 'अतिदेय';

  @override
  String get dashboardThisMonth => 'इस माह';

  @override
  String get dashboardInvoices => 'इनवॉइस';

  @override
  String dashboardPaidCount(Object count) {
    return '$count भुगतान किए गए';
  }

  @override
  String get dashboardRecentInvoices => 'हाल के इनवॉइस';

  @override
  String get dashboardSeeAll => 'सभी देखें';

  @override
  String get dashboardNotifications => 'सूचनाएँ';

  @override
  String get dashboardNotificationsHint =>
      'नियमित रूप से अतिदेय और लंबित इनवॉइस की समीक्षा करके नकदी प्रवाह पर नज़र रखें।';

  @override
  String get dashboardNewInvoice => 'नया इनवॉइस';

  @override
  String get dashboardNoInvoicesYet => 'अभी कोई इनवॉइस नहीं';

  @override
  String get dashboardNoInvoicesSubtitle =>
      '2 मिनट से कम समय में अपना पहला पेशेवर इनवॉइस बनाएँ';

  @override
  String get dashboardCreateInvoice => 'इनवॉइस बनाएँ';

  @override
  String get dashboardMarkPaid => 'भुगतान किया गया चिह्नित करें';

  @override
  String get dashboardDuePrefix => 'देय ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days दिन अतिदेय';
  }

  @override
  String get deleteInvoiceTitle => 'इनवॉइस हटाएँ?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'क्या आप $invoiceNumber हटाना चाहते हैं? इसे पूर्ववत नहीं किया जा सकता।';
  }

  @override
  String get loginHeading => 'वापसी पर स्वागत है';

  @override
  String get loginSubtitle => 'अपने InvoiceFlow खाते में साइन इन करें';

  @override
  String get loginEmailLabel => 'ईमेल पता';

  @override
  String get loginEmailHint => 'you@example.com';

  @override
  String get loginEmailRequired => 'ईमेल आवश्यक है';

  @override
  String get loginEmailInvalid => 'एक मान्य ईमेल दर्ज करें';

  @override
  String get loginPasswordLabel => 'पासवर्ड';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'पासवर्ड आवश्यक है';

  @override
  String get loginPasswordMinLength =>
      'पासवर्ड कम से कम 6 अक्षरों का होना चाहिए';

  @override
  String get loginForgotPassword => 'पासवर्ड भूल गए?';

  @override
  String get loginSignIn => 'साइन इन करें';

  @override
  String get loginOrContinueWith => 'या इससे जारी रखें';

  @override
  String get loginContinueWithGoogle => 'Google से जारी रखें';

  @override
  String get loginNoAccount => 'खाता नहीं है? ';

  @override
  String get loginSignUp => 'साइन अप करें';

  @override
  String get loginResetPasswordTitle => 'पासवर्ड रीसेट करें';

  @override
  String get loginResetPasswordMessage =>
      'अपना ईमेल दर्ज करें और हम एक रीसेट लिंक भेजेंगे।';

  @override
  String get loginResetPasswordHint => 'you@example.com';

  @override
  String get loginResetLinkSent => 'रीसेट लिंक भेज दिया गया! अपना ईमेल देखें।';

  @override
  String get loginResetLinkFailed => 'रीसेट लिंक भेजने में विफल रहा।';

  @override
  String get registerHeading => 'खाता बनाएँ';

  @override
  String get registerSubtitle => 'आज ही पेशेवर इनवॉइस भेजना शुरू करें';

  @override
  String get registerNameLabel => 'पूरा नाम';

  @override
  String get registerNameHint => 'अहमद मोहम्मद';

  @override
  String get registerNameRequired => 'नाम आवश्यक है';

  @override
  String get registerNameMinLength => 'नाम कम से कम 2 अक्षरों का होना चाहिए';

  @override
  String get registerEmailLabel => 'ईमेल पता';

  @override
  String get registerEmailHint => 'you@example.com';

  @override
  String get registerEmailRequired => 'ईमेल आवश्यक है';

  @override
  String get registerEmailInvalid => 'एक मान्य ईमेल दर्ज करें';

  @override
  String get registerPasswordLabel => 'पासवर्ड';

  @override
  String get registerPasswordHint => 'कम से कम 6 अक्षर';

  @override
  String get registerPasswordRequired => 'पासवर्ड आवश्यक है';

  @override
  String get registerPasswordMinLength =>
      'पासवर्ड कम से कम 6 अक्षरों का होना चाहिए';

  @override
  String get registerConfirmPasswordLabel => 'पासवर्ड की पुष्टि करें';

  @override
  String get registerConfirmPasswordHint => 'अपना पासवर्ड दोबारा दर्ज करें';

  @override
  String get registerConfirmPasswordRequired =>
      'कृपया अपने पासवर्ड की पुष्टि करें';

  @override
  String get registerPasswordsDoNotMatch => 'पासवर्ड मेल नहीं खाते';

  @override
  String get registerCreateAccount => 'खाता बनाएँ';

  @override
  String get registerHaveAccount => 'पहले से खाता है? ';

  @override
  String get registerSignIn => 'साइन इन करें';

  @override
  String get authTermsOfService => 'सेवा की शर्तें';

  @override
  String get authPrivacyPolicy => 'गोपनीयता नीति';

  @override
  String get authAgreeRequired =>
      'जारी रखने के लिए कृपया सेवा की शर्तों और गोपनीयता नीति से सहमत हों';

  @override
  String get loginAgreePrefix => 'जारी रखकर, आप हमारी ';

  @override
  String get registerAgreePrefix => 'मैं सहमत हूँ ';

  @override
  String get authAgreeAnd => ' और ';

  @override
  String get authTermsSheet =>
      'ये सेवा की शर्तें InvoiceFlow के आपके उपयोग को नियंत्रित करती हैं। ऐप तक पहुँचकर या उसका उपयोग करके आप इन शर्तों से बंधने के लिए सहमत होते हैं।\n\n1. आप अपने द्वारा बनाए गए इनवॉइस, एस्टिमेट और अन्य डेटा की सटीकता के लिए जिम्मेदार हैं।\n2. ऐप \"जैसा है\" वैसा प्रदान किया जाता है, बिना किसी प्रकार की वारंटी के।\n3. हम सेवा के आपके उपयोग से उत्पन्न होने वाले किसी भी नुकसान के लिए उत्तरदायी नहीं हैं।\n4. आपको ऐप का उपयोग किसी गैरकानूनी या निषिद्ध उद्देश्य के लिए नहीं करना चाहिए।\n5. हम इन शर्तों को समय-समय पर अद्यतन कर सकते हैं; ऐप का निरंतर उपयोग अद्यतन शर्तों की स्वीकृति माना जाएगा।';

  @override
  String get authPrivacySheet =>
      'आपकी गोपनीयता हमारे लिए महत्वपूर्ण है।\n\n1. डेटा संग्रहण: आपके इनवॉइस, क्लाइंट और सेटिंग्स आपके डिवाइस पर स्थानीय रूप से संग्रहीत होते हैं।\n2. क्लाउड सिंक: यदि आप साइन इन करते हैं, तो आपका डेटा आपके खाते से सिंक हो जाता है ताकि यह आपके सभी डिवाइसों पर उपलब्ध रहे।\n3. हम आपकी व्यक्तिगत जानकारी कभी नहीं बेचते या साझा नहीं करते।\n4. विश्लेषण: ऐप को बेहतर बनाने में मदद के लिए हम अनाम उपयोग डेटा एकत्र कर सकते हैं।\n5. संपर्क: गोपनीयता से संबंधित किसी भी प्रश्न के लिए support@invoiceflow.app पर संपर्क करें।';

  @override
  String get authErrorWeakPassword => 'पासवर्ड बहुत कमज़ोर है';

  @override
  String get authErrorEmailAlreadyInUse => 'खाता पहले से मौजूद है';

  @override
  String get authErrorUserNotFound => 'इस ईमेल से कोई उपयोगकर्ता नहीं मिला';

  @override
  String get authErrorWrongPassword => 'गलत पासवर्ड';

  @override
  String get authErrorInvalidEmail => 'अमान्य ईमेल पता';

  @override
  String get authErrorTooManyRequests =>
      'बहुत अधिक प्रयास। बाद में पुनः प्रयास करें';

  @override
  String get authErrorDefault => 'प्रमाणीकरण विफल रहा। पुनः प्रयास करें।';

  @override
  String get authErrorGoogleSignInFailed => 'Google साइन इन विफल रहा।';

  @override
  String get invoiceListTitle => 'इनवॉइस';

  @override
  String get invoiceListSearchHint => 'इनवॉइस खोजें...';

  @override
  String get invoiceListSortDate => 'दिनांक से क्रमबद्ध करें';

  @override
  String get invoiceListSortAmount => 'राशि से क्रमबद्ध करें';

  @override
  String get invoiceListSortClient => 'ग्राहक से क्रमबद्ध करें';

  @override
  String get invoiceListTabAll => 'सभी';

  @override
  String get invoiceListTabPaid => 'भुगतान किया गया';

  @override
  String get invoiceListTabPending => 'लंबित';

  @override
  String get invoiceListTabOverdue => 'अतिदेय';

  @override
  String get invoiceListTabDraft => 'ड्राफ़्ट';

  @override
  String get invoiceListEmpty => 'कोई इनवॉइस नहीं मिला';

  @override
  String get invoiceCreateTitle => 'नया इनवॉइस';

  @override
  String get invoiceEditTitle => 'इनवॉइस संपादित करें';

  @override
  String get invoiceSaveDraft => 'ड्राफ़्ट सहेजें';

  @override
  String get invoiceStepClient => 'ग्राहक';

  @override
  String get invoiceStepItems => 'आइटम';

  @override
  String get invoiceStepReview => 'समीक्षा';

  @override
  String get invoiceSelectClient => 'एक ग्राहक चुनें';

  @override
  String get invoiceSelectClientSubtitle => 'चुनें कि यह इनवॉइस किसके लिए है';

  @override
  String get invoiceSearchClients => 'ग्राहक खोजें...';

  @override
  String get invoiceAddNewClient => 'नया ग्राहक जोड़ें';

  @override
  String get invoiceNoClientsFound => 'कोई ग्राहक नहीं मिला';

  @override
  String get invoiceSelectClientEmptyHint =>
      'इनवॉइस बनाना शुरू करने के लिए अपना पहला ग्राहक बनाएँ';

  @override
  String get invoiceAddLineItem => 'लाइन आइटम जोड़ें';

  @override
  String get invoiceItemDescription => 'विवरण';

  @override
  String get invoiceItemDescriptionHint => 'जैसे: वेब विकास';

  @override
  String get invoiceItemQuickAdd => 'त्वरित जोड़:';

  @override
  String get invoiceItemQty => 'मात्रा';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'दर';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'आइटम जोड़ें';

  @override
  String get invoiceLineItems => 'लाइन आइटम';

  @override
  String get invoiceLineItemsSubtitle => 'सेवाएँ या उत्पाद जोड़ें';

  @override
  String get invoiceNoItems => 'अभी कोई आइटम नहीं। अपना पहला आइटम जोड़ें।';

  @override
  String get invoiceTaxRate => 'कर दर (%)';

  @override
  String get invoiceSubtotal => 'उप-योग';

  @override
  String invoiceTax(Object taxRate) {
    return 'कर ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'कुल';

  @override
  String get invoiceReviewHeading => 'समीक्षा और अंतिम रूप दें';

  @override
  String get invoiceReviewSubtitle =>
      'तिथियाँ निर्धारित करें, नोट्स, लोगो और हस्ताक्षर जोड़ें';

  @override
  String get invoiceCompanyLogo => 'कंपनी लोगो';

  @override
  String get invoiceAddLogo => 'लोगो जोड़ें';

  @override
  String get invoiceInvoiceDate => 'इनवॉइस तिथि';

  @override
  String get invoiceDueDate => 'देय तिथि';

  @override
  String get invoiceNotesLabel => 'नोट्स (वैकल्पिक)';

  @override
  String get invoiceNotesHint => 'आपके व्यवसाय के लिए धन्यवाद!';

  @override
  String get invoicePaymentTermsLabel => 'भुगतान शर्तें (वैकल्पिक)';

  @override
  String get invoicePaymentTermsHint => 'भुगतान 30 दिनों के भीतर देय';

  @override
  String get invoiceSignatureLabel => 'हस्ताक्षर';

  @override
  String get invoiceSignatureOverwrite =>
      'मौजूदा हस्ताक्षर सहेज लिया गया। बदलने के लिए ऊपर हस्ताक्षर करें।';

  @override
  String get invoiceCreatedSnackbar => 'इनवॉइस बन गया!';

  @override
  String get invoiceUpdatedSnackbar => 'इनवॉइस अपडेट हो गया!';

  @override
  String get invoiceDetailTitle => 'इनवॉइस';

  @override
  String get invoiceDetailMarkAsPaid => 'भुगतान किया गया चिह्नित करें';

  @override
  String get invoiceDetailTotalAmount => 'कुल राशि';

  @override
  String get invoiceDetailIssued => 'जारी किया गया';

  @override
  String get invoiceDetailDue => 'देय';

  @override
  String get invoiceDetailPaid => 'भुगतान किया गया';

  @override
  String get invoiceDetailBillTo => 'बिल प्राप्तकर्ता';

  @override
  String get invoiceDetailItems => 'आइटम';

  @override
  String get invoiceDetailNotes => 'नोट्स';

  @override
  String get invoiceDetailSignature => 'हस्ताक्षर';

  @override
  String get invoiceDetailMarkedPaidSnackbar =>
      'इनवॉइस भुगतान किया गया चिह्नित हो गया!';

  @override
  String get invoiceDetailPdfFailed => 'PDF बनाने में विफल रहा';

  @override
  String get clientListTitle => 'ग्राहक';

  @override
  String get clientListSearchHint => 'ग्राहक खोजें...';

  @override
  String get clientListTotalClients => 'कुल ग्राहक';

  @override
  String get clientListTotalBilled => 'कुल बिल किया गया';

  @override
  String get clientListEmptySearch => 'कोई ग्राहक नहीं मिला';

  @override
  String get clientListEmpty => 'अभी कोई ग्राहक नहीं';

  @override
  String get clientListEmptySubtitle =>
      'इनवॉइस बनाना शुरू करने के लिए अपना पहला ग्राहक जोड़ें';

  @override
  String get clientListAddClient => 'ग्राहक जोड़ें';

  @override
  String get clientListTotalBilledLabel => 'कुल बिल किया गया';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count इनवॉइस';
  }

  @override
  String get clientCreateTitle => 'नया ग्राहक';

  @override
  String get clientEditTitle => 'ग्राहक संपादित करें';

  @override
  String get clientBasicInfo => 'मूल जानकारी';

  @override
  String get clientNameLabel => 'पूरा नाम *';

  @override
  String get clientNameHint => 'एक्मे कॉर्पोरेशन';

  @override
  String get clientNameRequired => 'नाम आवश्यक है';

  @override
  String get clientNameTooShort => 'नाम बहुत छोटा है';

  @override
  String get clientEmailLabel => 'ईमेल पता *';

  @override
  String get clientEmailHint => 'billing@company.com';

  @override
  String get clientEmailRequired => 'ईमेल आवश्यक है';

  @override
  String get clientEmailInvalid => 'एक मान्य ईमेल दर्ज करें';

  @override
  String get clientPhoneLabel => 'फ़ोन नंबर';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'पता';

  @override
  String get clientAddressLabel => 'सड़क पता';

  @override
  String get clientAddressHint => '123 बिज़नेस पार्क, ऑफिस 45';

  @override
  String get clientCityLabel => 'शहर / देश';

  @override
  String get clientCityHint => 'दुबई, संयुक्त अरब अमीरात';

  @override
  String get clientBillingDefaults => 'बिलिंग डिफ़ॉल्ट';

  @override
  String get clientDefaultCurrency => 'डिफ़ॉल्ट मुद्रा';

  @override
  String get clientDefaultTaxRate => 'डिफ़ॉल्ट कर दर (VAT/GST)';

  @override
  String get clientVatLabel => 'VAT / कर पंजीकरण संख्या';

  @override
  String get clientVatHint => '123456789012345 (वैकल्पिक)';

  @override
  String get clientUpdateButton => 'ग्राहक अपडेट करें';

  @override
  String get clientAddButton => 'ग्राहक जोड़ें';

  @override
  String get clientUpdatedSnackbar => 'ग्राहक अपडेट हो गया!';

  @override
  String get clientAddedSnackbar => 'ग्राहक जोड़ा गया!';

  @override
  String get clientDetailInvoices => 'इनवॉइस';

  @override
  String get clientDetailTotalBilled => 'कुल बिल किया गया';

  @override
  String get clientDetailOutstanding => 'बकाया';

  @override
  String get clientDetailEdit => 'संपादित करें';

  @override
  String get clientDetailNewInvoice => 'नया इनवॉइस';

  @override
  String get clientDetailEmailClient => 'ग्राहक को ईमेल करें';

  @override
  String get clientDetailClientDetails => 'ग्राहक विवरण';

  @override
  String get clientDetailEmail => 'ईमेल';

  @override
  String get clientDetailPhone => 'फ़ोन';

  @override
  String get clientDetailAddress => 'पता';

  @override
  String get clientDetailCity => 'शहर';

  @override
  String get clientDetailCurrency => 'मुद्रा';

  @override
  String get clientDetailTaxRate => 'कर दर';

  @override
  String get clientDetailVatNumber => 'VAT संख्या';

  @override
  String get clientDetailInvoiceHistory => 'इनवॉइस इतिहास';

  @override
  String get clientDetailNoInvoices => 'इस ग्राहक के लिए अभी कोई इनवॉइस नहीं';

  @override
  String get deleteClientTitle => 'ग्राहक हटाएँ?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'क्या आप $clientName हटाना चाहते हैं? इसे पूर्ववत नहीं किया जा सकता।';
  }

  @override
  String get settingsTitle => 'सेटिंग्स';

  @override
  String get settingsYourName => 'आपका नाम';

  @override
  String get settingsBackupTitle => 'अपने इनवॉइस का बैकअप लें';

  @override
  String get settingsBackupDescription =>
      'अपना डेटा सुरक्षित रूप से सिंक करने और कहीं से भी एक्सेस करने के लिए साइन इन करें।';

  @override
  String get settingsSignInRegister => 'साइन इन करें या पंजीकरण करें';

  @override
  String get settingsProUpsell =>
      'असीमित इनवॉइस, क्लाउड सिंक और कोई वॉटरमार्क नहीं पाने के लिए Pro में अपग्रेड करें।';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'आप $limit इनवॉइस की मुफ़्त योजना सीमा तक पहुँच गए हैं। असीमित इनवॉइस और क्लाउड सिंक के लिए Pro में अपग्रेड करें।';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'आप $limit ग्राहकों की मुफ़्त योजना सीमा तक पहुँच गए हैं। असीमित ग्राहकों और क्लाउड सिंक के लिए Pro में अपग्रेड करें।';
  }

  @override
  String get settingsUpgradePro => 'अपग्रेड करें';

  @override
  String get settingsBusinessSection => 'व्यवसाय सेटिंग्स';

  @override
  String get settingsBusinessDetails => 'व्यवसाय विवरण';

  @override
  String get settingsBusinessDetailsSubtitle =>
      'अपना व्यवसाय नाम निर्धारित करें';

  @override
  String get settingsInvoicePrefix => 'इनवॉइस उपसर्ग';

  @override
  String get settingsDefaultCurrency => 'डिफ़ॉल्ट मुद्रा';

  @override
  String get settingsAppSection => 'ऐप सेटिंग्स';

  @override
  String get settingsDarkMode => 'डार्क मोड';

  @override
  String get settingsDailyNotification => 'दैनिक सूचना';

  @override
  String get settingsDailyNotificationNotSet => 'निर्धारित नहीं';

  @override
  String get settingsLanguage => 'भाषा';

  @override
  String get settingsLanguageLabel => 'हिंदी';

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
  String get settingsAboutSection => 'परिचय';

  @override
  String get settingsRateApp => 'ऐप को रेट करें';

  @override
  String get settingsHelpSupport => 'सहायता और समर्थन';

  @override
  String get settingsPrivacyPolicy => 'गोपनीयता नीति';

  @override
  String get settingsHelpSupportSheet =>
      'सहायता चाहिए? support@invoiceflow.app पर संपर्क करें और हम 24 घंटों के भीतर आपसे संपर्क करेंगे।';

  @override
  String get settingsPrivacySheet =>
      'आपका डेटा आपके डिवाइस पर स्थानीय रूप से संग्रहीत होता है। हम आपकी व्यक्तिगत जानकारी कभी नहीं बेचते या साझा नहीं करते।';

  @override
  String get settingsVersion => 'संस्करण';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'साइन आउट करें';

  @override
  String get settingsEditProfile => 'प्रोफ़ाइल संपादित करें';

  @override
  String get settingsProfileNameLabel => 'पूरा नाम';

  @override
  String get settingsProfileNameHint => 'आपका नाम';

  @override
  String get settingsBusinessNameLabel => 'व्यवसाय नाम';

  @override
  String get settingsBusinessNameHint => 'आपकी कंपनी लिमिटेड';

  @override
  String get settingsBusinessEmailLabel => 'व्यवसाय ईमेल';

  @override
  String get settingsBusinessEmailHint => 'billing@company.com';

  @override
  String get settingsPhoneLabel => 'फ़ोन';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'पता';

  @override
  String get settingsAddressHint => 'दुबई, संयुक्त अरब अमीरात';

  @override
  String get settingsBusinessDetailsSaved => 'व्यवसाय विवरण सहेज लिया गया!';

  @override
  String get settingsInvoicePrefixTitle => 'इनवॉइस नंबर उपसर्ग';

  @override
  String get settingsInvoicePrefixHint => 'जैसे: INV-, #, Bill-';

  @override
  String get settingsPrefixSaved => 'इनवॉइस उपसर्ग सहेज लिया गया';

  @override
  String get settingsNotificationScheduled =>
      'दैनिक सूचना सफलतापूर्वक निर्धारित हो गई!';

  @override
  String get settingsSignOutTitle => 'साइन आउट करें?';

  @override
  String get settingsSignOutMessage =>
      'क्या आप वाकई InvoiceFlow से साइन आउट करना चाहते हैं?';

  @override
  String get settingsSignedOut => 'सफलतापूर्वक साइन आउट हो गए।';

  @override
  String get statusPaid => 'भुगतान किया गया';

  @override
  String get statusOverdue => 'अतिदेय';

  @override
  String get statusPending => 'लंबित';

  @override
  String get statusDraft => 'ड्राफ़्ट';

  @override
  String get statusCancelled => 'रद्द';

  @override
  String get notificationChannelName => 'दैनिक अनुस्मारक';

  @override
  String get notificationChannelDescription =>
      'आपको अपने इनवॉइस की दैनिक जाँच की याद दिलाता है';

  @override
  String get notificationTitle => 'इनवॉइस अनुस्मारक';

  @override
  String get notificationBody =>
      'अपने हाल के इनवॉइस देखने और लंबित भुगतानों पर नज़र रखने का समय आ गया है।';

  @override
  String get pdfInvoice => 'इनवॉइस';

  @override
  String get pdfInvoiceNumber => 'इनवॉइस #:';

  @override
  String get pdfDate => 'तिथि:';

  @override
  String get pdfDueDate => 'देय तिथि:';

  @override
  String get pdfBillTo => 'बिल प्राप्तकर्ता:';

  @override
  String get pdfDescription => 'विवरण';

  @override
  String get pdfQty => 'मात्रा';

  @override
  String get pdfRate => 'दर';

  @override
  String get pdfAmount => 'राशि';

  @override
  String get pdfSubtotal => 'उप-योग:';

  @override
  String pdfTax(Object taxRate) {
    return 'कर ($taxRate%):';
  }

  @override
  String get pdfTotal => 'कुल:';

  @override
  String get pdfSignature => 'हस्ताक्षर:';

  @override
  String get pdfNotes => 'नोट्स:';

  @override
  String get pdfPaymentTerms => 'भुगतान शर्तें:';

  @override
  String get pdfThankYou => 'आपके व्यवसाय के लिए धन्यवाद!';

  @override
  String get quickAddWebDesign => 'वेब डिज़ाइन';

  @override
  String get quickAddDevelopment => 'विकास';

  @override
  String get quickAddConsulting => 'परामर्श';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'कंटेंट लेखन';

  @override
  String get paywallTitle => 'InvoiceFlow Pro अनलॉक करें';

  @override
  String get paywallSubtitle =>
      'असीमित जाएँ और हर जगह सिंक करें। कभी भी रद्द करें।';

  @override
  String get paywallFeatureUnlimited => 'असीमित इनवॉइस और ग्राहक';

  @override
  String get paywallFeatureSync => 'डिवाइसों में क्लाउड सिंक';

  @override
  String get paywallFeatureNoWatermark => 'कोई वॉटरमार्क नहीं, कभी नहीं';

  @override
  String get paywallMonthly => 'मासिक';

  @override
  String get paywallMonthlySub => 'मासिक बिल';

  @override
  String get paywallYearly => 'वार्षिक';

  @override
  String get paywallYearlySub => 'सर्वोत्तम मूल्य — 2 महीने मुफ़्त';

  @override
  String get paywallRestore => 'खरीदारी पुनर्स्थापित करें';

  @override
  String get paywallTerms =>
      'सदस्यताएँ स्वतः नवीनीकृत होती हैं। अपने ऐप स्टोर सेटिंग्स में प्रबंधित करें।';

  @override
  String get purchaseSuccessTitle => 'आप Pro हैं!';

  @override
  String get purchaseSuccessSubtitle =>
      'असीमित इनवॉइस, क्लाउड सिंक और कोई वॉटरमार्क नहीं अब अनलॉक हो गए हैं। धन्यवाद!';

  @override
  String get purchaseSuccessContinue => 'जारी रखें';

  @override
  String get paywallLoading => 'प्लान लोड हो रहे हैं…';

  @override
  String get paywallLoadError =>
      'प्लान लोड नहीं हो सके। अपना कनेक्शन जाँचें और फिर से प्रयास करें।';

  @override
  String get paywallNoOffering => 'अभी कोई प्लान उपलब्ध नहीं है।';

  @override
  String get purchaseRestored => 'खरीदारियाँ सफलतापूर्वक बहाल कर दी गईं';

  @override
  String get purchaseErrorGeneric =>
      'खरीदारी विफल रही। कृपया पुनः प्रयास करें।';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro सक्रिय है — असीमित इनवॉइस, क्लाइंट और बिना वॉटरमार्क';

  @override
  String get settingsFreePlan => 'मुफ्त प्लान';

  @override
  String get settingsFreeHint =>
      'असीमित इनवॉइस, क्लाउड सिंक और अधिक के लिए अपग्रेड करें';

  @override
  String get settingsUpgradeToPro => 'Pro में अपग्रेड करें';

  @override
  String get settingsManageSubscription => 'सब्सक्रिप्शन प्रबंधित करें';

  @override
  String get customerCenterFailed => 'सब्सक्रिप्शन प्रबंधन खोला नहीं जा सका।';

  @override
  String get onboardingSkip => 'छोड़ें';

  @override
  String get onboardingNext => 'अगला';

  @override
  String get onboardingGetStarted => 'शुरू करें';

  @override
  String get onboardingWelcomeTitle => '2 मिनट में इनवॉइस';

  @override
  String get onboardingWelcomeBody =>
      'अपने ग्राहकों के लिए पेशेवर PDF इनवॉइस बनाएँ — तेज़ और सुंदर।';

  @override
  String get onboardingSyncTitle => 'हर जगह सिंक करें';

  @override
  String get onboardingSyncBody =>
      'अपने डेटा का सुरक्षित रूप से क्लाउड में बैकअप लेने और किसी भी डिवाइस से एक्सेस करने के लिए साइन इन करें।';

  @override
  String get onboardingProTitle => 'Pro के साथ असीमित जाएँ';

  @override
  String get onboardingProBody =>
      'InvoiceFlow Pro के साथ असीमित इनवॉइस, क्लाउड सिंक अनलॉक करें और वॉटरमार्क हटाएँ।';

  @override
  String get settingsAccentColor => 'एक्सेंट रंग';

  @override
  String get settingsAccentColorHint =>
      'अपनी पसंद के रंग के साथ ऐप को व्यक्तिगत बनाएँ।';

  @override
  String get settingsCountry => 'देश';

  @override
  String get settingsTaxId => 'कर पंजीकरण संख्या';

  @override
  String get settingsTaxIdNotSet => 'निर्धारित नहीं';

  @override
  String get settingsTaxIdHint => 'जैसे: 123456789012345';

  @override
  String get settingsTaxIdSaved => 'कर ID सहेज लिया गया';

  @override
  String get catalogTitle => 'उत्पाद और सेवाएँ';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count वस्तुएँ',
      one: '$count वस्तु',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'अभी कोई उत्पाद नहीं';

  @override
  String get catalogEmptySubtitle =>
      'इनवॉइस में तेज़ी से जोड़ने के लिए पुनः उपयोग योग्य उत्पाद और सेवाएँ सहेजें।';

  @override
  String get catalogFromSaved => 'अपनी सूची से';

  @override
  String get catalogSaveToCatalog => 'पुनः उपयोग के लिए सूची में सहेजें';

  @override
  String get catalogAddSnackbar => 'सूची में जोड़ा गया';

  @override
  String get catalogDeleteTitle => 'आइटम हटाएँ?';

  @override
  String catalogDeleteMessage(String description) {
    return 'क्या आप \"$description\" हटाना चाहते हैं? इसे पूर्ववत नहीं किया जा सकता।';
  }

  @override
  String get commonDone => 'हो गया';

  @override
  String get estimateListTitle => 'अनुमान';

  @override
  String get estimateListSearchHint => 'अनुमान खोजें…';

  @override
  String get estimateListEmpty => 'अभी कोई अनुमान नहीं';

  @override
  String get estimateListTabAll => 'सभी';

  @override
  String get estimateListTabDraft => 'ड्राफ़्ट';

  @override
  String get estimateListTabSent => 'भेजा गया';

  @override
  String get estimateListTabAccepted => 'स्वीकृत';

  @override
  String get estimateListTabExpired => 'समाप्त';

  @override
  String get estimateCreateTitle => 'नया अनुमान';

  @override
  String get estimateEditTitle => 'अनुमान संपादित करें';

  @override
  String get estimateCreatedSnackbar => 'अनुमान सहेज लिया गया';

  @override
  String get estimateUpdatedSnackbar => 'अनुमान अपडेट हो गया';

  @override
  String get estimateIssueDate => 'जारी करने की तिथि';

  @override
  String get estimateExpiryDate => 'समाप्ति तिथि';

  @override
  String get estimateExpiresPrefix => 'समाप्त होता है ';

  @override
  String get estimateConvertToInvoice => 'इनवॉइस में बदलें';

  @override
  String get estimateConvertedSnackbar => 'अनुमान इनवॉइस में बदल गया';

  @override
  String get estimateConvertFailed => 'अनुमान बदल नहीं सका';

  @override
  String get estimateMarkSent => 'भेजा गया चिह्नित करें';

  @override
  String get estimateMarkAccepted => 'स्वीकृत चिह्नित करें';

  @override
  String get estimateMarkDeclined => 'अस्वीकृत चिह्नित करें';

  @override
  String get estimateConvertedTitle => 'बदल गया';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'इनवॉइस $invoiceId में बदल गया';
  }

  @override
  String get estimateDetailTotal => 'अनुमान कुल';

  @override
  String get estimateStatusSent => 'भेजा गया';

  @override
  String get estimateStatusAccepted => 'स्वीकृत';

  @override
  String get estimateStatusDeclined => 'अस्वीकृत';

  @override
  String get estimateStatusExpired => 'समाप्त';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count खुले',
      one: '1 खुला',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'अनुमान हटाएँ?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'क्या आप \"$estimateNumber\" हटाना चाहते हैं? इसे पूर्ववत नहीं किया जा सकता।';
  }

  @override
  String get estimatePdfFailed => 'PDF बनाने में असमर्थ';

  @override
  String get pdfEstimate => 'अनुमान';

  @override
  String get pdfEstimateNumber => 'अनुमान #:';

  @override
  String get pdfValidUntil => 'मान्य तिथि तक:';

  @override
  String get invoiceDetailPaymentTerms => 'भुगतान शर्तें';

  @override
  String get recurringListTitle => 'आवर्ती इनवॉइस';

  @override
  String get recurringListEmpty => 'अभी कोई आवर्ती इनवॉइस नहीं';

  @override
  String get recurringListEmptySubtitle =>
      'नियमित ग्राहकों और सेवाओं के लिए स्वचालित इनवॉइस सेट करें।';

  @override
  String get recurringCreateTitle => 'नया आवर्ती';

  @override
  String get recurringEditTitle => 'आवर्ती संपादित करें';

  @override
  String get recurringCreatedSnackbar => 'आवर्ती इनवॉइस सहेज लिया गया';

  @override
  String get recurringUpdatedSnackbar => 'आवर्ती इनवॉइस अपडेट हो गया';

  @override
  String get recurringDeleteTitle => 'आवर्ती इनवॉइस हटाएँ?';

  @override
  String recurringDeleteMessage(String title) {
    return 'क्या आप \"$title\" हटाना चाहते हैं? मौजूदा इनवॉइस नहीं हटेंगे।';
  }

  @override
  String get recurringTitleLabel => 'शीर्षक';

  @override
  String get recurringTitleHint => 'जैसे: मासिक रिटेनर';

  @override
  String get recurringClientLabel => 'ग्राहक';

  @override
  String get recurringFrequencyLabel => 'आवृत्ति';

  @override
  String get recurringFrequencyWeekly => 'साप्ताहिक';

  @override
  String get recurringFrequencyBiweekly => 'पाक्षिक';

  @override
  String get recurringFrequencyMonthly => 'मासिक';

  @override
  String get recurringFrequencyQuarterly => 'त्रैमासिक';

  @override
  String get recurringFrequencyYearly => 'वार्षिक';

  @override
  String get recurringNextRun => 'अगला चक्र';

  @override
  String get recurringDueDays => 'देय';

  @override
  String get recurringDays => 'दिनों में';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count सक्रिय',
      one: '1 सक्रिय',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'रिपोर्ट';

  @override
  String get reportsSubtitle => 'व्यवसाय विश्लेषण';

  @override
  String get reportsEmpty => 'रिपोर्ट देखने के लिए इनवॉइस बनाएँ';

  @override
  String get reportsCollected => 'एकत्रित';

  @override
  String get reportsOutstanding => 'बकाया';

  @override
  String get reportsMonthlyRevenue => 'मासिक राजस्व';

  @override
  String get reportsLast6Months => 'पिछले 6 महीने';

  @override
  String get reportsByStatus => 'स्थिति के अनुसार';

  @override
  String get reportsTopClients => 'शीर्ष ग्राहक';

  @override
  String get paymentLinkTitle => 'भुगतान लिंक';

  @override
  String get paymentLinkNotSet => 'सेटिंग्स में कोई भुगतान लिंक निर्धारित नहीं';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'आपका भुगतान लिंक इनवॉइस PDF में शामिल होता है और इनवॉइस मेनू से कॉपी किया जा सकता है।';

  @override
  String get paymentLinkSaved => 'भुगतान लिंक सहेज लिया गया';

  @override
  String get settingsPaymentLinkNotSet => 'निर्धारित नहीं';

  @override
  String get invoiceDetailCopyPaymentLink => 'भुगतान लिंक कॉपी करें';

  @override
  String get paymentLinkCopied => 'भुगतान लिंक कॉपी हो गया';

  @override
  String get pdfPayOnline => 'ऑनलाइन भुगतान करें';

  @override
  String get exportXml => 'XML निर्यात करें';

  @override
  String get exportXmlFailed => 'XML निर्यात नहीं किया जा सका';
}
