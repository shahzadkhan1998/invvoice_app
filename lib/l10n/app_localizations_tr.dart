// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => '2 dakikada profesyonel faturalar';

  @override
  String get bottomNavDashboard => 'Panel';

  @override
  String get bottomNavInvoices => 'Faturalar';

  @override
  String get bottomNavClients => 'Müşteriler';

  @override
  String get bottomNavSettings => 'Ayarlar';

  @override
  String get commonCancel => 'İptal';

  @override
  String get commonDelete => 'Sil';

  @override
  String get commonSave => 'Kaydet';

  @override
  String get commonSearch => 'Ara';

  @override
  String get commonBack => 'Geri';

  @override
  String get commonContinue => 'Devam Et';

  @override
  String get commonAdd => 'Ekle';

  @override
  String get commonEdit => 'Düzenle';

  @override
  String get commonCreate => 'Oluştur';

  @override
  String get commonClear => 'Temizle';

  @override
  String get commonView => 'Görüntüle';

  @override
  String get commonShare => 'Paylaş';

  @override
  String get commonExportPdf => 'PDF Dışa Aktar';

  @override
  String get commonSharePdf => 'PDF Paylaş';

  @override
  String get commonSaveChanges => 'Değişiklikleri Kaydet';

  @override
  String get commonRequired => 'Zorunlu';

  @override
  String get commonInvalid => 'Geçersiz';

  @override
  String get commonSendLink => 'Bağlantı Gönder';

  @override
  String get commonGeneratingPdf => 'PDF oluşturuluyor...';

  @override
  String get dashboardGreetingMorning => 'Günaydın';

  @override
  String get dashboardGreetingAfternoon => 'Tünaydın';

  @override
  String get dashboardGreetingEvening => 'İyi akşamlar';

  @override
  String get dashboardSubtitle => 'İşletmenizin özeti';

  @override
  String get dashboardOutstanding => 'Ödenmemiş';

  @override
  String get dashboardOverdue => 'Gecikmiş';

  @override
  String get dashboardThisMonth => 'Bu Ay';

  @override
  String get dashboardInvoices => 'fatura';

  @override
  String dashboardPaidCount(Object count) {
    return '$count ödendi';
  }

  @override
  String get dashboardRecentInvoices => 'Son Faturalar';

  @override
  String get dashboardSeeAll => 'Tümünü Gör';

  @override
  String get dashboardNotifications => 'Bildirimler';

  @override
  String get dashboardNotificationsHint =>
      'Gecikmiş ve bekleyen faturaları düzenli olarak inceleyerek nakit akışınızı takip edin.';

  @override
  String get dashboardNewInvoice => 'Yeni Fatura';

  @override
  String get dashboardNoInvoicesYet => 'Henüz fatura yok';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'İlk profesyonel faturanızı 2 dakikadan kısa sürede oluşturun';

  @override
  String get dashboardCreateInvoice => 'Fatura Oluştur';

  @override
  String get dashboardMarkPaid => 'Ödendi Olarak İşaretle';

  @override
  String get dashboardDuePrefix => 'Bitiş: ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days gün gecikti';
  }

  @override
  String get deleteInvoiceTitle => 'Fatura Silinsin mi?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return '$invoiceNumber silinsin mi? Bu işlem geri alınamaz.';
  }

  @override
  String get loginHeading => 'Tekrar hoş geldiniz';

  @override
  String get loginSubtitle => 'InvoiceFlow hesabınıza giriş yapın';

  @override
  String get loginEmailLabel => 'E-posta adresi';

  @override
  String get loginEmailHint => 'siz@ornek.com';

  @override
  String get loginEmailRequired => 'E-posta gereklidir';

  @override
  String get loginEmailInvalid => 'Geçerli bir e-posta girin';

  @override
  String get loginPasswordLabel => 'Şifre';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'Şifre gereklidir';

  @override
  String get loginPasswordMinLength => 'Şifre en az 6 karakter olmalıdır';

  @override
  String get loginForgotPassword => 'Şifrenizi mi unuttunuz?';

  @override
  String get loginSignIn => 'Giriş Yap';

  @override
  String get loginOrContinueWith => 'veya şununla devam edin';

  @override
  String get loginContinueWithGoogle => 'Google ile Devam Edin';

  @override
  String get loginNoAccount => 'Hesabınız yok mu? ';

  @override
  String get loginSignUp => 'Kayıt Ol';

  @override
  String get loginResetPasswordTitle => 'Şifreyi Sıfırla';

  @override
  String get loginResetPasswordMessage =>
      'E-postanızı girin, size bir sıfırlama bağlantısı gönderelim.';

  @override
  String get loginResetPasswordHint => 'siz@ornek.com';

  @override
  String get loginResetLinkSent =>
      'Sıfırlama bağlantısı gönderildi! E-postanızı kontrol edin.';

  @override
  String get loginResetLinkFailed => 'Sıfırlama bağlantısı gönderilemedi.';

  @override
  String get registerHeading => 'Hesap oluştur';

  @override
  String get registerSubtitle =>
      'Bugün profesyonel faturalar göndermeye başlayın';

  @override
  String get registerNameLabel => 'Ad Soyad';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => 'Ad gereklidir';

  @override
  String get registerNameMinLength => 'Ad en az 2 karakter olmalıdır';

  @override
  String get registerEmailLabel => 'E-posta adresi';

  @override
  String get registerEmailHint => 'siz@ornek.com';

  @override
  String get registerEmailRequired => 'E-posta gereklidir';

  @override
  String get registerEmailInvalid => 'Geçerli bir e-posta girin';

  @override
  String get registerPasswordLabel => 'Şifre';

  @override
  String get registerPasswordHint => 'En az 6 karakter';

  @override
  String get registerPasswordRequired => 'Şifre gereklidir';

  @override
  String get registerPasswordMinLength => 'Şifre en az 6 karakter olmalıdır';

  @override
  String get registerConfirmPasswordLabel => 'Şifreyi Onayla';

  @override
  String get registerConfirmPasswordHint => 'Şifrenizi tekrar girin';

  @override
  String get registerConfirmPasswordRequired => 'Lütfen şifrenizi onaylayın';

  @override
  String get registerPasswordsDoNotMatch => 'Şifreler eşleşmiyor';

  @override
  String get registerCreateAccount => 'Hesap Oluştur';

  @override
  String get registerHaveAccount => 'Zaten hesabınız var mı? ';

  @override
  String get registerSignIn => 'Giriş yapın';

  @override
  String get authTermsOfService => 'Hizmet Şartları';

  @override
  String get authPrivacyPolicy => 'Gizlilik Politikası';

  @override
  String get authAgreeRequired =>
      'Devam etmek için Hizmet Şartları\'nı ve Gizlilik Politikası\'nı kabul edin';

  @override
  String get loginAgreePrefix => 'Devam ederek, bizim ';

  @override
  String get registerAgreePrefix => 'Şu şartları kabul ediyorum: ';

  @override
  String get authAgreeAnd => ' ve ';

  @override
  String get authTermsSheet =>
      'Bu Hizmet Şartları, InvoiceFlow\'u kullanımınızı düzenler. Uygulamaya erişerek veya uygulamayı kullanarak bu şartlarla bağlı olmayı kabul edersiniz.\n\n1. Oluşturduğunuz faturaların, tekliflerin ve diğer verilerin doğruluğundan siz sorumlusunuz.\n2. Uygulama, açık veya zımni hiçbir garanti olmaksızın \"olduğu gibi\" sunulur.\n3. Hizmeti kullanımınızdan doğan kayıplardan sorumlu değiliz.\n4. Uygulamayı yasa dışı veya yasaklanmış hiçbir amaçla kullanmamalısınız.\n5. Bu şartları zaman zaman güncelleyebiliriz; uygulamayı kullanmaya devam etmeniz, güncellenen şartları kabul ettiğiniz anlamına gelir.';

  @override
  String get authPrivacySheet =>
      'Gizliliğiniz bizim için önemlidir.\n\n1. Veri saklama: Faturalarınız, müşterileriniz ve ayarlarınız cihazınızda yerel olarak saklanır.\n2. Bulut senkronizasyonu: Giriş yaparsanız, verileriniz tüm cihazlarınızda erişilebilir olması için hesabınızla senkronize edilir.\n3. Kişisel bilgilerinizi asla satmaz veya paylaşmayız.\n4. Analitik: Uygulamayı iyileştirmek için anonimleştirilmiş kullanım verileri toplayabiliriz.\n5. İletişim: Gizlilikle ilgili sorularınız için support@invoiceflow.app adresinden bize ulaşın.';

  @override
  String get authErrorWeakPassword => 'Şifre çok zayıf';

  @override
  String get authErrorEmailAlreadyInUse => 'Hesap zaten mevcut';

  @override
  String get authErrorUserNotFound =>
      'Bu e-postayla kayıtlı kullanıcı bulunamadı';

  @override
  String get authErrorWrongPassword => 'Hatalı şifre';

  @override
  String get authErrorInvalidEmail => 'Geçersiz e-posta adresi';

  @override
  String get authErrorTooManyRequests =>
      'Çok fazla deneme. Lütfen daha sonra tekrar deneyin.';

  @override
  String get authErrorDefault =>
      'Kimlik doğrulama başarısız oldu. Tekrar deneyin.';

  @override
  String get authErrorGoogleSignInFailed => 'Google girişi başarısız oldu.';

  @override
  String get invoiceListTitle => 'Faturalar';

  @override
  String get invoiceListSearchHint => 'Fatura arayın...';

  @override
  String get invoiceListSortDate => 'Tarihe Göre Sırala';

  @override
  String get invoiceListSortAmount => 'Tutara Göre Sırala';

  @override
  String get invoiceListSortClient => 'Müşteriye Göre Sırala';

  @override
  String get invoiceListTabAll => 'Tümü';

  @override
  String get invoiceListTabPaid => 'Ödenen';

  @override
  String get invoiceListTabPending => 'Bekleyen';

  @override
  String get invoiceListTabOverdue => 'Gecikmiş';

  @override
  String get invoiceListTabDraft => 'Taslak';

  @override
  String get invoiceListEmpty => 'Fatura bulunamadı';

  @override
  String get invoiceCreateTitle => 'Yeni Fatura';

  @override
  String get invoiceEditTitle => 'Faturayı Düzenle';

  @override
  String get invoiceSaveDraft => 'Taslağı Kaydet';

  @override
  String get invoiceStepClient => 'Müşteri';

  @override
  String get invoiceStepItems => 'Kalemler';

  @override
  String get invoiceStepReview => 'İnceleme';

  @override
  String get invoiceSelectClient => 'Bir müşteri seçin';

  @override
  String get invoiceSelectClientSubtitle =>
      'Bu faturanın kime ait olduğunu seçin';

  @override
  String get invoiceSearchClients => 'Müşteri arayın...';

  @override
  String get invoiceAddNewClient => 'Yeni Müşteri Ekle';

  @override
  String get invoiceNoClientsFound => 'Müşteri bulunamadı';

  @override
  String get invoiceSelectClientEmptyHint =>
      'Fatura oluşturmaya başlamak için ilk müşterinizi ekleyin';

  @override
  String get invoiceAddLineItem => 'Satır Ekle';

  @override
  String get invoiceItemDescription => 'Açıklama';

  @override
  String get invoiceItemDescriptionHint => 'örn. Web Geliştirme';

  @override
  String get invoiceItemQuickAdd => 'Hızlı Ekle:';

  @override
  String get invoiceItemQty => 'Adet';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Birim Fiyat';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Kalem Ekle';

  @override
  String get invoiceLineItems => 'Satır Kalemleri';

  @override
  String get invoiceLineItemsSubtitle => 'Hizmet veya ürün ekleyin';

  @override
  String get invoiceNoItems => 'Henüz kalem yok. İlk kaleminizi ekleyin.';

  @override
  String get invoiceTaxRate => 'Vergi Oranı (%)';

  @override
  String get invoiceSubtotal => 'Ara Toplam';

  @override
  String invoiceTax(Object taxRate) {
    return 'Vergi ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'TOPLAM';

  @override
  String get invoiceReviewHeading => 'İncele ve Tamamla';

  @override
  String get invoiceReviewSubtitle =>
      'Tarihleri ayarlayın, not, logo ve imza ekleyin';

  @override
  String get invoiceCompanyLogo => 'Şirket Logosu';

  @override
  String get invoiceAddLogo => 'Logo Ekle';

  @override
  String get invoiceInvoiceDate => 'Fatura Tarihi';

  @override
  String get invoiceDueDate => 'Son Ödeme Tarihi';

  @override
  String get invoiceNotesLabel => 'Notlar (İsteğe Bağlı)';

  @override
  String get invoiceNotesHint => 'İşleriniz için teşekkürler!';

  @override
  String get invoicePaymentTermsLabel => 'Ödeme Koşulları (İsteğe Bağlı)';

  @override
  String get invoicePaymentTermsHint => 'Ödeme 30 gün içinde yapılmalıdır';

  @override
  String get invoiceSignatureLabel => 'İmza';

  @override
  String get invoiceSignatureOverwrite =>
      'Mevcut imza kaydedildi. Üzerini çizerek yenileyin.';

  @override
  String get invoiceCreatedSnackbar => 'Fatura oluşturuldu!';

  @override
  String get invoiceUpdatedSnackbar => 'Fatura güncellendi!';

  @override
  String get invoiceDetailTitle => 'FATURA';

  @override
  String get invoiceDetailMarkAsPaid => 'Ödendi Olarak İşaretle';

  @override
  String get invoiceDetailTotalAmount => 'Toplam Tutar';

  @override
  String get invoiceDetailIssued => 'Düzenlenme';

  @override
  String get invoiceDetailDue => 'Bitiş';

  @override
  String get invoiceDetailPaid => 'Ödendi';

  @override
  String get invoiceDetailBillTo => 'Alıcı';

  @override
  String get invoiceDetailItems => 'Kalemler';

  @override
  String get invoiceDetailNotes => 'Notlar';

  @override
  String get invoiceDetailSignature => 'İmza';

  @override
  String get invoiceDetailMarkedPaidSnackbar =>
      'Fatura ödendi olarak işaretlendi!';

  @override
  String get invoiceDetailPdfFailed => 'PDF oluşturulamadı';

  @override
  String get clientListTitle => 'Müşteriler';

  @override
  String get clientListSearchHint => 'Müşteri arayın...';

  @override
  String get clientListTotalClients => 'Toplam Müşteri';

  @override
  String get clientListTotalBilled => 'Toplam Faturalanan';

  @override
  String get clientListEmptySearch => 'Müşteri bulunamadı';

  @override
  String get clientListEmpty => 'Henüz müşteri yok';

  @override
  String get clientListEmptySubtitle =>
      'Fatura oluşturmaya başlamak için ilk müşterinizi ekleyin';

  @override
  String get clientListAddClient => 'Müşteri Ekle';

  @override
  String get clientListTotalBilledLabel => 'toplam faturalanan';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count fatura';
  }

  @override
  String get clientCreateTitle => 'Yeni Müşteri';

  @override
  String get clientEditTitle => 'Müşteriyi Düzenle';

  @override
  String get clientBasicInfo => 'Temel Bilgiler';

  @override
  String get clientNameLabel => 'Ad Soyad *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'Ad gereklidir';

  @override
  String get clientNameTooShort => 'Ad çok kısa';

  @override
  String get clientEmailLabel => 'E-posta Adresi *';

  @override
  String get clientEmailHint => 'fatura@firma.com';

  @override
  String get clientEmailRequired => 'E-posta gereklidir';

  @override
  String get clientEmailInvalid => 'Geçerli bir e-posta girin';

  @override
  String get clientPhoneLabel => 'Telefon Numarası';

  @override
  String get clientPhoneHint => '+90 532 123 4567';

  @override
  String get clientAddressSection => 'Adres';

  @override
  String get clientAddressLabel => 'Açık Adres';

  @override
  String get clientAddressHint => '123 İş Parkı, Ofis 45';

  @override
  String get clientCityLabel => 'Şehir / Ülke';

  @override
  String get clientCityHint => 'Dubai, Birleşik Arap Emirlikleri';

  @override
  String get clientBillingDefaults => 'Faturalama Varsayılanları';

  @override
  String get clientDefaultCurrency => 'Varsayılan Para Birimi';

  @override
  String get clientDefaultTaxRate => 'Varsayılan Vergi Oranı (VAT/GST)';

  @override
  String get clientVatLabel => 'VAT / Vergi Kayıt Numarası';

  @override
  String get clientVatHint => '123456789012345 (İsteğe Bağlı)';

  @override
  String get clientUpdateButton => 'Müşteriyi Güncelle';

  @override
  String get clientAddButton => 'Müşteri Ekle';

  @override
  String get clientUpdatedSnackbar => 'Müşteri güncellendi!';

  @override
  String get clientAddedSnackbar => 'Müşteri eklendi!';

  @override
  String get clientDetailInvoices => 'Faturalar';

  @override
  String get clientDetailTotalBilled => 'Toplam Faturalanan';

  @override
  String get clientDetailOutstanding => 'Ödenmemiş';

  @override
  String get clientDetailEdit => 'Düzenle';

  @override
  String get clientDetailNewInvoice => 'Yeni Fatura';

  @override
  String get clientDetailEmailClient => 'Müşteriye E-posta Gönder';

  @override
  String get clientDetailClientDetails => 'Müşteri Bilgileri';

  @override
  String get clientDetailEmail => 'E-posta';

  @override
  String get clientDetailPhone => 'Telefon';

  @override
  String get clientDetailAddress => 'Adres';

  @override
  String get clientDetailCity => 'Şehir';

  @override
  String get clientDetailCurrency => 'Para Birimi';

  @override
  String get clientDetailTaxRate => 'Vergi Oranı';

  @override
  String get clientDetailVatNumber => 'VAT Numarası';

  @override
  String get clientDetailInvoiceHistory => 'Fatura Geçmişi';

  @override
  String get clientDetailNoInvoices => 'Bu müşteri için henüz fatura yok';

  @override
  String get deleteClientTitle => 'Müşteri Silinsin mi?';

  @override
  String deleteClientMessage(Object clientName) {
    return '$clientName silinsin mi? Bu işlem geri alınamaz.';
  }

  @override
  String get settingsTitle => 'Ayarlar';

  @override
  String get settingsYourName => 'Adınız';

  @override
  String get settingsBackupTitle => 'Faturalarınızı yedekleyin';

  @override
  String get settingsBackupDescription =>
      'Verilerinizi güvenli şekilde senkronize etmek ve her yerden erişmek için giriş yapın.';

  @override
  String get settingsSignInRegister => 'Giriş Yapın veya Kayıt Olun';

  @override
  String get settingsProUpsell =>
      'Sınırsız fatura, bulut senkronizasyonu ve filigransız kullanım için Pro\'ya yükseltin.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'Ücretsiz planın $limit fatura sınırına ulaştınız. Sınırsız fatura ve bulut senkronizasyonu için Pro\'ya yükseltin.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'Ücretsiz planın $limit müşteri sınırına ulaştınız. Sınırsız müşteri ve bulut senkronizasyonu için Pro\'ya yükseltin.';
  }

  @override
  String get settingsUpgradePro => 'Yükselt';

  @override
  String get settingsBusinessSection => 'İŞLETME AYARLARI';

  @override
  String get settingsBusinessDetails => 'İşletme Bilgileri';

  @override
  String get settingsBusinessDetailsSubtitle => 'İşletme adınızı ayarlayın';

  @override
  String get settingsInvoicePrefix => 'Fatura Ön Eki';

  @override
  String get settingsDefaultCurrency => 'Varsayılan Para Birimi';

  @override
  String get settingsAppSection => 'UYGULAMA AYARLARI';

  @override
  String get settingsDarkMode => 'Karanlık Mod';

  @override
  String get settingsDailyNotification => 'Günlük Bildirim';

  @override
  String get settingsDailyNotificationNotSet => 'Ayarlanmadı';

  @override
  String get settingsLanguage => 'Dil';

  @override
  String get settingsLanguageLabel => 'Türkçe';

  @override
  String get languageEnglish => 'İngilizce';

  @override
  String get languageArabic => 'Arapça';

  @override
  String get languageFrench => 'Fransızca';

  @override
  String get languageSpanish => 'İspanyolca';

  @override
  String get languageUrdu => 'Urduca';

  @override
  String get languageChinese => 'Çince';

  @override
  String get settingsAboutSection => 'HAKKINDA';

  @override
  String get settingsRateApp => 'Uygulamayı Değerlendirin';

  @override
  String get settingsHelpSupport => 'Yardım ve Destek';

  @override
  String get settingsPrivacyPolicy => 'Gizlilik Politikası';

  @override
  String get settingsHelpSupportSheet =>
      'Yardıma mı ihtiyacınız var? support@invoiceflow.app adresine yazın, 24 saat içinde size dönüş yapacağız.';

  @override
  String get settingsPrivacySheet =>
      'Verileriniz cihazınızda yerel olarak saklanır. Kişisel bilgilerinizi asla satmaz veya paylaşmayız.';

  @override
  String get settingsVersion => 'Sürüm';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Çıkış Yap';

  @override
  String get settingsEditProfile => 'Profili Düzenle';

  @override
  String get settingsProfileNameLabel => 'Ad Soyad';

  @override
  String get settingsProfileNameHint => 'Adınız';

  @override
  String get settingsBusinessNameLabel => 'İşletme Adı';

  @override
  String get settingsBusinessNameHint => 'Şirketiniz A.Ş.';

  @override
  String get settingsBusinessEmailLabel => 'İşletme E-postası';

  @override
  String get settingsBusinessEmailHint => 'fatura@firma.com';

  @override
  String get settingsPhoneLabel => 'Telefon';

  @override
  String get settingsPhoneHint => '+90 532 123 4567';

  @override
  String get settingsAddressLabel => 'Adres';

  @override
  String get settingsAddressHint => 'Dubai, Birleşik Arap Emirlikleri';

  @override
  String get settingsBusinessDetailsSaved => 'İşletme bilgileri kaydedildi!';

  @override
  String get settingsInvoicePrefixTitle => 'Fatura Numarası Ön Eki';

  @override
  String get settingsInvoicePrefixHint => 'örn. INV-, #, Fatura-';

  @override
  String get settingsPrefixSaved => 'Fatura ön eki kaydedildi';

  @override
  String get settingsNotificationScheduled =>
      'Günlük bildirim başarıyla planlandı!';

  @override
  String get settingsSignOutTitle => 'Çıkış Yapılsın mı?';

  @override
  String get settingsSignOutMessage =>
      'InvoiceFlow\'dan çıkış yapmak istediğinize emin misiniz?';

  @override
  String get settingsSignedOut => 'Çıkış başarıyla yapıldı.';

  @override
  String get statusPaid => 'Ödendi';

  @override
  String get statusOverdue => 'Gecikmiş';

  @override
  String get statusPending => 'Bekliyor';

  @override
  String get statusDraft => 'Taslak';

  @override
  String get statusCancelled => 'İptal Edildi';

  @override
  String get notificationChannelName => 'Günlük Hatırlatmalar';

  @override
  String get notificationChannelDescription =>
      'Faturalarınızı günlük kontrol etmenizi hatırlatır';

  @override
  String get notificationTitle => 'Fatura Hatırlatması';

  @override
  String get notificationBody =>
      'Son faturalarınızı kontrol etmenin ve bekleyen ödemeleri takip etmenin zamanı geldi.';

  @override
  String get pdfInvoice => 'FATURA';

  @override
  String get pdfInvoiceNumber => 'Fatura No:';

  @override
  String get pdfDate => 'Tarih:';

  @override
  String get pdfDueDate => 'Son Ödeme Tarihi:';

  @override
  String get pdfBillTo => 'ALICI:';

  @override
  String get pdfDescription => 'Açıklama';

  @override
  String get pdfQty => 'Adet';

  @override
  String get pdfRate => 'Birim Fiyat';

  @override
  String get pdfAmount => 'Tutar';

  @override
  String get pdfSubtotal => 'Ara Toplam:';

  @override
  String pdfTax(Object taxRate) {
    return 'Vergi ($taxRate%):';
  }

  @override
  String get pdfTotal => 'TOPLAM:';

  @override
  String get pdfSignature => 'İmza:';

  @override
  String get pdfNotes => 'Notlar:';

  @override
  String get pdfPaymentTerms => 'Ödeme Koşulları:';

  @override
  String get pdfThankYou => 'İşleriniz için teşekkürler!';

  @override
  String get quickAddWebDesign => 'Web Tasarım';

  @override
  String get quickAddDevelopment => 'Geliştirme';

  @override
  String get quickAddConsulting => 'Danışmanlık';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'İçerik Yazımı';

  @override
  String get paywallTitle => 'InvoiceFlow Pro\'yu Açın';

  @override
  String get paywallSubtitle =>
      'Sınırsız kullanın ve her yerde senkronize edin. Dilediğiniz zaman iptal edin.';

  @override
  String get paywallFeatureUnlimited => 'Sınırsız fatura ve müşteri';

  @override
  String get paywallFeatureSync => 'Cihazlar arasında bulut senkronizasyonu';

  @override
  String get paywallFeatureNoWatermark => 'Hiçbir zaman filigran yok';

  @override
  String get paywallMonthly => 'Aylık';

  @override
  String get paywallMonthlySub => 'Aylık faturalanır';

  @override
  String get paywallYearly => 'Yıllık';

  @override
  String get paywallYearlySub => 'En iyi değer — 2 ay ücretsiz';

  @override
  String get paywallRestore => 'Satın Alımları Geri Yükle';

  @override
  String get paywallTerms =>
      'Abonelikler otomatik yenilenir. Uygulama mağazası ayarlarınızdan yönetin.';

  @override
  String get purchaseSuccessTitle => 'Artık Pro\'dasınız!';

  @override
  String get purchaseSuccessSubtitle =>
      'Sınırsız fatura, bulut senkronizasyonu ve filigransız kullanım açıldı. Teşekkürler!';

  @override
  String get purchaseSuccessContinue => 'Devam Et';

  @override
  String get paywallLoading => 'Planlar yükleniyor…';

  @override
  String get paywallLoadError =>
      'Planlar yüklenemedi. Bağlantınızı kontrol edip tekrar deneyin.';

  @override
  String get paywallNoOffering => 'Şu anda kullanılabilir bir plan yok.';

  @override
  String get purchaseRestored => 'Satın alımlar başarıyla geri yüklendi';

  @override
  String get purchaseErrorGeneric =>
      'Satın alma başarısız oldu. Lütfen tekrar deneyin.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro aktif — filigransız sınırsız fatura ve müşteri';

  @override
  String get settingsFreePlan => 'Ücretsiz plan';

  @override
  String get settingsFreeHint =>
      'Sınırsız fatura, bulut senkronizasyonu ve daha fazlası için yükseltin';

  @override
  String get settingsUpgradeToPro => 'Pro\'ya yükselt';

  @override
  String get settingsManageSubscription => 'Aboneliği yönet';

  @override
  String get customerCenterFailed => 'Abonelik yönetimi açılamadı.';

  @override
  String get onboardingSkip => 'Atla';

  @override
  String get onboardingNext => 'İleri';

  @override
  String get onboardingGetStarted => 'Başla';

  @override
  String get onboardingWelcomeTitle => '2 dakikada faturalar';

  @override
  String get onboardingWelcomeBody =>
      'Müşterileriniz için profesyonel PDF faturalar oluşturun — hızlı ve şık.';

  @override
  String get onboardingSyncTitle => 'Her yerde senkronize edin';

  @override
  String get onboardingSyncBody =>
      'Verilerinizi güvenle buluta yedeklemek ve her cihazdan erişmek için giriş yapın.';

  @override
  String get onboardingProTitle => 'Pro ile sınırsız kullanın';

  @override
  String get onboardingProBody =>
      'InvoiceFlow Pro ile sınırsız fatura, bulut senkronizasyonu ve filigran kaldırmanın kilidini açın.';

  @override
  String get settingsAccentColor => 'Vurgu Rengi';

  @override
  String get settingsAccentColorHint =>
      'Uygulamayı istediğiniz renkle kişiselleştirin.';

  @override
  String get settingsCountry => 'Ülke';

  @override
  String get settingsTaxId => 'Vergi Kayıt Numarası';

  @override
  String get settingsTaxIdNotSet => 'Ayarlanmadı';

  @override
  String get settingsTaxIdHint => 'örn. 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Vergi numarası kaydedildi';

  @override
  String get catalogTitle => 'Ürünler ve Hizmetler';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ürün',
      one: '$count ürün',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'Henüz ürün yok';

  @override
  String get catalogEmptySubtitle =>
      'Yeniden kullanılabilir ürün ve hizmetleri kaydederek faturalara daha hızlı ekleyin.';

  @override
  String get catalogFromSaved => 'Kataloğunuzdan';

  @override
  String get catalogSaveToCatalog => 'Tekrar kullanım için kataloğa kaydet';

  @override
  String get catalogAddSnackbar => 'Kataloğa eklendi';

  @override
  String get catalogDeleteTitle => 'Öğe silinsin mi?';

  @override
  String catalogDeleteMessage(String description) {
    return '\"$description\" silinsin mi? Bu işlem geri alınamaz.';
  }

  @override
  String get commonDone => 'Bitti';

  @override
  String get estimateListTitle => 'Teklifler';

  @override
  String get estimateListSearchHint => 'Teklif arayın…';

  @override
  String get estimateListEmpty => 'Henüz teklif yok';

  @override
  String get estimateListTabAll => 'Tümü';

  @override
  String get estimateListTabDraft => 'Taslak';

  @override
  String get estimateListTabSent => 'Gönderilen';

  @override
  String get estimateListTabAccepted => 'Kabul Edilen';

  @override
  String get estimateListTabExpired => 'Süresi Dolan';

  @override
  String get estimateCreateTitle => 'Yeni Teklif';

  @override
  String get estimateEditTitle => 'Teklifi Düzenle';

  @override
  String get estimateCreatedSnackbar => 'Teklif kaydedildi';

  @override
  String get estimateUpdatedSnackbar => 'Teklif güncellendi';

  @override
  String get estimateIssueDate => 'Düzenlenme tarihi';

  @override
  String get estimateExpiryDate => 'Bitiş tarihi';

  @override
  String get estimateExpiresPrefix => 'Bitiş: ';

  @override
  String get estimateConvertToInvoice => 'Faturaya Dönüştür';

  @override
  String get estimateConvertedSnackbar => 'Teklif faturaya dönüştürüldü';

  @override
  String get estimateConvertFailed => 'Teklif dönüştürülemedi';

  @override
  String get estimateMarkSent => 'Gönderildi olarak işaretle';

  @override
  String get estimateMarkAccepted => 'Kabul edildi olarak işaretle';

  @override
  String get estimateMarkDeclined => 'Reddedildi olarak işaretle';

  @override
  String get estimateConvertedTitle => 'Dönüştürüldü';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return '$invoiceId faturasına dönüştürüldü';
  }

  @override
  String get estimateDetailTotal => 'TEKLİF TOPLAMI';

  @override
  String get estimateStatusSent => 'Gönderildi';

  @override
  String get estimateStatusAccepted => 'Kabul Edildi';

  @override
  String get estimateStatusDeclined => 'Reddedildi';

  @override
  String get estimateStatusExpired => 'Süresi Doldu';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count açık',
      one: '1 açık',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'Teklif silinsin mi?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return '\"$estimateNumber\" silinsin mi? Bu işlem geri alınamaz.';
  }

  @override
  String get estimatePdfFailed => 'PDF oluşturulamadı';

  @override
  String get pdfEstimate => 'TEKLİF';

  @override
  String get pdfEstimateNumber => 'Teklif No:';

  @override
  String get pdfValidUntil => 'Geçerlilik:';

  @override
  String get invoiceDetailPaymentTerms => 'Ödeme Koşulları';

  @override
  String get recurringListTitle => 'Tekrarlayan Faturalar';

  @override
  String get recurringListEmpty => 'Henüz tekrarlayan fatura yok';

  @override
  String get recurringListEmptySubtitle =>
      'Düzenli müşterileriniz ve hizmetleriniz için otomatik faturalar ayarlayın.';

  @override
  String get recurringCreateTitle => 'Yeni Tekrarlayan';

  @override
  String get recurringEditTitle => 'Tekrarlayanı Düzenle';

  @override
  String get recurringCreatedSnackbar => 'Tekrarlayan fatura kaydedildi';

  @override
  String get recurringUpdatedSnackbar => 'Tekrarlayan fatura güncellendi';

  @override
  String get recurringDeleteTitle => 'Tekrarlayan fatura silinsin mi?';

  @override
  String recurringDeleteMessage(String title) {
    return '\"$title\" silinsin mi? Mevcut faturalar silinmeyecek.';
  }

  @override
  String get recurringTitleLabel => 'Başlık';

  @override
  String get recurringTitleHint => 'örn. Aylık retainer';

  @override
  String get recurringClientLabel => 'Müşteri';

  @override
  String get recurringFrequencyLabel => 'Sıklık';

  @override
  String get recurringFrequencyWeekly => 'Haftalık';

  @override
  String get recurringFrequencyBiweekly => 'İki haftada bir';

  @override
  String get recurringFrequencyMonthly => 'Aylık';

  @override
  String get recurringFrequencyQuarterly => 'Üç ayda bir';

  @override
  String get recurringFrequencyYearly => 'Yıllık';

  @override
  String get recurringNextRun => 'Sonraki çalışma';

  @override
  String get recurringDueDays => 'Bitiş:';

  @override
  String get recurringDays => 'gün';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aktif',
      one: '1 aktif',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'Raporlar';

  @override
  String get reportsSubtitle => 'İşletme analizleri';

  @override
  String get reportsEmpty => 'Raporları görmek için fatura oluşturun';

  @override
  String get reportsCollected => 'Tahsil Edilen';

  @override
  String get reportsOutstanding => 'Ödenmemiş';

  @override
  String get reportsMonthlyRevenue => 'Aylık Gelir';

  @override
  String get reportsLast6Months => 'Son 6 ay';

  @override
  String get reportsByStatus => 'Duruma Göre';

  @override
  String get reportsTopClients => 'En İyi Müşteriler';

  @override
  String get paymentLinkTitle => 'Ödeme Bağlantısı';

  @override
  String get paymentLinkNotSet => 'Ayarlarda ödeme bağlantısı yok';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'Ödeme bağlantınız fatura PDF\'ine dahildir ve fatura menüsünden kopyalanabilir.';

  @override
  String get paymentLinkSaved => 'Ödeme bağlantısı kaydedildi';

  @override
  String get settingsPaymentLinkNotSet => 'Ayarlanmadı';

  @override
  String get invoiceDetailCopyPaymentLink => 'Ödeme Bağlantısını Kopyala';

  @override
  String get paymentLinkCopied => 'Ödeme bağlantısı kopyalandı';

  @override
  String get pdfPayOnline => 'Çevrimiçi öde';

  @override
  String get exportXml => 'XML Dışa Aktar';

  @override
  String get exportXmlFailed => 'XML dışa aktarılamadı';
}
