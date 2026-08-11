// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Faktur profesional dalam 2 menit';

  @override
  String get bottomNavDashboard => 'Dasbor';

  @override
  String get bottomNavInvoices => 'Faktur';

  @override
  String get bottomNavClients => 'Klien';

  @override
  String get bottomNavSettings => 'Pengaturan';

  @override
  String get commonCancel => 'Batal';

  @override
  String get commonDelete => 'Hapus';

  @override
  String get commonSave => 'Simpan';

  @override
  String get commonSearch => 'Cari';

  @override
  String get commonBack => 'Kembali';

  @override
  String get commonContinue => 'Lanjut';

  @override
  String get commonAdd => 'Tambah';

  @override
  String get commonEdit => 'Ubah';

  @override
  String get commonCreate => 'Buat';

  @override
  String get commonClear => 'Bersihkan';

  @override
  String get commonView => 'Lihat';

  @override
  String get commonShare => 'Bagikan';

  @override
  String get commonExportPdf => 'Ekspor PDF';

  @override
  String get commonSharePdf => 'Bagikan PDF';

  @override
  String get commonSaveChanges => 'Simpan Perubahan';

  @override
  String get commonRequired => 'Wajib diisi';

  @override
  String get commonInvalid => 'Tidak valid';

  @override
  String get commonSendLink => 'Kirim Tautan';

  @override
  String get commonGeneratingPdf => 'Membuat PDF...';

  @override
  String get dashboardGreetingMorning => 'Selamat pagi';

  @override
  String get dashboardGreetingAfternoon => 'Selamat siang';

  @override
  String get dashboardGreetingEvening => 'Selamat malam';

  @override
  String get dashboardSubtitle => 'Berikut ringkasan bisnis Anda';

  @override
  String get dashboardOutstanding => 'Belum Dibayar';

  @override
  String get dashboardOverdue => 'Jatuh Tempo';

  @override
  String get dashboardThisMonth => 'Bulan Ini';

  @override
  String get dashboardInvoices => 'faktur';

  @override
  String dashboardPaidCount(Object count) {
    return '$count dibayar';
  }

  @override
  String get dashboardRecentInvoices => 'Faktur Terbaru';

  @override
  String get dashboardSeeAll => 'Lihat Semua';

  @override
  String get dashboardNotifications => 'Notifikasi';

  @override
  String get dashboardNotificationsHint =>
      'Pantau arus kas Anda dengan memeriksa faktur yang jatuh tempo dan menunggu pembayaran secara rutin.';

  @override
  String get dashboardNewInvoice => 'Faktur Baru';

  @override
  String get dashboardNoInvoicesYet => 'Belum ada faktur';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Buat faktur profesional pertama Anda dalam waktu kurang dari 2 menit';

  @override
  String get dashboardCreateInvoice => 'Buat Faktur';

  @override
  String get dashboardMarkPaid => 'Tandai Dibayar';

  @override
  String get dashboardDuePrefix => 'Jatuh tempo ';

  @override
  String dashboardDaysOverdue(Object days) {
    return 'Terlambat $days hari';
  }

  @override
  String get deleteInvoiceTitle => 'Hapus Faktur?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'Hapus $invoiceNumber? Tindakan ini tidak dapat dibatalkan.';
  }

  @override
  String get loginHeading => 'Selamat datang kembali';

  @override
  String get loginSubtitle => 'Masuk ke akun InvoiceFlow Anda';

  @override
  String get loginEmailLabel => 'Alamat email';

  @override
  String get loginEmailHint => 'anda@contoh.com';

  @override
  String get loginEmailRequired => 'Email wajib diisi';

  @override
  String get loginEmailInvalid => 'Masukkan email yang valid';

  @override
  String get loginPasswordLabel => 'Kata sandi';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'Kata sandi wajib diisi';

  @override
  String get loginPasswordMinLength => 'Kata sandi minimal 6 karakter';

  @override
  String get loginForgotPassword => 'Lupa kata sandi?';

  @override
  String get loginSignIn => 'Masuk';

  @override
  String get loginOrContinueWith => 'atau lanjutkan dengan';

  @override
  String get loginContinueWithGoogle => 'Lanjutkan dengan Google';

  @override
  String get loginNoAccount => 'Belum punya akun? ';

  @override
  String get loginSignUp => 'Daftar';

  @override
  String get loginResetPasswordTitle => 'Atur Ulang Kata Sandi';

  @override
  String get loginResetPasswordMessage =>
      'Masukkan email Anda dan kami akan mengirimkan tautan pengaturan ulang.';

  @override
  String get loginResetPasswordHint => 'anda@contoh.com';

  @override
  String get loginResetLinkSent =>
      'Tautan pengaturan ulang terkirim! Periksa email Anda.';

  @override
  String get loginResetLinkFailed => 'Gagal mengirim tautan pengaturan ulang.';

  @override
  String get registerHeading => 'Buat akun';

  @override
  String get registerSubtitle => 'Mulai kirim faktur profesional hari ini';

  @override
  String get registerNameLabel => 'Nama Lengkap';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => 'Nama wajib diisi';

  @override
  String get registerNameMinLength => 'Nama minimal 2 karakter';

  @override
  String get registerEmailLabel => 'Alamat email';

  @override
  String get registerEmailHint => 'anda@contoh.com';

  @override
  String get registerEmailRequired => 'Email wajib diisi';

  @override
  String get registerEmailInvalid => 'Masukkan email yang valid';

  @override
  String get registerPasswordLabel => 'Kata sandi';

  @override
  String get registerPasswordHint => 'Minimal 6 karakter';

  @override
  String get registerPasswordRequired => 'Kata sandi wajib diisi';

  @override
  String get registerPasswordMinLength => 'Kata sandi minimal 6 karakter';

  @override
  String get registerConfirmPasswordLabel => 'Konfirmasi Kata Sandi';

  @override
  String get registerConfirmPasswordHint => 'Ulangi kata sandi Anda';

  @override
  String get registerConfirmPasswordRequired =>
      'Harap konfirmasi kata sandi Anda';

  @override
  String get registerPasswordsDoNotMatch => 'Kata sandi tidak cocok';

  @override
  String get registerCreateAccount => 'Buat Akun';

  @override
  String get registerHaveAccount => 'Sudah punya akun? ';

  @override
  String get registerSignIn => 'Masuk';

  @override
  String get authTermsOfService => 'Ketentuan Layanan';

  @override
  String get authPrivacyPolicy => 'Kebijakan Privasi';

  @override
  String get authAgreeRequired =>
      'Harap setujui Ketentuan Layanan dan Kebijakan Privasi untuk melanjutkan';

  @override
  String get loginAgreePrefix => 'Dengan melanjutkan, Anda menyetujui ';

  @override
  String get registerAgreePrefix => 'Saya menyetujui ';

  @override
  String get authAgreeAnd => ' dan ';

  @override
  String get authTermsSheet =>
      'Ketentuan Layanan ini mengatur penggunaan InvoiceFlow oleh Anda. Dengan mengakses atau menggunakan aplikasi, Anda setuju untuk terikat oleh ketentuan ini.\n\n1. Anda bertanggung jawab atas keakuratan faktur, perkiraan, dan data lain yang Anda buat.\n2. Aplikasi disediakan \"apa adanya\" tanpa jaminan apa pun, baik tersurat maupun tersirat.\n3. Kami tidak bertanggung jawab atas kerugian apa pun yang timbul dari penggunaan layanan oleh Anda.\n4. Anda tidak boleh menggunakan aplikasi untuk tujuan yang melanggar hukum atau dilarang.\n5. Kami dapat memperbarui ketentuan ini dari waktu ke waktu; penggunaan aplikasi secara berkelanjutan merupakan penerimaan atas ketentuan yang diperbarui.';

  @override
  String get authPrivacySheet =>
      'Privasi Anda penting bagi kami.\n\n1. Penyimpanan data: faktur, klien, dan pengaturan Anda disimpan secara lokal di perangkat Anda.\n2. Sinkronisasi cloud: jika Anda masuk, data Anda disinkronkan ke akun Anda sehingga dapat diakses di semua perangkat Anda.\n3. Kami tidak pernah menjual atau membagikan informasi pribadi Anda.\n4. Analitik: kami dapat mengumpulkan data penggunaan anonim untuk membantu meningkatkan aplikasi.\n5. Kontak: untuk pertanyaan apa pun tentang privasi, hubungi support@invoiceflow.app.';

  @override
  String get authErrorWeakPassword => 'Kata sandi terlalu lemah';

  @override
  String get authErrorEmailAlreadyInUse => 'Akun sudah terdaftar';

  @override
  String get authErrorUserNotFound => 'Tidak ada pengguna dengan email ini';

  @override
  String get authErrorWrongPassword => 'Kata sandi salah';

  @override
  String get authErrorInvalidEmail => 'Alamat email tidak valid';

  @override
  String get authErrorTooManyRequests =>
      'Terlalu banyak percobaan. Coba lagi nanti.';

  @override
  String get authErrorDefault => 'Autentikasi gagal. Coba lagi.';

  @override
  String get authErrorGoogleSignInFailed => 'Masuk dengan Google gagal.';

  @override
  String get invoiceListTitle => 'Faktur';

  @override
  String get invoiceListSearchHint => 'Cari faktur...';

  @override
  String get invoiceListSortDate => 'Urutkan berdasarkan Tanggal';

  @override
  String get invoiceListSortAmount => 'Urutkan berdasarkan Jumlah';

  @override
  String get invoiceListSortClient => 'Urutkan berdasarkan Klien';

  @override
  String get invoiceListTabAll => 'Semua';

  @override
  String get invoiceListTabPaid => 'Dibayar';

  @override
  String get invoiceListTabPending => 'Menunggu';

  @override
  String get invoiceListTabOverdue => 'Jatuh Tempo';

  @override
  String get invoiceListTabDraft => 'Draf';

  @override
  String get invoiceListEmpty => 'Tidak ada faktur ditemukan';

  @override
  String get invoiceCreateTitle => 'Faktur Baru';

  @override
  String get invoiceEditTitle => 'Ubah Faktur';

  @override
  String get invoiceSaveDraft => 'Simpan Draf';

  @override
  String get invoiceStepClient => 'Klien';

  @override
  String get invoiceStepItems => 'Item';

  @override
  String get invoiceStepReview => 'Tinjau';

  @override
  String get invoiceSelectClient => 'Pilih klien';

  @override
  String get invoiceSelectClientSubtitle =>
      'Pilih untuk siapa faktur ini dibuat';

  @override
  String get invoiceSearchClients => 'Cari klien...';

  @override
  String get invoiceAddNewClient => 'Tambah Klien Baru';

  @override
  String get invoiceNoClientsFound => 'Tidak ada klien ditemukan';

  @override
  String get invoiceSelectClientEmptyHint =>
      'Buat klien pertama Anda untuk mulai membuat faktur';

  @override
  String get invoiceAddLineItem => 'Tambah Baris';

  @override
  String get invoiceItemDescription => 'Deskripsi';

  @override
  String get invoiceItemDescriptionHint => 'mis. Pengembangan Web';

  @override
  String get invoiceItemQuickAdd => 'Tambah Cepat:';

  @override
  String get invoiceItemQty => 'Jumlah';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Tarif';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Tambah Item';

  @override
  String get invoiceLineItems => 'Baris Item';

  @override
  String get invoiceLineItemsSubtitle => 'Tambahkan layanan atau produk';

  @override
  String get invoiceNoItems => 'Belum ada item. Tambahkan item pertama Anda.';

  @override
  String get invoiceTaxRate => 'Tarif Pajak (%)';

  @override
  String get invoiceSubtotal => 'Subtotal';

  @override
  String invoiceTax(Object taxRate) {
    return 'Pajak ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'TOTAL';

  @override
  String get invoiceReviewHeading => 'Tinjau & Finalisasi';

  @override
  String get invoiceReviewSubtitle =>
      'Atur tanggal, tambahkan catatan, logo, dan tanda tangan';

  @override
  String get invoiceCompanyLogo => 'Logo Perusahaan';

  @override
  String get invoiceAddLogo => 'Tambah Logo';

  @override
  String get invoiceInvoiceDate => 'Tanggal Faktur';

  @override
  String get invoiceDueDate => 'Tanggal Jatuh Tempo';

  @override
  String get invoiceNotesLabel => 'Catatan (Opsional)';

  @override
  String get invoiceNotesHint => 'Terima kasih atas kerja samanya!';

  @override
  String get invoicePaymentTermsLabel => 'Ketentuan Pembayaran (Opsional)';

  @override
  String get invoicePaymentTermsHint => 'Pembayaran jatuh tempo dalam 30 hari';

  @override
  String get invoiceSignatureLabel => 'Tanda Tangan';

  @override
  String get invoiceSignatureOverwrite =>
      'Tanda tangan lama disimpan. Gambar di atas untuk menggantinya.';

  @override
  String get invoiceCreatedSnackbar => 'Faktur berhasil dibuat!';

  @override
  String get invoiceUpdatedSnackbar => 'Faktur berhasil diperbarui!';

  @override
  String get invoiceDetailTitle => 'FAKTUR';

  @override
  String get invoiceDetailMarkAsPaid => 'Tandai Dibayar';

  @override
  String get invoiceDetailTotalAmount => 'Jumlah Total';

  @override
  String get invoiceDetailIssued => 'Diterbitkan';

  @override
  String get invoiceDetailDue => 'Jatuh Tempo';

  @override
  String get invoiceDetailPaid => 'Dibayar';

  @override
  String get invoiceDetailBillTo => 'Tagihan Kepada';

  @override
  String get invoiceDetailItems => 'Item';

  @override
  String get invoiceDetailNotes => 'Catatan';

  @override
  String get invoiceDetailSignature => 'Tanda Tangan';

  @override
  String get invoiceDetailMarkedPaidSnackbar =>
      'Faktur ditandai sebagai dibayar!';

  @override
  String get invoiceDetailPdfFailed => 'Gagal membuat PDF';

  @override
  String get clientListTitle => 'Klien';

  @override
  String get clientListSearchHint => 'Cari klien...';

  @override
  String get clientListTotalClients => 'Total Klien';

  @override
  String get clientListTotalBilled => 'Total Ditagih';

  @override
  String get clientListEmptySearch => 'Tidak ada klien ditemukan';

  @override
  String get clientListEmpty => 'Belum ada klien';

  @override
  String get clientListEmptySubtitle =>
      'Tambahkan klien pertama Anda untuk mulai membuat faktur';

  @override
  String get clientListAddClient => 'Tambah Klien';

  @override
  String get clientListTotalBilledLabel => 'total ditagih';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count faktur';
  }

  @override
  String get clientCreateTitle => 'Klien Baru';

  @override
  String get clientEditTitle => 'Ubah Klien';

  @override
  String get clientBasicInfo => 'Informasi Dasar';

  @override
  String get clientNameLabel => 'Nama Lengkap *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'Nama wajib diisi';

  @override
  String get clientNameTooShort => 'Nama terlalu pendek';

  @override
  String get clientEmailLabel => 'Alamat Email *';

  @override
  String get clientEmailHint => 'penagihan@perusahaan.com';

  @override
  String get clientEmailRequired => 'Email wajib diisi';

  @override
  String get clientEmailInvalid => 'Masukkan email yang valid';

  @override
  String get clientPhoneLabel => 'Nomor Telepon';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'Alamat';

  @override
  String get clientAddressLabel => 'Alamat Jalan';

  @override
  String get clientAddressHint => '123 Business Park, Kantor 45';

  @override
  String get clientCityLabel => 'Kota / Negara';

  @override
  String get clientCityHint => 'Dubai, Uni Emirat Arab';

  @override
  String get clientBillingDefaults => 'Pengaturan Default Penagihan';

  @override
  String get clientDefaultCurrency => 'Mata Uang Default';

  @override
  String get clientDefaultTaxRate => 'Tarif Pajak Default (VAT/GST)';

  @override
  String get clientVatLabel => 'Nomor Registrasi Pajak (VAT)';

  @override
  String get clientVatHint => '123456789012345 (Opsional)';

  @override
  String get clientUpdateButton => 'Perbarui Klien';

  @override
  String get clientAddButton => 'Tambah Klien';

  @override
  String get clientUpdatedSnackbar => 'Klien berhasil diperbarui!';

  @override
  String get clientAddedSnackbar => 'Klien berhasil ditambahkan!';

  @override
  String get clientDetailInvoices => 'Faktur';

  @override
  String get clientDetailTotalBilled => 'Total Ditagih';

  @override
  String get clientDetailOutstanding => 'Belum Dibayar';

  @override
  String get clientDetailEdit => 'Ubah';

  @override
  String get clientDetailNewInvoice => 'Faktur Baru';

  @override
  String get clientDetailEmailClient => 'Email Klien';

  @override
  String get clientDetailClientDetails => 'Detail Klien';

  @override
  String get clientDetailEmail => 'Email';

  @override
  String get clientDetailPhone => 'Telepon';

  @override
  String get clientDetailAddress => 'Alamat';

  @override
  String get clientDetailCity => 'Kota';

  @override
  String get clientDetailCurrency => 'Mata Uang';

  @override
  String get clientDetailTaxRate => 'Tarif Pajak';

  @override
  String get clientDetailVatNumber => 'Nomor VAT';

  @override
  String get clientDetailInvoiceHistory => 'Riwayat Faktur';

  @override
  String get clientDetailNoInvoices => 'Belum ada faktur untuk klien ini';

  @override
  String get deleteClientTitle => 'Hapus Klien?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'Hapus $clientName? Tindakan ini tidak dapat dibatalkan.';
  }

  @override
  String get settingsTitle => 'Pengaturan';

  @override
  String get settingsYourName => 'Nama Anda';

  @override
  String get settingsBackupTitle => 'Cadangkan faktur Anda';

  @override
  String get settingsBackupDescription =>
      'Masuk untuk menyinkronkan data Anda dengan aman dan mengaksesnya dari mana saja.';

  @override
  String get settingsSignInRegister => 'Masuk atau Daftar';

  @override
  String get settingsProUpsell =>
      'Tingkatkan ke Pro untuk faktur tanpa batas, sinkronisasi cloud, dan tanpa tanda air.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'Anda telah mencapai batas paket gratis $limit faktur. Tingkatkan ke Pro untuk faktur tanpa batas dan sinkronisasi cloud.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'Anda telah mencapai batas paket gratis $limit klien. Tingkatkan ke Pro untuk klien tanpa batas dan sinkronisasi cloud.';
  }

  @override
  String get settingsUpgradePro => 'Tingkatkan';

  @override
  String get settingsBusinessSection => 'PENGATURAN BISNIS';

  @override
  String get settingsBusinessDetails => 'Detail Bisnis';

  @override
  String get settingsBusinessDetailsSubtitle => 'Atur nama bisnis Anda';

  @override
  String get settingsInvoicePrefix => 'Awalan Faktur';

  @override
  String get settingsDefaultCurrency => 'Mata Uang Default';

  @override
  String get settingsAppSection => 'PENGATURAN APLIKASI';

  @override
  String get settingsDarkMode => 'Mode Gelap';

  @override
  String get settingsDailyNotification => 'Notifikasi Harian';

  @override
  String get settingsDailyNotificationNotSet => 'Belum diatur';

  @override
  String get settingsLanguage => 'Bahasa';

  @override
  String get settingsLanguageLabel => 'Bahasa Indonesia';

  @override
  String get languageEnglish => 'Inggris';

  @override
  String get languageArabic => 'Arab';

  @override
  String get languageFrench => 'Perancis';

  @override
  String get languageSpanish => 'Spanyol';

  @override
  String get languageUrdu => 'اردو';

  @override
  String get languageChinese => '中文';

  @override
  String get settingsAboutSection => 'TENTANG';

  @override
  String get settingsRateApp => 'Nilai Aplikasi';

  @override
  String get settingsHelpSupport => 'Bantuan & Dukungan';

  @override
  String get settingsPrivacyPolicy => 'Kebijakan Privasi';

  @override
  String get settingsHelpSupportSheet =>
      'Butuh bantuan? Hubungi support@invoiceflow.app dan kami akan membalas dalam 24 jam.';

  @override
  String get settingsPrivacySheet =>
      'Data Anda disimpan secara lokal di perangkat Anda. Kami tidak pernah menjual atau membagikan informasi pribadi Anda.';

  @override
  String get settingsVersion => 'Versi';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Keluar';

  @override
  String get settingsEditProfile => 'Ubah Profil';

  @override
  String get settingsProfileNameLabel => 'Nama Lengkap';

  @override
  String get settingsProfileNameHint => 'Nama Anda';

  @override
  String get settingsBusinessNameLabel => 'Nama Bisnis';

  @override
  String get settingsBusinessNameHint => 'Perusahaan Anda Tbk.';

  @override
  String get settingsBusinessEmailLabel => 'Email Bisnis';

  @override
  String get settingsBusinessEmailHint => 'penagihan@perusahaan.com';

  @override
  String get settingsPhoneLabel => 'Telepon';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'Alamat';

  @override
  String get settingsAddressHint => 'Dubai, Uni Emirat Arab';

  @override
  String get settingsBusinessDetailsSaved => 'Detail bisnis berhasil disimpan!';

  @override
  String get settingsInvoicePrefixTitle => 'Awalan Nomor Faktur';

  @override
  String get settingsInvoicePrefixHint => 'mis. INV-, #, Tag-';

  @override
  String get settingsPrefixSaved => 'Awalan faktur berhasil disimpan';

  @override
  String get settingsNotificationScheduled =>
      'Notifikasi harian berhasil dijadwalkan!';

  @override
  String get settingsSignOutTitle => 'Keluar?';

  @override
  String get settingsSignOutMessage =>
      'Anda yakin ingin keluar dari InvoiceFlow?';

  @override
  String get settingsSignedOut => 'Berhasil keluar.';

  @override
  String get statusPaid => 'Dibayar';

  @override
  String get statusOverdue => 'Jatuh Tempo';

  @override
  String get statusPending => 'Menunggu';

  @override
  String get statusDraft => 'Draf';

  @override
  String get statusCancelled => 'Dibatalkan';

  @override
  String get notificationChannelName => 'Pengingat Harian';

  @override
  String get notificationChannelDescription =>
      'Mengingatkan Anda untuk memeriksa faktur setiap hari';

  @override
  String get notificationTitle => 'Pengingat Faktur';

  @override
  String get notificationBody =>
      'Waktunya memeriksa faktur terbaru Anda dan melacak pembayaran yang menunggu.';

  @override
  String get pdfInvoice => 'FAKTUR';

  @override
  String get pdfInvoiceNumber => 'Faktur #:';

  @override
  String get pdfDate => 'Tanggal:';

  @override
  String get pdfDueDate => 'Tanggal Jatuh Tempo:';

  @override
  String get pdfBillTo => 'TAGIHAN KEPADA:';

  @override
  String get pdfDescription => 'Deskripsi';

  @override
  String get pdfQty => 'Jml';

  @override
  String get pdfRate => 'Tarif';

  @override
  String get pdfAmount => 'Jumlah';

  @override
  String get pdfSubtotal => 'Subtotal:';

  @override
  String pdfTax(Object taxRate) {
    return 'Pajak ($taxRate%):';
  }

  @override
  String get pdfTotal => 'TOTAL:';

  @override
  String get pdfSignature => 'Tanda Tangan:';

  @override
  String get pdfNotes => 'Catatan:';

  @override
  String get pdfPaymentTerms => 'Ketentuan Pembayaran:';

  @override
  String get pdfThankYou => 'Terima kasih atas kerja samanya!';

  @override
  String get quickAddWebDesign => 'Desain Web';

  @override
  String get quickAddDevelopment => 'Pengembangan';

  @override
  String get quickAddConsulting => 'Konsultasi';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Penulisan Konten';

  @override
  String get paywallTitle => 'Buka InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'Tanpa batas dan sinkronisasi di mana saja. Batalkan kapan saja.';

  @override
  String get paywallFeatureUnlimited => 'Faktur & klien tanpa batas';

  @override
  String get paywallFeatureSync => 'Sinkronisasi cloud lintas perangkat';

  @override
  String get paywallFeatureNoWatermark => 'Tanpa tanda air, selamanya';

  @override
  String get paywallMonthly => 'Bulanan';

  @override
  String get paywallMonthlySub => 'Ditagih bulanan';

  @override
  String get paywallYearly => 'Tahunan';

  @override
  String get paywallYearlySub => 'Nilai terbaik — gratis 2 bulan';

  @override
  String get paywallRestore => 'Pulihkan Pembelian';

  @override
  String get paywallTerms =>
      'Langganan diperbarui otomatis. Kelola di pengaturan toko aplikasi Anda.';

  @override
  String get purchaseSuccessTitle => 'Anda Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'Faktur tanpa batas, sinkronisasi cloud, dan tanpa tanda air kini terbuka. Terima kasih!';

  @override
  String get purchaseSuccessContinue => 'Lanjut';

  @override
  String get paywallLoading => 'Memuat paket…';

  @override
  String get paywallLoadError =>
      'Paket tidak dapat dimuat. Periksa koneksi Anda dan coba lagi.';

  @override
  String get paywallNoOffering => 'Tidak ada paket yang tersedia saat ini.';

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
  String get purchaseRestored => 'Pembelian berhasil dipulihkan';

  @override
  String get purchaseErrorGeneric => 'Pembelian gagal. Silakan coba lagi.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro aktif — faktur dan klien tanpa batas tanpa tanda air';

  @override
  String get settingsFreePlan => 'Paket gratis';

  @override
  String get settingsFreeHint =>
      'Tingkatkan untuk faktur tanpa batas, sinkronisasi cloud, dan lainnya';

  @override
  String get settingsUpgradeToPro => 'Tingkatkan ke Pro';

  @override
  String get settingsManageSubscription => 'Kelola langganan';

  @override
  String get customerCenterFailed =>
      'Tidak dapat membuka pengelolaan langganan.';

  @override
  String get onboardingSkip => 'Lewati';

  @override
  String get onboardingNext => 'Lanjut';

  @override
  String get onboardingGetStarted => 'Mulai';

  @override
  String get onboardingWelcomeTitle => 'Faktur dalam 2 menit';

  @override
  String get onboardingWelcomeBody =>
      'Buat faktur PDF profesional untuk klien Anda — cepat dan indah.';

  @override
  String get onboardingSyncTitle => 'Sinkronkan di mana saja';

  @override
  String get onboardingSyncBody =>
      'Masuk untuk mencadangkan data Anda ke cloud dengan aman dan mengaksesnya dari perangkat apa pun.';

  @override
  String get onboardingProTitle => 'Tanpa batas dengan Pro';

  @override
  String get onboardingProBody =>
      'Buka faktur tanpa batas, sinkronisasi cloud, dan hapus tanda air dengan InvoiceFlow Pro.';

  @override
  String get settingsAccentColor => 'Warna Aksen';

  @override
  String get settingsAccentColorHint =>
      'Personalisasi aplikasi dengan warna pilihan Anda.';

  @override
  String get settingsCountry => 'Negara';

  @override
  String get settingsTaxId => 'Nomor Registrasi Pajak';

  @override
  String get settingsTaxIdNotSet => 'Belum diatur';

  @override
  String get settingsTaxIdHint => 'mis. 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Nomor pajak berhasil disimpan';

  @override
  String get catalogTitle => 'Produk & Layanan';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count item',
      one: '$count item',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'Belum ada produk';

  @override
  String get catalogEmptySubtitle =>
      'Simpan produk dan layanan yang dapat digunakan kembali untuk menambahkannya ke faktur lebih cepat.';

  @override
  String get catalogFromSaved => 'Dari katalog Anda';

  @override
  String get catalogSaveToCatalog =>
      'Simpan ke katalog untuk digunakan kembali';

  @override
  String get catalogAddSnackbar => 'Ditambahkan ke katalog';

  @override
  String get catalogDeleteTitle => 'Hapus item?';

  @override
  String catalogDeleteMessage(String description) {
    return 'Hapus \"$description\"? Tindakan ini tidak dapat dibatalkan.';
  }

  @override
  String get commonDone => 'Selesai';

  @override
  String get estimateListTitle => 'Estimasi';

  @override
  String get estimateListSearchHint => 'Cari estimasi…';

  @override
  String get estimateListEmpty => 'Belum ada estimasi';

  @override
  String get estimateListTabAll => 'Semua';

  @override
  String get estimateListTabDraft => 'Draf';

  @override
  String get estimateListTabSent => 'Terkirim';

  @override
  String get estimateListTabAccepted => 'Diterima';

  @override
  String get estimateListTabExpired => 'Kedaluwarsa';

  @override
  String get estimateCreateTitle => 'Estimasi Baru';

  @override
  String get estimateEditTitle => 'Ubah Estimasi';

  @override
  String get estimateCreatedSnackbar => 'Estimasi disimpan';

  @override
  String get estimateUpdatedSnackbar => 'Estimasi diperbarui';

  @override
  String get estimateIssueDate => 'Tanggal penerbitan';

  @override
  String get estimateExpiryDate => 'Tanggal kedaluwarsa';

  @override
  String get estimateExpiresPrefix => 'Kedaluwarsa ';

  @override
  String get estimateConvertToInvoice => 'Konversi ke Faktur';

  @override
  String get estimateConvertedSnackbar => 'Estimasi dikonversi menjadi faktur';

  @override
  String get estimateConvertFailed => 'Tidak dapat mengonversi estimasi';

  @override
  String get estimateMarkSent => 'Tandai sebagai terkirim';

  @override
  String get estimateMarkAccepted => 'Tandai sebagai diterima';

  @override
  String get estimateMarkDeclined => 'Tandai sebagai ditolak';

  @override
  String get estimateConvertedTitle => 'Dikonversi';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'Dikonversi menjadi faktur $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'TOTAL ESTIMASI';

  @override
  String get estimateStatusSent => 'Terkirim';

  @override
  String get estimateStatusAccepted => 'Diterima';

  @override
  String get estimateStatusDeclined => 'Ditolak';

  @override
  String get estimateStatusExpired => 'Kedaluwarsa';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count terbuka',
      one: '1 terbuka',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'Hapus estimasi?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'Hapus \"$estimateNumber\"? Tindakan ini tidak dapat dibatalkan.';
  }

  @override
  String get estimatePdfFailed => 'Tidak dapat membuat PDF';

  @override
  String get pdfEstimate => 'ESTIMASI';

  @override
  String get pdfEstimateNumber => 'Estimasi #:';

  @override
  String get pdfValidUntil => 'Berlaku hingga:';

  @override
  String get invoiceDetailPaymentTerms => 'Ketentuan Pembayaran';

  @override
  String get recurringListTitle => 'Faktur Berulang';

  @override
  String get recurringListEmpty => 'Belum ada faktur berulang';

  @override
  String get recurringListEmptySubtitle =>
      'Atur faktur otomatis untuk klien dan layanan rutin Anda.';

  @override
  String get recurringCreateTitle => 'Berulang Baru';

  @override
  String get recurringEditTitle => 'Ubah Berulang';

  @override
  String get recurringCreatedSnackbar => 'Faktur berulang disimpan';

  @override
  String get recurringUpdatedSnackbar => 'Faktur berulang diperbarui';

  @override
  String get recurringDeleteTitle => 'Hapus faktur berulang?';

  @override
  String recurringDeleteMessage(String title) {
    return 'Hapus \"$title\"? Faktur yang sudah ada tidak akan dihapus.';
  }

  @override
  String get recurringTitleLabel => 'Judul';

  @override
  String get recurringTitleHint => 'mis. Retainer bulanan';

  @override
  String get recurringClientLabel => 'Klien';

  @override
  String get recurringFrequencyLabel => 'Frekuensi';

  @override
  String get recurringFrequencyWeekly => 'Mingguan';

  @override
  String get recurringFrequencyBiweekly => 'Dua Mingguan';

  @override
  String get recurringFrequencyMonthly => 'Bulanan';

  @override
  String get recurringFrequencyQuarterly => 'Triwulanan';

  @override
  String get recurringFrequencyYearly => 'Tahunan';

  @override
  String get recurringNextRun => 'Jadwal berikutnya';

  @override
  String get recurringDueDays => 'Jatuh tempo dalam';

  @override
  String get recurringDays => 'hari';

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
  String get reportsTitle => 'Laporan';

  @override
  String get reportsSubtitle => 'Analitik bisnis';

  @override
  String get reportsEmpty => 'Buat faktur untuk melihat laporan';

  @override
  String get reportsCollected => 'Terkumpul';

  @override
  String get reportsOutstanding => 'Belum Dibayar';

  @override
  String get reportsMonthlyRevenue => 'Pendapatan Bulanan';

  @override
  String get reportsLast6Months => '6 bulan terakhir';

  @override
  String get reportsByStatus => 'Berdasarkan Status';

  @override
  String get reportsTopClients => 'Klien Teratas';

  @override
  String get paymentLinkTitle => 'Tautan Pembayaran';

  @override
  String get paymentLinkNotSet =>
      'Tautan pembayaran belum diatur di Pengaturan';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'Tautan pembayaran Anda disertakan pada PDF faktur dan dapat disalin dari menu faktur.';

  @override
  String get paymentLinkSaved => 'Tautan pembayaran disimpan';

  @override
  String get settingsPaymentLinkNotSet => 'Belum diatur';

  @override
  String get invoiceDetailCopyPaymentLink => 'Salin Tautan Pembayaran';

  @override
  String get paymentLinkCopied => 'Tautan pembayaran disalin';

  @override
  String get pdfPayOnline => 'Bayar online';

  @override
  String get exportXml => 'Ekspor XML';

  @override
  String get exportXmlFailed => 'Tidak dapat mengekspor XML';
}
