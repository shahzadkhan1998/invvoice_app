// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Khmer Central Khmer (`km`).
class AppLocalizationsKm extends AppLocalizations {
  AppLocalizationsKm([String locale = 'km']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'វិក្កយបត្រ​អាជីពក្នុង​រយៈពេល ២ នាទី';

  @override
  String get bottomNavDashboard => 'ផ្ទាំងគ្រប់គ្រង';

  @override
  String get bottomNavInvoices => 'វិក្កយបត្រ';

  @override
  String get bottomNavClients => 'អតិថិជន';

  @override
  String get bottomNavSettings => 'ការកំណត់';

  @override
  String get commonCancel => 'បោះបង់';

  @override
  String get commonDelete => 'លុប';

  @override
  String get commonSave => 'រក្សាទុក';

  @override
  String get commonSearch => 'ស្វែងរក';

  @override
  String get commonBack => 'ត្រឡប់ក្រោយ';

  @override
  String get commonContinue => 'បន្ត';

  @override
  String get commonAdd => 'បន្ថែម';

  @override
  String get commonEdit => 'កែសម្រួល';

  @override
  String get commonCreate => 'បង្កើត';

  @override
  String get commonClear => 'សម្អាត';

  @override
  String get commonView => 'មើល';

  @override
  String get commonShare => 'ចែករំលែក';

  @override
  String get commonExportPdf => 'នាំចេញ PDF';

  @override
  String get commonSharePdf => 'ចែករំលែក PDF';

  @override
  String get commonSaveChanges => 'រក្សាទុកការផ្លាស់ប្តូរ';

  @override
  String get commonRequired => 'តម្រូវឲ្យបំពេញ';

  @override
  String get commonInvalid => 'មិនត្រឹមត្រូវ';

  @override
  String get commonSendLink => 'ផ្ញើតំណ';

  @override
  String get commonGeneratingPdf => 'កំពុង​បង្កើត PDF...';

  @override
  String get dashboardGreetingMorning => 'អរុណសួស្តី';

  @override
  String get dashboardGreetingAfternoon => 'សួស្តីពេលរសៀល';

  @override
  String get dashboardGreetingEvening => 'សួស្តីពេលល្ងាច';

  @override
  String get dashboardSubtitle => 'នេះជាទិដ្ឋភាពទូទៅនៃអាជីវកម្មរបស់អ្នក';

  @override
  String get dashboardOutstanding => 'បំណុលជំពាក់';

  @override
  String get dashboardOverdue => 'ហួសកំណត់';

  @override
  String get dashboardThisMonth => 'ខែនេះ';

  @override
  String get dashboardInvoices => 'វិក្កយបត្រ';

  @override
  String dashboardPaidCount(Object count) {
    return 'បានបង់ $count';
  }

  @override
  String get dashboardRecentInvoices => 'វិក្កយបត្រថ្មីៗ';

  @override
  String get dashboardSeeAll => 'មើលទាំងអស់';

  @override
  String get dashboardNotifications => 'ការជូនដំណឹង';

  @override
  String get dashboardNotificationsHint =>
      'តាមដានលំហូរសាច់ប្រាក់ដោយពិនិត្យវិក្កយបត្រដែលហួសកំណត់ និងកំពុងរង់ចាំជាប្រចាំ។';

  @override
  String get dashboardNewInvoice => 'វិក្កយបត្រថ្មី';

  @override
  String get dashboardNoInvoicesYet => 'មិនទាន់មានវិក្កយបត្រទេ';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'បង្កើតវិក្កយបត្រអាជីពដំបូងរបស់អ្នកក្នុងរយៈពេលក្រោម ២ នាទី';

  @override
  String get dashboardCreateInvoice => 'បង្កើតវិក្កយបត្រ';

  @override
  String get dashboardMarkPaid => 'សម្គាល់ថាបានបង់';

  @override
  String get dashboardDuePrefix => 'កំណត់ ';

  @override
  String dashboardDaysOverdue(Object days) {
    return 'ហួសកំណត់ $days ថ្ងៃ';
  }

  @override
  String get deleteInvoiceTitle => 'លុបវិក្កយបត្រ?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'លុប $invoiceNumber? មិនអាចត្រឡប់វិញបានទេ។';
  }

  @override
  String get loginHeading => 'សូមស្វាគមន៍ត្រឡប់មកវិញ';

  @override
  String get loginSubtitle => 'ចូលគណនី InvoiceFlow របស់អ្នក';

  @override
  String get loginEmailLabel => 'អាសយដ្ឋានអ៊ីមែល';

  @override
  String get loginEmailHint => 'you@example.com';

  @override
  String get loginEmailRequired => 'ទាមទារអ៊ីមែល';

  @override
  String get loginEmailInvalid => 'សូមបញ្ចូលអ៊ីមែលត្រឹមត្រូវ';

  @override
  String get loginPasswordLabel => 'ពាក្យសម្ងាត់';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'ទាមទារពាក្យសម្ងាត់';

  @override
  String get loginPasswordMinLength =>
      'ពាក្យសម្ងាត់ត្រូវមានយ៉ាងហោចណាស់ ៦ តួអក្សរ';

  @override
  String get loginForgotPassword => 'ភ្លេចពាក្យសម្ងាត់?';

  @override
  String get loginSignIn => 'ចូលគណនី';

  @override
  String get loginOrContinueWith => 'ឬបន្តជាមួយ';

  @override
  String get loginContinueWithGoogle => 'បន្តជាមួយ Google';

  @override
  String get loginNoAccount => 'មិនទាន់មានគណនី? ';

  @override
  String get loginSignUp => 'ចុះឈ្មោះ';

  @override
  String get loginResetPasswordTitle => 'កំណត់ពាក្យសម្ងាត់ឡើងវិញ';

  @override
  String get loginResetPasswordMessage =>
      'បញ្ចូលអ៊ីមែលរបស់អ្នក យើងនឹងផ្ញើតំណកំណត់ឡើងវិញ។';

