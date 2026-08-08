// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Hóa đơn chuyên nghiệp trong 2 phút';

  @override
  String get bottomNavDashboard => 'Trang tổng quan';

  @override
  String get bottomNavInvoices => 'Hóa đơn';

  @override
  String get bottomNavClients => 'Khách hàng';

  @override
  String get bottomNavSettings => 'Cài đặt';

  @override
  String get commonCancel => 'Hủy';

  @override
  String get commonDelete => 'Xóa';

  @override
  String get commonSave => 'Lưu';

  @override
  String get commonSearch => 'Tìm kiếm';

  @override
  String get commonBack => 'Quay lại';

  @override
  String get commonContinue => 'Tiếp tục';

  @override
  String get commonAdd => 'Thêm';

  @override
  String get commonEdit => 'Chỉnh sửa';

  @override
  String get commonCreate => 'Tạo';

  @override
  String get commonClear => 'Xóa';

  @override
  String get commonView => 'Xem';

  @override
  String get commonShare => 'Chia sẻ';

  @override
  String get commonExportPdf => 'Xuất PDF';

  @override
  String get commonSharePdf => 'Chia sẻ PDF';

  @override
  String get commonSaveChanges => 'Lưu thay đổi';

  @override
  String get commonRequired => 'Bắt buộc';

  @override
  String get commonInvalid => 'Không hợp lệ';

  @override
  String get commonSendLink => 'Gửi liên kết';

  @override
  String get commonGeneratingPdf => 'Đang tạo PDF...';

  @override
  String get dashboardGreetingMorning => 'Chào buổi sáng';

  @override
  String get dashboardGreetingAfternoon => 'Chào buổi chiều';

  @override
  String get dashboardGreetingEvening => 'Chào buổi tối';

  @override
  String get dashboardSubtitle => 'Đây là tổng quan kinh doanh của bạn';

  @override
  String get dashboardOutstanding => 'Chưa thanh toán';

  @override
  String get dashboardOverdue => 'Quá hạn';

  @override
  String get dashboardThisMonth => 'Tháng này';

  @override
  String get dashboardInvoices => 'hóa đơn';

  @override
  String dashboardPaidCount(Object count) {
    return '$count đã thanh toán';
  }

  @override
  String get dashboardRecentInvoices => 'Hóa đơn gần đây';

  @override
  String get dashboardSeeAll => 'Xem tất cả';

  @override
  String get dashboardNotifications => 'Thông báo';

  @override
  String get dashboardNotificationsHint =>
      'Theo dõi dòng tiền bằng cách thường xuyên kiểm tra các hóa đơn quá hạn và đang chờ xử lý.';

  @override
  String get dashboardNewInvoice => 'Hóa đơn mới';

  @override
  String get dashboardNoInvoicesYet => 'Chưa có hóa đơn nào';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Tạo hóa đơn chuyên nghiệp đầu tiên của bạn trong vòng chưa đầy 2 phút';

  @override
  String get dashboardCreateInvoice => 'Tạo hóa đơn';

  @override
  String get dashboardMarkPaid => 'Đánh dấu đã thanh toán';

  @override
  String get dashboardDuePrefix => 'Đến hạn ';

  @override
  String dashboardDaysOverdue(Object days) {
    return 'Quá hạn $days ngày';
  }

  @override
  String get deleteInvoiceTitle => 'Xóa hóa đơn?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'Xóa $invoiceNumber? Hành động này không thể hoàn tác.';
  }

  @override
  String get loginHeading => 'Chào mừng bạn quay lại';

  @override
  String get loginSubtitle => 'Đăng nhập vào tài khoản InvoiceFlow của bạn';

  @override
  String get loginEmailLabel => 'Địa chỉ email';

  @override
  String get loginEmailHint => 'you@example.com';

  @override
  String get loginEmailRequired => 'Vui lòng nhập email';

  @override
  String get loginEmailInvalid => 'Vui lòng nhập email hợp lệ';

  @override
  String get loginPasswordLabel => 'Mật khẩu';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'Vui lòng nhập mật khẩu';

  @override
  String get loginPasswordMinLength => 'Mật khẩu phải có ít nhất 6 ký tự';

  @override
  String get loginForgotPassword => 'Quên mật khẩu?';

  @override
  String get loginSignIn => 'Đăng nhập';

  @override
  String get loginOrContinueWith => 'hoặc tiếp tục với';

  @override
  String get loginContinueWithGoogle => 'Tiếp tục với Google';

  @override
  String get loginNoAccount => 'Chưa có tài khoản? ';

  @override
  String get loginSignUp => 'Đăng ký';

  @override
  String get loginResetPasswordTitle => 'Đặt lại mật khẩu';

  @override
  String get loginResetPasswordMessage =>
      'Nhập email của bạn và chúng tôi sẽ gửi liên kết đặt lại.';

  @override
  String get loginResetPasswordHint => 'you@example.com';

  @override
  String get loginResetLinkSent =>
      'Đã gửi liên kết đặt lại! Kiểm tra email của bạn.';

  @override
  String get loginResetLinkFailed => 'Gửi liên kết đặt lại thất bại.';

  @override
  String get registerHeading => 'Tạo tài khoản';

  @override
  String get registerSubtitle =>
      'Bắt đầu gửi hóa đơn chuyên nghiệp ngay hôm nay';

  @override
  String get registerNameLabel => 'Họ và tên';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => 'Vui lòng nhập tên';

  @override
  String get registerNameMinLength => 'Tên phải có ít nhất 2 ký tự';

  @override
  String get registerEmailLabel => 'Địa chỉ email';

  @override
  String get registerEmailHint => 'you@example.com';

  @override
  String get registerEmailRequired => 'Vui lòng nhập email';

  @override
  String get registerEmailInvalid => 'Vui lòng nhập email hợp lệ';

  @override
  String get registerPasswordLabel => 'Mật khẩu';

  @override
  String get registerPasswordHint => 'Ít nhất 6 ký tự';

  @override
  String get registerPasswordRequired => 'Vui lòng nhập mật khẩu';

  @override
  String get registerPasswordMinLength => 'Mật khẩu phải có ít nhất 6 ký tự';

  @override
  String get registerConfirmPasswordLabel => 'Xác nhận mật khẩu';

  @override
  String get registerConfirmPasswordHint => 'Nhập lại mật khẩu của bạn';

  @override
  String get registerConfirmPasswordRequired => 'Vui lòng xác nhận mật khẩu';

  @override
  String get registerPasswordsDoNotMatch => 'Mật khẩu không khớp';

  @override
  String get registerCreateAccount => 'Tạo tài khoản';

  @override
  String get registerHaveAccount => 'Đã có tài khoản? ';

  @override
  String get registerSignIn => 'Đăng nhập';

  @override
  String get authTermsOfService => 'Điều khoản dịch vụ';

  @override
  String get authPrivacyPolicy => 'Chính sách bảo mật';

  @override
  String get authAgreeRequired =>
      'Vui lòng đồng ý với Điều khoản dịch vụ và Chính sách bảo mật để tiếp tục';

  @override
  String get loginAgreePrefix => 'Bằng việc tiếp tục, bạn đồng ý với ';

  @override
  String get registerAgreePrefix => 'Tôi đồng ý với ';

  @override
  String get authAgreeAnd => ' và ';

  @override
  String get authTermsSheet =>
      'Các Điều khoản dịch vụ này điều chỉnh việc bạn sử dụng InvoiceFlow. Bằng cách truy cập hoặc sử dụng ứng dụng, bạn đồng ý bị ràng buộc bởi các điều khoản này.\n\n1. Bạn chịu trách nhiệm về tính chính xác của hóa đơn, báo giá và dữ liệu khác mà bạn tạo ra.\n2. Ứng dụng được cung cấp \"nguyên trạng\" mà không có bất kỳ bảo đảm nào, dù rõ ràng hay ngụ ý.\n3. Chúng tôi không chịu trách nhiệm về mọi tổn thất phát sinh từ việc bạn sử dụng dịch vụ.\n4. Bạn không được sử dụng ứng dụng cho bất kỳ mục đích bất hợp pháp hoặc bị cấm nào.\n5. Chúng tôi có thể cập nhật các điều khoản này theo thời gian; việc tiếp tục sử dụng ứng dụng được coi là chấp nhận các điều khoản đã cập nhật.';

  @override
  String get authPrivacySheet =>
      'Quyền riêng tư của bạn rất quan trọng với chúng tôi.\n\n1. Lưu trữ dữ liệu: hóa đơn, khách hàng và cài đặt của bạn được lưu cục bộ trên thiết bị của bạn.\n2. Đồng bộ đám mây: nếu bạn đăng nhập, dữ liệu của bạn được đồng bộ với tài khoản để có thể truy cập trên mọi thiết bị của bạn.\n3. Chúng tôi không bao giờ bán hoặc chia sẻ thông tin cá nhân của bạn.\n4. Phân tích: chúng tôi có thể thu thập dữ liệu sử dụng đã ẩn danh để cải thiện ứng dụng.\n5. Liên hệ: nếu có bất kỳ câu hỏi nào về quyền riêng tư, hãy liên hệ support@invoiceflow.app.';

  @override
  String get authErrorWeakPassword => 'Mật khẩu quá yếu';

  @override
  String get authErrorEmailAlreadyInUse => 'Tài khoản đã tồn tại';

  @override
  String get authErrorUserNotFound => 'Không tìm thấy người dùng với email này';

  @override
  String get authErrorWrongPassword => 'Mật khẩu không chính xác';

  @override
  String get authErrorInvalidEmail => 'Địa chỉ email không hợp lệ';

  @override
  String get authErrorTooManyRequests =>
      'Quá nhiều lần thử. Vui lòng thử lại sau';

  @override
  String get authErrorDefault => 'Xác thực thất bại. Vui lòng thử lại.';

  @override
  String get authErrorGoogleSignInFailed => 'Đăng nhập Google thất bại.';

  @override
  String get invoiceListTitle => 'Hóa đơn';

  @override
  String get invoiceListSearchHint => 'Tìm kiếm hóa đơn...';

  @override
  String get invoiceListSortDate => 'Sắp xếp theo ngày';

  @override
  String get invoiceListSortAmount => 'Sắp xếp theo số tiền';

  @override
  String get invoiceListSortClient => 'Sắp xếp theo khách hàng';

  @override
  String get invoiceListTabAll => 'Tất cả';

  @override
  String get invoiceListTabPaid => 'Đã thanh toán';

  @override
  String get invoiceListTabPending => 'Đang chờ';

  @override
  String get invoiceListTabOverdue => 'Quá hạn';

  @override
  String get invoiceListTabDraft => 'Bản nháp';

  @override
  String get invoiceListEmpty => 'Không tìm thấy hóa đơn';

  @override
  String get invoiceCreateTitle => 'Hóa đơn mới';

  @override
  String get invoiceEditTitle => 'Chỉnh sửa hóa đơn';

  @override
  String get invoiceSaveDraft => 'Lưu bản nháp';

  @override
  String get invoiceStepClient => 'Khách hàng';

  @override
  String get invoiceStepItems => 'Hạng mục';

  @override
  String get invoiceStepReview => 'Xem lại';

  @override
  String get invoiceSelectClient => 'Chọn khách hàng';

  @override
  String get invoiceSelectClientSubtitle => 'Chọn người nhận hóa đơn này';

  @override
  String get invoiceSearchClients => 'Tìm kiếm khách hàng...';

  @override
  String get invoiceAddNewClient => 'Thêm khách hàng mới';

  @override
  String get invoiceNoClientsFound => 'Không tìm thấy khách hàng';

  @override
  String get invoiceSelectClientEmptyHint =>
      'Tạo khách hàng đầu tiên để bắt đầu lập hóa đơn';

  @override
  String get invoiceAddLineItem => 'Thêm hạng mục';

  @override
  String get invoiceItemDescription => 'Mô tả';

  @override
  String get invoiceItemDescriptionHint => 'ví dụ: Thiết kế web';

  @override
  String get invoiceItemQuickAdd => 'Thêm nhanh:';

  @override
  String get invoiceItemQty => 'Số lượng';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Đơn giá';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Thêm hạng mục';

  @override
  String get invoiceLineItems => 'Hạng mục';

  @override
  String get invoiceLineItemsSubtitle => 'Thêm dịch vụ hoặc sản phẩm';

  @override
  String get invoiceNoItems =>
      'Chưa có hạng mục nào. Thêm hạng mục đầu tiên của bạn.';

  @override
  String get invoiceTaxRate => 'Thuế suất (%)';

  @override
  String get invoiceSubtotal => 'Tạm tính';

  @override
  String invoiceTax(Object taxRate) {
    return 'Thuế ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'TỔNG CỘNG';

  @override
  String get invoiceReviewHeading => 'Xem lại & Hoàn tất';

  @override
  String get invoiceReviewSubtitle => 'Đặt ngày, thêm ghi chú, logo và chữ ký';

  @override
  String get invoiceCompanyLogo => 'Logo công ty';

  @override
  String get invoiceAddLogo => 'Thêm logo';

  @override
  String get invoiceInvoiceDate => 'Ngày hóa đơn';

  @override
  String get invoiceDueDate => 'Ngày đến hạn';

  @override
  String get invoiceNotesLabel => 'Ghi chú (Tùy chọn)';

  @override
  String get invoiceNotesHint => 'Cảm ơn bạn đã hợp tác!';

  @override
  String get invoicePaymentTermsLabel => 'Điều khoản thanh toán (Tùy chọn)';

  @override
  String get invoicePaymentTermsHint => 'Thanh toán trong vòng 30 ngày';

  @override
  String get invoiceSignatureLabel => 'Chữ ký';

  @override
  String get invoiceSignatureOverwrite =>
      'Chữ ký hiện có đã được lưu. Vẽ lên trên để thay thế.';

  @override
  String get invoiceCreatedSnackbar => 'Đã tạo hóa đơn!';

  @override
  String get invoiceUpdatedSnackbar => 'Đã cập nhật hóa đơn!';

  @override
  String get invoiceDetailTitle => 'HÓA ĐƠN';

  @override
  String get invoiceDetailMarkAsPaid => 'Đánh dấu đã thanh toán';

  @override
  String get invoiceDetailTotalAmount => 'Tổng số tiền';

  @override
  String get invoiceDetailIssued => 'Ngày phát hành';

  @override
  String get invoiceDetailDue => 'Đến hạn';

  @override
  String get invoiceDetailPaid => 'Đã thanh toán';

  @override
  String get invoiceDetailBillTo => 'Thanh toán cho';

  @override
  String get invoiceDetailItems => 'Hạng mục';

  @override
  String get invoiceDetailNotes => 'Ghi chú';

  @override
  String get invoiceDetailSignature => 'Chữ ký';

  @override
  String get invoiceDetailMarkedPaidSnackbar =>
      'Đã đánh dấu hóa đơn là đã thanh toán!';

  @override
  String get invoiceDetailPdfFailed => 'Tạo PDF thất bại';

  @override
  String get clientListTitle => 'Khách hàng';

  @override
  String get clientListSearchHint => 'Tìm kiếm khách hàng...';

  @override
  String get clientListTotalClients => 'Tổng số khách hàng';

  @override
  String get clientListTotalBilled => 'Tổng đã lập hóa đơn';

  @override
  String get clientListEmptySearch => 'Không tìm thấy khách hàng';

  @override
  String get clientListEmpty => 'Chưa có khách hàng nào';

  @override
  String get clientListEmptySubtitle =>
      'Thêm khách hàng đầu tiên để bắt đầu tạo hóa đơn';

  @override
  String get clientListAddClient => 'Thêm khách hàng';

  @override
  String get clientListTotalBilledLabel => 'tổng đã lập hóa đơn';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count hóa đơn';
  }

  @override
  String get clientCreateTitle => 'Khách hàng mới';

  @override
  String get clientEditTitle => 'Chỉnh sửa khách hàng';

  @override
  String get clientBasicInfo => 'Thông tin cơ bản';

  @override
  String get clientNameLabel => 'Họ và tên *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'Vui lòng nhập tên';

  @override
  String get clientNameTooShort => 'Tên quá ngắn';

  @override
  String get clientEmailLabel => 'Địa chỉ email *';

  @override
  String get clientEmailHint => 'billing@company.com';

  @override
  String get clientEmailRequired => 'Vui lòng nhập email';

  @override
  String get clientEmailInvalid => 'Vui lòng nhập email hợp lệ';

  @override
  String get clientPhoneLabel => 'Số điện thoại';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'Địa chỉ';

  @override
  String get clientAddressLabel => 'Địa chỉ đường phố';

  @override
  String get clientAddressHint => '123 Khu thương mại, Văn phòng 45';

  @override
  String get clientCityLabel => 'Thành phố / Quốc gia';

  @override
  String get clientCityHint => 'Dubai, Các Tiểu vương quốc Ả Rập Thống nhất';

  @override
  String get clientBillingDefaults => 'Mặc định thanh toán';

  @override
  String get clientDefaultCurrency => 'Đơn vị tiền tệ mặc định';

  @override
  String get clientDefaultTaxRate => 'Thuế suất mặc định (VAT/GST)';

  @override
  String get clientVatLabel => 'Mã số VAT / Thuế';

  @override
  String get clientVatHint => '123456789012345 (Tùy chọn)';

  @override
  String get clientUpdateButton => 'Cập nhật khách hàng';

  @override
  String get clientAddButton => 'Thêm khách hàng';

  @override
  String get clientUpdatedSnackbar => 'Đã cập nhật khách hàng!';

  @override
  String get clientAddedSnackbar => 'Đã thêm khách hàng!';

  @override
  String get clientDetailInvoices => 'Hóa đơn';

  @override
  String get clientDetailTotalBilled => 'Tổng đã lập hóa đơn';

  @override
  String get clientDetailOutstanding => 'Chưa thanh toán';

  @override
  String get clientDetailEdit => 'Chỉnh sửa';

  @override
  String get clientDetailNewInvoice => 'Hóa đơn mới';

  @override
  String get clientDetailEmailClient => 'Gửi email cho khách hàng';

  @override
  String get clientDetailClientDetails => 'Thông tin khách hàng';

  @override
  String get clientDetailEmail => 'Email';

  @override
  String get clientDetailPhone => 'Điện thoại';

  @override
  String get clientDetailAddress => 'Địa chỉ';

  @override
  String get clientDetailCity => 'Thành phố';

  @override
  String get clientDetailCurrency => 'Tiền tệ';

  @override
  String get clientDetailTaxRate => 'Thuế suất';

  @override
  String get clientDetailVatNumber => 'Mã số VAT';

  @override
  String get clientDetailInvoiceHistory => 'Lịch sử hóa đơn';

  @override
  String get clientDetailNoInvoices => 'Chưa có hóa đơn nào cho khách hàng này';

  @override
  String get deleteClientTitle => 'Xóa khách hàng?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'Xóa $clientName? Hành động này không thể hoàn tác.';
  }

  @override
  String get settingsTitle => 'Cài đặt';

  @override
  String get settingsYourName => 'Tên của bạn';

  @override
  String get settingsBackupTitle => 'Sao lưu hóa đơn của bạn';

  @override
  String get settingsBackupDescription =>
      'Đăng nhập để đồng bộ dữ liệu an toàn và truy cập từ mọi nơi.';

  @override
  String get settingsSignInRegister => 'Đăng nhập hoặc Đăng ký';

  @override
  String get settingsProUpsell =>
      'Nâng cấp lên Pro để có hóa đơn không giới hạn, đồng bộ đám mây và không có hình mờ.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'Bạn đã đạt giới hạn $limit hóa đơn của gói miễn phí. Nâng cấp lên Pro để có hóa đơn không giới hạn và đồng bộ đám mây.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'Bạn đã đạt giới hạn $limit khách hàng của gói miễn phí. Nâng cấp lên Pro để có khách hàng không giới hạn và đồng bộ đám mây.';
  }

  @override
  String get settingsUpgradePro => 'Nâng cấp';

  @override
  String get settingsBusinessSection => 'CÀI ĐẶT KINH DOANH';

  @override
  String get settingsBusinessDetails => 'Thông tin doanh nghiệp';

  @override
  String get settingsBusinessDetailsSubtitle => 'Đặt tên doanh nghiệp của bạn';

  @override
  String get settingsInvoicePrefix => 'Tiền tố hóa đơn';

  @override
  String get settingsDefaultCurrency => 'Đơn vị tiền tệ mặc định';

  @override
  String get settingsAppSection => 'CÀI ĐẶT ỨNG DỤNG';

  @override
  String get settingsDarkMode => 'Chế độ tối';

  @override
  String get settingsDailyNotification => 'Thông báo hàng ngày';

  @override
  String get settingsDailyNotificationNotSet => 'Chưa đặt';

  @override
  String get settingsLanguage => 'Ngôn ngữ';

  @override
  String get settingsLanguageLabel => 'Tiếng Việt';

  @override
  String get languageEnglish => 'Tiếng Anh';

  @override
  String get languageArabic => 'Tiếng Ả Rập';

  @override
  String get languageFrench => 'Tiếng Pháp';

  @override
  String get languageSpanish => 'Tiếng Tây Ban Nha';

  @override
  String get languageUrdu => 'Tiếng Urdu';

  @override
  String get languageChinese => 'Tiếng Trung';

  @override
  String get settingsAboutSection => 'GIỚI THIỆU';

  @override
  String get settingsRateApp => 'Đánh giá ứng dụng';

  @override
  String get settingsHelpSupport => 'Trợ giúp & Hỗ trợ';

  @override
  String get settingsPrivacyPolicy => 'Chính sách quyền riêng tư';

  @override
  String get settingsHelpSupportSheet =>
      'Cần trợ giúp? Liên hệ support@invoiceflow.app và chúng tôi sẽ phản hồi trong vòng 24 giờ.';

  @override
  String get settingsPrivacySheet =>
      'Dữ liệu của bạn được lưu trữ cục bộ trên thiết bị. Chúng tôi không bao giờ bán hoặc chia sẻ thông tin cá nhân của bạn.';

  @override
  String get settingsVersion => 'Phiên bản';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Đăng xuất';

  @override
  String get settingsEditProfile => 'Chỉnh sửa hồ sơ';

  @override
  String get settingsProfileNameLabel => 'Họ và tên';

  @override
  String get settingsProfileNameHint => 'Tên của bạn';

  @override
  String get settingsBusinessNameLabel => 'Tên doanh nghiệp';

  @override
  String get settingsBusinessNameHint => 'Công ty của bạn';

  @override
  String get settingsBusinessEmailLabel => 'Email doanh nghiệp';

  @override
  String get settingsBusinessEmailHint => 'billing@company.com';

  @override
  String get settingsPhoneLabel => 'Điện thoại';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'Địa chỉ';

  @override
  String get settingsAddressHint =>
      'Dubai, Các Tiểu vương quốc Ả Rập Thống nhất';

  @override
  String get settingsBusinessDetailsSaved => 'Đã lưu thông tin doanh nghiệp!';

  @override
  String get settingsInvoicePrefixTitle => 'Tiền tố số hóa đơn';

  @override
  String get settingsInvoicePrefixHint => 'ví dụ: INV-, #, HD-';

  @override
  String get settingsPrefixSaved => 'Đã lưu tiền tố hóa đơn';

  @override
  String get settingsNotificationScheduled =>
      'Đã lên lịch thông báo hàng ngày thành công!';

  @override
  String get settingsSignOutTitle => 'Đăng xuất?';

  @override
  String get settingsSignOutMessage =>
      'Bạn có chắc chắn muốn đăng xuất khỏi InvoiceFlow không?';

  @override
  String get settingsSignedOut => 'Đăng xuất thành công.';

  @override
  String get statusPaid => 'Đã thanh toán';

  @override
  String get statusOverdue => 'Quá hạn';

  @override
  String get statusPending => 'Đang chờ';

  @override
  String get statusDraft => 'Bản nháp';

  @override
  String get statusCancelled => 'Đã hủy';

  @override
  String get notificationChannelName => 'Nhắc nhở hàng ngày';

  @override
  String get notificationChannelDescription =>
      'Nhắc bạn kiểm tra hóa đơn hàng ngày';

  @override
  String get notificationTitle => 'Nhắc nhở hóa đơn';

  @override
  String get notificationBody =>
      'Đến lúc kiểm tra các hóa đơn gần đây và theo dõi các khoản thanh toán đang chờ.';

  @override
  String get pdfInvoice => 'HÓA ĐƠN';

  @override
  String get pdfInvoiceNumber => 'Hóa đơn số:';

  @override
  String get pdfDate => 'Ngày:';

  @override
  String get pdfDueDate => 'Ngày đến hạn:';

  @override
  String get pdfBillTo => 'THANH TOÁN CHO:';

  @override
  String get pdfDescription => 'Mô tả';

  @override
  String get pdfQty => 'SL';

  @override
  String get pdfRate => 'Đơn giá';

  @override
  String get pdfAmount => 'Số tiền';

  @override
  String get pdfSubtotal => 'Tạm tính:';

  @override
  String pdfTax(Object taxRate) {
    return 'Thuế ($taxRate%):';
  }

  @override
  String get pdfTotal => 'TỔNG CỘNG:';

  @override
  String get pdfSignature => 'Chữ ký:';

  @override
  String get pdfNotes => 'Ghi chú:';

  @override
  String get pdfPaymentTerms => 'Điều khoản thanh toán:';

  @override
  String get pdfThankYou => 'Cảm ơn bạn đã hợp tác!';

  @override
  String get quickAddWebDesign => 'Thiết kế web';

  @override
  String get quickAddDevelopment => 'Phát triển';

  @override
  String get quickAddConsulting => 'Tư vấn';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Viết nội dung';

  @override
  String get paywallTitle => 'Mở khóa InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'Không giới hạn và đồng bộ ở mọi nơi. Hủy bất cứ lúc nào.';

  @override
  String get paywallFeatureUnlimited => 'Hóa đơn & khách hàng không giới hạn';

  @override
  String get paywallFeatureSync => 'Đồng bộ đám mây trên mọi thiết bị';

  @override
  String get paywallFeatureNoWatermark => 'Không có hình mờ, mãi mãi';

  @override
  String get paywallMonthly => 'Hàng tháng';

  @override
  String get paywallMonthlySub => 'Thanh toán hàng tháng';

  @override
  String get paywallYearly => 'Hàng năm';

  @override
  String get paywallYearlySub => 'Giá trị tốt nhất — miễn phí 2 tháng';

  @override
  String get paywallRestore => 'Khôi phục giao dịch mua';

  @override
  String get paywallTerms =>
      'Đăng ký tự gia hạn. Quản lý trong cài đặt cửa hàng ứng dụng của bạn.';

  @override
  String get purchaseSuccessTitle => 'Bạn đã là Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'Hóa đơn không giới hạn, đồng bộ đám mây và không có hình mờ đã được mở khóa. Cảm ơn bạn!';

  @override
  String get purchaseSuccessContinue => 'Tiếp tục';

  @override
  String get paywallLoading => 'Đang tải gói…';

  @override
  String get paywallLoadError =>
      'Không thể tải các gói. Vui lòng kiểm tra kết nối và thử lại.';

  @override
  String get paywallNoOffering => 'Hiện không có gói nào khả dụng.';

  @override
  String get purchaseRestored => 'Đã khôi phục giao dịch mua thành công';

  @override
  String get purchaseErrorGeneric =>
      'Giao dịch mua thất bại. Vui lòng thử lại.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro đang hoạt động — hóa đơn và khách hàng không giới hạn, không có hình mờ';

  @override
  String get settingsFreePlan => 'Gói miễn phí';

  @override
  String get settingsFreeHint =>
      'Nâng cấp để có hóa đơn không giới hạn, đồng bộ đám mây và nhiều hơn nữa';

  @override
  String get settingsUpgradeToPro => 'Nâng cấp lên Pro';

  @override
  String get settingsManageSubscription => 'Quản lý đăng ký';

  @override
  String get customerCenterFailed => 'Không thể mở phần quản lý đăng ký.';

  @override
  String get onboardingSkip => 'Bỏ qua';

  @override
  String get onboardingNext => 'Tiếp theo';

  @override
  String get onboardingGetStarted => 'Bắt đầu';

  @override
  String get onboardingWelcomeTitle => 'Hóa đơn trong 2 phút';

  @override
  String get onboardingWelcomeBody =>
      'Tạo hóa đơn PDF chuyên nghiệp cho khách hàng của bạn — nhanh chóng và đẹp mắt.';

  @override
  String get onboardingSyncTitle => 'Đồng bộ ở mọi nơi';

  @override
  String get onboardingSyncBody =>
      'Đăng nhập để sao lưu dữ liệu lên đám mây an toàn và truy cập từ mọi thiết bị.';

  @override
  String get onboardingProTitle => 'Không giới hạn với Pro';

  @override
  String get onboardingProBody =>
      'Mở khóa hóa đơn không giới hạn, đồng bộ đám mây và loại bỏ hình mờ với InvoiceFlow Pro.';

  @override
  String get settingsAccentColor => 'Màu nhấn';

  @override
  String get settingsAccentColorHint =>
      'Cá nhân hóa ứng dụng với màu sắc bạn chọn.';

  @override
  String get settingsCountry => 'Quốc gia';

  @override
  String get settingsTaxId => 'Mã số thuế';

  @override
  String get settingsTaxIdNotSet => 'Chưa đặt';

  @override
  String get settingsTaxIdHint => 'ví dụ: 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Đã lưu mã số thuế';

  @override
  String get catalogTitle => 'Sản phẩm & Dịch vụ';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sản phẩm',
      one: '$count sản phẩm',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'Chưa có sản phẩm nào';

  @override
  String get catalogEmptySubtitle =>
      'Lưu các sản phẩm và dịch vụ có thể tái sử dụng để thêm vào hóa đơn nhanh hơn.';

  @override
  String get catalogFromSaved => 'Từ danh mục của bạn';

  @override
  String get catalogSaveToCatalog => 'Lưu vào danh mục để tái sử dụng';

  @override
  String get catalogAddSnackbar => 'Đã thêm vào danh mục';

  @override
  String get catalogDeleteTitle => 'Xóa hạng mục?';

  @override
  String catalogDeleteMessage(String description) {
    return 'Xóa \"$description\"? Hành động này không thể hoàn tác.';
  }

  @override
  String get commonDone => 'Xong';

  @override
  String get estimateListTitle => 'Báo giá';

  @override
  String get estimateListSearchHint => 'Tìm kiếm báo giá…';

  @override
  String get estimateListEmpty => 'Chưa có báo giá nào';

  @override
  String get estimateListTabAll => 'Tất cả';

  @override
  String get estimateListTabDraft => 'Bản nháp';

  @override
  String get estimateListTabSent => 'Đã gửi';

  @override
  String get estimateListTabAccepted => 'Đã chấp nhận';

  @override
  String get estimateListTabExpired => 'Đã hết hạn';

  @override
  String get estimateCreateTitle => 'Báo giá mới';

  @override
  String get estimateEditTitle => 'Chỉnh sửa báo giá';

  @override
  String get estimateCreatedSnackbar => 'Đã lưu báo giá';

  @override
  String get estimateUpdatedSnackbar => 'Đã cập nhật báo giá';

  @override
  String get estimateIssueDate => 'Ngày phát hành';

  @override
  String get estimateExpiryDate => 'Ngày hết hạn';

  @override
  String get estimateExpiresPrefix => 'Hết hạn ';

  @override
  String get estimateConvertToInvoice => 'Chuyển thành hóa đơn';

  @override
  String get estimateConvertedSnackbar => 'Đã chuyển báo giá thành hóa đơn';

  @override
  String get estimateConvertFailed => 'Không thể chuyển đổi báo giá';

  @override
  String get estimateMarkSent => 'Đánh dấu đã gửi';

  @override
  String get estimateMarkAccepted => 'Đánh dấu đã chấp nhận';

  @override
  String get estimateMarkDeclined => 'Đánh dấu đã từ chối';

  @override
  String get estimateConvertedTitle => 'Đã chuyển đổi';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'Đã chuyển thành hóa đơn $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'TỔNG BÁO GIÁ';

  @override
  String get estimateStatusSent => 'Đã gửi';

  @override
  String get estimateStatusAccepted => 'Đã chấp nhận';

  @override
  String get estimateStatusDeclined => 'Đã từ chối';

  @override
  String get estimateStatusExpired => 'Đã hết hạn';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count đang mở',
      one: '$count đang mở',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'Xóa báo giá?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'Xóa \"$estimateNumber\"? Hành động này không thể hoàn tác.';
  }

  @override
  String get estimatePdfFailed => 'Không thể tạo PDF';

  @override
  String get pdfEstimate => 'BÁO GIÁ';

  @override
  String get pdfEstimateNumber => 'Báo giá số:';

  @override
  String get pdfValidUntil => 'Có hiệu lực đến:';

  @override
  String get invoiceDetailPaymentTerms => 'Điều khoản thanh toán';

  @override
  String get recurringListTitle => 'Hóa đơn định kỳ';

  @override
  String get recurringListEmpty => 'Chưa có hóa đơn định kỳ nào';

  @override
  String get recurringListEmptySubtitle =>
      'Thiết lập hóa đơn tự động cho khách hàng và dịch vụ thường xuyên.';

  @override
  String get recurringCreateTitle => 'Mới định kỳ';

  @override
  String get recurringEditTitle => 'Chỉnh sửa định kỳ';

  @override
  String get recurringCreatedSnackbar => 'Đã lưu hóa đơn định kỳ';

  @override
  String get recurringUpdatedSnackbar => 'Đã cập nhật hóa đơn định kỳ';

  @override
  String get recurringDeleteTitle => 'Xóa hóa đơn định kỳ?';

  @override
  String recurringDeleteMessage(String title) {
    return 'Xóa \"$title\"? Các hóa đơn hiện có sẽ không bị xóa.';
  }

  @override
  String get recurringTitleLabel => 'Tiêu đề';

  @override
  String get recurringTitleHint => 'ví dụ: Phí giữ chỗ hàng tháng';

  @override
  String get recurringClientLabel => 'Khách hàng';

  @override
  String get recurringFrequencyLabel => 'Tần suất';

  @override
  String get recurringFrequencyWeekly => 'Hàng tuần';

  @override
  String get recurringFrequencyBiweekly => 'Hai tuần một lần';

  @override
  String get recurringFrequencyMonthly => 'Hàng tháng';

  @override
  String get recurringFrequencyQuarterly => 'Hàng quý';

  @override
  String get recurringFrequencyYearly => 'Hàng năm';

  @override
  String get recurringNextRun => 'Lần chạy tiếp theo';

  @override
  String get recurringDueDays => 'Đến hạn trong';

  @override
  String get recurringDays => 'ngày';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count đang hoạt động',
      one: '$count đang hoạt động',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'Báo cáo';

  @override
  String get reportsSubtitle => 'Phân tích kinh doanh';

  @override
  String get reportsEmpty => 'Tạo hóa đơn để xem báo cáo';

  @override
  String get reportsCollected => 'Đã thu';

  @override
  String get reportsOutstanding => 'Chưa thanh toán';

  @override
  String get reportsMonthlyRevenue => 'Doanh thu hàng tháng';

  @override
  String get reportsLast6Months => '6 tháng gần nhất';

  @override
  String get reportsByStatus => 'Theo trạng thái';

  @override
  String get reportsTopClients => 'Khách hàng hàng đầu';

  @override
  String get paymentLinkTitle => 'Liên kết thanh toán';

  @override
  String get paymentLinkNotSet => 'Chưa đặt liên kết thanh toán trong Cài đặt';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'Liên kết thanh toán được bao gồm trên PDF hóa đơn và có thể sao chép từ menu hóa đơn.';

  @override
  String get paymentLinkSaved => 'Đã lưu liên kết thanh toán';

  @override
  String get settingsPaymentLinkNotSet => 'Chưa đặt';

  @override
  String get invoiceDetailCopyPaymentLink => 'Sao chép liên kết thanh toán';

  @override
  String get paymentLinkCopied => 'Đã sao chép liên kết thanh toán';

  @override
  String get pdfPayOnline => 'Thanh toán trực tuyến';

  @override
  String get exportXml => 'Xuất XML';

  @override
  String get exportXmlFailed => 'Không thể xuất XML';
}
