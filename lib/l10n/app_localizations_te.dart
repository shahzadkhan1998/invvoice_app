// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => '2 నిమిషాల్లో వృత్తిపరమైన ఇన్వాయిస్‌లు';

  @override
  String get bottomNavDashboard => 'డాష్‌బోర్డు';

  @override
  String get bottomNavInvoices => 'ఇన్వాయిస్‌లు';

  @override
  String get bottomNavClients => 'క్లయింట్‌లు';

  @override
  String get bottomNavSettings => 'సెట్టింగ్‌లు';

  @override
  String get commonCancel => 'రద్దు';

  @override
  String get commonDelete => 'తొలగించు';

  @override
  String get commonSave => 'సేవ్';

  @override
  String get commonSearch => 'వెతకండి';

  @override
  String get commonBack => 'వెనుకకు';

  @override
  String get commonContinue => 'కొనసాగించు';

  @override
  String get commonAdd => 'జోడించు';

  @override
  String get commonEdit => 'సవరించు';

  @override
  String get commonCreate => 'సృష్టించు';

  @override
  String get commonClear => 'క్లియర్';

  @override
  String get commonView => 'చూడండి';

  @override
  String get commonShare => 'భాగస్వామ్యం';

  @override
  String get commonExportPdf => 'PDF ఎగుమతి';

  @override
  String get commonSharePdf => 'PDF భాగస్వామ్యం';

  @override
  String get commonSaveChanges => 'మార్పులను సేవ్ చేయి';

  @override
  String get commonRequired => 'తప్పనిసరి';

  @override
  String get commonInvalid => 'చెల్లనిది';

  @override
  String get commonSendLink => 'లింక్ పంపండి';

  @override
  String get commonGeneratingPdf => 'PDF సృష్టిస్తోంది...';

  @override
  String get dashboardGreetingMorning => 'శుభోదయం';

  @override
  String get dashboardGreetingAfternoon => 'శుభ మధ్యాహ్నం';

  @override
  String get dashboardGreetingEvening => 'శుభ సాయంత్రం';

  @override
  String get dashboardSubtitle => 'మీ వ్యాపార అవలోకనం ఇదే';

  @override
  String get dashboardOutstanding => 'బకాయి';

  @override
  String get dashboardOverdue => 'గడువు మీరినది';

  @override
  String get dashboardThisMonth => 'ఈ నెల';

  @override
  String get dashboardInvoices => 'ఇన్వాయిస్‌లు';

  @override
  String dashboardPaidCount(Object count) {
    return '$count చెల్లించబడింది';
  }

  @override
  String get dashboardRecentInvoices => 'ఇటీవలి ఇన్వాయిస్‌లు';

  @override
  String get dashboardSeeAll => 'అన్నీ చూడండి';

  @override
  String get dashboardNotifications => 'నోటిఫికేషన్‌లు';

  @override
  String get dashboardNotificationsHint =>
      'గడువు మీరిన మరియు బకాయి ఉన్న ఇన్వాయిస్‌లను క్రమం తప్పకుండా సమీక్షించి, నగదు ప్రవాహాన్ని గమనించండి.';

  @override
  String get dashboardNewInvoice => 'కొత్త ఇన్వాయిస్';

  @override
  String get dashboardNoInvoicesYet => 'ఇంకా ఇన్వాయిస్‌లు లేవు';

  @override
  String get dashboardNoInvoicesSubtitle =>
      '2 నిమిషాల్లో మీ మొదటి వృత్తిపరమైన ఇన్వాయిస్‌ను సృష్టించండి';

  @override
  String get dashboardCreateInvoice => 'ఇన్వాయిస్ సృష్టించండి';

  @override
  String get dashboardMarkPaid => 'చెల్లించినట్లు గుర్తించండి';

  @override
  String get dashboardDuePrefix => 'గడువు ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days రోజులు గడువు మీరినది';
  }

  @override
  String get deleteInvoiceTitle => 'ఇన్వాయిస్ తొలగించాలా?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return '$invoiceNumber తొలగించాలా? దీన్ని తిరిగి పొందలేరు.';
  }

  @override
  String get loginHeading => 'మళ్లీ స్వాగతం';

  @override
  String get loginSubtitle => 'మీ InvoiceFlow ఖాతాకు లాగిన్ అవ్వండి';

  @override
  String get loginEmailLabel => 'ఇమెయిల్ చిరునామా';

  @override
  String get loginEmailHint => 'you@example.com';

  @override
  String get loginEmailRequired => 'ఇమెయిల్ అవసరం';

  @override
  String get loginEmailInvalid => 'చెల్లుబాటు అయ్యే ఇమెయిల్‌ను నమోదు చేయండి';

  @override
  String get loginPasswordLabel => 'పాస్‌వర్డ్';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'పాస్‌వర్డ్ అవసరం';

  @override
  String get loginPasswordMinLength => 'పాస్‌వర్డ్ కనీసం 6 అక్షరాలు ఉండాలి';

  @override
  String get loginForgotPassword => 'పాస్‌వర్డ్ మర్చిపోయారా?';

  @override
  String get loginSignIn => 'లాగిన్';

  @override
  String get loginOrContinueWith => 'లేదా దీనితో కొనసాగండి';

  @override
  String get loginContinueWithGoogle => 'Googleతో కొనసాగండి';

  @override
  String get loginNoAccount => 'ఖాతా లేదా? ';

  @override
  String get loginSignUp => 'సైన్ అప్';

  @override
  String get loginResetPasswordTitle => 'పాస్‌వర్డ్ రీసెట్';

  @override
  String get loginResetPasswordMessage =>
      'మీ ఇమెయిల్‌ను నమోదు చేయండి, రీసెట్ లింక్‌ను పంపుతాము.';

  @override
  String get loginResetPasswordHint => 'you@example.com';

  @override
  String get loginResetLinkSent =>
      'రీసెట్ లింక్ పంపబడింది! మీ ఇన్బాక్స్‌ను తనిఖీ చేయండి.';

  @override
  String get loginResetLinkFailed => 'రీసెట్ లింక్ పంపడం సాధ్యపడలేదు.';

  @override
  String get registerHeading => 'ఖాతా సృష్టించండి';

  @override
  String get registerSubtitle =>
      'ఈరోజే వృత్తిపరమైన ఇన్వాయిస్‌లను పంపడం ప్రారంభించండి';

  @override
  String get registerNameLabel => 'పూర్తి పేరు';

  @override
  String get registerNameHint => 'అహ్మద్ ముహమ్మద్';

  @override
  String get registerNameRequired => 'పేరు అవసరం';

  @override
  String get registerNameMinLength => 'పేరు కనీసం 2 అక్షరాలు ఉండాలి';

  @override
  String get registerEmailLabel => 'ఇమెయిల్ చిరునామా';

  @override
  String get registerEmailHint => 'you@example.com';

  @override
  String get registerEmailRequired => 'ఇమెయిల్ అవసరం';

  @override
  String get registerEmailInvalid => 'చెల్లుబాటు అయ్యే ఇమెయిల్‌ను నమోదు చేయండి';

  @override
  String get registerPasswordLabel => 'పాస్‌వర్డ్';

  @override
  String get registerPasswordHint => 'కనీసం 6 అక్షరాలు';

  @override
  String get registerPasswordRequired => 'పాస్‌వర్డ్ అవసరం';

  @override
  String get registerPasswordMinLength => 'పాస్‌వర్డ్ కనీసం 6 అక్షరాలు ఉండాలి';

  @override
  String get registerConfirmPasswordLabel => 'పాస్‌వర్డ్ నిర్ధారించండి';

  @override
  String get registerConfirmPasswordHint => 'పాస్‌వర్డ్ మళ్లీ నమోదు చేయండి';

  @override
  String get registerConfirmPasswordRequired =>
      'మీ పాస్‌వర్డ్‌ను నిర్ధారించండి';

  @override
  String get registerPasswordsDoNotMatch => 'పాస్‌వర్డ్‌లు సరిపోలలేదు';

  @override
  String get registerCreateAccount => 'ఖాతా సృష్టించండి';

  @override
  String get registerHaveAccount => 'ఇప్పటికే ఖాతా ఉందా? ';

  @override
  String get registerSignIn => 'లాగిన్';

  @override
  String get authTermsOfService => 'సేవా నిబంధనలు';

  @override
  String get authPrivacyPolicy => 'గోప్యతా విధానం';

  @override
  String get authAgreeRequired =>
      'కొనసాగడానికి దయచేసి సేవా నిబంధనలు మరియు గోప్యతా విధానానికి అంగీకరించండి';

  @override
  String get loginAgreePrefix => 'కొనసాగించడం ద్వారా, మీరు మా ';

  @override
  String get registerAgreePrefix => 'నేను అంగీకరిస్తున్నాను ';

  @override
  String get authAgreeAnd => ' మరియు ';

  @override
  String get authTermsSheet =>
      'ఈ సేవా నిబంధనలు InvoiceFlow యొక్క మీ వినియోగాన్ని నియంత్రిస్తాయి. యాప్ను యాక్సెస్ చేయడం ద్వారా లేదా ఉపయోగించడం ద్వారా ఈ నిబంధనలకు కట్టుబడి ఉండటానికి మీరు అంగీకరిస్తున్నారు.\n\n1. మీరు సృష్టించే ఇన్వాయిస్లు, అంచనాలు మరియు ఇతర డేటా యొక్క ఖచ్చితత్వానికి మీరే బాధ్యులు.\n2. యాప్ \"ఉన్నట్లే\" అందించబడుతుంది, ఎలాంటి వారెంటీలు లేకుండా, స్పష్టమైన లేదా పరోక్షమైనవి.\n3. సేవను ఉపయోగించడం వల్ల కలిగే ఏదైనా నష్టాలకు మేము బాధ్యులం కాదు.\n4. చట్టవిరుద్ధమైన లేదా నిషేధించబడిన ఏ ప్రయోజనం కోసమైనా యాప్ను ఉపయోగించకూడదు.\n5. మేము ఈ నిబంధనలను కాలానుగుణంగా నవీకరించవచ్చు; యాప్ను నిరంతరం ఉపయోగించడం నవీకరించిన నిబంధనలకు అంగీకరించినట్లుగా పరిగణించబడుతుంది.';

  @override
  String get authPrivacySheet =>
      'మీ గోప్యత మాకు ముఖ్యం.\n\n1. డేటా నిల్వ: మీ ఇన్వాయిస్లు, క్లయింట్లు మరియు సెట్టింగ్లు మీ పరికరంలో స్థానికంగా నిల్వ చేయబడతాయి.\n2. క్లౌడ్ సింక్: మీరు సైన్ ఇన్ చేస్తే, మీ డేటా మీ ఖాతాతో సమకాలీకరించబడి మీ అన్ని పరికరాలలో అందుబాటులో ఉంటుంది.\n3. మీ వ్యక్తిగత సమాచారాన్ని మేము ఎప్పటికీ విక్రయించము లేదా భాగస్వామ్యం చేయము.\n4. విశ్లేషణలు: యాప్ను మెరుగుపరచడానికి మేము అజ్ఞాత వినియోగ డేటాను సేకరించవచ్చు.\n5. సంప్రదింపు: గోప్యతకు సంబంధించిన ప్రశ్నల కోసం support@invoiceflow.appను సంప్రదించండి.';

  @override
  String get authErrorWeakPassword => 'పాస్‌వర్డ్ చాలా బలహీనంగా ఉంది';

  @override
  String get authErrorEmailAlreadyInUse => 'ఈ ఇమెయిల్‌తో ఖాతా ఇప్పటికే ఉంది';

  @override
  String get authErrorUserNotFound => 'ఈ ఇమెయిల్‌తో వినియోగదారు లేరు';

  @override
  String get authErrorWrongPassword => 'తప్పు పాస్‌వర్డ్';

  @override
  String get authErrorInvalidEmail => 'చెల్లని ఇమెయిల్ చిరునామా';

  @override
  String get authErrorTooManyRequests =>
      'చాలా ప్రయత్నాలు. కాసేపటి తర్వాత మళ్లీ ప్రయత్నించండి';

  @override
  String get authErrorDefault => 'ప్రామాణీకరణ విఫలమైంది. మళ్లీ ప్రయత్నించండి.';

  @override
  String get authErrorGoogleSignInFailed => 'Google లాగిన్ విఫలమైంది.';

  @override
  String get invoiceListTitle => 'ఇన్వాయిస్‌లు';

  @override
  String get invoiceListSearchHint => 'ఇన్వాయిస్‌లను వెతకండి...';

  @override
  String get invoiceListSortDate => 'తేదీ వారీగా';

  @override
  String get invoiceListSortAmount => 'మొత్తం వారీగా';

  @override
  String get invoiceListSortClient => 'క్లయింట్ వారీగా';

  @override
  String get invoiceListTabAll => 'అన్నీ';

  @override
  String get invoiceListTabPaid => 'చెల్లించినవి';

  @override
  String get invoiceListTabPending => 'బకాయి';

  @override
  String get invoiceListTabOverdue => 'గడువు మీరినవి';

  @override
  String get invoiceListTabDraft => 'డ్రాఫ్ట్';

  @override
  String get invoiceListEmpty => 'ఇన్వాయిస్‌లు కనుగొనబడలేదు';

  @override
  String get invoiceCreateTitle => 'కొత్త ఇన్వాయిస్';

  @override
  String get invoiceEditTitle => 'ఇన్వాయిస్ సవరించు';

  @override
  String get invoiceSaveDraft => 'డ్రాఫ్ట్ సేవ్ చేయి';

  @override
  String get invoiceStepClient => 'క్లయింట్';

  @override
  String get invoiceStepItems => 'అంశాలు';

  @override
  String get invoiceStepReview => 'సమీక్ష';

  @override
  String get invoiceSelectClient => 'క్లయింట్ ఎంచుకోండి';

  @override
  String get invoiceSelectClientSubtitle => 'ఈ ఇన్వాయిస్ ఎవరికి అని ఎంచుకోండి';

  @override
  String get invoiceSearchClients => 'క్లయింట్‌లను వెతకండి...';

  @override
  String get invoiceAddNewClient => 'కొత్త క్లయింట్‌ను జోడించండి';

  @override
  String get invoiceNoClientsFound => 'క్లయింట్‌లు కనుగొనబడలేదు';

  @override
  String get invoiceSelectClientEmptyHint =>
      'ఇన్వాయిస్‌లు సృష్టించడానికి మీ మొదటి క్లయింట్‌ను సృష్టించండి';

  @override
  String get invoiceAddLineItem => 'లైన్ ఐటమ్ జోడించండి';

  @override
  String get invoiceItemDescription => 'వివరణ';

  @override
  String get invoiceItemDescriptionHint => 'ఉదా. వెబ్ డెవలప్‌మెంట్';

  @override
  String get invoiceItemQuickAdd => 'త్వరిత జోడింపు:';

  @override
  String get invoiceItemQty => 'పరిమాణం';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'రేటు';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'ఐటమ్ జోడించండి';

  @override
  String get invoiceLineItems => 'లైన్ ఐటమ్‌లు';

  @override
  String get invoiceLineItemsSubtitle => 'సేవలు లేదా ఉత్పత్తులను జోడించండి';

  @override
  String get invoiceNoItems => 'ఇంకా ఐటమ్‌లు లేవు. మీ మొదటి ఐటమ్‌ను జోడించండి.';

  @override
  String get invoiceTaxRate => 'పన్ను రేటు (%)';

  @override
  String get invoiceSubtotal => 'ఉప మొత్తం';

  @override
  String invoiceTax(Object taxRate) {
    return 'పన్ను ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'మొత్తం';

  @override
  String get invoiceReviewHeading => 'సమీక్ష & ఫైనలైజ్';

  @override
  String get invoiceReviewSubtitle =>
      'తేదీలను సెట్ చేయండి, గమనికలు, లోగో మరియు సంతకం జోడించండి';

  @override
  String get invoiceCompanyLogo => 'కంపెనీ లోగో';

  @override
  String get invoiceAddLogo => 'లోగో జోడించండి';

  @override
  String get invoiceInvoiceDate => 'ఇన్వాయిస్ తేదీ';

  @override
  String get invoiceDueDate => 'గడువు తేదీ';

  @override
  String get invoiceNotesLabel => 'గమనికలు (ఐచ్ఛికం)';

  @override
  String get invoiceNotesHint => 'మీ వ్యాపారానికి ధన్యవాదాలు!';

  @override
  String get invoicePaymentTermsLabel => 'చెల్లింపు నిబంధనలు (ఐచ్ఛికం)';

  @override
  String get invoicePaymentTermsHint => '30 రోజుల్లోపు చెల్లించాలి';

  @override
  String get invoiceSignatureLabel => 'సంతకం';

  @override
  String get invoiceSignatureOverwrite =>
      'ప్రస్తుత సంతకం సేవ్ చేయబడింది. మార్చడానికి పైన సంతకం చేయండి.';

  @override
  String get invoiceCreatedSnackbar => 'ఇన్వాయిస్ సృష్టించబడింది!';

  @override
  String get invoiceUpdatedSnackbar => 'ఇన్వాయిస్ అప్‌డేట్ చేయబడింది!';

  @override
  String get invoiceDetailTitle => 'ఇన్వాయిస్';

  @override
  String get invoiceDetailMarkAsPaid => 'చెల్లించినట్లు గుర్తించండి';

  @override
  String get invoiceDetailTotalAmount => 'మొత్తం మొత్తం';

  @override
  String get invoiceDetailIssued => 'జారీ చేయబడింది';

  @override
  String get invoiceDetailDue => 'గడువు';

  @override
  String get invoiceDetailPaid => 'చెల్లించబడింది';

  @override
  String get invoiceDetailBillTo => 'బిల్ చేయాల్సిన వారు';

  @override
  String get invoiceDetailItems => 'అంశాలు';

  @override
  String get invoiceDetailNotes => 'గమనికలు';

  @override
  String get invoiceDetailSignature => 'సంతకం';

  @override
  String get invoiceDetailMarkedPaidSnackbar =>
      'ఇన్వాయిస్ చెల్లించినట్లు గుర్తించబడింది!';

  @override
  String get invoiceDetailPdfFailed => 'PDF సృష్టించడం సాధ్యపడలేదు';

  @override
  String get clientListTitle => 'క్లయింట్‌లు';

  @override
  String get clientListSearchHint => 'క్లయింట్‌లను వెతకండి...';

  @override
  String get clientListTotalClients => 'మొత్తం క్లయింట్‌లు';

  @override
  String get clientListTotalBilled => 'మొత్తం బిల్ చేయబడింది';

  @override
  String get clientListEmptySearch => 'క్లయింట్‌లు కనుగొనబడలేదు';

  @override
  String get clientListEmpty => 'ఇంకా క్లయింట్‌లు లేరు';

  @override
  String get clientListEmptySubtitle =>
      'ఇన్వాయిస్‌లు సృష్టించడానికి మీ మొదటి క్లయింట్‌ను జోడించండి';

  @override
  String get clientListAddClient => 'క్లయింట్‌ను జోడించండి';

  @override
  String get clientListTotalBilledLabel => 'మొత్తం బిల్ చేయబడింది';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count ఇన్వాయిస్';
  }

  @override
  String get clientCreateTitle => 'కొత్త క్లయింట్';

  @override
  String get clientEditTitle => 'క్లయింట్ సవరించు';

  @override
  String get clientBasicInfo => 'ప్రాథమిక సమాచారం';

  @override
  String get clientNameLabel => 'పూర్తి పేరు *';

  @override
  String get clientNameHint => 'అక్మే కార్పొరేషన్';

  @override
  String get clientNameRequired => 'పేరు అవసరం';

  @override
  String get clientNameTooShort => 'పేరు చాలా చిన్నది';

  @override
  String get clientEmailLabel => 'ఇమెయిల్ చిరునామా *';

  @override
  String get clientEmailHint => 'billing@company.com';

  @override
  String get clientEmailRequired => 'ఇమెయిల్ అవసరం';

  @override
  String get clientEmailInvalid => 'చెల్లుబాటు అయ్యే ఇమెయిల్‌ను నమోదు చేయండి';

  @override
  String get clientPhoneLabel => 'ఫోన్ నంబర్';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'చిరునామా';

  @override
  String get clientAddressLabel => 'వీధి చిరునామా';

  @override
  String get clientAddressHint => '123 బిజినెస్ పార్క్, ఆఫీసు 45';

  @override
  String get clientCityLabel => 'నగరం / దేశం';

  @override
  String get clientCityHint => 'దుబాయ్, యునైటెడ్ అరబ్ ఎమిరేట్స్';

  @override
  String get clientBillingDefaults => 'బిల్లింగ్ డిఫాల్ట్‌లు';

  @override
  String get clientDefaultCurrency => 'డిఫాల్ట్ కరెన్సీ';

  @override
  String get clientDefaultTaxRate => 'డిఫాల్ట్ పన్ను రేటు (VAT/GST)';

  @override
  String get clientVatLabel => 'VAT / పన్ను రిజిస్ట్రేషన్ నంబర్';

  @override
  String get clientVatHint => '123456789012345 (ఐచ్ఛికం)';

  @override
  String get clientUpdateButton => 'క్లయింట్ అప్‌డేట్ చేయి';

  @override
  String get clientAddButton => 'క్లయింట్ జోడించు';

  @override
  String get clientUpdatedSnackbar => 'క్లయింట్ అప్‌డేట్ చేయబడ్డాడు!';

  @override
  String get clientAddedSnackbar => 'క్లయింట్ జోడించబడ్డాడు!';

  @override
  String get clientDetailInvoices => 'ఇన్వాయిస్‌లు';

  @override
  String get clientDetailTotalBilled => 'మొత్తం బిల్ చేయబడింది';

  @override
  String get clientDetailOutstanding => 'బకాయి';

  @override
  String get clientDetailEdit => 'సవరించు';

  @override
  String get clientDetailNewInvoice => 'కొత్త ఇన్వాయిస్';

  @override
  String get clientDetailEmailClient => 'క్లయింట్‌కు ఇమెయిల్';

  @override
  String get clientDetailClientDetails => 'క్లయింట్ వివరాలు';

  @override
  String get clientDetailEmail => 'ఇమెయిల్';

  @override
  String get clientDetailPhone => 'ఫోన్';

  @override
  String get clientDetailAddress => 'చిరునామా';

  @override
  String get clientDetailCity => 'నగరం';

  @override
  String get clientDetailCurrency => 'కరెన్సీ';

  @override
  String get clientDetailTaxRate => 'పన్ను రేటు';

  @override
  String get clientDetailVatNumber => 'VAT నంబర్';

  @override
  String get clientDetailInvoiceHistory => 'ఇన్వాయిస్ చరిత్ర';

  @override
  String get clientDetailNoInvoices => 'ఈ క్లయింట్‌కు ఇంకా ఇన్వాయిస్‌లు లేవు';

  @override
  String get deleteClientTitle => 'క్లయింట్ తొలగించాలా?';

  @override
  String deleteClientMessage(Object clientName) {
    return '$clientName తొలగించాలా? దీన్ని తిరిగి పొందలేరు.';
  }

  @override
  String get settingsTitle => 'సెట్టింగ్‌లు';

  @override
  String get settingsYourName => 'మీ పేరు';

  @override
  String get settingsBackupTitle => 'మీ ఇన్వాయిస్‌లను బ్యాకప్ చేయండి';

  @override
  String get settingsBackupDescription =>
      'మీ డేటాను సురక్షితంగా సింక్ చేయడానికి మరియు ఎక్కడి నుండైనా యాక్సెస్ చేయడానికి లాగిన్ అవ్వండి.';

  @override
  String get settingsSignInRegister => 'లాగిన్ లేదా సైన్ అప్';

  @override
  String get settingsProUpsell =>
      'అపరిమిత ఇన్వాయిస్‌లు, క్లౌడ్ సింక్ మరియు వాటర్‌మార్క్-రహిత కోసం Proకి అప్‌గ్రేడ్ చేయండి.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'మీరు $limit ఇన్వాయిస్‌ల ఉచిత ప్లాన్ పరిమితిని చేరుకున్నారు. అపరిమిత ఇన్వాయిస్‌లు మరియు క్లౌడ్ సింక్ కోసం Proకి అప్‌గ్రేడ్ చేయండి.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'మీరు $limit క్లయింట్‌ల ఉచిత ప్లాన్ పరిమితిని చేరుకున్నారు. అపరిమిత క్లయింట్‌లు మరియు క్లౌడ్ సింక్ కోసం Proకి అప్‌గ్రేడ్ చేయండి.';
  }

  @override
  String get settingsUpgradePro => 'అప్‌గ్రేడ్';

  @override
  String get settingsBusinessSection => 'వ్యాపార సెట్టింగ్‌లు';

  @override
  String get settingsBusinessDetails => 'వ్యాపార వివరాలు';

  @override
  String get settingsBusinessDetailsSubtitle => 'మీ వ్యాపార పేరును సెట్ చేయండి';

  @override
  String get settingsInvoicePrefix => 'ఇన్వాయిస్ ఉపసర్గ';

  @override
  String get settingsDefaultCurrency => 'డిఫాల్ట్ కరెన్సీ';

  @override
  String get settingsAppSection => 'యాప్ సెట్టింగ్‌లు';

  @override
  String get settingsDarkMode => 'డార్క్ మోడ్';

  @override
  String get settingsDailyNotification => 'రోజువారీ నోటిఫికేషన్';

  @override
  String get settingsDailyNotificationNotSet => 'సెట్ చేయలేదు';

  @override
  String get settingsLanguage => 'భాష';

  @override
  String get settingsLanguageLabel => 'తెలుగు';

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
  String get settingsAboutSection => 'గురించి';

  @override
  String get settingsRateApp => 'యాప్‌ను రేట్ చేయండి';

  @override
  String get settingsHelpSupport => 'సహాయం & మద్దతు';

  @override
  String get settingsPrivacyPolicy => 'గోప్యతా విధానం';

  @override
  String get settingsHelpSupportSheet =>
      'సహాయం కావాలా? support@invoiceflow.appకు ఇమెయిల్ చేయండి, 24 గంటల్లోపు మిమ్మల్ని సంప్రదిస్తాము.';

  @override
  String get settingsPrivacySheet =>
      'మీ డేటా మీ పరికరంలో స్థానికంగా నిల్వ చేయబడుతుంది. మీ వ్యక్తిగత సమాచారాన్ని మేము ఎప్పుడూ విక్రయించము లేదా భాగస్వామ్యం చేయము.';

  @override
  String get settingsVersion => 'వెర్షన్';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'సైన్ అవుట్';

  @override
  String get settingsEditProfile => 'ప్రొఫైల్ సవరించు';

  @override
  String get settingsProfileNameLabel => 'పూర్తి పేరు';

  @override
  String get settingsProfileNameHint => 'మీ పేరు';

  @override
  String get settingsBusinessNameLabel => 'వ్యాపార పేరు';

  @override
  String get settingsBusinessNameHint => 'మీ కంపెనీ ప్రైవేట్ లిమిటెడ్';

  @override
  String get settingsBusinessEmailLabel => 'వ్యాపార ఇమెయిల్';

  @override
  String get settingsBusinessEmailHint => 'billing@company.com';

  @override
  String get settingsPhoneLabel => 'ఫోన్';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'చిరునామా';

  @override
  String get settingsAddressHint => 'దుబాయ్, యునైటెడ్ అరబ్ ఎమిరేట్స్';

  @override
  String get settingsBusinessDetailsSaved => 'వ్యాపార వివరాలు సేవ్ చేయబడ్డాయి!';

  @override
  String get settingsInvoicePrefixTitle => 'ఇన్వాయిస్ నంబర్ ఉపసర్గ';

  @override
  String get settingsInvoicePrefixHint => 'ఉదా. INV-, #, Bill-';

  @override
  String get settingsPrefixSaved => 'ఇన్వాయిస్ ఉపసర్గ సేవ్ చేయబడింది';

  @override
  String get settingsNotificationScheduled =>
      'రోజువారీ నోటిఫికేషన్ విజయవంతంగా షెడ్యూల్ చేయబడింది!';

  @override
  String get settingsSignOutTitle => 'సైన్ అవుట్ చేయాలా?';

  @override
  String get settingsSignOutMessage =>
      'మీరు InvoiceFlow నుండి సైన్ అవుట్ చేయాలనుకుంటున్నారా?';

  @override
  String get settingsSignedOut => 'మీరు విజయవంతంగా సైన్ అవుట్ అయ్యారు.';

  @override
  String get statusPaid => 'చెల్లించబడింది';

  @override
  String get statusOverdue => 'గడువు మీరినది';

  @override
  String get statusPending => 'బకాయి';

  @override
  String get statusDraft => 'డ్రాఫ్ట్';

  @override
  String get statusCancelled => 'రద్దు చేయబడింది';

  @override
  String get notificationChannelName => 'రోజువారీ రిమైండర్‌లు';

  @override
  String get notificationChannelDescription =>
      'మీ ఇన్వాయిస్‌లను ప్రతిరోజూ తనిఖీ చేయమని రిమైండ్ చేస్తుంది';

  @override
  String get notificationTitle => 'ఇన్వాయిస్ రిమైండర్';

  @override
  String get notificationBody =>
      'మీ ఇటీవలి ఇన్వాయిస్‌లను తనిఖీ చేసి బకాయి చెల్లింపులను ట్రాక్ చేయడానికి సమయం ఆసన్నమైంది.';

  @override
  String get pdfInvoice => 'ఇన్వాయిస్';

  @override
  String get pdfInvoiceNumber => 'ఇన్వాయిస్ #:';

  @override
  String get pdfDate => 'తేదీ:';

  @override
  String get pdfDueDate => 'గడువు:';

  @override
  String get pdfBillTo => 'బిల్ చేయాల్సిన వారు:';

  @override
  String get pdfDescription => 'వివరణ';

  @override
  String get pdfQty => 'పరిమాణం';

  @override
  String get pdfRate => 'రేటు';

  @override
  String get pdfAmount => 'మొత్తం';

  @override
  String get pdfSubtotal => 'ఉప మొత్తం:';

  @override
  String pdfTax(Object taxRate) {
    return 'పన్ను ($taxRate%):';
  }

  @override
  String get pdfTotal => 'మొత్తం:';

  @override
  String get pdfSignature => 'సంతకం:';

  @override
  String get pdfNotes => 'గమనికలు:';

  @override
  String get pdfPaymentTerms => 'చెల్లింపు నిబంధనలు:';

  @override
  String get pdfThankYou => 'మీ వ్యాపారానికి ధన్యవాదాలు!';

  @override
  String get quickAddWebDesign => 'వెబ్ డిజైన్';

  @override
  String get quickAddDevelopment => 'డెవలప్‌మెంట్';

  @override
  String get quickAddConsulting => 'కన్సల్టింగ్';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'కంటెంట్ రైటింగ్';

  @override
  String get paywallTitle => 'InvoiceFlow Proని అన్‌లాక్ చేయండి';

  @override
  String get paywallSubtitle =>
      'అపరిమితంగా వెళ్లి, ఎక్కడైనా సింక్ చేయండి. ఎప్పుడైనా రద్దు చేయవచ్చు.';

  @override
  String get paywallFeatureUnlimited =>
      'అపరిమిత ఇన్వాయిస్‌లు మరియు క్లయింట్‌లు';

  @override
  String get paywallFeatureSync => 'పరికరాల మధ్య క్లౌడ్ సింక్';

  @override
  String get paywallFeatureNoWatermark => 'వాటర్‌మార్క్‌లు లేవు';

  @override
  String get paywallMonthly => 'నెలవారీ';

  @override
  String get paywallMonthlySub => 'ప్రతి నెల బిల్';

  @override
  String get paywallYearly => 'సంవత్సరానికి';

  @override
  String get paywallYearlySub => 'ఉత్తమ విలువ — 2 నెలలు ఉచితం';

  @override
  String get paywallRestore => 'కొనుగోళ్లను పునరుద్ధరించండి';

  @override
  String get paywallTerms =>
      'సబ్‌స్క్రిప్షన్‌లు స్వయంచాలకంగా రెన్యూవ్ అవుతాయి. మీ యాప్ స్టోర్ సెట్టింగ్‌లలో నిర్వహించండి.';

  @override
  String get purchaseSuccessTitle => 'మీరు ఇప్పుడు Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'అపరిమిత ఇన్వాయిస్‌లు, క్లౌడ్ సింక్ మరియు వాటర్‌మార్క్-రహితం ఇప్పుడు అన్‌లాక్ అయ్యాయి. ధన్యవాదాలు!';

  @override
  String get purchaseSuccessContinue => 'కొనసాగించు';

  @override
  String get paywallLoading => 'ప్లాన్లు లోడ్ అవుతున్నాయి…';

  @override
  String get paywallLoadError =>
      'ప్లాన్లను లోడ్ చేయలేకపోయాము. మీ కనెక్షన్ను తనిఖీ చేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String get paywallNoOffering => 'ప్రస్తుతం అందుబాటులో ఉన్న ప్లాన్లు లేవు.';

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
  String get purchaseRestored => 'కొనుగోళ్లు విజయవంతంగా పునరుద్ధరించబడ్డాయి';

  @override
  String get purchaseErrorGeneric =>
      'కొనుగోలు విఫలమైంది. దయచేసి మళ్లీ ప్రయత్నించండి.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro చురుకుగా ఉంది — వాటర్మార్క్లు లేకుండా అపరిమిత ఇన్వాయిస్లు మరియు క్లయింట్లు';

  @override
  String get settingsFreePlan => 'ఉచిత ప్లాన్';

  @override
  String get settingsFreeHint =>
      'అపరిమిత ఇన్వాయిస్లు, క్లౌడ్ సింక్ మరియు మరిన్నింటి కోసం అప్‌గ్రేడ్ చేయండి';

  @override
  String get settingsUpgradeToPro => 'Proకి అప్‌గ్రేడ్ చేయండి';

  @override
  String get settingsManageSubscription => 'సబ్‌స్క్రిప్షన్‌ను నిర్వహించండి';

  @override
  String get customerCenterFailed =>
      'సబ్‌స్క్రిప్షన్ నిర్వహణను తెరవడం సాధ్యపడలేదు.';

  @override
  String get onboardingSkip => 'దాటవేయి';

  @override
  String get onboardingNext => 'తదుపరి';

  @override
  String get onboardingGetStarted => 'ప్రారంభించండి';

  @override
  String get onboardingWelcomeTitle => '2 నిమిషాల్లో ఇన్వాయిస్‌లు';

  @override
  String get onboardingWelcomeBody =>
      'మీ క్లయింట్‌ల కోసం వృత్తిపరమైన PDF ఇన్వాయిస్‌లను సృష్టించండి — త్వరగా మరియు అందంగా.';

  @override
  String get onboardingSyncTitle => 'ఎక్కడైనా సింక్ చేయండి';

  @override
  String get onboardingSyncBody =>
      'మీ డేటాను సురక్షితంగా క్లౌడ్‌లో బ్యాకప్ చేసి ఏ పరికరం నుండైనా యాక్సెస్ చేయడానికి లాగిన్ అవ్వండి.';

  @override
  String get onboardingProTitle => 'Proతో అపరిమితంగా వెళ్లండి';

  @override
  String get onboardingProBody =>
      'InvoiceFlow Proతో అపరిమిత ఇన్వాయిస్‌లు, క్లౌడ్ సింక్ అన్‌లాక్ చేసి వాటర్‌మార్క్‌లను తొలగించండి.';

  @override
  String get settingsAccentColor => 'యాక్సెంట్ కలర్';

  @override
  String get settingsAccentColorHint =>
      'మీకు ఇష్టమైన రంగుతో యాప్‌ను వ్యక్తిగతీకరించండి.';

  @override
  String get settingsCountry => 'దేశం';

  @override
  String get settingsTaxId => 'పన్ను రిజిస్ట్రేషన్ నంబర్';

  @override
  String get settingsTaxIdNotSet => 'సెట్ చేయలేదు';

  @override
  String get settingsTaxIdHint => 'ఉదా. 123456789012345';

  @override
  String get settingsTaxIdSaved => 'పన్ను ID సేవ్ చేయబడింది';

  @override
  String get catalogTitle => 'ఉత్పత్తులు & సేవలు';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count అంశాలు',
      one: '$count అంశం',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'ఇంకా ఉత్పత్తులు లేవు';

  @override
  String get catalogEmptySubtitle =>
      'పునర్వినియోగ ఉత్పత్తులు మరియు సేవలను సేవ్ చేసి వాటిని ఇన్వాయిస్‌లలో వేగంగా జోడించండి.';

  @override
  String get catalogFromSaved => 'మీ కేటలాగ్ నుండి';

  @override
  String get catalogSaveToCatalog => 'తిరిగి వాడటానికి కేటలాగ్‌లో సేవ్ చేయండి';

  @override
  String get catalogAddSnackbar => 'కేటలాగ్‌కు జోడించబడింది';

  @override
  String get catalogDeleteTitle => 'అంశాన్ని తొలగించాలా?';

  @override
  String catalogDeleteMessage(String description) {
    return '\"$description\" తొలగించాలా? దీన్ని తిరిగి పొందలేరు.';
  }

  @override
  String get commonDone => 'పూర్తయింది';

  @override
  String get estimateListTitle => 'అంచనాలు';

  @override
  String get estimateListSearchHint => 'అంచనాలను వెతకండి…';

  @override
  String get estimateListEmpty => 'ఇంకా అంచనాలు లేవు';

  @override
  String get estimateListTabAll => 'అన్నీ';

  @override
  String get estimateListTabDraft => 'డ్రాఫ్ట్';

  @override
  String get estimateListTabSent => 'పంపబడినవి';

  @override
  String get estimateListTabAccepted => 'ఆమోదించబడినవి';

  @override
  String get estimateListTabExpired => 'గడువు మీరినవి';

  @override
  String get estimateCreateTitle => 'కొత్త అంచనా';

  @override
  String get estimateEditTitle => 'అంచనా సవరించు';

  @override
  String get estimateCreatedSnackbar => 'అంచనా సేవ్ చేయబడింది';

  @override
  String get estimateUpdatedSnackbar => 'అంచనా అప్‌డేట్ చేయబడింది';

  @override
  String get estimateIssueDate => 'జారీ తేదీ';

  @override
  String get estimateExpiryDate => 'గడువు ముగింపు తేదీ';

  @override
  String get estimateExpiresPrefix => 'గడువు ';

  @override
  String get estimateConvertToInvoice => 'ఇన్వాయిస్‌గా మార్చండి';

  @override
  String get estimateConvertedSnackbar => 'అంచనా ఇన్వాయిస్‌గా మార్చబడింది';

  @override
  String get estimateConvertFailed => 'అంచనాను మార్చడం సాధ్యపడలేదు';

  @override
  String get estimateMarkSent => 'పంపినట్లు గుర్తించండి';

  @override
  String get estimateMarkAccepted => 'ఆమోదించినట్లు గుర్తించండి';

  @override
  String get estimateMarkDeclined => 'తిరస్కరించినట్లు గుర్తించండి';

  @override
  String get estimateConvertedTitle => 'మార్చబడింది';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'ఇన్వాయిస్ $invoiceIdగా మార్చబడింది';
  }

  @override
  String get estimateDetailTotal => 'అంచనా మొత్తం';

  @override
  String get estimateStatusSent => 'పంపబడింది';

  @override
  String get estimateStatusAccepted => 'ఆమోదించబడింది';

  @override
  String get estimateStatusDeclined => 'తిరస్కరించబడింది';

  @override
  String get estimateStatusExpired => 'గడువు మీరింది';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count తెరిచి ఉన్నాయి',
      one: '1 తెరిచి ఉంది',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'అంచనా తొలగించాలా?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return '\"$estimateNumber\" తొలగించాలా? దీన్ని తిరిగి పొందలేరు.';
  }

  @override
  String get estimatePdfFailed => 'PDF సృష్టించడం సాధ్యపడలేదు';

  @override
  String get pdfEstimate => 'అంచనా';

  @override
  String get pdfEstimateNumber => 'అంచనా #:';

  @override
  String get pdfValidUntil => 'వరకు చెల్లుబాటు:';

  @override
  String get invoiceDetailPaymentTerms => 'చెల్లింపు నిబంధనలు';

  @override
  String get recurringListTitle => 'పునరావృత ఇన్వాయిస్‌లు';

  @override
  String get recurringListEmpty => 'ఇంకా పునరావృత ఇన్వాయిస్‌లు లేవు';

  @override
  String get recurringListEmptySubtitle =>
      'క్రమ వినియోగదారులు మరియు సేవల కోసం స్వయంచాలక ఇన్వాయిస్‌లను సెటప్ చేయండి.';

  @override
  String get recurringCreateTitle => 'కొత్త పునరావృతి';

  @override
  String get recurringEditTitle => 'పునరావృతిని సవరించు';

  @override
  String get recurringCreatedSnackbar => 'పునరావృత ఇన్వాయిస్ సేవ్ చేయబడింది';

  @override
  String get recurringUpdatedSnackbar =>
      'పునరావృత ఇన్వాయిస్ అప్‌డేట్ చేయబడింది';

  @override
  String get recurringDeleteTitle => 'పునరావృత ఇన్వాయిస్ తొలగించాలా?';

  @override
  String recurringDeleteMessage(String title) {
    return '\"$title\" తొలగించాలా? ఇప్పటికే ఉన్న ఇన్వాయిస్‌లు తొలగించబడవు.';
  }

  @override
  String get recurringTitleLabel => 'శీర్షిక';

  @override
  String get recurringTitleHint => 'ఉదా. నెలవారీ రిటైనర్';

  @override
  String get recurringClientLabel => 'క్లయింట్';

  @override
  String get recurringFrequencyLabel => 'ఫ్రీక్వెన్సీ';

  @override
  String get recurringFrequencyWeekly => 'వారానికొకసారి';

  @override
  String get recurringFrequencyBiweekly => 'రెండు వారాలకొకసారి';

  @override
  String get recurringFrequencyMonthly => 'నెలవారీ';

  @override
  String get recurringFrequencyQuarterly => 'త్రైమాసికం';

  @override
  String get recurringFrequencyYearly => 'సంవత్సరానికొకసారి';

  @override
  String get recurringNextRun => 'తదుపరి రన్';

  @override
  String get recurringDueDays => 'గడువు';

  @override
  String get recurringDays => 'రోజులలో';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count చురుకుగా ఉన్నాయి',
      one: '1 చురుకుగా ఉంది',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'నివేదికలు';

  @override
  String get reportsSubtitle => 'వ్యాపార విశ్లేషణ';

  @override
  String get reportsEmpty => 'నివేదికలను చూడటానికి ఇన్వాయిస్‌లను సృష్టించండి';

  @override
  String get reportsCollected => 'వసూలు చేయబడింది';

  @override
  String get reportsOutstanding => 'బకాయి';

  @override
  String get reportsMonthlyRevenue => 'నెలవారీ ఆదాయం';

  @override
  String get reportsLast6Months => 'గత 6 నెలలు';

  @override
  String get reportsByStatus => 'స్థితి వారీగా';

  @override
  String get reportsTopClients => 'టాప్ క్లయింట్‌లు';

  @override
  String get paymentLinkTitle => 'చెల్లింపు లింక్';

  @override
  String get paymentLinkNotSet =>
      'సెట్టింగ్‌లలో చెల్లింపు లింక్ సెట్ చేయబడలేదు';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'మీ చెల్లింపు లింక్ ఇన్వాయిస్ PDFలో జోడించబడుతుంది మరియు ఇన్వాయిస్ మెను నుండి కాపీ చేయవచ్చు.';

  @override
  String get paymentLinkSaved => 'చెల్లింపు లింక్ సేవ్ చేయబడింది';

  @override
  String get settingsPaymentLinkNotSet => 'సెట్ చేయలేదు';

  @override
  String get invoiceDetailCopyPaymentLink => 'చెల్లింపు లింక్ కాపీ చేయండి';

  @override
  String get paymentLinkCopied => 'చెల్లింపు లింక్ కాపీ చేయబడింది';

  @override
  String get pdfPayOnline => 'ఆన్‌లైన్‌లో చెల్లించండి';

  @override
  String get exportXml => 'XML ఎగుమతి';

  @override
  String get exportXmlFailed => 'XML ఎగుమతి చేయడం సాధ్యపడలేదు';
}
