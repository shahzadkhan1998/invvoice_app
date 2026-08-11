// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'プロの請求書を2分で作成';

  @override
  String get bottomNavDashboard => 'ダッシュボード';

  @override
  String get bottomNavInvoices => '請求書';

  @override
  String get bottomNavClients => '顧客';

  @override
  String get bottomNavSettings => '設定';

  @override
  String get commonCancel => 'キャンセル';

  @override
  String get commonDelete => '削除';

  @override
  String get commonSave => '保存';

  @override
  String get commonSearch => '検索';

  @override
  String get commonBack => '戻る';

  @override
  String get commonContinue => '続ける';

  @override
  String get commonAdd => '追加';

  @override
  String get commonEdit => '編集';

  @override
  String get commonCreate => '作成';

  @override
  String get commonClear => 'クリア';

  @override
  String get commonView => '表示';

  @override
  String get commonShare => '共有';

  @override
  String get commonExportPdf => 'PDFに書き出し';

  @override
  String get commonSharePdf => 'PDFを共有';

  @override
  String get commonSaveChanges => '変更を保存';

  @override
  String get commonRequired => '必須';

  @override
  String get commonInvalid => '無効';

  @override
  String get commonSendLink => 'リンクを送信';

  @override
  String get commonGeneratingPdf => 'PDFを作成中...';

  @override
  String get dashboardGreetingMorning => 'おはようございます';

  @override
  String get dashboardGreetingAfternoon => 'こんにちは';

  @override
  String get dashboardGreetingEvening => 'こんばんは';

  @override
  String get dashboardSubtitle => 'ビジネスの概要はこちら';

  @override
  String get dashboardOutstanding => '未回収';

  @override
  String get dashboardOverdue => '期限切れ';

  @override
  String get dashboardThisMonth => '今月';

  @override
  String get dashboardInvoices => '件の請求書';

  @override
  String dashboardPaidCount(Object count) {
    return '$count件支払い済み';
  }

  @override
  String get dashboardRecentInvoices => '最近の請求書';

  @override
  String get dashboardSeeAll => 'すべて表示';

  @override
  String get dashboardNotifications => '通知';

  @override
  String get dashboardNotificationsHint =>
      '定期的に期限切れや支払い待ちの請求書を確認して、キャッシュフローを把握しましょう。';

  @override
  String get dashboardNewInvoice => '新しい請求書';

  @override
  String get dashboardNoInvoicesYet => '請求書はまだありません';

  @override
  String get dashboardNoInvoicesSubtitle => '2分以内に最初のプロフェッショナルな請求書を作成しましょう';

  @override
  String get dashboardCreateInvoice => '請求書を作成';

  @override
  String get dashboardMarkPaid => '支払い済みにする';

  @override
  String get dashboardDuePrefix => '期限 ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days日間延滞';
  }

  @override
  String get deleteInvoiceTitle => '請求書を削除しますか?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return '$invoiceNumberを削除しますか?この操作は元に戻せません。';
  }

  @override
  String get loginHeading => 'おかえりなさい';

  @override
  String get loginSubtitle => 'InvoiceFlowアカウントにサインイン';

  @override
  String get loginEmailLabel => 'メールアドレス';

  @override
  String get loginEmailHint => 'you@example.com';

  @override
  String get loginEmailRequired => 'メールアドレスが必要です';

  @override
  String get loginEmailInvalid => '有効なメールアドレスを入力してください';

  @override
  String get loginPasswordLabel => 'パスワード';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'パスワードが必要です';

  @override
  String get loginPasswordMinLength => 'パスワードは6文字以上である必要があります';

  @override
  String get loginForgotPassword => 'パスワードをお忘れですか?';

  @override
  String get loginSignIn => 'サインイン';

  @override
  String get loginOrContinueWith => 'または次で続ける';

  @override
  String get loginContinueWithGoogle => 'Googleで続ける';

  @override
  String get loginNoAccount => 'アカウントをお持ちでないですか? ';

  @override
  String get loginSignUp => '新規登録';

  @override
  String get loginResetPasswordTitle => 'パスワードをリセット';

  @override
  String get loginResetPasswordMessage => 'メールアドレスを入力してください。リセットリンクを送信します。';

  @override
  String get loginResetPasswordHint => 'you@example.com';

  @override
  String get loginResetLinkSent => 'リセットリンクを送信しました。メールをご確認ください。';

  @override
  String get loginResetLinkFailed => 'リセットリンクの送信に失敗しました。';

  @override
  String get registerHeading => 'アカウント作成';

  @override
  String get registerSubtitle => '今すぐプロフェッショナルな請求書の送信を始めましょう';

  @override
  String get registerNameLabel => '氏名';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => '名前が必要です';

  @override
  String get registerNameMinLength => '名前は2文字以上である必要があります';

  @override
  String get registerEmailLabel => 'メールアドレス';

  @override
  String get registerEmailHint => 'you@example.com';

  @override
  String get registerEmailRequired => 'メールアドレスが必要です';

  @override
  String get registerEmailInvalid => '有効なメールアドレスを入力してください';

  @override
  String get registerPasswordLabel => 'パスワード';

  @override
  String get registerPasswordHint => '6文字以上';

  @override
  String get registerPasswordRequired => 'パスワードが必要です';

  @override
  String get registerPasswordMinLength => 'パスワードは6文字以上である必要があります';

  @override
  String get registerConfirmPasswordLabel => 'パスワードを確認';

  @override
  String get registerConfirmPasswordHint => 'パスワードを再入力';

  @override
  String get registerConfirmPasswordRequired => 'パスワードを確認してください';

  @override
  String get registerPasswordsDoNotMatch => 'パスワードが一致しません';

  @override
  String get registerCreateAccount => 'アカウント作成';

  @override
  String get registerHaveAccount => 'すでにアカウントをお持ちですか? ';

  @override
  String get registerSignIn => 'サインイン';

  @override
  String get authTermsOfService => '利用規約';

  @override
  String get authPrivacyPolicy => 'プライバシーポリシー';

  @override
  String get authAgreeRequired => '続行するには利用規約とプライバシーポリシーに同意してください';

  @override
  String get loginAgreePrefix => '続行することで、当社の';

  @override
  String get registerAgreePrefix => '私は';

  @override
  String get authAgreeAnd => 'および';

  @override
  String get authTermsSheet =>
      'これらの利用規約は、InvoiceFlowのご利用に適用されます。本アプリにアクセスまたは使用することで、お客様はこれらの規約に拘束されることに同意したものとみなされます。\n\n1. お客様は、ご自身が作成する請求書、見積書、その他のデータの正確性について責任を負います。\n2. 本アプリは、明示または黙示を問わず、いかなる保証もなく「現状のまま」提供されます。\n3. 当社は、本サービスのご利用から生じるいかなる損失についても責任を負いません。\n4. 本アプリを違法または禁止された目的で使用してはなりません。\n5. 当社はこれらの規約を随時更新することがあります。本アプリの継続的な使用は、更新された規約への同意を意味します。';

  @override
  String get authPrivacySheet =>
      '当社はお客様のプライバシーを大切にしています。\n\n1. データの保存：お客様の請求書、クライアント、設定はデバイスにローカルに保存されます。\n2. クラウド同期：サインインすると、データはお客様のアカウントに同期され、すべてのデバイスで利用できるようになります。\n3. 当社はお客様の個人情報を販売または共有することはありません。\n4. 分析：アプリの改善のために、匿名化された利用データを収集する場合があります。\n5. お問い合わせ：プライバシーに関するご質問は support@invoiceflow.app までご連絡ください。';

  @override
  String get authErrorWeakPassword => 'パスワードが脆弱すぎます';

  @override
  String get authErrorEmailAlreadyInUse => 'このアカウントは既に存在します';

  @override
  String get authErrorUserNotFound => 'このメールアドレスのユーザーが見つかりません';

  @override
  String get authErrorWrongPassword => 'パスワードが正しくありません';

  @override
  String get authErrorInvalidEmail => '無効なメールアドレスです';

  @override
  String get authErrorTooManyRequests => '試行回数が多すぎます。後でもう一度お試しください';

  @override
  String get authErrorDefault => '認証に失敗しました。もう一度お試しください。';

  @override
  String get authErrorGoogleSignInFailed => 'Googleサインインに失敗しました。';

  @override
  String get invoiceListTitle => '請求書';

  @override
  String get invoiceListSearchHint => '請求書を検索...';

  @override
  String get invoiceListSortDate => '日付順';

  @override
  String get invoiceListSortAmount => '金額順';

  @override
  String get invoiceListSortClient => '顧客順';

  @override
  String get invoiceListTabAll => 'すべて';

  @override
  String get invoiceListTabPaid => '支払い済み';

  @override
  String get invoiceListTabPending => '支払い待ち';

  @override
  String get invoiceListTabOverdue => '期限切れ';

  @override
  String get invoiceListTabDraft => '下書き';

  @override
  String get invoiceListEmpty => '請求書が見つかりません';

  @override
  String get invoiceCreateTitle => '新しい請求書';

  @override
  String get invoiceEditTitle => '請求書を編集';

  @override
  String get invoiceSaveDraft => '下書きを保存';

  @override
  String get invoiceStepClient => '顧客';

  @override
  String get invoiceStepItems => '品目';

  @override
  String get invoiceStepReview => '確認';

  @override
  String get invoiceSelectClient => '顧客を選択';

  @override
  String get invoiceSelectClientSubtitle => 'この請求書の宛先を選択してください';

  @override
  String get invoiceSearchClients => '顧客を検索...';

  @override
  String get invoiceAddNewClient => '新しい顧客を追加';

  @override
  String get invoiceNoClientsFound => '顧客が見つかりません';

  @override
  String get invoiceSelectClientEmptyHint => '請求書の作成を始めるには、最初の顧客を作成してください';

  @override
  String get invoiceAddLineItem => '明細行を追加';

  @override
  String get invoiceItemDescription => '説明';

  @override
  String get invoiceItemDescriptionHint => '例：Webデザイン';

  @override
  String get invoiceItemQuickAdd => 'クイック追加：';

  @override
  String get invoiceItemQty => '数量';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => '単価';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => '品目を追加';

  @override
  String get invoiceLineItems => '明細行';

  @override
  String get invoiceLineItemsSubtitle => 'サービスや商品を追加';

  @override
  String get invoiceNoItems => 'まだ品目がありません。最初の品目を追加してください。';

  @override
  String get invoiceTaxRate => '税率 (%)';

  @override
  String get invoiceSubtotal => '小計';

  @override
  String invoiceTax(Object taxRate) {
    return '税 ($taxRate%)';
  }

  @override
  String get invoiceTotal => '合計';

  @override
  String get invoiceReviewHeading => '確認と確定';

  @override
  String get invoiceReviewSubtitle => '日付を設定し、メモ・ロゴ・署名を追加';

  @override
  String get invoiceCompanyLogo => '会社ロゴ';

  @override
  String get invoiceAddLogo => 'ロゴを追加';

  @override
  String get invoiceInvoiceDate => '請求日';

  @override
  String get invoiceDueDate => '支払い期限';

  @override
  String get invoiceNotesLabel => 'メモ（任意）';

  @override
  String get invoiceNotesHint => 'ご利用ありがとうございます！';

  @override
  String get invoicePaymentTermsLabel => '支払い条件（任意）';

  @override
  String get invoicePaymentTermsHint => '支払い期限は30日以内';

  @override
  String get invoiceSignatureLabel => '署名';

  @override
  String get invoiceSignatureOverwrite => '既存の署名が保存されています。上に描画すると上書きされます。';

  @override
  String get invoiceCreatedSnackbar => '請求書を作成しました！';

  @override
  String get invoiceUpdatedSnackbar => '請求書を更新しました！';

  @override
  String get invoiceDetailTitle => '請求書';

  @override
  String get invoiceDetailMarkAsPaid => '支払い済みにする';

  @override
  String get invoiceDetailTotalAmount => '合計金額';

  @override
  String get invoiceDetailIssued => '発行日';

  @override
  String get invoiceDetailDue => '支払い期限';

  @override
  String get invoiceDetailPaid => '支払い済み';

  @override
  String get invoiceDetailBillTo => '請求先';

  @override
  String get invoiceDetailItems => '品目';

  @override
  String get invoiceDetailNotes => 'メモ';

  @override
  String get invoiceDetailSignature => '署名';

  @override
  String get invoiceDetailMarkedPaidSnackbar => '請求書を支払い済みにしました！';

  @override
  String get invoiceDetailPdfFailed => 'PDFの生成に失敗しました';

  @override
  String get clientListTitle => '顧客';

  @override
  String get clientListSearchHint => '顧客を検索...';

  @override
  String get clientListTotalClients => '顧客総数';

  @override
  String get clientListTotalBilled => '請求合計';

  @override
  String get clientListEmptySearch => '顧客が見つかりません';

  @override
  String get clientListEmpty => '顧客はまだいません';

  @override
  String get clientListEmptySubtitle => '請求書の作成を始めるには、最初の顧客を追加してください';

  @override
  String get clientListAddClient => '顧客を追加';

  @override
  String get clientListTotalBilledLabel => '請求合計';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count件の請求書';
  }

  @override
  String get clientCreateTitle => '新しい顧客';

  @override
  String get clientEditTitle => '顧客を編集';

  @override
  String get clientBasicInfo => '基本情報';

  @override
  String get clientNameLabel => '氏名 *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => '名前が必要です';

  @override
  String get clientNameTooShort => '名前が短すぎます';

  @override
  String get clientEmailLabel => 'メールアドレス *';

  @override
  String get clientEmailHint => 'billing@company.com';

  @override
  String get clientEmailRequired => 'メールアドレスが必要です';

  @override
  String get clientEmailInvalid => '有効なメールアドレスを入力してください';

  @override
  String get clientPhoneLabel => '電話番号';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => '住所';

  @override
  String get clientAddressLabel => '番地・住所';

  @override
  String get clientAddressHint => '123 ビジネスパーク、オフィス45';

  @override
  String get clientCityLabel => '市区町村 / 国';

  @override
  String get clientCityHint => 'ドバイ、アラブ首長国連邦';

  @override
  String get clientBillingDefaults => '請求の既定値';

  @override
  String get clientDefaultCurrency => '既定通貨';

  @override
  String get clientDefaultTaxRate => '既定税率（VAT/GST）';

  @override
  String get clientVatLabel => 'VAT / 税登録番号';

  @override
  String get clientVatHint => '123456789012345（任意）';

  @override
  String get clientUpdateButton => '顧客を更新';

  @override
  String get clientAddButton => '顧客を追加';

  @override
  String get clientUpdatedSnackbar => '顧客を更新しました！';

  @override
  String get clientAddedSnackbar => '顧客を追加しました！';

  @override
  String get clientDetailInvoices => '請求書';

  @override
  String get clientDetailTotalBilled => '請求合計';

  @override
  String get clientDetailOutstanding => '未回収';

  @override
  String get clientDetailEdit => '編集';

  @override
  String get clientDetailNewInvoice => '新しい請求書';

  @override
  String get clientDetailEmailClient => '顧客にメールを送信';

  @override
  String get clientDetailClientDetails => '顧客情報';

  @override
  String get clientDetailEmail => 'メール';

  @override
  String get clientDetailPhone => '電話';

  @override
  String get clientDetailAddress => '住所';

  @override
  String get clientDetailCity => '市区町村';

  @override
  String get clientDetailCurrency => '通貨';

  @override
  String get clientDetailTaxRate => '税率';

  @override
  String get clientDetailVatNumber => 'VAT番号';

  @override
  String get clientDetailInvoiceHistory => '請求履歴';

  @override
  String get clientDetailNoInvoices => 'この顧客の請求書はまだありません';

  @override
  String get deleteClientTitle => '顧客を削除しますか?';

  @override
  String deleteClientMessage(Object clientName) {
    return '$clientNameを削除しますか?この操作は元に戻せません。';
  }

  @override
  String get settingsTitle => '設定';

  @override
  String get settingsYourName => 'あなたの名前';

  @override
  String get settingsBackupTitle => '請求書をバックアップ';

  @override
  String get settingsBackupDescription => 'サインインしてデータを安全に同期し、どこからでもアクセスできます。';

  @override
  String get settingsSignInRegister => 'サインインまたは新規登録';

  @override
  String get settingsProUpsell => '無制限の請求書、クラウド同期、透かしなしにアップグレードするにはProへ。';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return '無料プランの請求書上限$limit件に達しました。無制限の請求書とクラウド同期にはProへのアップグレードをお願いします。';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return '無料プランの顧客上限$limit人に達しました。無制限の顧客とクラウド同期にはProへのアップグレードをお願いします。';
  }

  @override
  String get settingsUpgradePro => 'アップグレード';

  @override
  String get settingsBusinessSection => 'ビジネス設定';

  @override
  String get settingsBusinessDetails => 'ビジネス情報';

  @override
  String get settingsBusinessDetailsSubtitle => 'ビジネス名を設定';

  @override
  String get settingsInvoicePrefix => '請求書プレフィックス';

  @override
  String get settingsDefaultCurrency => '既定通貨';

  @override
  String get settingsAppSection => 'アプリ設定';

  @override
  String get settingsDarkMode => 'ダークモード';

  @override
  String get settingsDailyNotification => '毎日の通知';

  @override
  String get settingsDailyNotificationNotSet => '未設定';

  @override
  String get settingsLanguage => '言語';

  @override
  String get settingsLanguageLabel => '日本語';

  @override
  String get languageEnglish => '英語';

  @override
  String get languageArabic => 'アラビア語';

  @override
  String get languageFrench => 'フランス語';

  @override
  String get languageSpanish => 'スペイン語';

  @override
  String get languageUrdu => 'ウルドゥー語';

  @override
  String get languageChinese => '中国語';

  @override
  String get settingsAboutSection => 'このアプリについて';

  @override
  String get settingsRateApp => 'アプリを評価';

  @override
  String get settingsHelpSupport => 'ヘルプとサポート';

  @override
  String get settingsPrivacyPolicy => 'プライバシーポリシー';

  @override
  String get settingsHelpSupportSheet =>
      'お困りですか?support@invoiceflow.appまでご連絡ください。24時間以内にご返信いたします。';

  @override
  String get settingsPrivacySheet =>
      'お客様のデータは端末内にローカルに保存されます。お客様の個人情報を販売または共有することは一切ありません。';

  @override
  String get settingsVersion => 'バージョン';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'サインアウト';

  @override
  String get settingsEditProfile => 'プロフィールを編集';

  @override
  String get settingsProfileNameLabel => '氏名';

  @override
  String get settingsProfileNameHint => 'あなたの名前';

  @override
  String get settingsBusinessNameLabel => 'ビジネス名';

  @override
  String get settingsBusinessNameHint => 'あなたの会社株式会社';

  @override
  String get settingsBusinessEmailLabel => 'ビジネスメール';

  @override
  String get settingsBusinessEmailHint => 'billing@company.com';

  @override
  String get settingsPhoneLabel => '電話';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => '住所';

  @override
  String get settingsAddressHint => 'ドバイ、アラブ首長国連邦';

  @override
  String get settingsBusinessDetailsSaved => 'ビジネス情報を保存しました！';

  @override
  String get settingsInvoicePrefixTitle => '請求書番号プレフィックス';

  @override
  String get settingsInvoicePrefixHint => '例：INV-、#、Bill-';

  @override
  String get settingsPrefixSaved => '請求書プレフィックスを保存しました';

  @override
  String get settingsNotificationScheduled => '毎日の通知を正常に予約しました！';

  @override
  String get settingsSignOutTitle => 'サインアウトしますか?';

  @override
  String get settingsSignOutMessage => 'InvoiceFlowからサインアウトしてもよろしいですか?';

  @override
  String get settingsSignedOut => 'サインアウトしました。';

  @override
  String get statusPaid => '支払い済み';

  @override
  String get statusOverdue => '期限切れ';

  @override
  String get statusPending => '支払い待ち';

  @override
  String get statusDraft => '下書き';

  @override
  String get statusCancelled => 'キャンセル済み';

  @override
  String get notificationChannelName => '毎日のリマインダー';

  @override
  String get notificationChannelDescription => '請求書を毎日確認するようリマインドします';

  @override
  String get notificationTitle => '請求書リマインダー';

  @override
  String get notificationBody => '最近の請求書を確認し、支払い待ちの支払いを追跡する時間です。';

  @override
  String get pdfInvoice => '請求書';

  @override
  String get pdfInvoiceNumber => '請求書番号：';

  @override
  String get pdfDate => '日付：';

  @override
  String get pdfDueDate => '支払い期限：';

  @override
  String get pdfBillTo => '請求先：';

  @override
  String get pdfDescription => '説明';

  @override
  String get pdfQty => '数量';

  @override
  String get pdfRate => '単価';

  @override
  String get pdfAmount => '金額';

  @override
  String get pdfSubtotal => '小計：';

  @override
  String pdfTax(Object taxRate) {
    return '税 ($taxRate%)：';
  }

  @override
  String get pdfTotal => '合計：';

  @override
  String get pdfSignature => '署名：';

  @override
  String get pdfNotes => 'メモ：';

  @override
  String get pdfPaymentTerms => '支払い条件：';

  @override
  String get pdfThankYou => 'ご利用ありがとうございます！';

  @override
  String get quickAddWebDesign => 'ウェブデザイン';

  @override
  String get quickAddDevelopment => '開発';

  @override
  String get quickAddConsulting => 'コンサルティング';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'コンテンツ作成';

  @override
  String get paywallTitle => 'InvoiceFlow Proをアンロック';

  @override
  String get paywallSubtitle => '無制限でどこでも同期。いつでもキャンセル可能。';

  @override
  String get paywallFeatureUnlimited => '無制限の請求書と顧客';

  @override
  String get paywallFeatureSync => 'デバイス間のクラウド同期';

  @override
  String get paywallFeatureNoWatermark => '透かしなし、永久に';

  @override
  String get paywallMonthly => '月額';

  @override
  String get paywallMonthlySub => '毎月請求';

  @override
  String get paywallYearly => '年額';

  @override
  String get paywallYearlySub => 'お得な選択肢 — 2ヶ月無料';

  @override
  String get paywallRestore => '購入を復元';

  @override
  String get paywallTerms => 'サブスクリプションは自動更新されます。アプリストアの設定で管理できます。';

  @override
  String get purchaseSuccessTitle => 'Proになりました！';

  @override
  String get purchaseSuccessSubtitle =>
      '無制限の請求書、クラウド同期、透かしなしが利用可能になりました。ありがとうございます！';

  @override
  String get purchaseSuccessContinue => '続ける';

  @override
  String get paywallLoading => 'プランを読み込み中…';

  @override
  String get paywallLoadError => 'プランを読み込めませんでした。接続を確認してもう一度お試しください。';

  @override
  String get paywallNoOffering => '現在利用できるプランはありません。';

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
  String get purchaseRestored => '購入が正常に復元されました';

  @override
  String get purchaseErrorGeneric => '購入に失敗しました。もう一度お試しください。';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive => 'Proが有効です — ウォーターマークなしで請求書・クライアント無制限';

  @override
  String get settingsFreePlan => '無料プラン';

  @override
  String get settingsFreeHint => '無制限の請求書、クラウド同期などのためにアップグレード';

  @override
  String get settingsUpgradeToPro => 'Proにアップグレード';

  @override
  String get settingsManageSubscription => 'サブスクリプションを管理';

  @override
  String get customerCenterFailed => 'サブスクリプション管理を開けませんでした。';

  @override
  String get onboardingSkip => 'スキップ';

  @override
  String get onboardingNext => '次へ';

  @override
  String get onboardingGetStarted => 'はじめる';

  @override
  String get onboardingWelcomeTitle => '2分で請求書を作成';

  @override
  String get onboardingWelcomeBody => '顧客向けのプロフェッショナルなPDF請求書を、手早く美しく作成できます。';

  @override
  String get onboardingSyncTitle => 'どこでも同期';

  @override
  String get onboardingSyncBody =>
      'サインインしてデータを安全にクラウドへバックアップし、どのデバイスからでもアクセスできます。';

  @override
  String get onboardingProTitle => 'Proで無制限に';

  @override
  String get onboardingProBody =>
      'InvoiceFlow Proで無制限の請求書、クラウド同期を利用し、透かしを削除できます。';

  @override
  String get settingsAccentColor => 'アクセントカラー';

  @override
  String get settingsAccentColorHint => 'お好みの色でアプリをカスタマイズできます。';

  @override
  String get settingsCountry => '国';

  @override
  String get settingsTaxId => '税登録番号';

  @override
  String get settingsTaxIdNotSet => '未設定';

  @override
  String get settingsTaxIdHint => '例：123456789012345';

  @override
  String get settingsTaxIdSaved => '税登録番号を保存しました';

  @override
  String get catalogTitle => '商品とサービス';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count点',
      one: '$count点',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => '商品はまだありません';

  @override
  String get catalogEmptySubtitle => '再利用可能な商品とサービスを保存して、請求書への追加をより速く行えます。';

  @override
  String get catalogFromSaved => 'カタログから';

  @override
  String get catalogSaveToCatalog => '再利用のためカタログに保存';

  @override
  String get catalogAddSnackbar => 'カタログに追加しました';

  @override
  String get catalogDeleteTitle => '商品を削除しますか?';

  @override
  String catalogDeleteMessage(String description) {
    return '「$description」を削除しますか?この操作は元に戻せません。';
  }

  @override
  String get commonDone => '完了';

  @override
  String get estimateListTitle => '見積書';

  @override
  String get estimateListSearchHint => '見積書を検索…';

  @override
  String get estimateListEmpty => '見積書はまだありません';

  @override
  String get estimateListTabAll => 'すべて';

  @override
  String get estimateListTabDraft => '下書き';

  @override
  String get estimateListTabSent => '送信済み';

  @override
  String get estimateListTabAccepted => '承認済み';

  @override
  String get estimateListTabExpired => '期限切れ';

  @override
  String get estimateCreateTitle => '新しい見積書';

  @override
  String get estimateEditTitle => '見積書を編集';

  @override
  String get estimateCreatedSnackbar => '見積書を保存しました';

  @override
  String get estimateUpdatedSnackbar => '見積書を更新しました';

  @override
  String get estimateIssueDate => '発行日';

  @override
  String get estimateExpiryDate => '有効期限';

  @override
  String get estimateExpiresPrefix => '有効期限 ';

  @override
  String get estimateConvertToInvoice => '請求書に変換';

  @override
  String get estimateConvertedSnackbar => '見積書を請求書に変換しました';

  @override
  String get estimateConvertFailed => '見積書を変換できませんでした';

  @override
  String get estimateMarkSent => '送信済みにする';

  @override
  String get estimateMarkAccepted => '承認済みにする';

  @override
  String get estimateMarkDeclined => '辞退済みにする';

  @override
  String get estimateConvertedTitle => '変換済み';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return '請求書$invoiceIdに変換しました';
  }

  @override
  String get estimateDetailTotal => '見積書合計';

  @override
  String get estimateStatusSent => '送信済み';

  @override
  String get estimateStatusAccepted => '承認済み';

  @override
  String get estimateStatusDeclined => '辞退済み';

  @override
  String get estimateStatusExpired => '期限切れ';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count件',
      one: '$count件',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => '見積書を削除しますか?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return '「$estimateNumber」を削除しますか?この操作は元に戻せません。';
  }

  @override
  String get estimatePdfFailed => 'PDFを生成できませんでした';

  @override
  String get pdfEstimate => '見積書';

  @override
  String get pdfEstimateNumber => '見積書番号：';

  @override
  String get pdfValidUntil => '有効期限：';

  @override
  String get invoiceDetailPaymentTerms => '支払い条件';

  @override
  String get recurringListTitle => '定期請求書';

  @override
  String get recurringListEmpty => '定期請求書はまだありません';

  @override
  String get recurringListEmptySubtitle => '定期的な顧客やサービス向けに自動請求書を設定できます。';

  @override
  String get recurringCreateTitle => '新しい定期請求書';

  @override
  String get recurringEditTitle => '定期請求書を編集';

  @override
  String get recurringCreatedSnackbar => '定期請求書を保存しました';

  @override
  String get recurringUpdatedSnackbar => '定期請求書を更新しました';

  @override
  String get recurringDeleteTitle => '定期請求書を削除しますか?';

  @override
  String recurringDeleteMessage(String title) {
    return '「$title」を削除しますか?既存の請求書は削除されません。';
  }

  @override
  String get recurringTitleLabel => 'タイトル';

  @override
  String get recurringTitleHint => '例：月額リテイナー';

  @override
  String get recurringClientLabel => '顧客';

  @override
  String get recurringFrequencyLabel => '頻度';

  @override
  String get recurringFrequencyWeekly => '毎週';

  @override
  String get recurringFrequencyBiweekly => '隔週';

  @override
  String get recurringFrequencyMonthly => '毎月';

  @override
  String get recurringFrequencyQuarterly => '四半期ごと';

  @override
  String get recurringFrequencyYearly => '毎年';

  @override
  String get recurringNextRun => '次回実行';

  @override
  String get recurringDueDays => '期限まで';

  @override
  String get recurringDays => '日';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count件有効',
      one: '$count件有効',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'レポート';

  @override
  String get reportsSubtitle => 'ビジネス分析';

  @override
  String get reportsEmpty => 'レポートを表示するには請求書を作成してください';

  @override
  String get reportsCollected => '回収済み';

  @override
  String get reportsOutstanding => '未回収';

  @override
  String get reportsMonthlyRevenue => '月間売上';

  @override
  String get reportsLast6Months => '過去6ヶ月';

  @override
  String get reportsByStatus => 'ステータス別';

  @override
  String get reportsTopClients => '上位顧客';

  @override
  String get paymentLinkTitle => '支払いリンク';

  @override
  String get paymentLinkNotSet => '設定に支払いリンクがありません';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp => '支払いリンクは請求書PDFに含まれ、請求書メニューからコピーできます。';

  @override
  String get paymentLinkSaved => '支払いリンクを保存しました';

  @override
  String get settingsPaymentLinkNotSet => '未設定';

  @override
  String get invoiceDetailCopyPaymentLink => '支払いリンクをコピー';

  @override
  String get paymentLinkCopied => '支払いリンクをコピーしました';

  @override
  String get pdfPayOnline => 'オンラインで支払う';

  @override
  String get exportXml => 'XMLにエクスポート';

  @override
  String get exportXmlFailed => 'XMLをエクスポートできませんでした';
}
