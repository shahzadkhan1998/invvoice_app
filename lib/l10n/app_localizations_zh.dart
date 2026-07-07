// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => '2分钟创建专业发票';

  @override
  String get bottomNavDashboard => '仪表盘';

  @override
  String get bottomNavInvoices => '发票';

  @override
  String get bottomNavClients => '客户';

  @override
  String get bottomNavSettings => '设置';

  @override
  String get commonCancel => '取消';

  @override
  String get commonDelete => '删除';

  @override
  String get commonSave => '保存';

  @override
  String get commonSearch => '搜索';

  @override
  String get commonBack => '返回';

  @override
  String get commonContinue => '继续';

  @override
  String get commonAdd => '添加';

  @override
  String get commonEdit => '编辑';

  @override
  String get commonCreate => '创建';

  @override
  String get commonClear => '清除';

  @override
  String get commonView => '查看';

  @override
  String get commonShare => '分享';

  @override
  String get commonExportPdf => '导出PDF';

  @override
  String get commonSharePdf => '分享PDF';

  @override
  String get commonSaveChanges => '保存更改';

  @override
  String get commonRequired => '必填';

  @override
  String get commonInvalid => '无效';

  @override
  String get commonSendLink => '发送链接';

  @override
  String get commonGeneratingPdf => '正在生成PDF...';

  @override
  String get dashboardGreetingMorning => '早上好';

  @override
  String get dashboardGreetingAfternoon => '下午好';

  @override
  String get dashboardGreetingEvening => '晚上好';

  @override
  String get dashboardSubtitle => '您的业务概览';

  @override
  String get dashboardOutstanding => '待收';

  @override
  String get dashboardOverdue => '逾期';

  @override
  String get dashboardThisMonth => '本月';

  @override
  String get dashboardInvoices => '张发票';

  @override
  String dashboardPaidCount(Object count) {
    return '$count 已付';
  }

  @override
  String get dashboardRecentInvoices => '最近发票';

  @override
  String get dashboardSeeAll => '查看全部 →';

  @override
  String get dashboardNewInvoice => '新建发票';

  @override
  String get dashboardNoInvoicesYet => '暂无发票';

  @override
  String get dashboardNoInvoicesSubtitle => '在2分钟内创建您的第一张专业发票';

  @override
  String get dashboardCreateInvoice => '创建发票';

  @override
  String get dashboardMarkPaid => '标记已付';

  @override
  String get dashboardDuePrefix => '到期 ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '逾期 $days 天';
  }

  @override
  String get deleteInvoiceTitle => '删除发票？';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return '删除 $invoiceNumber？此操作无法撤销。';
  }

  @override
  String get loginHeading => '欢迎回来';

  @override
  String get loginSubtitle => '登录您的 InvoiceFlow 账户';

  @override
  String get loginEmailLabel => '电子邮箱';

  @override
  String get loginEmailHint => 'you@example.com';

  @override
  String get loginEmailRequired => '邮箱为必填项';

  @override
  String get loginEmailInvalid => '请输入有效的邮箱地址';

  @override
  String get loginPasswordLabel => '密码';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => '密码为必填项';

  @override
  String get loginPasswordMinLength => '密码至少需要6个字符';

  @override
  String get loginForgotPassword => '忘记密码？';

  @override
  String get loginSignIn => '登录';

  @override
  String get loginOrContinueWith => '或继续使用';

  @override
  String get loginContinueWithGoogle => '使用Google登录';

  @override
  String get loginNoAccount => '还没有账户？';

  @override
  String get loginSignUp => '注册';

  @override
  String get loginResetPasswordTitle => '重置密码';

  @override
  String get loginResetPasswordMessage => '输入您的邮箱，我们将发送重置链接。';

  @override
  String get loginResetPasswordHint => 'you@example.com';

  @override
  String get loginResetLinkSent => '重置链接已发送！请查看您的邮箱。';

  @override
  String get loginResetLinkFailed => '发送重置链接失败。';

  @override
  String get registerHeading => '创建账户';

  @override
  String get registerSubtitle => '今天就开始发送专业发票';

  @override
  String get registerNameLabel => '全名';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => '姓名为必填项';

  @override
  String get registerNameMinLength => '姓名至少需要2个字符';

  @override
  String get registerEmailLabel => '电子邮箱';

  @override
  String get registerEmailHint => 'you@example.com';

  @override
  String get registerEmailRequired => '邮箱为必填项';

  @override
  String get registerEmailInvalid => '请输入有效的邮箱地址';

  @override
  String get registerPasswordLabel => '密码';

  @override
  String get registerPasswordHint => '至少6个字符';

  @override
  String get registerPasswordRequired => '密码为必填项';

  @override
  String get registerPasswordMinLength => '密码至少需要6个字符';

  @override
  String get registerConfirmPasswordLabel => '确认密码';

  @override
  String get registerConfirmPasswordHint => '再次输入密码';

  @override
  String get registerConfirmPasswordRequired => '请确认您的密码';

  @override
  String get registerPasswordsDoNotMatch => '密码不匹配';

  @override
  String get registerCreateAccount => '创建账户';

  @override
  String get registerHaveAccount => '已有账户？';

  @override
  String get registerSignIn => '登录';

  @override
  String get authErrorWeakPassword => '密码太弱';

  @override
  String get authErrorEmailAlreadyInUse => '账户已存在';

  @override
  String get authErrorUserNotFound => '未找到使用此邮箱的用户';

  @override
  String get authErrorWrongPassword => '密码不正确';

  @override
  String get authErrorInvalidEmail => '无效的邮箱地址';

  @override
  String get authErrorTooManyRequests => '尝试次数过多。请稍后重试。';

  @override
  String get authErrorDefault => '验证失败。请重试。';

  @override
  String get authErrorGoogleSignInFailed => 'Google登录失败。';

  @override
  String get invoiceListTitle => '发票';

  @override
  String get invoiceListSearchHint => '搜索发票...';

  @override
  String get invoiceListSortDate => '按日期排序';

  @override
  String get invoiceListSortAmount => '按金额排序';

  @override
  String get invoiceListSortClient => '按客户排序';

  @override
  String get invoiceListTabAll => '全部';

  @override
  String get invoiceListTabPaid => '已付';

  @override
  String get invoiceListTabPending => '待处理';

  @override
  String get invoiceListTabOverdue => '逾期';

  @override
  String get invoiceListTabDraft => '草稿';

  @override
  String get invoiceListEmpty => '未找到发票';

  @override
  String get invoiceCreateTitle => '新建发票';

  @override
  String get invoiceEditTitle => '编辑发票';

  @override
  String get invoiceSaveDraft => '保存草稿';

  @override
  String get invoiceStepClient => '客户';

  @override
  String get invoiceStepItems => '项目';

  @override
  String get invoiceStepReview => '审核';

  @override
  String get invoiceSelectClient => '选择客户';

  @override
  String get invoiceSelectClientSubtitle => '选择此发票的接收方';

  @override
  String get invoiceSearchClients => '搜索客户...';

  @override
  String get invoiceAddNewClient => '添加新客户';

  @override
  String get invoiceNoClientsFound => '未找到客户';

  @override
  String get invoiceAddLineItem => '添加明细';

  @override
  String get invoiceItemDescription => '描述';

  @override
  String get invoiceItemDescriptionHint => '例如：网站开发';

  @override
  String get invoiceItemQuickAdd => '快速添加：';

  @override
  String get invoiceItemQty => '数量';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => '费率';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => '添加项目';

  @override
  String get invoiceLineItems => '发票明细';

  @override
  String get invoiceLineItemsSubtitle => '添加服务或产品';

  @override
  String get invoiceNoItems => '暂无项目。添加您的第一个项目。';

  @override
  String get invoiceTaxRate => '税率 (%)';

  @override
  String get invoiceSubtotal => '小计';

  @override
  String invoiceTax(Object taxRate) {
    return '税金 ($taxRate%)';
  }

  @override
  String get invoiceTotal => '总计';

  @override
  String get invoiceReviewHeading => '审核并定稿';

  @override
  String get invoiceReviewSubtitle => '设置日期，添加备注、Logo和签名';

  @override
  String get invoiceCompanyLogo => '公司Logo';

  @override
  String get invoiceAddLogo => '添加Logo';

  @override
  String get invoiceInvoiceDate => '发票日期';

  @override
  String get invoiceDueDate => '到期日期';

  @override
  String get invoiceNotesLabel => '备注（可选）';

  @override
  String get invoiceNotesHint => '感谢您的惠顾！';

  @override
  String get invoicePaymentTermsLabel => '付款条款（可选）';

  @override
  String get invoicePaymentTermsHint => '30天内付款';

  @override
  String get invoiceSignatureLabel => '签名';

  @override
  String get invoiceSignatureOverwrite => '已有签名已保存。在上面绘制以覆盖。';

  @override
  String get invoiceCreatedSnackbar => '发票创建成功！';

  @override
  String get invoiceUpdatedSnackbar => '发票更新成功！';

  @override
  String get invoiceDetailTitle => '发票';

  @override
  String get invoiceDetailMarkAsPaid => '标记为已付';

  @override
  String get invoiceDetailTotalAmount => '总金额';

  @override
  String get invoiceDetailIssued => '已发出';

  @override
  String get invoiceDetailDue => '到期';

  @override
  String get invoiceDetailPaid => '已付';

  @override
  String get invoiceDetailBillTo => '收款方';

  @override
  String get invoiceDetailItems => '项目';

  @override
  String get invoiceDetailNotes => '备注';

  @override
  String get invoiceDetailSignature => '签名';

  @override
  String get invoiceDetailMarkedPaidSnackbar => '发票已标记为已付！';

  @override
  String get invoiceDetailPdfFailed => '生成PDF失败';

  @override
  String get clientListTitle => '客户';

  @override
  String get clientListSearchHint => '搜索客户...';

  @override
  String get clientListTotalClients => '客户总数';

  @override
  String get clientListTotalBilled => '总开票金额';

  @override
  String get clientListEmptySearch => '未找到客户';

  @override
  String get clientListEmpty => '暂无客户';

  @override
  String get clientListEmptySubtitle => '添加您的第一个客户以开始创建发票';

  @override
  String get clientListAddClient => '添加客户';

  @override
  String get clientListTotalBilledLabel => '总开票金额';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count 张发票';
  }

  @override
  String get clientCreateTitle => '新建客户';

  @override
  String get clientEditTitle => '编辑客户';

  @override
  String get clientBasicInfo => '基本信息';

  @override
  String get clientNameLabel => '全名 *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => '姓名为必填项';

  @override
  String get clientNameTooShort => '姓名太短';

  @override
  String get clientEmailLabel => '电子邮箱 *';

  @override
  String get clientEmailHint => 'billing@company.com';

  @override
  String get clientEmailRequired => '邮箱为必填项';

  @override
  String get clientEmailInvalid => '请输入有效的邮箱地址';

  @override
  String get clientPhoneLabel => '电话号码';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => '地址';

  @override
  String get clientAddressLabel => '街道地址';

  @override
  String get clientAddressHint => '123 Business Park, Office 45';

  @override
  String get clientCityLabel => '城市 / 国家';

  @override
  String get clientCityHint => '迪拜，阿拉伯联合酋长国';

  @override
  String get clientBillingDefaults => '开票默认设置';

  @override
  String get clientDefaultCurrency => '默认货币';

  @override
  String get clientDefaultTaxRate => '默认税率 (VAT/GST)';

  @override
  String get clientVatLabel => '增值税 / 税务登记号';

  @override
  String get clientVatHint => '123456789012345（可选）';

  @override
  String get clientUpdateButton => '更新客户';

  @override
  String get clientAddButton => '添加客户';

  @override
  String get clientUpdatedSnackbar => '客户更新成功！';

  @override
  String get clientAddedSnackbar => '客户添加成功！';

  @override
  String get clientDetailInvoices => '发票';

  @override
  String get clientDetailTotalBilled => '总开票金额';

  @override
  String get clientDetailOutstanding => '待收';

  @override
  String get clientDetailEdit => '编辑';

  @override
  String get clientDetailNewInvoice => '新建发票';

  @override
  String get clientDetailEmailClient => '发送邮件';

  @override
  String get clientDetailClientDetails => '客户详情';

  @override
  String get clientDetailEmail => '邮箱';

  @override
  String get clientDetailPhone => '电话';

  @override
  String get clientDetailAddress => '地址';

  @override
  String get clientDetailCity => '城市';

  @override
  String get clientDetailCurrency => '货币';

  @override
  String get clientDetailTaxRate => '税率';

  @override
  String get clientDetailVatNumber => '增值税号';

  @override
  String get clientDetailInvoiceHistory => '发票历史';

  @override
  String get clientDetailNoInvoices => '此客户暂无发票';

  @override
  String get deleteClientTitle => '删除客户？';

  @override
  String deleteClientMessage(Object clientName) {
    return '删除 $clientName？此操作无法撤销。';
  }

  @override
  String get settingsTitle => '设置';

  @override
  String get settingsYourName => '您的姓名';

  @override
  String get settingsBackupTitle => '备份您的发票';

  @override
  String get settingsBackupDescription => '登录以安全同步数据并随时随地访问。';

  @override
  String get settingsSignInRegister => '登录或注册';

  @override
  String get settingsBusinessSection => '业务设置';

  @override
  String get settingsBusinessDetails => '业务详情';

  @override
  String get settingsBusinessDetailsSubtitle => '设置您的业务名称';

  @override
  String get settingsInvoicePrefix => '发票前缀';

  @override
  String get settingsDefaultCurrency => '默认货币';

  @override
  String get settingsAppSection => '应用设置';

  @override
  String get settingsDarkMode => '深色模式';

  @override
  String get settingsDailyNotification => '每日通知';

  @override
  String get settingsDailyNotificationNotSet => '未设置';

  @override
  String get settingsLanguage => '语言';

  @override
  String get settingsLanguageLabel => '中文';

  @override
  String get settingsAboutSection => '关于';

  @override
  String get settingsRateApp => '评价应用';

  @override
  String get settingsHelpSupport => '帮助与支持';

  @override
  String get settingsPrivacyPolicy => '隐私政策';

  @override
  String get settingsVersion => '版本';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => '退出登录';

  @override
  String get settingsEditProfile => '编辑个人资料';

  @override
  String get settingsProfileNameLabel => '全名';

  @override
  String get settingsProfileNameHint => '您的姓名';

  @override
  String get settingsBusinessNameLabel => '公司名称';

  @override
  String get settingsBusinessNameHint => '您的有限公司';

  @override
  String get settingsBusinessEmailLabel => '公司邮箱';

  @override
  String get settingsBusinessEmailHint => 'billing@company.com';

  @override
  String get settingsPhoneLabel => '电话';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => '地址';

  @override
  String get settingsAddressHint => '迪拜，阿拉伯联合酋长国';

  @override
  String get settingsBusinessDetailsSaved => '业务详情已保存！';

  @override
  String get settingsInvoicePrefixTitle => '发票编号前缀';

  @override
  String get settingsInvoicePrefixHint => '例如：INV-, #, Bill-';

  @override
  String get settingsNotificationScheduled => '每日通知已成功设置！';

  @override
  String get settingsSignOutTitle => '退出登录？';

  @override
  String get settingsSignOutMessage => '您确定要退出 InvoiceFlow 吗？';

  @override
  String get settingsSignedOut => '已成功退出登录。';

  @override
  String get statusPaid => '已付';

  @override
  String get statusOverdue => '逾期';

  @override
  String get statusPending => '待处理';

  @override
  String get statusDraft => '草稿';

  @override
  String get statusCancelled => '已取消';

  @override
  String get notificationChannelName => '每日提醒';

  @override
  String get notificationChannelDescription => '提醒您每天检查发票';

  @override
  String get notificationTitle => '发票提醒';

  @override
  String get notificationBody => '是时候查看您最近的发票并跟踪待处理付款了。';

  @override
  String get pdfInvoice => '发票';

  @override
  String get pdfInvoiceNumber => '发票编号：';

  @override
  String get pdfDate => '日期：';

  @override
  String get pdfDueDate => '到期日期：';

  @override
  String get pdfBillTo => '收款方：';

  @override
  String get pdfDescription => '描述';

  @override
  String get pdfQty => '数量';

  @override
  String get pdfRate => '费率';

  @override
  String get pdfAmount => '金额';

  @override
  String get pdfSubtotal => '小计：';

  @override
  String pdfTax(Object taxRate) {
    return '税金 ($taxRate%)：';
  }

  @override
  String get pdfTotal => '总计：';

  @override
  String get pdfSignature => '签名：';

  @override
  String get pdfNotes => '备注：';

  @override
  String get pdfPaymentTerms => '付款条款：';

  @override
  String get pdfThankYou => '感谢您的惠顾！';

  @override
  String get quickAddWebDesign => '网页设计';

  @override
  String get quickAddDevelopment => '开发';

  @override
  String get quickAddConsulting => '咨询';

  @override
  String get quickAddSeo => 'SEO优化';

  @override
  String get quickAddContentWriting => '内容撰写';
}
