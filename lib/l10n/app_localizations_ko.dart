// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => '2분 만에 전문적인 청구서 작성';

  @override
  String get bottomNavDashboard => '대시보드';

  @override
  String get bottomNavInvoices => '청구서';

  @override
  String get bottomNavClients => '고객';

  @override
  String get bottomNavSettings => '설정';

  @override
  String get commonCancel => '취소';

  @override
  String get commonDelete => '삭제';

  @override
  String get commonSave => '저장';

  @override
  String get commonSearch => '검색';

  @override
  String get commonBack => '뒤로';

  @override
  String get commonContinue => '계속';

  @override
  String get commonAdd => '추가';

  @override
  String get commonEdit => '편집';

  @override
  String get commonCreate => '생성';

  @override
  String get commonClear => '지우기';

  @override
  String get commonView => '보기';

  @override
  String get commonShare => '공유';

  @override
  String get commonExportPdf => 'PDF 내보내기';

  @override
  String get commonSharePdf => 'PDF 공유';

  @override
  String get commonSaveChanges => '변경사항 저장';

  @override
  String get commonRequired => '필수';

  @override
  String get commonInvalid => '잘못됨';

  @override
  String get commonSendLink => '링크 보내기';

  @override
  String get commonGeneratingPdf => 'PDF 생성 중...';

  @override
  String get dashboardGreetingMorning => '좋은 아침입니다';

  @override
  String get dashboardGreetingAfternoon => '안녕하세요';

  @override
  String get dashboardGreetingEvening => '좋은 저녁입니다';

  @override
  String get dashboardSubtitle => '비즈니스 현황입니다';

  @override
  String get dashboardOutstanding => '미수금';

  @override
  String get dashboardOverdue => '연체';

  @override
  String get dashboardThisMonth => '이번 달';

  @override
  String get dashboardInvoices => '건의 청구서';

  @override
  String dashboardPaidCount(Object count) {
    return '$count건 완납';
  }

  @override
  String get dashboardRecentInvoices => '최근 청구서';

  @override
  String get dashboardSeeAll => '모두 보기';

  @override
  String get dashboardNotifications => '알림';

  @override
  String get dashboardNotificationsHint =>
      '연체 및 대기 중인 청구서를 정기적으로 확인하여 현금 흐름을 파악하세요.';

  @override
  String get dashboardNewInvoice => '새 청구서';

  @override
  String get dashboardNoInvoicesYet => '아직 청구서가 없습니다';

  @override
  String get dashboardNoInvoicesSubtitle => '2분 안에 첫 번째 전문 청구서를 작성해 보세요';

  @override
  String get dashboardCreateInvoice => '청구서 만들기';

  @override
  String get dashboardMarkPaid => '결제 완료로 표시';

  @override
  String get dashboardDuePrefix => '마감 ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days일 연체';
  }

  @override
  String get deleteInvoiceTitle => '청구서를 삭제하시겠습니까?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return '$invoiceNumber을(를) 삭제하시겠습니까? 이 작업은 되돌릴 수 없습니다.';
  }

  @override
  String get loginHeading => '다시 오신 것을 환영합니다';

  @override
  String get loginSubtitle => 'InvoiceFlow 계정에 로그인하세요';

  @override
  String get loginEmailLabel => '이메일 주소';

  @override
  String get loginEmailHint => 'you@example.com';

  @override
  String get loginEmailRequired => '이메일이 필요합니다';

  @override
  String get loginEmailInvalid => '유효한 이메일을 입력하세요';

  @override
  String get loginPasswordLabel => '비밀번호';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => '비밀번호가 필요합니다';

  @override
  String get loginPasswordMinLength => '비밀번호는 6자 이상이어야 합니다';

  @override
  String get loginForgotPassword => '비밀번호를 잊으셨나요?';

  @override
  String get loginSignIn => '로그인';

  @override
  String get loginOrContinueWith => '또는 다음으로 계속';

  @override
  String get loginContinueWithGoogle => 'Google로 계속';

  @override
  String get loginNoAccount => '계정이 없으신가요? ';

  @override
  String get loginSignUp => '회원가입';

  @override
  String get loginResetPasswordTitle => '비밀번호 재설정';

  @override
  String get loginResetPasswordMessage => '이메일을 입력하면 재설정 링크를 보내 드립니다.';

  @override
  String get loginResetPasswordHint => 'you@example.com';

  @override
  String get loginResetLinkSent => '재설정 링크를 보냈습니다. 이메일을 확인하세요.';

  @override
  String get loginResetLinkFailed => '재설정 링크를 보내지 못했습니다.';

  @override
  String get registerHeading => '계정 만들기';

  @override
  String get registerSubtitle => '지금 바로 전문 청구서를 보내 보세요';

  @override
  String get registerNameLabel => '이름';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => '이름이 필요합니다';

  @override
  String get registerNameMinLength => '이름은 2자 이상이어야 합니다';

  @override
  String get registerEmailLabel => '이메일 주소';

  @override
  String get registerEmailHint => 'you@example.com';

  @override
  String get registerEmailRequired => '이메일이 필요합니다';

  @override
  String get registerEmailInvalid => '유효한 이메일을 입력하세요';

  @override
  String get registerPasswordLabel => '비밀번호';

  @override
  String get registerPasswordHint => '6자 이상';

  @override
  String get registerPasswordRequired => '비밀번호가 필요합니다';

  @override
  String get registerPasswordMinLength => '비밀번호는 6자 이상이어야 합니다';

  @override
  String get registerConfirmPasswordLabel => '비밀번호 확인';

  @override
  String get registerConfirmPasswordHint => '비밀번호를 다시 입력하세요';

  @override
  String get registerConfirmPasswordRequired => '비밀번호를 확인해 주세요';

  @override
  String get registerPasswordsDoNotMatch => '비밀번호가 일치하지 않습니다';

  @override
  String get registerCreateAccount => '계정 만들기';

  @override
  String get registerHaveAccount => '이미 계정이 있으신가요? ';

  @override
  String get registerSignIn => '로그인';

  @override
  String get authTermsOfService => '서비스 약관';

  @override
  String get authPrivacyPolicy => '개인정보 처리방침';

  @override
  String get authAgreeRequired => '계속하려면 서비스 약관과 개인정보 처리방침에 동의해 주세요';

  @override
  String get loginAgreePrefix => '계속하면 당사의 ';

  @override
  String get registerAgreePrefix => '나는 ';

  @override
  String get authAgreeAnd => ' 및 ';

  @override
  String get authTermsSheet =>
      '이 서비스 약관은 InvoiceFlow 사용을 규율합니다. 앱에 접속하거나 사용함으로써 귀하는 이 약관에 구속되는 데 동의하게 됩니다.\n\n1. 귀하는 귀하가 만든 인보이스, 견적서 및 기타 데이터의 정확성에 대한 책임이 있습니다.\n2. 이 앱은 명시적이든 묵시적이든 어떠한 종류의 보증도 없이 \"있는 그대로\" 제공됩니다.\n3. 당사는 서비스 사용으로 발생하는 어떠한 손실에 대해서도 책임을 지지 않습니다.\n4. 귀하는 불법적이거나 금지된 목적으로 앱을 사용해서는 안 됩니다.\n5. 당사는 이 약관을 수시로 업데이트할 수 있습니다. 앱을 계속 사용하면 업데이트된 약관을 수락한 것으로 간주됩니다.';

  @override
  String get authPrivacySheet =>
      '귀하의 개인정보 보호는 우리에게 중요합니다.\n\n1. 데이터 저장: 귀하의 인보이스, 고객 및 설정은 기기에 로컬로 저장됩니다.\n2. 클라우드 동기화: 로그인하면 데이터가 귀하의 계정에 동기화되어 모든 기기에서 접근할 수 있습니다.\n3. 당사는 귀하의 개인정보를 절대 판매하거나 공유하지 않습니다.\n4. 분석: 앱 개선을 위해 익명화된 사용 데이터를 수집할 수 있습니다.\n5. 문의: 개인정보 관련 질문은 support@invoiceflow.app으로 연락해 주세요.';

  @override
  String get authErrorWeakPassword => '비밀번호가 너무 약합니다';

  @override
  String get authErrorEmailAlreadyInUse => '이미 존재하는 계정입니다';

  @override
  String get authErrorUserNotFound => '이 이메일로 가입된 사용자를 찾을 수 없습니다';

  @override
  String get authErrorWrongPassword => '비밀번호가 올바르지 않습니다';

  @override
  String get authErrorInvalidEmail => '잘못된 이메일 주소입니다';

  @override
  String get authErrorTooManyRequests => '시도 횟수가 너무 많습니다. 나중에 다시 시도하세요';

  @override
  String get authErrorDefault => '인증에 실패했습니다. 다시 시도하세요.';

  @override
  String get authErrorGoogleSignInFailed => 'Google 로그인에 실패했습니다.';

  @override
  String get invoiceListTitle => '청구서';

  @override
  String get invoiceListSearchHint => '청구서 검색...';

  @override
  String get invoiceListSortDate => '날짜순 정렬';

  @override
  String get invoiceListSortAmount => '금액순 정렬';

  @override
  String get invoiceListSortClient => '고객순 정렬';

  @override
  String get invoiceListTabAll => '전체';

  @override
  String get invoiceListTabPaid => '결제 완료';

  @override
  String get invoiceListTabPending => '대기 중';

  @override
  String get invoiceListTabOverdue => '연체';

  @override
  String get invoiceListTabDraft => '임시 보관';

  @override
  String get invoiceListEmpty => '청구서를 찾을 수 없습니다';

  @override
  String get invoiceCreateTitle => '새 청구서';

  @override
  String get invoiceEditTitle => '청구서 편집';

  @override
  String get invoiceSaveDraft => '임시 보관 저장';

  @override
  String get invoiceStepClient => '고객';

  @override
  String get invoiceStepItems => '품목';

  @override
  String get invoiceStepReview => '검토';

  @override
  String get invoiceSelectClient => '고객 선택';

  @override
  String get invoiceSelectClientSubtitle => '이 청구서의 수신자를 선택하세요';

  @override
  String get invoiceSearchClients => '고객 검색...';

  @override
  String get invoiceAddNewClient => '새 고객 추가';

  @override
  String get invoiceNoClientsFound => '고객을 찾을 수 없습니다';

  @override
  String get invoiceSelectClientEmptyHint => '청구서 작성을 시작하려면 첫 번째 고객을 만들어 주세요';

  @override
  String get invoiceAddLineItem => '항목 추가';

  @override
  String get invoiceItemDescription => '설명';

  @override
  String get invoiceItemDescriptionHint => '예: 웹 디자인';

  @override
  String get invoiceItemQuickAdd => '빠른 추가:';

  @override
  String get invoiceItemQty => '수량';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => '단가';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => '항목 추가';

  @override
  String get invoiceLineItems => '항목';

  @override
  String get invoiceLineItemsSubtitle => '서비스 또는 제품 추가';

  @override
  String get invoiceNoItems => '아직 항목이 없습니다. 첫 번째 항목을 추가하세요.';

  @override
  String get invoiceTaxRate => '세율 (%)';

  @override
  String get invoiceSubtotal => '소계';

  @override
  String invoiceTax(Object taxRate) {
    return '세금 ($taxRate%)';
  }

  @override
  String get invoiceTotal => '합계';

  @override
  String get invoiceReviewHeading => '검토 및 확정';

  @override
  String get invoiceReviewSubtitle => '날짜 설정, 메모, 로고 및 서명 추가';

  @override
  String get invoiceCompanyLogo => '회사 로고';

  @override
  String get invoiceAddLogo => '로고 추가';

  @override
  String get invoiceInvoiceDate => '청구 날짜';

  @override
  String get invoiceDueDate => '결제 기한';

  @override
  String get invoiceNotesLabel => '메모 (선택 사항)';

  @override
  String get invoiceNotesHint => '거래해 주셔서 감사합니다!';

  @override
  String get invoicePaymentTermsLabel => '결제 조건 (선택 사항)';

  @override
  String get invoicePaymentTermsHint => '30일 이내 결제';

  @override
  String get invoiceSignatureLabel => '서명';

  @override
  String get invoiceSignatureOverwrite => '기존 서명이 저장되어 있습니다. 위에 그려서 덮어쓰세요.';

  @override
  String get invoiceCreatedSnackbar => '청구서가 생성되었습니다!';

  @override
  String get invoiceUpdatedSnackbar => '청구서가 업데이트되었습니다!';

  @override
  String get invoiceDetailTitle => '청구서';

  @override
  String get invoiceDetailMarkAsPaid => '결제 완료로 표시';

  @override
  String get invoiceDetailTotalAmount => '총 금액';

  @override
  String get invoiceDetailIssued => '발행일';

  @override
  String get invoiceDetailDue => '결제 기한';

  @override
  String get invoiceDetailPaid => '결제 완료';

  @override
  String get invoiceDetailBillTo => '청구 대상';

  @override
  String get invoiceDetailItems => '항목';

  @override
  String get invoiceDetailNotes => '메모';

  @override
  String get invoiceDetailSignature => '서명';

  @override
  String get invoiceDetailMarkedPaidSnackbar => '청구서가 결제 완료로 표시되었습니다!';

  @override
  String get invoiceDetailPdfFailed => 'PDF 생성에 실패했습니다';

  @override
  String get clientListTitle => '고객';

  @override
  String get clientListSearchHint => '고객 검색...';

  @override
  String get clientListTotalClients => '총 고객';

  @override
  String get clientListTotalBilled => '총 청구 금액';

  @override
  String get clientListEmptySearch => '고객을 찾을 수 없습니다';

  @override
  String get clientListEmpty => '아직 고객이 없습니다';

  @override
  String get clientListEmptySubtitle => '청구서 작성을 시작하려면 첫 번째 고객을 추가하세요';

  @override
  String get clientListAddClient => '고객 추가';

  @override
  String get clientListTotalBilledLabel => '총 청구 금액';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count건의 청구서';
  }

  @override
  String get clientCreateTitle => '새 고객';

  @override
  String get clientEditTitle => '고객 편집';

  @override
  String get clientBasicInfo => '기본 정보';

  @override
  String get clientNameLabel => '이름 *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => '이름이 필요합니다';

  @override
  String get clientNameTooShort => '이름이 너무 짧습니다';

  @override
  String get clientEmailLabel => '이메일 주소 *';

  @override
  String get clientEmailHint => 'billing@company.com';

  @override
  String get clientEmailRequired => '이메일이 필요합니다';

  @override
  String get clientEmailInvalid => '유효한 이메일을 입력하세요';

  @override
  String get clientPhoneLabel => '전화번호';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => '주소';

  @override
  String get clientAddressLabel => '도로명 주소';

  @override
  String get clientAddressHint => '123 비즈니스 파크, 오피스 45';

  @override
  String get clientCityLabel => '도시 / 국가';

  @override
  String get clientCityHint => '두바이, 아랍에미리트';

  @override
  String get clientBillingDefaults => '청구 기본값';

  @override
  String get clientDefaultCurrency => '기본 통화';

  @override
  String get clientDefaultTaxRate => '기본 세율 (VAT/GST)';

  @override
  String get clientVatLabel => 'VAT / 세금 등록 번호';

  @override
  String get clientVatHint => '123456789012345 (선택 사항)';

  @override
  String get clientUpdateButton => '고객 업데이트';

  @override
  String get clientAddButton => '고객 추가';

  @override
  String get clientUpdatedSnackbar => '고객이 업데이트되었습니다!';

  @override
  String get clientAddedSnackbar => '고객이 추가되었습니다!';

  @override
  String get clientDetailInvoices => '청구서';

  @override
  String get clientDetailTotalBilled => '총 청구 금액';

  @override
  String get clientDetailOutstanding => '미수금';

  @override
  String get clientDetailEdit => '편집';

  @override
  String get clientDetailNewInvoice => '새 청구서';

  @override
  String get clientDetailEmailClient => '고객에게 이메일 보내기';

  @override
  String get clientDetailClientDetails => '고객 정보';

  @override
  String get clientDetailEmail => '이메일';

  @override
  String get clientDetailPhone => '전화';

  @override
  String get clientDetailAddress => '주소';

  @override
  String get clientDetailCity => '도시';

  @override
  String get clientDetailCurrency => '통화';

  @override
  String get clientDetailTaxRate => '세율';

  @override
  String get clientDetailVatNumber => 'VAT 번호';

  @override
  String get clientDetailInvoiceHistory => '청구 기록';

  @override
  String get clientDetailNoInvoices => '이 고객의 청구서가 아직 없습니다';

  @override
  String get deleteClientTitle => '고객을 삭제하시겠습니까?';

  @override
  String deleteClientMessage(Object clientName) {
    return '$clientName을(를) 삭제하시겠습니까? 이 작업은 되돌릴 수 없습니다.';
  }

  @override
  String get settingsTitle => '설정';

  @override
  String get settingsYourName => '이름';

  @override
  String get settingsBackupTitle => '청구서 백업';

  @override
  String get settingsBackupDescription => '로그인하여 데이터를 안전하게 동기화하고 어디서나 접근하세요.';

  @override
  String get settingsSignInRegister => '로그인 또는 회원가입';

  @override
  String get settingsProUpsell =>
      '무제한 청구서, 클라우드 동기화, 워터마크 제거를 위해 Pro로 업그레이드하세요.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return '무료 플랜의 청구서 한도인 $limit건에 도달했습니다. 무제한 청구서와 클라우드 동기화를 위해 Pro로 업그레이드하세요.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return '무료 플랜의 고객 한도인 $limit명에 도달했습니다. 무제한 고객과 클라우드 동기화를 위해 Pro로 업그레이드하세요.';
  }

  @override
  String get settingsUpgradePro => '업그레이드';

  @override
  String get settingsBusinessSection => '비즈니스 설정';

  @override
  String get settingsBusinessDetails => '비즈니스 정보';

  @override
  String get settingsBusinessDetailsSubtitle => '비즈니스 이름 설정';

  @override
  String get settingsInvoicePrefix => '청구서 접두사';

  @override
  String get settingsDefaultCurrency => '기본 통화';

  @override
  String get settingsAppSection => '앱 설정';

  @override
  String get settingsDarkMode => '다크 모드';

  @override
  String get settingsDailyNotification => '일일 알림';

  @override
  String get settingsDailyNotificationNotSet => '설정 안 됨';

  @override
  String get settingsLanguage => '언어';

  @override
  String get settingsLanguageLabel => '한국어';

  @override
  String get languageEnglish => '영어';

  @override
  String get languageArabic => '아랍어';

  @override
  String get languageFrench => '프랑스어';

  @override
  String get languageSpanish => '스페인어';

  @override
  String get languageUrdu => '우르두어';

  @override
  String get languageChinese => '중국어';

  @override
  String get settingsAboutSection => '앱 정보';

  @override
  String get settingsRateApp => '앱 평가하기';

  @override
  String get settingsHelpSupport => '도움말 및 지원';

  @override
  String get settingsPrivacyPolicy => '개인정보 보호정책';

  @override
  String get settingsHelpSupportSheet =>
      '도움이 필요하신가요? support@invoiceflow.app로 문의해 주세요. 24시간 이내에 답변드리겠습니다.';

  @override
  String get settingsPrivacySheet =>
      '귀하의 데이터는 기기에 로컬로 저장됩니다. 귀하의 개인 정보를 판매하거나 공유하지 않습니다.';

  @override
  String get settingsVersion => '버전';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => '로그아웃';

  @override
  String get settingsEditProfile => '프로필 편집';

  @override
  String get settingsProfileNameLabel => '이름';

  @override
  String get settingsProfileNameHint => '이름';

  @override
  String get settingsBusinessNameLabel => '비즈니스 이름';

  @override
  String get settingsBusinessNameHint => '귀하의 회사';

  @override
  String get settingsBusinessEmailLabel => '비즈니스 이메일';

  @override
  String get settingsBusinessEmailHint => 'billing@company.com';

  @override
  String get settingsPhoneLabel => '전화';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => '주소';

  @override
  String get settingsAddressHint => '두바이, 아랍에미리트';

  @override
  String get settingsBusinessDetailsSaved => '비즈니스 정보가 저장되었습니다!';

  @override
  String get settingsInvoicePrefixTitle => '청구서 번호 접두사';

  @override
  String get settingsInvoicePrefixHint => '예: INV-, #, Bill-';

  @override
  String get settingsPrefixSaved => '청구서 접두사가 저장되었습니다';

  @override
  String get settingsNotificationScheduled => '일일 알림이 성공적으로 예약되었습니다!';

  @override
  String get settingsSignOutTitle => '로그아웃하시겠습니까?';

  @override
  String get settingsSignOutMessage => 'InvoiceFlow에서 로그아웃하시겠습니까?';

  @override
  String get settingsSignedOut => '로그아웃되었습니다.';

  @override
  String get statusPaid => '결제 완료';

  @override
  String get statusOverdue => '연체';

  @override
  String get statusPending => '대기 중';

  @override
  String get statusDraft => '임시 보관';

  @override
  String get statusCancelled => '취소됨';

  @override
  String get notificationChannelName => '일일 알림';

  @override
  String get notificationChannelDescription => '매일 청구서를 확인하도록 알려 드립니다';

  @override
  String get notificationTitle => '청구서 알림';

  @override
  String get notificationBody => '최근 청구서를 확인하고 대기 중인 결제를 추적할 시간입니다.';

  @override
  String get pdfInvoice => '청구서';

  @override
  String get pdfInvoiceNumber => '청구서 번호:';

  @override
  String get pdfDate => '날짜:';

  @override
  String get pdfDueDate => '결제 기한:';

  @override
  String get pdfBillTo => '청구 대상:';

  @override
  String get pdfDescription => '설명';

  @override
  String get pdfQty => '수량';

  @override
  String get pdfRate => '단가';

  @override
  String get pdfAmount => '금액';

  @override
  String get pdfSubtotal => '소계:';

  @override
  String pdfTax(Object taxRate) {
    return '세금 ($taxRate%):';
  }

  @override
  String get pdfTotal => '합계:';

  @override
  String get pdfSignature => '서명:';

  @override
  String get pdfNotes => '메모:';

  @override
  String get pdfPaymentTerms => '결제 조건:';

  @override
  String get pdfThankYou => '거래해 주셔서 감사합니다!';

  @override
  String get quickAddWebDesign => '웹 디자인';

  @override
  String get quickAddDevelopment => '개발';

  @override
  String get quickAddConsulting => '컨설팅';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => '콘텐츠 작성';

  @override
  String get paywallTitle => 'InvoiceFlow Pro 잠금 해제';

  @override
  String get paywallSubtitle => '무제한으로 어디서나 동기화하세요. 언제든지 취소 가능.';

  @override
  String get paywallFeatureUnlimited => '무제한 청구서 및 고객';

  @override
  String get paywallFeatureSync => '기기 간 클라우드 동기화';

  @override
  String get paywallFeatureNoWatermark => '워터마크 없음, 영구적으로';

  @override
  String get paywallMonthly => '월간';

  @override
  String get paywallMonthlySub => '매월 결제';

  @override
  String get paywallYearly => '연간';

  @override
  String get paywallYearlySub => '최고의 가치 — 2개월 무료';

  @override
  String get paywallRestore => '구매 복원';

  @override
  String get paywallTerms => '구독은 자동 갱신됩니다. 앱 스토어 설정에서 관리하세요.';

  @override
  String get purchaseSuccessTitle => 'Pro 회원이 되셨습니다!';

  @override
  String get purchaseSuccessSubtitle =>
      '무제한 청구서, 클라우드 동기화, 워터마크 제거가 활성화되었습니다. 감사합니다!';

  @override
  String get purchaseSuccessContinue => '계속';

  @override
  String get paywallLoading => '요금제 로드 중…';

  @override
  String get paywallLoadError => '요금제를 불러올 수 없습니다. 연결을 확인하고 다시 시도해 주세요.';

  @override
  String get paywallNoOffering => '현재 이용 가능한 요금제가 없습니다.';

  @override
  String get purchaseRestored => '구매가 성공적으로 복원되었습니다';

  @override
  String get purchaseErrorGeneric => '구매에 실패했습니다. 다시 시도해 주세요.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive => 'Pro 활성화 — 워터마크 없는 무제한 인보이스 및 고객';

  @override
  String get settingsFreePlan => '무료 요금제';

  @override
  String get settingsFreeHint => '무제한 인보이스, 클라우드 동기화 등을 위해 업그레이드하세요';

  @override
  String get settingsUpgradeToPro => 'Pro로 업그레이드';

  @override
  String get settingsManageSubscription => '구독 관리';

  @override
  String get customerCenterFailed => '구독 관리를 열 수 없습니다.';

  @override
  String get onboardingSkip => '건너뛰기';

  @override
  String get onboardingNext => '다음';

  @override
  String get onboardingGetStarted => '시작하기';

  @override
  String get onboardingWelcomeTitle => '2분 만에 청구서 작성';

  @override
  String get onboardingWelcomeBody => '고객을 위한 전문적인 PDF 청구서를 빠르고 아름답게 만드세요.';

  @override
  String get onboardingSyncTitle => '어디서나 동기화';

  @override
  String get onboardingSyncBody => '로그인하여 데이터를 클라우드에 안전하게 백업하고 어떤 기기에서든 접근하세요.';

  @override
  String get onboardingProTitle => 'Pro로 무제한 사용';

  @override
  String get onboardingProBody =>
      'InvoiceFlow Pro로 무제한 청구서, 클라우드 동기화를 이용하고 워터마크를 제거하세요.';

  @override
  String get settingsAccentColor => '강조 색상';

  @override
  String get settingsAccentColorHint => '원하는 색상으로 앱을 개인화하세요.';

  @override
  String get settingsCountry => '국가';

  @override
  String get settingsTaxId => '세금 등록 번호';

  @override
  String get settingsTaxIdNotSet => '설정 안 됨';

  @override
  String get settingsTaxIdHint => '예: 123456789012345';

  @override
  String get settingsTaxIdSaved => '세금 ID가 저장되었습니다';

  @override
  String get catalogTitle => '제품 및 서비스';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count개',
      one: '$count개',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => '아직 제품이 없습니다';

  @override
  String get catalogEmptySubtitle =>
      '재사용 가능한 제품과 서비스를 저장하면 청구서에 더 빠르게 추가할 수 있습니다.';

  @override
  String get catalogFromSaved => '카탈로그에서';

  @override
  String get catalogSaveToCatalog => '재사용을 위해 카탈로그에 저장';

  @override
  String get catalogAddSnackbar => '카탈로그에 추가되었습니다';

  @override
  String get catalogDeleteTitle => '항목을 삭제하시겠습니까?';

  @override
  String catalogDeleteMessage(String description) {
    return '\"$description\"을(를) 삭제하시겠습니까? 이 작업은 되돌릴 수 없습니다.';
  }

  @override
  String get commonDone => '완료';

  @override
  String get estimateListTitle => '견적서';

  @override
  String get estimateListSearchHint => '견적서 검색…';

  @override
  String get estimateListEmpty => '아직 견적서가 없습니다';

  @override
  String get estimateListTabAll => '전체';

  @override
  String get estimateListTabDraft => '임시 보관';

  @override
  String get estimateListTabSent => '발송됨';

  @override
  String get estimateListTabAccepted => '수락됨';

  @override
  String get estimateListTabExpired => '만료됨';

  @override
  String get estimateCreateTitle => '새 견적서';

  @override
  String get estimateEditTitle => '견적서 편집';

  @override
  String get estimateCreatedSnackbar => '견적서가 저장되었습니다';

  @override
  String get estimateUpdatedSnackbar => '견적서가 업데이트되었습니다';

  @override
  String get estimateIssueDate => '발행일';

  @override
  String get estimateExpiryDate => '만료일';

  @override
  String get estimateExpiresPrefix => '만료 ';

  @override
  String get estimateConvertToInvoice => '청구서로 변환';

  @override
  String get estimateConvertedSnackbar => '견적서가 청구서로 변환되었습니다';

  @override
  String get estimateConvertFailed => '견적서를 변환할 수 없습니다';

  @override
  String get estimateMarkSent => '발송됨으로 표시';

  @override
  String get estimateMarkAccepted => '수락됨으로 표시';

  @override
  String get estimateMarkDeclined => '거절됨으로 표시';

  @override
  String get estimateConvertedTitle => '변환됨';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return '청구서 $invoiceId(으)로 변환되었습니다';
  }

  @override
  String get estimateDetailTotal => '견적서 합계';

  @override
  String get estimateStatusSent => '발송됨';

  @override
  String get estimateStatusAccepted => '수락됨';

  @override
  String get estimateStatusDeclined => '거절됨';

  @override
  String get estimateStatusExpired => '만료됨';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count건',
      one: '$count건',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => '견적서를 삭제하시겠습니까?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return '\"$estimateNumber\"을(를) 삭제하시겠습니까? 이 작업은 되돌릴 수 없습니다.';
  }

  @override
  String get estimatePdfFailed => 'PDF를 생성할 수 없습니다';

  @override
  String get pdfEstimate => '견적서';

  @override
  String get pdfEstimateNumber => '견적서 번호:';

  @override
  String get pdfValidUntil => '유효 기간:';

  @override
  String get invoiceDetailPaymentTerms => '결제 조건';

  @override
  String get recurringListTitle => '정기 청구서';

  @override
  String get recurringListEmpty => '아직 정기 청구서가 없습니다';

  @override
  String get recurringListEmptySubtitle => '정기 고객과 서비스에 대한 자동 청구서를 설정하세요.';

  @override
  String get recurringCreateTitle => '새 정기 청구서';

  @override
  String get recurringEditTitle => '정기 청구서 편집';

  @override
  String get recurringCreatedSnackbar => '정기 청구서가 저장되었습니다';

  @override
  String get recurringUpdatedSnackbar => '정기 청구서가 업데이트되었습니다';

  @override
  String get recurringDeleteTitle => '정기 청구서를 삭제하시겠습니까?';

  @override
  String recurringDeleteMessage(String title) {
    return '\"$title\"을(를) 삭제하시겠습니까? 기존 청구서는 삭제되지 않습니다.';
  }

  @override
  String get recurringTitleLabel => '제목';

  @override
  String get recurringTitleHint => '예: 월간 리테이너';

  @override
  String get recurringClientLabel => '고객';

  @override
  String get recurringFrequencyLabel => '빈도';

  @override
  String get recurringFrequencyWeekly => '매주';

  @override
  String get recurringFrequencyBiweekly => '격주';

  @override
  String get recurringFrequencyMonthly => '매월';

  @override
  String get recurringFrequencyQuarterly => '분기별';

  @override
  String get recurringFrequencyYearly => '매년';

  @override
  String get recurringNextRun => '다음 실행';

  @override
  String get recurringDueDays => '마감까지';

  @override
  String get recurringDays => '일';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count건',
      one: '$count건',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => '보고서';

  @override
  String get reportsSubtitle => '비즈니스 분석';

  @override
  String get reportsEmpty => '보고서를 보려면 청구서를 만드세요';

  @override
  String get reportsCollected => '수금액';

  @override
  String get reportsOutstanding => '미수금';

  @override
  String get reportsMonthlyRevenue => '월별 매출';

  @override
  String get reportsLast6Months => '최근 6개월';

  @override
  String get reportsByStatus => '상태별';

  @override
  String get reportsTopClients => '주요 고객';

  @override
  String get paymentLinkTitle => '결제 링크';

  @override
  String get paymentLinkNotSet => '설정에 결제 링크가 없습니다';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp => '결제 링크는 청구서 PDF에 포함되며 청구서 메뉴에서 복사할 수 있습니다.';

  @override
  String get paymentLinkSaved => '결제 링크가 저장되었습니다';

  @override
  String get settingsPaymentLinkNotSet => '설정 안 됨';

  @override
  String get invoiceDetailCopyPaymentLink => '결제 링크 복사';

  @override
  String get paymentLinkCopied => '결제 링크가 복사되었습니다';

  @override
  String get pdfPayOnline => '온라인 결제';

  @override
  String get exportXml => 'XML 내보내기';

  @override
  String get exportXmlFailed => 'XML을 내보낼 수 없습니다';
}