  @override
  String get loginResetPasswordHint => 'you@example.com';

  @override
  String get loginResetLinkSent =>
      'បានផ្ញើតំណកំណត់ឡើងវិញ! សូមពិនិត្យអ៊ីមែលរបស់អ្នក។';

  @override
  String get loginResetLinkFailed => 'មិនអាចផ្ញើតំណកំណត់ឡើងវិញបានទេ។';

  @override
  String get registerHeading => 'បង្កើតគណនី';

  @override
  String get registerSubtitle => 'ចាប់ផ្តើមផ្ញើវិក្កយបត្រអាជីពចាប់ពីថ្ងៃនេះ';

  @override
  String get registerNameLabel => 'ឈ្មោះពេញ';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => 'ទាមទារឈ្មោះ';

  @override
  String get registerNameMinLength => 'ឈ្មោះត្រូវមានយ៉ាងហោចណាស់ ២ តួអក្សរ';

  @override
  String get registerEmailLabel => 'អាសយដ្ឋានអ៊ីមែល';

  @override
  String get registerEmailHint => 'you@example.com';

  @override
  String get registerEmailRequired => 'ទាមទារអ៊ីមែល';

  @override
  String get registerEmailInvalid => 'សូមបញ្ចូលអ៊ីមែលត្រឹមត្រូវ';

  @override
  String get registerPasswordLabel => 'ពាក្យសម្ងាត់';

  @override
  String get registerPasswordHint => 'យ៉ាងហោចណាស់ ៦ តួអក្សរ';

  @override
  String get registerPasswordRequired => 'ទាមទារពាក្យសម្ងាត់';

  @override
  String get registerPasswordMinLength =>
      'ពាក្យសម្ងាត់ត្រូវមានយ៉ាងហោចណាស់ ៦ តួអក្សរ';

  @override
  String get registerConfirmPasswordLabel => 'បញ្ជាក់ពាក្យសម្ងាត់';

  @override
  String get registerConfirmPasswordHint => 'វាយបញ្ចូលពាក្យសម្ងាត់ម្តងទៀត';

  @override
  String get registerConfirmPasswordRequired =>
      'សូមបញ្ជាក់ពាក្យសម្ងាត់របស់អ្នក';

  @override
  String get registerPasswordsDoNotMatch => 'ពាក្យសម្ងាត់មិនត្រូវគ្នាទេ';

  @override
  String get registerCreateAccount => 'បង្កើតគណនី';

  @override
  String get registerHaveAccount => 'មានគណនីរួចហើយ? ';

  @override
  String get registerSignIn => 'ចូលគណនី';

  @override
  String get authTermsOfService => 'លក្ខខណ្ឌនៃការប្រើប្រាស់';

  @override
  String get authPrivacyPolicy => 'គោលការណ៍ឯកជនភាព';

  @override
  String get authAgreeRequired =>
      'សូមយល់ព្រមចំពោះលក្ខខណ្ឌនៃការប្រើប្រាស់ និងគោលការណ៍ឯកជនភាព ដើម្បីបន្ត';

  @override
  String get loginAgreePrefix => 'ដោយការបន្ត អ្នកយល់ព្រមចំពោះ ';

  @override
  String get registerAgreePrefix => 'ខ្ញុំយល់ព្រមចំពោះ ';

  @override
  String get authAgreeAnd => ' និង ';

  @override
  String get authTermsSheet =>
      'លក្ខខណ្ឌនៃការប្រើប្រាស់ទាំងនេះ គ្រប់គ្រងការប្រើប្រាស់ InvoiceFlow របស់អ្នក។ តាមរយៈការចូលប្រើ ឬប្រើប្រាស់កម្មវិធី អ្នកយល់ព្រមដើម្បីត្រូវចងភ្ជាប់ដោយលក្ខខណ្ឌទាំងនេះ។\n\n1. អ្នកទទួលខុសត្រូវចំពោះភាពត្រឹមត្រូវនៃវិក្កយបត្រ ការប៉ាន់ស្មាន និងទិន្នន័យផ្សេងទៀតដែលអ្នកបង្កើត។\n2. កម្មវិធីត្រូវបានផ្តល់ជូន \"ដូចដែលមាន\" ដោយគ្មានការធានាគ្រប់ប្រភេទ ច្បាស់លាស់ ឬអាចយល់បាន។\n3. យើងមិនទទួលខុសត្រូវចំពោះការខាតបង់ណាមួយដែលកើតចេញពីការប្រើប្រាស់សេវាកម្មរបស់អ្នកឡើយ។\n4. អ្នកមិនត្រូវប្រើកម្មវិធីសម្រាប់គោលបំណងខុសច្បាប់ ឬហាមឃាត់ឡើយ។\n5. យើងអាចធ្វើបច្ចុប្បន្នភាពលក្ខខណ្ឌទាំងនេះពីមួយពេលទៅមួយពេល។ ការបន្តប្រើប្រាស់កម្មវិធី គឺជាការទទួលយកលក្ខខណ្ឌដែលបានធ្វើបច្ចុប្បន្នភាព។';

  @override
  String get authPrivacySheet =>
      'ភាពឯកជនរបស់អ្នកមានសារៈសំខាន់សម្រាប់ពួកយើង។\n\n1. ការរក្សាទុកទិន្នន័យ៖ វិក្កយបត្រ អតិថិជន និងការកំណត់របស់អ្នកត្រូវបានរក្សាទុកក្នុងមូលដ្ឋានលើឧបករណ៍របស់អ្នក។\n2. ការធ្វើសមកាលកម្មពពក៖ ប្រសិនបើអ្នកចូល ទិន្នន័យរបស់អ្នកនឹងត្រូវបានធ្វើសមកាលកម្មទៅគណនីរបស់អ្នក ដើម្បីឱ្យអាចចូលប្រើបាននៅគ្រប់ឧបករណ៍របស់អ្នក។\n3. យើងមិនដែលលក់ ឬចែករំលែកព័ត៌មានផ្ទាល់ខ្លួនរបស់អ្នកឡើយ។\n4. ការវិភាគ៖ យើងអាចប្រមូលទិន្នន័យប្រើប្រាស់ដែលលាក់អត្តសញ្ញាណ ដើម្បីជួយកែលម្អកម្មវិធី។\n5. ទំនាក់ទំនង៖ សម្រាប់សំណួរឯកជនភាពណាមួយ សូមទាក់ទង support@invoiceflow.app។';

