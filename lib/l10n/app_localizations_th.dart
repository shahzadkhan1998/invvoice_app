// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'สร้างใบแจ้งหนี้ระดับมืออาชีพใน 2 นาที';

  @override
  String get bottomNavDashboard => 'แดชบอร์ด';

  @override
  String get bottomNavInvoices => 'ใบแจ้งหนี้';

  @override
  String get bottomNavClients => 'ลูกค้า';

  @override
  String get bottomNavSettings => 'การตั้งค่า';

  @override
  String get commonCancel => 'ยกเลิก';

  @override
  String get commonDelete => 'ลบ';

  @override
  String get commonSave => 'บันทึก';

  @override
  String get commonSearch => 'ค้นหา';

  @override
  String get commonBack => 'กลับ';

  @override
  String get commonContinue => 'ดำเนินการต่อ';

  @override
  String get commonAdd => 'เพิ่ม';

  @override
  String get commonEdit => 'แก้ไข';

  @override
  String get commonCreate => 'สร้าง';

  @override
  String get commonClear => 'ล้าง';

  @override
  String get commonView => 'ดู';

  @override
  String get commonShare => 'แชร์';

  @override
  String get commonExportPdf => 'ส่งออก PDF';

  @override
  String get commonSharePdf => 'แชร์ PDF';

  @override
  String get commonSaveChanges => 'บันทึกการเปลี่ยนแปลง';

  @override
  String get commonRequired => 'จำเป็น';

  @override
  String get commonInvalid => 'ไม่ถูกต้อง';

  @override
  String get commonSendLink => 'ส่งลิงก์';

  @override
  String get commonGeneratingPdf => 'กำลังสร้าง PDF...';

  @override
  String get dashboardGreetingMorning => 'สวัสดีตอนเช้า';

  @override
  String get dashboardGreetingAfternoon => 'สวัสดีตอนบ่าย';

  @override
  String get dashboardGreetingEvening => 'สวัสดีตอนเย็น';

  @override
  String get dashboardSubtitle => 'นี่คือภาพรวมธุรกิจของคุณ';

  @override
  String get dashboardOutstanding => 'ค้างชำระ';

  @override
  String get dashboardOverdue => 'เลยกำหนด';

  @override
  String get dashboardThisMonth => 'เดือนนี้';

  @override
  String get dashboardInvoices => 'ใบแจ้งหนี้';

  @override
  String dashboardPaidCount(Object count) {
    return 'ชำระแล้ว $count รายการ';
  }

  @override
  String get dashboardRecentInvoices => 'ใบแจ้งหนี้ล่าสุด';

  @override
  String get dashboardSeeAll => 'ดูทั้งหมด';

  @override
  String get dashboardNotifications => 'การแจ้งเตือน';

  @override
  String get dashboardNotificationsHint =>
      'ติดตามกระแสเงินสดด้วยการตรวจสอบใบแจ้งหนี้ที่เลยกำหนดและรอชำระเป็นประจำ';

  @override
  String get dashboardNewInvoice => 'ใบแจ้งหนี้ใหม่';

  @override
  String get dashboardNoInvoicesYet => 'ยังไม่มีใบแจ้งหนี้';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'สร้างใบแจ้งหนี้ระดับมืออาชีพฉบับแรกของคุณภายใน 2 นาที';

  @override
  String get dashboardCreateInvoice => 'สร้างใบแจ้งหนี้';

  @override
  String get dashboardMarkPaid => 'ทำเครื่องหมายว่าชำระแล้ว';

  @override
  String get dashboardDuePrefix => 'ครบกำหนด ';

  @override
  String dashboardDaysOverdue(Object days) {
    return 'เลยกำหนด $days วัน';
  }

  @override
  String get deleteInvoiceTitle => 'ลบใบแจ้งหนี้?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'ลบ $invoiceNumber? การดำเนินการนี้ไม่สามารถย้อนกลับได้';
  }

  @override
  String get loginHeading => 'ยินดีต้อนรับกลับ';

  @override
  String get loginSubtitle => 'ลงชื่อเข้าใช้บัญชี InvoiceFlow ของคุณ';

  @override
  String get loginEmailLabel => 'ที่อยู่อีเมล';

  @override
  String get loginEmailHint => 'you@example.com';

  @override
  String get loginEmailRequired => 'จำเป็นต้องใช้อีเมล';

  @override
  String get loginEmailInvalid => 'กรุณาป้อนอีเมลที่ถูกต้อง';

  @override
  String get loginPasswordLabel => 'รหัสผ่าน';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'จำเป็นต้องใช้รหัสผ่าน';

  @override
  String get loginPasswordMinLength => 'รหัสผ่านต้องมีอย่างน้อย 6 ตัวอักษร';

  @override
  String get loginForgotPassword => 'ลืมรหัสผ่าน?';

  @override
  String get loginSignIn => 'ลงชื่อเข้าใช้';

  @override
  String get loginOrContinueWith => 'หรือดำเนินการต่อด้วย';

  @override
  String get loginContinueWithGoogle => 'ดำเนินการต่อด้วย Google';

  @override
  String get loginNoAccount => 'ยังไม่มีบัญชี? ';

  @override
  String get loginSignUp => 'ลงทะเบียน';

  @override
  String get loginResetPasswordTitle => 'รีเซ็ตรหัสผ่าน';

  @override
  String get loginResetPasswordMessage =>
      'ป้อนอีเมลของคุณแล้วเราจะส่งลิงก์สำหรับรีเซ็ตให้';

  @override
  String get loginResetPasswordHint => 'you@example.com';

  @override
  String get loginResetLinkSent => 'ส่งลิงก์รีเซ็ตแล้ว! ตรวจสอบอีเมลของคุณ';

  @override
  String get loginResetLinkFailed => 'ส่งลิงก์รีเซ็ตไม่สำเร็จ';

  @override
  String get registerHeading => 'สร้างบัญชี';

  @override
  String get registerSubtitle =>
      'เริ่มส่งใบแจ้งหนี้ระดับมืออาชีพได้ตั้งแต่วันนี้';

  @override
  String get registerNameLabel => 'ชื่อเต็ม';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => 'จำเป็นต้องใช้ชื่อ';

  @override
  String get registerNameMinLength => 'ชื่อต้องมีอย่างน้อย 2 ตัวอักษร';

  @override
  String get registerEmailLabel => 'ที่อยู่อีเมล';

  @override
  String get registerEmailHint => 'you@example.com';

  @override
  String get registerEmailRequired => 'จำเป็นต้องใช้อีเมล';

  @override
  String get registerEmailInvalid => 'กรุณาป้อนอีเมลที่ถูกต้อง';

  @override
  String get registerPasswordLabel => 'รหัสผ่าน';

  @override
  String get registerPasswordHint => 'อย่างน้อย 6 ตัวอักษร';

  @override
  String get registerPasswordRequired => 'จำเป็นต้องใช้รหัสผ่าน';

  @override
  String get registerPasswordMinLength => 'รหัสผ่านต้องมีอย่างน้อย 6 ตัวอักษร';

  @override
  String get registerConfirmPasswordLabel => 'ยืนยันรหัสผ่าน';

  @override
  String get registerConfirmPasswordHint => 'พิมพ์รหัสผ่านของคุณอีกครั้ง';

  @override
  String get registerConfirmPasswordRequired => 'กรุณายืนยันรหัสผ่านของคุณ';

  @override
  String get registerPasswordsDoNotMatch => 'รหัสผ่านไม่ตรงกัน';

  @override
  String get registerCreateAccount => 'สร้างบัญชี';

  @override
  String get registerHaveAccount => 'มีบัญชีอยู่แล้ว? ';

  @override
  String get registerSignIn => 'ลงชื่อเข้าใช้';

  @override
  String get authTermsOfService => 'ข้อกำหนดในการให้บริการ';

  @override
  String get authPrivacyPolicy => 'นโยบายความเป็นส่วนตัว';

  @override
  String get authAgreeRequired =>
      'โปรดยอมรับข้อกำหนดในการให้บริการและนโยบายความเป็นส่วนตัวเพื่อดำเนินการต่อ';

  @override
  String get loginAgreePrefix => 'การดำเนินการต่อถือว่าคุณยอมรับ';

  @override
  String get registerAgreePrefix => 'ฉันยอมรับ';

  @override
  String get authAgreeAnd => 'และ';

  @override
  String get authTermsSheet =>
      'ข้อกำหนดในการให้บริการเหล่านี้ควบคุมการใช้งาน InvoiceFlow ของคุณ โดยการเข้าถึงหรือใช้แอป ถือว่าคุณตกลงที่จะผูกพันตามข้อกำหนดเหล่านี้\n\n1. คุณรับผิดชอบต่อความถูกต้องของใบแจ้งหนี้ ประมาณการ และข้อมูลอื่น ๆ ที่คุณสร้างขึ้น\n2. แอปนี้ให้บริการ \"ตามสภาพที่เป็นอยู่\" โดยไม่มีการรับประกันใด ๆ ทั้งสิ้น ทั้งโดยชัดแจ้งหรือโดยปริยาย\n3. เราไม่รับผิดชอบต่อความเสียหายใด ๆ ที่เกิดจากการใช้บริการของคุณ\n4. คุณต้องไม่ใช้แอปเพื่อวัตถุประสงค์ที่ผิดกฎหมายหรือต้องห้าม\n5. เราอาจปรับปรุงข้อกำหนดเหล่านี้เป็นครั้งคราว การใช้แอปอย่างต่อเนื่องถือเป็นการยอมรับข้อกำหนดที่ปรับปรุงแล้ว';

  @override
  String get authPrivacySheet =>
      'ความเป็นส่วนตัวของคุณสำคัญสำหรับเรา\n\n1. การจัดเก็บข้อมูล: ใบแจ้งหนี้ ลูกค้า และการตั้งค่าของคุณถูกจัดเก็บในเครื่องอุปกรณ์ของคุณ\n2. การซิงก์คลาวด์: หากคุณเข้าสู่ระบบ ข้อมูลของคุณจะถูกซิงก์ไปยังบัญชีของคุณ เพื่อให้เข้าถึงได้ในทุกอุปกรณ์ของคุณ\n3. เราไม่เคยขายหรือแบ่งปันข้อมูลส่วนบุคคลของคุณ\n4. การวิเคราะห์: เราอาจเก็บรวบรวมข้อมูลการใช้งานที่ไม่ระบุตัวตนเพื่อช่วยปรับปรุงแอป\n5. การติดต่อ: สำหรับคำถามใด ๆ เกี่ยวกับความเป็นส่วนตัว โปรดติดต่อ support@invoiceflow.app';

  @override
  String get authErrorWeakPassword => 'รหัสผ่านอ่อนเกินไป';

  @override
  String get authErrorEmailAlreadyInUse => 'บัญชีนี้มีอยู่แล้ว';

  @override
  String get authErrorUserNotFound => 'ไม่พบผู้ใช้ที่มีอีเมลนี้';

  @override
  String get authErrorWrongPassword => 'รหัสผ่านไม่ถูกต้อง';

  @override
  String get authErrorInvalidEmail => 'ที่อยู่อีเมลไม่ถูกต้อง';

  @override
  String get authErrorTooManyRequests =>
      'พยายามมากเกินไป กรุณาลองใหม่ในภายหลัง';

  @override
  String get authErrorDefault => 'การยืนยันตัวตนล้มเหลว กรุณาลองอีกครั้ง';

  @override
  String get authErrorGoogleSignInFailed => 'ลงชื่อเข้าใช้ด้วย Google ล้มเหลว';

  @override
  String get invoiceListTitle => 'ใบแจ้งหนี้';

  @override
  String get invoiceListSearchHint => 'ค้นหาใบแจ้งหนี้...';

  @override
  String get invoiceListSortDate => 'เรียงตามวันที่';

  @override
  String get invoiceListSortAmount => 'เรียงตามจำนวนเงิน';

  @override
  String get invoiceListSortClient => 'เรียงตามลูกค้า';

  @override
  String get invoiceListTabAll => 'ทั้งหมด';

  @override
  String get invoiceListTabPaid => 'ชำระแล้ว';

  @override
  String get invoiceListTabPending => 'รอชำระ';

  @override
  String get invoiceListTabOverdue => 'เลยกำหนด';

  @override
  String get invoiceListTabDraft => 'ร่าง';

  @override
  String get invoiceListEmpty => 'ไม่พบใบแจ้งหนี้';

  @override
  String get invoiceCreateTitle => 'ใบแจ้งหนี้ใหม่';

  @override
  String get invoiceEditTitle => 'แก้ไขใบแจ้งหนี้';

  @override
  String get invoiceSaveDraft => 'บันทึกฉบับร่าง';

  @override
  String get invoiceStepClient => 'ลูกค้า';

  @override
  String get invoiceStepItems => 'รายการ';

  @override
  String get invoiceStepReview => 'ตรวจสอบ';

  @override
  String get invoiceSelectClient => 'เลือกลูกค้า';

  @override
  String get invoiceSelectClientSubtitle => 'เลือกผู้รับใบแจ้งหนี้ฉบับนี้';

  @override
  String get invoiceSearchClients => 'ค้นหาลูกค้า...';

  @override
  String get invoiceAddNewClient => 'เพิ่มลูกค้าใหม่';

  @override
  String get invoiceNoClientsFound => 'ไม่พบลูกค้า';

  @override
  String get invoiceSelectClientEmptyHint =>
      'สร้างลูกค้ารายแรกเพื่อเริ่มสร้างใบแจ้งหนี้';

  @override
  String get invoiceAddLineItem => 'เพิ่มรายการ';

  @override
  String get invoiceItemDescription => 'คำอธิบาย';

  @override
  String get invoiceItemDescriptionHint => 'เช่น ออกแบบเว็บไซต์';

  @override
  String get invoiceItemQuickAdd => 'เพิ่มอย่างรวดเร็ว:';

  @override
  String get invoiceItemQty => 'จำนวน';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'อัตรา';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'เพิ่มรายการ';

  @override
  String get invoiceLineItems => 'รายการ';

  @override
  String get invoiceLineItemsSubtitle => 'เพิ่มบริการหรือสินค้า';

  @override
  String get invoiceNoItems => 'ยังไม่มีรายการ เพิ่มรายการแรกของคุณ';

  @override
  String get invoiceTaxRate => 'อัตราภาษี (%)';

  @override
  String get invoiceSubtotal => 'ยอดรวมย่อย';

  @override
  String invoiceTax(Object taxRate) {
    return 'ภาษี ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'ยอดรวมทั้งหมด';

  @override
  String get invoiceReviewHeading => 'ตรวจสอบและสรุป';

  @override
  String get invoiceReviewSubtitle =>
      'กำหนดวันที่ เพิ่มบันทึก โลโก้ และลายเซ็น';

  @override
  String get invoiceCompanyLogo => 'โลโก้บริษัท';

  @override
  String get invoiceAddLogo => 'เพิ่มโลโก้';

  @override
  String get invoiceInvoiceDate => 'วันที่ออกใบแจ้งหนี้';

  @override
  String get invoiceDueDate => 'วันที่ครบกำหนด';

  @override
  String get invoiceNotesLabel => 'บันทึก (ไม่บังคับ)';

  @override
  String get invoiceNotesHint => 'ขอบคุณที่ใช้บริการของเรา!';

  @override
  String get invoicePaymentTermsLabel => 'เงื่อนไขการชำระเงิน (ไม่บังคับ)';

  @override
  String get invoicePaymentTermsHint => 'ชำระเงินภายใน 30 วัน';

  @override
  String get invoiceSignatureLabel => 'ลายเซ็น';

  @override
  String get invoiceSignatureOverwrite =>
      'บันทึกลายเซ็นเดิมไว้แล้ว วาดด้านบนเพื่อแทนที่';

  @override
  String get invoiceCreatedSnackbar => 'สร้างใบแจ้งหนี้แล้ว!';

  @override
  String get invoiceUpdatedSnackbar => 'อัปเดตใบแจ้งหนี้แล้ว!';

  @override
  String get invoiceDetailTitle => 'ใบแจ้งหนี้';

  @override
  String get invoiceDetailMarkAsPaid => 'ทำเครื่องหมายว่าชำระแล้ว';

  @override
  String get invoiceDetailTotalAmount => 'ยอดรวมทั้งหมด';

  @override
  String get invoiceDetailIssued => 'วันที่ออก';

  @override
  String get invoiceDetailDue => 'ครบกำหนด';

  @override
  String get invoiceDetailPaid => 'ชำระแล้ว';

  @override
  String get invoiceDetailBillTo => 'เรียกเก็บถึง';

  @override
  String get invoiceDetailItems => 'รายการ';

  @override
  String get invoiceDetailNotes => 'บันทึก';

  @override
  String get invoiceDetailSignature => 'ลายเซ็น';

  @override
  String get invoiceDetailMarkedPaidSnackbar =>
      'ทำเครื่องหมายใบแจ้งหนี้ว่าชำระแล้ว!';

  @override
  String get invoiceDetailPdfFailed => 'สร้าง PDF ไม่สำเร็จ';

  @override
  String get clientListTitle => 'ลูกค้า';

  @override
  String get clientListSearchHint => 'ค้นหาลูกค้า...';

  @override
  String get clientListTotalClients => 'ลูกค้าทั้งหมด';

  @override
  String get clientListTotalBilled => 'ยอดเรียกเก็บทั้งหมด';

  @override
  String get clientListEmptySearch => 'ไม่พบลูกค้า';

  @override
  String get clientListEmpty => 'ยังไม่มีลูกค้า';

  @override
  String get clientListEmptySubtitle =>
      'เพิ่มลูกค้ารายแรกเพื่อเริ่มสร้างใบแจ้งหนี้';

  @override
  String get clientListAddClient => 'เพิ่มลูกค้า';

  @override
  String get clientListTotalBilledLabel => 'ยอดเรียกเก็บทั้งหมด';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count ใบแจ้งหนี้';
  }

  @override
  String get clientCreateTitle => 'ลูกค้าใหม่';

  @override
  String get clientEditTitle => 'แก้ไขลูกค้า';

  @override
  String get clientBasicInfo => 'ข้อมูลพื้นฐาน';

  @override
  String get clientNameLabel => 'ชื่อเต็ม *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'จำเป็นต้องใช้ชื่อ';

  @override
  String get clientNameTooShort => 'ชื่อสั้นเกินไป';

  @override
  String get clientEmailLabel => 'ที่อยู่อีเมล *';

  @override
  String get clientEmailHint => 'billing@company.com';

  @override
  String get clientEmailRequired => 'จำเป็นต้องใช้อีเมล';

  @override
  String get clientEmailInvalid => 'กรุณาป้อนอีเมลที่ถูกต้อง';

  @override
  String get clientPhoneLabel => 'เบอร์โทรศัพท์';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'ที่อยู่';

  @override
  String get clientAddressLabel => 'ที่อยู่ตามถนน';

  @override
  String get clientAddressHint => '123 บิซิเนสปาร์ค สำนักงาน 45';

  @override
  String get clientCityLabel => 'เมือง / ประเทศ';

  @override
  String get clientCityHint => 'ดูไบ สหรัฐอาหรับเอมิเรตส์';

  @override
  String get clientBillingDefaults => 'ค่าเริ่มต้นการเรียกเก็บเงิน';

  @override
  String get clientDefaultCurrency => 'สกุลเงินเริ่มต้น';

  @override
  String get clientDefaultTaxRate => 'อัตราภาษีเริ่มต้น (VAT/GST)';

  @override
  String get clientVatLabel => 'VAT / เลขทะเบียนภาษี';

  @override
  String get clientVatHint => '123456789012345 (ไม่บังคับ)';

  @override
  String get clientUpdateButton => 'อัปเดตลูกค้า';

  @override
  String get clientAddButton => 'เพิ่มลูกค้า';

  @override
  String get clientUpdatedSnackbar => 'อัปเดตลูกค้าแล้ว!';

  @override
  String get clientAddedSnackbar => 'เพิ่มลูกค้าแล้ว!';

  @override
  String get clientDetailInvoices => 'ใบแจ้งหนี้';

  @override
  String get clientDetailTotalBilled => 'ยอดเรียกเก็บทั้งหมด';

  @override
  String get clientDetailOutstanding => 'ค้างชำระ';

  @override
  String get clientDetailEdit => 'แก้ไข';

  @override
  String get clientDetailNewInvoice => 'ใบแจ้งหนี้ใหม่';

  @override
  String get clientDetailEmailClient => 'ส่งอีเมลถึงลูกค้า';

  @override
  String get clientDetailClientDetails => 'รายละเอียดลูกค้า';

  @override
  String get clientDetailEmail => 'อีเมล';

  @override
  String get clientDetailPhone => 'โทรศัพท์';

  @override
  String get clientDetailAddress => 'ที่อยู่';

  @override
  String get clientDetailCity => 'เมือง';

  @override
  String get clientDetailCurrency => 'สกุลเงิน';

  @override
  String get clientDetailTaxRate => 'อัตราภาษี';

  @override
  String get clientDetailVatNumber => 'หมายเลข VAT';

  @override
  String get clientDetailInvoiceHistory => 'ประวัติใบแจ้งหนี้';

  @override
  String get clientDetailNoInvoices => 'ยังไม่มีใบแจ้งหนี้สำหรับลูกค้ารายนี้';

  @override
  String get deleteClientTitle => 'ลบลูกค้า?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'ลบ $clientName? การดำเนินการนี้ไม่สามารถย้อนกลับได้';
  }

  @override
  String get settingsTitle => 'การตั้งค่า';

  @override
  String get settingsYourName => 'ชื่อของคุณ';

  @override
  String get settingsBackupTitle => 'สำรองข้อมูลใบแจ้งหนี้ของคุณ';

  @override
  String get settingsBackupDescription =>
      'ลงชื่อเข้าใช้เพื่อซิงค์ข้อมูลของคุณอย่างปลอดภัยและเข้าถึงได้จากทุกที่';

  @override
  String get settingsSignInRegister => 'ลงชื่อเข้าใช้หรือลงทะเบียน';

  @override
  String get settingsProUpsell =>
      'อัปเกรดเป็น Pro เพื่อรับใบแจ้งหนี้ไม่จำกัด ซิงค์คลาวด์ และไม่มีลายน้ำ';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'คุณถึงขีดจำกัดใบแจ้งหนี้ $limit ฉบับของแผนฟรีแล้ว อัปเกรดเป็น Pro เพื่อรับใบแจ้งหนี้ไม่จำกัดและการซิงค์คลาวด์';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'คุณถึงขีดจำกัดลูกค้า $limit รายของแผนฟรีแล้ว อัปเกรดเป็น Pro เพื่อรับลูกค้าไม่จำกัดและการซิงค์คลาวด์';
  }

  @override
  String get settingsUpgradePro => 'อัปเกรด';

  @override
  String get settingsBusinessSection => 'การตั้งค่าธุรกิจ';

  @override
  String get settingsBusinessDetails => 'รายละเอียดธุรกิจ';

  @override
  String get settingsBusinessDetailsSubtitle => 'ตั้งชื่อธุรกิจของคุณ';

  @override
  String get settingsInvoicePrefix => 'คำนำหน้าใบแจ้งหนี้';

  @override
  String get settingsDefaultCurrency => 'สกุลเงินเริ่มต้น';

  @override
  String get settingsAppSection => 'การตั้งค่าแอป';

  @override
  String get settingsDarkMode => 'โหมดมืด';

  @override
  String get settingsDailyNotification => 'การแจ้งเตือนรายวัน';

  @override
  String get settingsDailyNotificationNotSet => 'ยังไม่ได้ตั้ง';

  @override
  String get settingsLanguage => 'ภาษา';

  @override
  String get settingsLanguageLabel => 'ไทย';

  @override
  String get languageEnglish => 'อังกฤษ';

  @override
  String get languageArabic => 'อาหรับ';

  @override
  String get languageFrench => 'ฝรั่งเศส';

  @override
  String get languageSpanish => 'สเปน';

  @override
  String get languageUrdu => 'อูรดู';

  @override
  String get languageChinese => 'จีน';

  @override
  String get settingsAboutSection => 'เกี่ยวกับ';

  @override
  String get settingsRateApp => 'ให้คะแนนแอป';

  @override
  String get settingsHelpSupport => 'ความช่วยเหลือและการสนับสนุน';

  @override
  String get settingsPrivacyPolicy => 'นโยบายความเป็นส่วนตัว';

  @override
  String get settingsHelpSupportSheet =>
      'ต้องการความช่วยเหลือ? ติดต่อ support@invoiceflow.app แล้วเราจะตอบกลับภายใน 24 ชั่วโมง';

  @override
  String get settingsPrivacySheet =>
      'ข้อมูลของคุณถูกจัดเก็บในเครื่องบนอุปกรณ์ของคุณ เราไม่เคยขายหรือแชร์ข้อมูลส่วนบุคคลของคุณ';

  @override
  String get settingsVersion => 'เวอร์ชัน';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'ลงชื่อออก';

  @override
  String get settingsEditProfile => 'แก้ไขโปรไฟล์';

  @override
  String get settingsProfileNameLabel => 'ชื่อเต็ม';

  @override
  String get settingsProfileNameHint => 'ชื่อของคุณ';

  @override
  String get settingsBusinessNameLabel => 'ชื่อธุรกิจ';

  @override
  String get settingsBusinessNameHint => 'บริษัทของคุณ';

  @override
  String get settingsBusinessEmailLabel => 'อีเมลธุรกิจ';

  @override
  String get settingsBusinessEmailHint => 'billing@company.com';

  @override
  String get settingsPhoneLabel => 'โทรศัพท์';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'ที่อยู่';

  @override
  String get settingsAddressHint => 'ดูไบ สหรัฐอาหรับเอมิเรตส์';

  @override
  String get settingsBusinessDetailsSaved => 'บันทึกรายละเอียดธุรกิจแล้ว!';

  @override
  String get settingsInvoicePrefixTitle => 'คำนำหน้าหมายเลขใบแจ้งหนี้';

  @override
  String get settingsInvoicePrefixHint => 'เช่น INV-, #, ใบ-';

  @override
  String get settingsPrefixSaved => 'บันทึกคำนำหน้าใบแจ้งหนี้แล้ว';

  @override
  String get settingsNotificationScheduled =>
      'กำหนดเวลาการแจ้งเตือนรายวันสำเร็จ!';

  @override
  String get settingsSignOutTitle => 'ลงชื่อออก?';

  @override
  String get settingsSignOutMessage =>
      'คุณแน่ใจหรือว่าต้องการลงชื่อออกจาก InvoiceFlow?';

  @override
  String get settingsSignedOut => 'ลงชื่อออกสำเร็จ';

  @override
  String get statusPaid => 'ชำระแล้ว';

  @override
  String get statusOverdue => 'เลยกำหนด';

  @override
  String get statusPending => 'รอชำระ';

  @override
  String get statusDraft => 'ร่าง';

  @override
  String get statusCancelled => 'ยกเลิกแล้ว';

  @override
  String get notificationChannelName => 'การแจ้งเตือนรายวัน';

  @override
  String get notificationChannelDescription =>
      'เตือนให้คุณตรวจสอบใบแจ้งหนี้ทุกวัน';

  @override
  String get notificationTitle => 'การแจ้งเตือนใบแจ้งหนี้';

  @override
  String get notificationBody =>
      'ถึงเวลาตรวจสอบใบแจ้งหนี้ล่าสุดและติดตามการชำระเงินที่รออยู่';

  @override
  String get pdfInvoice => 'ใบแจ้งหนี้';

  @override
  String get pdfInvoiceNumber => 'ใบแจ้งหนี้เลขที่:';

  @override
  String get pdfDate => 'วันที่:';

  @override
  String get pdfDueDate => 'วันที่ครบกำหนด:';

  @override
  String get pdfBillTo => 'เรียกเก็บถึง:';

  @override
  String get pdfDescription => 'คำอธิบาย';

  @override
  String get pdfQty => 'จำนวน';

  @override
  String get pdfRate => 'อัตรา';

  @override
  String get pdfAmount => 'จำนวนเงิน';

  @override
  String get pdfSubtotal => 'ยอดรวมย่อย:';

  @override
  String pdfTax(Object taxRate) {
    return 'ภาษี ($taxRate%):';
  }

  @override
  String get pdfTotal => 'ยอดรวมทั้งหมด:';

  @override
  String get pdfSignature => 'ลายเซ็น:';

  @override
  String get pdfNotes => 'บันทึก:';

  @override
  String get pdfPaymentTerms => 'เงื่อนไขการชำระเงิน:';

  @override
  String get pdfThankYou => 'ขอบคุณที่ใช้บริการของเรา!';

  @override
  String get quickAddWebDesign => 'ออกแบบเว็บไซต์';

  @override
  String get quickAddDevelopment => 'การพัฒนา';

  @override
  String get quickAddConsulting => 'ให้คำปรึกษา';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'เขียนเนื้อหา';

  @override
  String get paywallTitle => 'ปลดล็อก InvoiceFlow Pro';

  @override
  String get paywallSubtitle => 'ไม่จำกัดและซิงค์ได้ทุกที่ ยกเลิกได้ทุกเมื่อ';

  @override
  String get paywallFeatureUnlimited => 'ใบแจ้งหนี้และลูกค้าไม่จำกัด';

  @override
  String get paywallFeatureSync => 'ซิงค์คลาวด์ข้ามอุปกรณ์';

  @override
  String get paywallFeatureNoWatermark => 'ไม่มีลายน้ำตลอดไป';

  @override
  String get paywallMonthly => 'รายเดือน';

  @override
  String get paywallMonthlySub => 'เรียกเก็บเป็นรายเดือน';

  @override
  String get paywallYearly => 'รายปี';

  @override
  String get paywallYearlySub => 'คุ้มที่สุด — ฟรี 2 เดือน';

  @override
  String get paywallRestore => 'กู้คืนการซื้อ';

  @override
  String get paywallTerms =>
      'การสมัครสมาชิกต่ออายุอัตโนมัติ จัดการได้ในการตั้งค่าร้านแอปของคุณ';

  @override
  String get purchaseSuccessTitle => 'คุณเป็น Pro แล้ว!';

  @override
  String get purchaseSuccessSubtitle =>
      'ปลดล็อกใบแจ้งหนี้ไม่จำกัด การซิงค์คลาวด์ และไม่มีลายน้ำแล้ว ขอบคุณ!';

  @override
  String get purchaseSuccessContinue => 'ดำเนินการต่อ';

  @override
  String get paywallLoading => 'กำลังโหลดแผน…';

  @override
  String get paywallLoadError =>
      'ไม่สามารถโหลดแผนได้ โปรดตรวจสอบการเชื่อมต่อและลองอีกครั้ง';

  @override
  String get paywallNoOffering => 'ไม่มีแผนที่พร้อมใช้ในขณะนี้';

  @override
  String get purchaseRestored => 'กู้คืนการซื้อสำเร็จแล้ว';

  @override
  String get purchaseErrorGeneric => 'การซื้อล้มเหลว โปรดลองอีกครั้ง';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'เปิดใช้ Pro แล้ว — ใบแจ้งหนี้และลูกค้าไม่จำกัด ไม่มีลายน้ำ';

  @override
  String get settingsFreePlan => 'แผนฟรี';

  @override
  String get settingsFreeHint =>
      'อัปเกรดเพื่อใบแจ้งหนี้ไม่จำกัด การซิงก์คลาวด์ และอีกมากมาย';

  @override
  String get settingsUpgradeToPro => 'อัปเกรดเป็น Pro';

  @override
  String get settingsManageSubscription => 'จัดการการสมัคร';

  @override
  String get customerCenterFailed => 'ไม่สามารถเปิดการจัดการการสมัครได้';

  @override
  String get onboardingSkip => 'ข้าม';

  @override
  String get onboardingNext => 'ถัดไป';

  @override
  String get onboardingGetStarted => 'เริ่มต้นใช้งาน';

  @override
  String get onboardingWelcomeTitle => 'ใบแจ้งหนี้ใน 2 นาที';

  @override
  String get onboardingWelcomeBody =>
      'สร้างใบแจ้งหนี้ PDF ระดับมืออาชีพสำหรับลูกค้าของคุณ — รวดเร็วและสวยงาม';

  @override
  String get onboardingSyncTitle => 'ซิงค์ได้ทุกที่';

  @override
  String get onboardingSyncBody =>
      'ลงชื่อเข้าใช้เพื่อสำรองข้อมูลของคุณไปยังคลาวด์อย่างปลอดภัยและเข้าถึงได้จากทุกอุปกรณ์';

  @override
  String get onboardingProTitle => 'ไม่จำกัดด้วย Pro';

  @override
  String get onboardingProBody =>
      'ปลดล็อกใบแจ้งหนี้ไม่จำกัด ซิงค์คลาวด์ และลบลายน้ำด้วย InvoiceFlow Pro';

  @override
  String get settingsAccentColor => 'สีเน้น';

  @override
  String get settingsAccentColorHint => 'ปรับแต่งแอปด้วยสีที่คุณเลือก';

  @override
  String get settingsCountry => 'ประเทศ';

  @override
  String get settingsTaxId => 'เลขทะเบียนภาษี';

  @override
  String get settingsTaxIdNotSet => 'ยังไม่ได้ตั้ง';

  @override
  String get settingsTaxIdHint => 'เช่น 123456789012345';

  @override
  String get settingsTaxIdSaved => 'บันทึกเลขภาษีแล้ว';

  @override
  String get catalogTitle => 'สินค้าและบริการ';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count รายการ',
      one: '$count รายการ',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'ยังไม่มีสินค้า';

  @override
  String get catalogEmptySubtitle =>
      'บันทึกสินค้าและบริการที่ใช้ซ้ำได้เพื่อเพิ่มลงในใบแจ้งหนี้ได้เร็วขึ้น';

  @override
  String get catalogFromSaved => 'จากแคตตาล็อกของคุณ';

  @override
  String get catalogSaveToCatalog => 'บันทึกลงแคตตาล็อกเพื่อนำกลับมาใช้ใหม่';

  @override
  String get catalogAddSnackbar => 'เพิ่มลงแคตตาล็อกแล้ว';

  @override
  String get catalogDeleteTitle => 'ลบรายการ?';

  @override
  String catalogDeleteMessage(String description) {
    return 'ลบ \"$description\"? การดำเนินการนี้ไม่สามารถย้อนกลับได้';
  }

  @override
  String get commonDone => 'เสร็จสิ้น';

  @override
  String get estimateListTitle => 'ใบเสนอราคา';

  @override
  String get estimateListSearchHint => 'ค้นหาใบเสนอราคา…';

  @override
  String get estimateListEmpty => 'ยังไม่มีใบเสนอราคา';

  @override
  String get estimateListTabAll => 'ทั้งหมด';

  @override
  String get estimateListTabDraft => 'ร่าง';

  @override
  String get estimateListTabSent => 'ส่งแล้ว';

  @override
  String get estimateListTabAccepted => 'รับแล้ว';

  @override
  String get estimateListTabExpired => 'หมดอายุแล้ว';

  @override
  String get estimateCreateTitle => 'ใบเสนอราคาใหม่';

  @override
  String get estimateEditTitle => 'แก้ไขใบเสนอราคา';

  @override
  String get estimateCreatedSnackbar => 'บันทึกใบเสนอราคาแล้ว';

  @override
  String get estimateUpdatedSnackbar => 'อัปเดตใบเสนอราคาแล้ว';

  @override
  String get estimateIssueDate => 'วันที่ออก';

  @override
  String get estimateExpiryDate => 'วันที่หมดอายุ';

  @override
  String get estimateExpiresPrefix => 'หมดอายุ ';

  @override
  String get estimateConvertToInvoice => 'แปลงเป็นใบแจ้งหนี้';

  @override
  String get estimateConvertedSnackbar => 'แปลงใบเสนอราคาเป็นใบแจ้งหนี้แล้ว';

  @override
  String get estimateConvertFailed => 'ไม่สามารถแปลงใบเสนอราคาได้';

  @override
  String get estimateMarkSent => 'ทำเครื่องหมายว่าส่งแล้ว';

  @override
  String get estimateMarkAccepted => 'ทำเครื่องหมายว่ายอมรับแล้ว';

  @override
  String get estimateMarkDeclined => 'ทำเครื่องหมายว่าปฏิเสธแล้ว';

  @override
  String get estimateConvertedTitle => 'แปลงแล้ว';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'แปลงเป็นใบแจ้งหนี้ $invoiceId แล้ว';
  }

  @override
  String get estimateDetailTotal => 'ยอดรวมใบเสนอราคา';

  @override
  String get estimateStatusSent => 'ส่งแล้ว';

  @override
  String get estimateStatusAccepted => 'ยอมรับแล้ว';

  @override
  String get estimateStatusDeclined => 'ปฏิเสธแล้ว';

  @override
  String get estimateStatusExpired => 'หมดอายุแล้ว';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count รายการ',
      one: '$count รายการ',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'ลบใบเสนอราคา?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'ลบ \"$estimateNumber\"? การดำเนินการนี้ไม่สามารถย้อนกลับได้';
  }

  @override
  String get estimatePdfFailed => 'ไม่สามารถสร้าง PDF ได้';

  @override
  String get pdfEstimate => 'ใบเสนอราคา';

  @override
  String get pdfEstimateNumber => 'ใบเสนอราคาเลขที่:';

  @override
  String get pdfValidUntil => 'ใช้ได้จนถึง:';

  @override
  String get invoiceDetailPaymentTerms => 'เงื่อนไขการชำระเงิน';

  @override
  String get recurringListTitle => 'ใบแจ้งหนี้ประจำ';

  @override
  String get recurringListEmpty => 'ยังไม่มีใบแจ้งหนี้ประจำ';

  @override
  String get recurringListEmptySubtitle =>
      'ตั้งค่าใบแจ้งหนี้อัตโนมัติสำหรับลูกค้าและบริการที่สม่ำเสมอ';

  @override
  String get recurringCreateTitle => 'ประจำใหม่';

  @override
  String get recurringEditTitle => 'แก้ไขประจำ';

  @override
  String get recurringCreatedSnackbar => 'บันทึกใบแจ้งหนี้ประจำแล้ว';

  @override
  String get recurringUpdatedSnackbar => 'อัปเดตใบแจ้งหนี้ประจำแล้ว';

  @override
  String get recurringDeleteTitle => 'ลบใบแจ้งหนี้ประจำ?';

  @override
  String recurringDeleteMessage(String title) {
    return 'ลบ \"$title\"? ใบแจ้งหนี้ที่มีอยู่จะไม่ถูกลบ';
  }

  @override
  String get recurringTitleLabel => 'ชื่อ';

  @override
  String get recurringTitleHint => 'เช่น ค่าจ้างรายเดือน';

  @override
  String get recurringClientLabel => 'ลูกค้า';

  @override
  String get recurringFrequencyLabel => 'ความถี่';

  @override
  String get recurringFrequencyWeekly => 'รายสัปดาห์';

  @override
  String get recurringFrequencyBiweekly => 'ทุกสองสัปดาห์';

  @override
  String get recurringFrequencyMonthly => 'รายเดือน';

  @override
  String get recurringFrequencyQuarterly => 'รายไตรมาส';

  @override
  String get recurringFrequencyYearly => 'รายปี';

  @override
  String get recurringNextRun => 'การรันครั้งถัดไป';

  @override
  String get recurringDueDays => 'ครบกำหนดใน';

  @override
  String get recurringDays => 'วัน';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count รายการ',
      one: '$count รายการ',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'รายงาน';

  @override
  String get reportsSubtitle => 'การวิเคราะห์ธุรกิจ';

  @override
  String get reportsEmpty => 'สร้างใบแจ้งหนี้เพื่อดูรายงาน';

  @override
  String get reportsCollected => 'เก็บเงินแล้ว';

  @override
  String get reportsOutstanding => 'ค้างชำระ';

  @override
  String get reportsMonthlyRevenue => 'รายได้รายเดือน';

  @override
  String get reportsLast6Months => '6 เดือนล่าสุด';

  @override
  String get reportsByStatus => 'ตามสถานะ';

  @override
  String get reportsTopClients => 'ลูกค้าอันดับต้นๆ';

  @override
  String get paymentLinkTitle => 'ลิงก์การชำระเงิน';

  @override
  String get paymentLinkNotSet => 'ยังไม่ได้ตั้งลิงก์การชำระเงินในการตั้งค่า';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'ลิงก์การชำระเงินของคุณจะรวมอยู่ใน PDF ใบแจ้งหนี้และสามารถคัดลอกจากเมนูใบแจ้งหนี้ได้';

  @override
  String get paymentLinkSaved => 'บันทึกลิงก์การชำระเงินแล้ว';

  @override
  String get settingsPaymentLinkNotSet => 'ยังไม่ได้ตั้ง';

  @override
  String get invoiceDetailCopyPaymentLink => 'คัดลอกลิงก์การชำระเงิน';

  @override
  String get paymentLinkCopied => 'คัดลอกลิงก์การชำระเงินแล้ว';

  @override
  String get pdfPayOnline => 'ชำระเงินออนไลน์';

  @override
  String get exportXml => 'ส่งออก XML';

  @override
  String get exportXmlFailed => 'ไม่สามารถส่งออก XML ได้';
}