  @override
  String get authErrorWeakPassword => 'ពាក្យសម្ងាត់ខ្សោយពេក';

  @override
  String get authErrorEmailAlreadyInUse => 'គណនីនេះមានរួចហើយ';

  @override
  String get authErrorUserNotFound => 'រកមិនឃើញអ្នកប្រើប្រាស់ដែលមានអ៊ីមែលនេះទេ';

  @override
  String get authErrorWrongPassword => 'ពាក្យសម្ងាត់មិនត្រឹមត្រូវ';

  @override
  String get authErrorInvalidEmail => 'អាសយដ្ឋានអ៊ីមែលមិនត្រឹមត្រូវ';

  @override
  String get authErrorTooManyRequests =>
      'ការព្យាយាមច្រើនពេក។ សូមព្យាយាមម្តងទៀតនៅពេលក្រោយ';

  @override
  String get authErrorDefault => 'ការផ្ទៀងផ្ទាត់បរាជ័យ។ សូមព្យាយាមម្តងទៀត។';

  @override
  String get authErrorGoogleSignInFailed => 'ការចូលជាមួយ Google បរាជ័យ។';

  @override
  String get invoiceListTitle => 'វិក្កយបត្រ';

  @override
  String get invoiceListSearchHint => 'ស្វែងរកវិក្កយបត្រ...';

  @override
  String get invoiceListSortDate => 'តម្រៀបតាមកាលបរិច្ឆេទ';

  @override
  String get invoiceListSortAmount => 'តម្រៀបតាមចំនួនទឹកប្រាក់';

  @override
  String get invoiceListSortClient => 'តម្រៀបតាមអតិថិជន';

  @override
  String get invoiceListTabAll => 'ទាំងអស់';

  @override
  String get invoiceListTabPaid => 'បានបង់';

  @override
  String get invoiceListTabPending => 'កំពុងរង់ចាំ';

  @override
  String get invoiceListTabOverdue => 'ហួសកំណត់';

  @override
  String get invoiceListTabDraft => 'ពង្រាង';

  @override
  String get invoiceListEmpty => 'រកមិនឃើញវិក្កយបត្រទេ';

  @override
  String get invoiceCreateTitle => 'វិក្កយបត្រថ្មី';

  @override
  String get invoiceEditTitle => 'កែសម្រួលវិក្កយបត្រ';

  @override
  String get invoiceSaveDraft => 'រក្សាទុកពង្រាង';

  @override
  String get invoiceStepClient => 'អតិថិជន';

  @override
  String get invoiceStepItems => 'ធាតុ';

  @override
  String get invoiceStepReview => 'ពិនិត្យ';

  @override
  String get invoiceSelectClient => 'ជ្រើសរើសអតិថិជន';

  @override
  String get invoiceSelectClientSubtitle =>
      'ជ្រើសរើសអ្នកដែលវិក្កយបត្រនេះសម្រាប់';

  @override
  String get invoiceSearchClients => 'ស្វែងរកអតិថិជន...';

  @override
  String get invoiceAddNewClient => 'បន្ថែមអតិថិជនថ្មី';

  @override
  String get invoiceNoClientsFound => 'រកមិនឃើញអតិថិជនទេ';

  @override
  String get invoiceSelectClientEmptyHint =>
      'បង្កើតអតិថិជនដំបូងរបស់អ្នកដើម្បីចាប់ផ្តើមបង្កើតវិក្កយបត្រ';

  @override
  String get invoiceAddLineItem => 'បន្ថែមធាតុជួរ';

  @override
  String get invoiceItemDescription => 'ការពិពណ៌នា';

  @override
  String get invoiceItemDescriptionHint => 'ឧ. ការអភិវឌ្ឍវេបសាយ';

  @override
  String get invoiceItemQuickAdd => 'បន្ថែមរហ័ស: ';

  @override
  String get invoiceItemQty => 'បរិមាណ';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'អត្រា';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'បន្ថែមធាតុ';

  @override
  String get invoiceLineItems => 'ធាតុជួរ';

  @override
  String get invoiceLineItemsSubtitle => 'បន្ថែមសេវាកម្ម ឬផលិតផល';

  @override
  String get invoiceNoItems => 'មិនទាន់មានធាតុទេ។ បន្ថែមធាតុដំបូងរបស់អ្នក។';

  @override
  String get invoiceTaxRate => 'អត្រាពន្ធ (%)';

  @override
  String get invoiceSubtotal => 'សរុបរង';

  @override
  String invoiceTax(Object taxRate) {
    return 'ពន្ធ ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'សរុប';

  @override
  String get invoiceReviewHeading => 'ពិនិត្យ និងបញ្ចប់';

  @override
  String get invoiceReviewSubtitle =>
      'កំណត់កាលបរិច្ឆេទ បន្ថែមកំណត់ចំណាំ និមិត្តសញ្ញា និងហត្ថលេខា';

  @override
  String get invoiceCompanyLogo => 'និមិត្តសញ្ញាក្រុមហ៊ុន';

  @override
  String get invoiceAddLogo => 'បន្ថែមនិមិត្តសញ្ញា';

  @override
  String get invoiceInvoiceDate => 'កាលបរិច្ឆេទវិក្កយបត្រ';

  @override
  String get invoiceDueDate => 'កាលបរិច្ឆេទកំណត់';

  @override
  String get invoiceNotesLabel => 'កំណត់ចំណាំ (ស្រេចចិត្ត)';

  @override
  String get invoiceNotesHint =>
      'សូមអរគុណសម្រាប់ការជឿទុកចិត្តលើអាជីវកម្មរបស់អ្នក!';

  @override
  String get invoicePaymentTermsLabel => 'លក្ខខណ្ឌទូទាត់ (ស្រេចចិត្ត)';

  @override
  String get invoicePaymentTermsHint => 'ទូទាត់ក្នុងរយៈពេល ៣០ ថ្ងៃ';

  @override
  String get invoiceSignatureLabel => 'ហត្ថលេខា';

  @override
  String get invoiceSignatureOverwrite =>
      'ហត្ថលេខាដែលមានត្រូវបានរក្សាទុក។ គូរពីលើដើម្បីជំនួស។';

  @override
  String get invoiceCreatedSnackbar => 'បានបង្កើតវិក្កយបត្រ!';

  @override
  String get invoiceUpdatedSnackbar => 'បានធ្វើបច្ចុប្បន្នភាពវិក្កយបត្រ!';

  @override
  String get invoiceDetailTitle => 'វិក្កយបត្រ';

  @override
  String get invoiceDetailMarkAsPaid => 'សម្គាល់ថាបានបង់';

  @override
  String get invoiceDetailTotalAmount => 'ចំនួនទឹកប្រាក់សរុប';

  @override
  String get invoiceDetailIssued => 'ចេញនៅ';

  @override
  String get invoiceDetailDue => 'កំណត់';

  @override
  String get invoiceDetailPaid => 'បានបង់';

  @override
  String get invoiceDetailBillTo => 'វិក្កយបត្រទៅ';

  @override
  String get invoiceDetailItems => 'ធាតុ';

  @override
  String get invoiceDetailNotes => 'កំណត់ចំណាំ';

  @override
  String get invoiceDetailSignature => 'ហត្ថលេខា';

  @override
  String get invoiceDetailMarkedPaidSnackbar =>
      'វិក្កយបត្រត្រូវបានសម្គាល់ថាបានបង់!';

  @override
  String get invoiceDetailPdfFailed => 'មិនអាចបង្កើត PDF បានទេ';

  @override
  String get clientListTitle => 'អតិថិជន';

  @override
  String get clientListSearchHint => 'ស្វែងរកអតិថិជន...';

  @override
  String get clientListTotalClients => 'អតិថិជនសរុប';

  @override
  String get clientListTotalBilled => 'ចំនួនវិក្កយបត្រសរុប';

  @override
  String get clientListEmptySearch => 'រកមិនឃើញអតិថិជនទេ';

  @override
  String get clientListEmpty => 'មិនទាន់មានអតិថិជនទេ';

  @override
  String get clientListEmptySubtitle =>
      'បន្ថែមអតិថិជនដំបូងរបស់អ្នកដើម្បីចាប់ផ្តើមបង្កើតវិក្កយបត្រ';

  @override
  String get clientListAddClient => 'បន្ថែមអតិថិជន';

  @override
  String get clientListTotalBilledLabel => 'ចំនួនវិក្កយបត្រសរុប';

  @override
  String clientListInvoiceCount(Object count) {
    return 'វិក្កយបត្រ $count';
  }

  @override
  String get clientCreateTitle => 'អតិថិជនថ្មី';

  @override
  String get clientEditTitle => 'កែសម្រួលអតិថិជន';

  @override
  String get clientBasicInfo => 'ព័ត៌មានមូលដ្ឋាន';

  @override
  String get clientNameLabel => 'ឈ្មោះពេញ *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'ទាមទារឈ្មោះ';

  @override
  String get clientNameTooShort => 'ឈ្មោះខ្លីពេក';

  @override
  String get clientEmailLabel => 'អាសយដ្ឋានអ៊ីមែល *';

  @override
  String get clientEmailHint => 'billing@company.com';

  @override
  String get clientEmailRequired => 'ទាមទារអ៊ីមែល';

  @override
  String get clientEmailInvalid => 'សូមបញ្ចូលអ៊ីមែលត្រឹមត្រូវ';

  @override
  String get clientPhoneLabel => 'លេខទូរស័ព្ទ';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'អាសយដ្ឋាន';

  @override
  String get clientAddressLabel => 'អាសយដ្ឋានផ្លូវ';

  @override
  String get clientAddressHint => '123 Business Park, ការិយាល័យ 45';

  @override
  String get clientCityLabel => 'ទីក្រុង / ប្រទេស';

  @override
  String get clientCityHint => 'ទូបៃ, អេមីរ៉ាតអារ៉ាប់រួម';

  @override
  String get clientBillingDefaults => 'លំនាំដើមវិក្កយបត្រ';

  @override
  String get clientDefaultCurrency => 'រូបិយប័ណ្ណលំនាំដើម';

  @override
  String get clientDefaultTaxRate => 'អត្រាពន្ធលំនាំដើម (VAT/GST)';

  @override
  String get clientVatLabel => 'លេខ VAT / ពន្ធចុះបញ្ជី';

  @override
  String get clientVatHint => '123456789012345 (ស្រេចចិត្ត)';

  @override
  String get clientUpdateButton => 'ធ្វើបច្ចុប្បន្នភាពអតិថិជន';

  @override
  String get clientAddButton => 'បន្ថែមអតិថិជន';

  @override
  String get clientUpdatedSnackbar => 'អតិថិជនបានធ្វើបច្ចុប្បន្នភាព!';

  @override
  String get clientAddedSnackbar => 'បានបន្ថែមអតិថិជន!';

  @override
  String get clientDetailInvoices => 'វិក្កយបត្រ';

  @override
  String get clientDetailTotalBilled => 'ចំនួនវិក្កយបត្រសរុប';

  @override
  String get clientDetailOutstanding => 'បំណុលជំពាក់';

  @override
  String get clientDetailEdit => 'កែសម្រួល';

  @override
  String get clientDetailNewInvoice => 'វិក្កយបត្រថ្មី';

  @override
  String get clientDetailEmailClient => 'ផ្ញើអ៊ីមែលទៅអតិថិជន';

  @override
  String get clientDetailClientDetails => 'ព័ត៌មានលម្អិតអតិថិជន';

  @override
  String get clientDetailEmail => 'អ៊ីមែល';

  @override
  String get clientDetailPhone => 'ទូរស័ព្ទ';

  @override
  String get clientDetailAddress => 'អាសយដ្ឋាន';

  @override
  String get clientDetailCity => 'ទីក្រុង';

  @override
  String get clientDetailCurrency => 'រូបិយប័ណ្ណ';

  @override
  String get clientDetailTaxRate => 'អត្រាពន្ធ';

  @override
  String get clientDetailVatNumber => 'លេខ VAT';

  @override
  String get clientDetailInvoiceHistory => 'ប្រវត្តិវិក្កយបត្រ';

  @override
  String get clientDetailNoInvoices =>
      'មិនទាន់មានវិក្កយបត្រសម្រាប់អតិថិជននេះទេ';

  @override
  String get deleteClientTitle => 'លុបអតិថិជន?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'លុប $clientName? មិនអាចត្រឡប់វិញបានទេ។';
  }

  @override
  String get settingsTitle => 'ការកំណត់';

  @override
  String get settingsYourName => 'ឈ្មោះរបស់អ្នក';

  @override
  String get settingsBackupTitle => 'បម្រុងទុកវិក្កយបត្ររបស់អ្នក';

  @override
  String get settingsBackupDescription =>
      'ចូលគណនីដើម្បីធ្វើសមកាលកម្មទិន្នន័យដោយសុវត្ថិភាព និងចូលប្រើបានពីគ្រប់ទីកន្លែង។';

  @override
  String get settingsSignInRegister => 'ចូលគណនី ឬចុះឈ្មោះ';

  @override
  String get settingsProUpsell =>
      'ធ្វើឱ្យប្រសើរទៅ Pro សម្រាប់វិក្កយបត្រគ្មានដែនកំណត់ សមកាលកម្មពពក និងគ្មានស្នាមទឹក។';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'អ្នកបានឈានដល់កម្រិត $limit វិក្កយបត្រនៃគម្រោងឥតគិតថ្លៃ។ ធ្វើឱ្យប្រសើរទៅ Pro សម្រាប់វិក្កយបត្រគ្មានដែនកំណត់ និងសមកាលកម្មពពក។';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'អ្នកបានឈានដល់កម្រិត $limit អតិថិជននៃគម្រោងឥតគិតថ្លៃ។ ធ្វើឱ្យប្រសើរទៅ Pro សម្រាប់អតិថិជនគ្មានដែនកំណត់ និងសមកាលកម្មពពក។';
  }

  @override
  String get settingsUpgradePro => 'ធ្វើឱ្យប្រសើរ';

  @override
  String get settingsBusinessSection => 'ការកំណត់អាជីវកម្ម';

  @override
  String get settingsBusinessDetails => 'ព័ត៌មានអាជីវកម្ម';

  @override
  String get settingsBusinessDetailsSubtitle => 'កំណត់ឈ្មោះអាជីវកម្មរបស់អ្នក';

  @override
  String get settingsInvoicePrefix => 'បុព្វបទវិក្កយបត្រ';

  @override
  String get settingsDefaultCurrency => 'រូបិយប័ណ្ណលំនាំដើម';

  @override
  String get settingsAppSection => 'ការកំណត់កម្មវិធី';

  @override
  String get settingsDarkMode => 'របៀបងងឹត';

  @override
  String get settingsDailyNotification => 'ការជូនដំណឹងប្រចាំថ្ងៃ';

  @override
  String get settingsDailyNotificationNotSet => 'មិនបានកំណត់';

  @override
  String get settingsLanguage => 'ភាសា';

  @override
  String get settingsLanguageLabel => 'ខ្មែរ';

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
  String get settingsAboutSection => 'អំពី';

  @override
  String get settingsRateApp => 'វាយតម្លៃកម្មវិធី';

  @override
  String get settingsHelpSupport => 'ជំនួយ និងសេវា';

  @override
  String get settingsPrivacyPolicy => 'គោលការណ៍ឯកជនភាព';

  @override
  String get settingsHelpSupportSheet =>
      'ត្រូវការជំនួយ? ទាក់ទង support@invoiceflow.app យើងនឹងឆ្លើយតបក្នុងរយៈពេល ២៤ ម៉ោង។';

  @override
  String get settingsPrivacySheet =>
      'ទិន្នន័យរបស់អ្នកត្រូវបានរក្សាទុកក្នុងមូលដ្ឋានលើឧបករណ៍របស់អ្នក។ យើងមិនដែលលក់ ឬចែករំលែកព័ត៌មានផ្ទាល់ខ្លួនរបស់អ្នកឡើយ។';

  @override
  String get settingsVersion => 'កំណែ';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'ចាកចេញ';

  @override
  String get settingsEditProfile => 'កែសម្រួលប្រវត្តិរូប';

  @override
  String get settingsProfileNameLabel => 'ឈ្មោះពេញ';

  @override
  String get settingsProfileNameHint => 'ឈ្មោះរបស់អ្នក';

  @override
  String get settingsBusinessNameLabel => 'ឈ្មោះអាជីវកម្ម';

  @override
  String get settingsBusinessNameHint => 'ក្រុមហ៊ុនរបស់អ្នក លី.';

  @override
  String get settingsBusinessEmailLabel => 'អ៊ីមែលអាជីវកម្ម';

  @override
  String get settingsBusinessEmailHint => 'billing@company.com';

  @override
  String get settingsPhoneLabel => 'ទូរស័ព្ទ';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'អាសយដ្ឋាន';

  @override
  String get settingsAddressHint => 'ទូបៃ, អេមីរ៉ាតអារ៉ាប់រួម';

  @override
  String get settingsBusinessDetailsSaved =>
      'ព័ត៌មានអាជីវកម្មត្រូវបានរក្សាទុក!';

  @override
  String get settingsInvoicePrefixTitle => 'បុព្វបទលេខវិក្កយបត្រ';

  @override
  String get settingsInvoicePrefixHint => 'ឧ. INV-, #, Bill-';

  @override
  String get settingsPrefixSaved => 'បុព្វបទវិក្កយបត្របានរក្សាទុក';

  @override
  String get settingsNotificationScheduled =>
      'ការជូនដំណឹងប្រចាំថ្ងៃត្រូវបានកំណត់ពេលដោយជោគជ័យ!';

  @override
  String get settingsSignOutTitle => 'ចាកចេញ?';

  @override
  String get settingsSignOutMessage => 'តើអ្នកប្រាកដថាចង់ចាកចេញពី InvoiceFlow?';

  @override
  String get settingsSignedOut => 'បានចាកចេញដោយជោគជ័យ។';

  @override
  String get statusPaid => 'បានបង់';

  @override
  String get statusOverdue => 'ហួសកំណត់';

  @override
  String get statusPending => 'កំពុងរង់ចាំ';

  @override
  String get statusDraft => 'ពង្រាង';

  @override
  String get statusCancelled => 'បានបោះបង់';

  @override
  String get notificationChannelName => 'ការរំលឹកប្រចាំថ្ងៃ';

  @override
  String get notificationChannelDescription =>
      'រំលឹកអ្នកឱ្យពិនិត្យវិក្កយបត្ររបស់អ្នកជារៀងរាល់ថ្ងៃ';

  @override
  String get notificationTitle => 'ការរំលឹកវិក្កយបត្រ';

  @override
  String get notificationBody =>
      'ដល់ពេលពិនិត្យវិក្កយបត្រថ្មីៗ និងតាមដានការទូទាត់ដែលកំពុងរង់ចាំ។';

  @override
  String get pdfInvoice => 'វិក្កយបត្រ';

  @override
  String get pdfInvoiceNumber => 'លេខវិក្កយបត្រ:';

  @override
  String get pdfDate => 'កាលបរិច្ឆេទ:';

  @override
  String get pdfDueDate => 'កាលបរិច្ឆេទកំណត់:';

  @override
  String get pdfBillTo => 'វិក្កយបត្រទៅ:';

  @override
  String get pdfDescription => 'ការពិពណ៌នា';

  @override
  String get pdfQty => 'បរិមាណ';

  @override
  String get pdfRate => 'អត្រា';

  @override
  String get pdfAmount => 'ចំនួនទឹកប្រាក់';

  @override
  String get pdfSubtotal => 'សរុបរង:';

  @override
  String pdfTax(Object taxRate) {
    return 'ពន្ធ ($taxRate%):';
  }

  @override
  String get pdfTotal => 'សរុប:';

  @override
  String get pdfSignature => 'ហត្ថលេខា:';

  @override
  String get pdfNotes => 'កំណត់ចំណាំ:';

  @override
  String get pdfPaymentTerms => 'លក្ខខណ្ឌទូទាត់:';

  @override
  String get pdfThankYou => 'សូមអរគុណសម្រាប់ការជឿទុកចិត្តលើអាជីវកម្មរបស់អ្នក!';

  @override
  String get quickAddWebDesign => 'ការរចនាវេបសាយ';

  @override
  String get quickAddDevelopment => 'ការអភិវឌ្ឍ';

  @override
  String get quickAddConsulting => 'ការប្រឹក្សា';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'ការសរសេរមាតិកា';

  @override
  String get paywallTitle => 'ដោះសោ InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'គ្មានដែនកំណត់ និងធ្វើសមកាលកម្មគ្រប់ទីកន្លែង។ អាចបោះបង់បានគ្រប់ពេល។';

  @override
  String get paywallFeatureUnlimited => 'វិក្កយបត្រ និងអតិថិជនគ្មានដែនកំណត់';

  @override
  String get paywallFeatureSync => 'សមកាលកម្មពពកលើគ្រប់ឧបករណ៍';

  @override
  String get paywallFeatureNoWatermark => 'គ្មានស្នាមទឹក មិនដែលមានទេ';

  @override
  String get paywallMonthly => 'ប្រចាំខែ';

  @override
  String get paywallMonthlySub => 'គិតថ្លៃប្រចាំខែ';

  @override
  String get paywallYearly => 'ប្រចាំឆ្នាំ';

  @override
  String get paywallYearlySub => 'តម្លៃល្អបំផុត — ២ ខែឥតគិតថ្លៃ';

  @override
  String get paywallRestore => 'ស្តារការទិញវិញ';

  @override
  String get paywallTerms =>
      'ការជាវបន្តដោយស្វ័យប្រវត្តិ។ គ្រប់គ្រងក្នុងការកំណត់ហាងកម្មវិធីរបស់អ្នក។';

  @override
  String get purchaseSuccessTitle => 'អ្នកគឺជា Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'វិក្កយបត្រគ្មានដែនកំណត់ សមកាលកម្មពពក និងគ្មានស្នាមទឹកឥឡូវត្រូវបានដោះសោ។ សូមអរគុណ!';

  @override
  String get purchaseSuccessContinue => 'បន្ត';

  @override
  String get paywallLoading => 'កំពុងផ្ទុកគម្រោង…';

  @override
  String get paywallLoadError =>
      'មិនអាចផ្ទុកគម្រោងបានទេ។ សូមពិនិត្យការតភ្ជាប់របស់អ្នក ហើយព្យាយាមម្តងទៀត។';

  @override
  String get paywallNoOffering => 'មិនមានគម្រោងណាអាចប្រើបាននៅពេលនេះទេ។';

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
  String get purchaseRestored => 'ការទិញត្រូវបានស្តារដោយជោគជ័យ';

  @override
  String get purchaseErrorGeneric => 'ការទិញបរាជ័យ។ សូមព្យាយាមម្តងទៀត។';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro សកម្ម — វិក្កយបត្រ និងអតិថិជនគ្មានដែនកំណត់ ដោយគ្មានសញ្ញាទឹក';

  @override
  String get settingsFreePlan => 'គម្រោងឥតគិតថ្លៃ';

  @override
  String get settingsFreeHint =>
      'ដំឡើងកំណែសម្រាប់វិក្កយបត្រគ្មានដែនកំណត់ ការធ្វើសមកាលកម្មពពក និងច្រើនទៀត';

  @override
  String get settingsUpgradeToPro => 'ដំឡើងកំណែទៅ Pro';

  @override
  String get settingsManageSubscription => 'គ្រប់គ្រងការជាវ';

  @override
  String get customerCenterFailed => 'មិនអាចបើកការគ្រប់គ្រងការជាវបានទេ។';

  @override
  String get onboardingSkip => 'រំលង';

  @override
  String get onboardingNext => 'បន្ទាប់';

  @override
  String get onboardingGetStarted => 'ចាប់ផ្តើម';

  @override
  String get onboardingWelcomeTitle => 'វិក្កយបត្រក្នុងរយៈពេល ២ នាទី';

  @override
  String get onboardingWelcomeBody =>
      'បង្កើតវិក្កយបត្រ PDF អាជីពសម្រាប់អតិថិជនរបស់អ្នក — លឿន និងស្អាត។';

  @override
  String get onboardingSyncTitle => 'ធ្វើសមកាលកម្មគ្រប់ទីកន្លែង';

  @override
  String get onboardingSyncBody =>
      'ចូលគណនីដើម្បីបម្រុងទុកទិន្នន័យរបស់អ្នកនៅលើពពកដោយសុវត្ថិភាព និងចូលប្រើពីគ្រប់ឧបករណ៍។';

  @override
  String get onboardingProTitle => 'គ្មានដែនកំណត់ជាមួយ Pro';

  @override
  String get onboardingProBody =>
      'ដោះសោវិក្កយបត្រគ្មានដែនកំណត់ សមកាលកម្មពពក និងលុបស្នាមទឹកជាមួយ InvoiceFlow Pro។';

  @override
  String get settingsAccentColor => 'ពណ៌លម្អ';

  @override
  String get settingsAccentColorHint =>
      'ធ្វើឱ្យកម្មវិធីមានលក្ខណៈផ្ទាល់ខ្លួនជាមួយពណ៌ដែលអ្នកចូលចិត្ត។';

  @override
  String get settingsCountry => 'ប្រទេស';

  @override
  String get settingsTaxId => 'លេខចុះបញ្ជីពន្ធ';

  @override
  String get settingsTaxIdNotSet => 'មិនបានកំណត់';

  @override
  String get settingsTaxIdHint => 'ឧ. 123456789012345';

  @override
  String get settingsTaxIdSaved => 'លេខពន្ធបានរក្សាទុក';

  @override
  String get catalogTitle => 'ផលិតផល និងសេវាកម្ម';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ធាតុ',
      one: '$count ធាតុ',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'មិនទាន់មានផលិតផលទេ';

  @override
  String get catalogEmptySubtitle =>
      'រក្សាទុកផលិតផល និងសេវាកម្មដែលអាចប្រើឡើងវិញបាន ដើម្បីបន្ថែមទៅវិក្កយបត្របានលឿនជាងមុន។';

  @override
  String get catalogFromSaved => 'ពីកាតាឡុករបស់អ្នក';

  @override
  String get catalogSaveToCatalog => 'រក្សាទុកទៅកាតាឡុកសម្រាប់ប្រើឡើងវិញ';

  @override
  String get catalogAddSnackbar => 'បានបន្ថែមទៅកាតាឡុក';

  @override
  String get catalogDeleteTitle => 'លុបធាតុ?';

  @override
  String catalogDeleteMessage(String description) {
    return 'លុប «$description»? មិនអាចត្រឡប់វិញបានទេ។';
  }

  @override
  String get commonDone => 'រួចរាល់';

  @override
  String get estimateListTitle => 'ការប៉ាន់ស្មាន';

  @override
  String get estimateListSearchHint => 'ស្វែងរកការប៉ាន់ស្មាន…';

  @override
  String get estimateListEmpty => 'មិនទាន់មានការប៉ាន់ស្មានទេ';

  @override
  String get estimateListTabAll => 'ទាំងអស់';

  @override
  String get estimateListTabDraft => 'ពង្រាង';

  @override
  String get estimateListTabSent => 'បានផ្ញើ';

  @override
  String get estimateListTabAccepted => 'បានទទួលយក';

  @override
  String get estimateListTabExpired => 'ផុតកំណត់';

  @override
  String get estimateCreateTitle => 'ការប៉ាន់ស្មានថ្មី';

  @override
  String get estimateEditTitle => 'កែសម្រួលការប៉ាន់ស្មាន';

  @override
  String get estimateCreatedSnackbar => 'ការប៉ាន់ស្មានត្រូវបានរក្សាទុក';

  @override
  String get estimateUpdatedSnackbar =>
      'ការប៉ាន់ស្មានត្រូវបានធ្វើបច្ចុប្បន្នភាព';

  @override
  String get estimateIssueDate => 'កាលបរិច្ឆេទចេញ';

  @override
  String get estimateExpiryDate => 'កាលបរិច្ឆេទផុតកំណត់';

  @override
  String get estimateExpiresPrefix => 'ផុតកំណត់ ';

  @override
  String get estimateConvertToInvoice => 'បម្លែងទៅវិក្កយបត្រ';

  @override
  String get estimateConvertedSnackbar =>
      'ការប៉ាន់ស្មានត្រូវបានបម្លែងទៅវិក្កយបត្រ';

  @override
  String get estimateConvertFailed => 'មិនអាចបម្លែងការប៉ាន់ស្មានបានទេ';

  @override
  String get estimateMarkSent => 'សម្គាល់ថាបានផ្ញើ';

  @override
  String get estimateMarkAccepted => 'សម្គាល់ថាបានទទួលយក';

  @override
  String get estimateMarkDeclined => 'សម្គាល់ថាបានបដិសេធ';

  @override
  String get estimateConvertedTitle => 'បានបម្លែង';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'បានបម្លែងទៅវិក្កយបត្រ $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'សរុបការប៉ាន់ស្មាន';

  @override
  String get estimateStatusSent => 'បានផ្ញើ';

  @override
  String get estimateStatusAccepted => 'បានទទួលយក';

  @override
  String get estimateStatusDeclined => 'បានបដិសេធ';

  @override
  String get estimateStatusExpired => 'ផុតកំណត់';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count បើក',
      one: '$count បើក',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'លុបការប៉ាន់ស្មាន?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'លុប «$estimateNumber»? មិនអាចត្រឡប់វិញបានទេ។';
  }

  @override
  String get estimatePdfFailed => 'មិនអាចបង្កើត PDF បានទេ';

  @override
  String get pdfEstimate => 'ការប៉ាន់ស្មាន';

  @override
  String get pdfEstimateNumber => 'លេខការប៉ាន់ស្មាន:';

  @override
  String get pdfValidUntil => 'មានសុពលភាពរហូតដល់:';

  @override
  String get invoiceDetailPaymentTerms => 'លក្ខខណ្ឌទូទាត់';

  @override
  String get recurringListTitle => 'វិក្កយបត្រកើតឡើងវិញ';

  @override
  String get recurringListEmpty => 'មិនទាន់មានវិក្កយបត្រកើតឡើងវិញទេ';

  @override
  String get recurringListEmptySubtitle =>
      'រៀបចំវិក្កយបត្រស្វ័យប្រវត្តិសម្រាប់អតិថិជន និងសេវាកម្មទៀងទាត់។';

  @override
  String get recurringCreateTitle => 'វិក្កយបត្រកើតឡើងវិញថ្មី';

  @override
  String get recurringEditTitle => 'កែសម្រួលវិក្កយបត្រកើតឡើងវិញ';

  @override
  String get recurringCreatedSnackbar => 'វិក្កយបត្រកើតឡើងវិញត្រូវបានរក្សាទុក';

  @override
  String get recurringUpdatedSnackbar =>
      'វិក្កយបត្រកើតឡើងវិញត្រូវបានធ្វើបច្ចុប្បន្នភាព';

  @override
  String get recurringDeleteTitle => 'លុបវិក្កយបត្រកើតឡើងវិញ?';

  @override
  String recurringDeleteMessage(String title) {
    return 'លុប «$title»? វិក្កយបត្រដែលមានស្រាប់នឹងមិនត្រូវបានលុបទេ។';
  }

  @override
  String get recurringTitleLabel => 'ចំណងជើង';

  @override
  String get recurringTitleHint => 'ឧ. ថ្លៃសេវាប្រចាំខែ';

  @override
  String get recurringClientLabel => 'អតិថិជន';

  @override
  String get recurringFrequencyLabel => 'ភាពញឹកញាប់';

  @override
  String get recurringFrequencyWeekly => 'ប្រចាំសប្តាហ៍';

  @override
  String get recurringFrequencyBiweekly => 'ពីរសប្តាហ៍ម្តង';

  @override
  String get recurringFrequencyMonthly => 'ប្រចាំខែ';

  @override
  String get recurringFrequencyQuarterly => 'ប្រចាំត្រីមាស';

  @override
  String get recurringFrequencyYearly => 'ប្រចាំឆ្នាំ';

  @override
  String get recurringNextRun => 'ការរត់បន្ទាប់';

  @override
  String get recurringDueDays => 'កំណត់ក្នុង';

  @override
  String get recurringDays => 'ថ្ងៃ';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count សកម្ម',
      one: '$count សកម្ម',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'របាយការណ៍';

  @override
  String get reportsSubtitle => 'ការវិភាគអាជីវកម្ម';

  @override
  String get reportsEmpty => 'បង្កើតវិក្កយបត្រដើម្បីមើលរបាយការណ៍';

  @override
  String get reportsCollected => 'បានទូទាត់';

  @override
  String get reportsOutstanding => 'បំណុលជំពាក់';

  @override
  String get reportsMonthlyRevenue => 'ចំណូលប្រចាំខែ';

  @override
  String get reportsLast6Months => '៦ ខែចុងក្រោយ';

  @override
  String get reportsByStatus => 'តាមស្ថានភាព';

  @override
  String get reportsTopClients => 'អតិថិជនកំពូល';

  @override
  String get paymentLinkTitle => 'តំណទូទាត់';

  @override
  String get paymentLinkNotSet => 'គ្មានតំណទូទាត់ដែលកំណត់ក្នុងការកំណត់ទេ';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'តំណទូទាត់របស់អ្នកត្រូវបានបញ្ចូលក្នុង PDF វិក្កយបត្រ ហើយអាចចម្លងបានពីម៉ឺនុយវិក្កយបត្រ។';

  @override
  String get paymentLinkSaved => 'តំណទូទាត់បានរក្សាទុក';

  @override
  String get settingsPaymentLinkNotSet => 'មិនបានកំណត់';

  @override
  String get invoiceDetailCopyPaymentLink => 'ចម្លងតំណទូទាត់';

  @override
  String get paymentLinkCopied => 'បានចម្លងតំណទូទាត់';

  @override
  String get pdfPayOnline => 'ទូទាត់តាមអ៊ីនធឺណិត';

  @override
  String get exportXml => 'នាំចេញ XML';

  @override
  String get exportXmlFailed => 'មិនអាចនាំចេញ XML បានទេ';
}
