// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Invois profesional dalam 2 minit';

  @override
  String get bottomNavDashboard => 'Papan Pemuka';

  @override
  String get bottomNavInvoices => 'Invois';

  @override
  String get bottomNavClients => 'Pelanggan';

  @override
  String get bottomNavSettings => 'Tetapan';

  @override
  String get commonCancel => 'Batal';

  @override
  String get commonDelete => 'Padam';

  @override
  String get commonSave => 'Simpan';

  @override
  String get commonSearch => 'Cari';

  @override
  String get commonBack => 'Kembali';

  @override
  String get commonContinue => 'Teruskan';

  @override
  String get commonAdd => 'Tambah';

  @override
  String get commonEdit => 'Sunting';

  @override
  String get commonCreate => 'Cipta';

  @override
  String get commonClear => 'Kosongkan';

  @override
  String get commonView => 'Lihat';

  @override
  String get commonShare => 'Kongsi';

  @override
  String get commonExportPdf => 'Eksport PDF';

  @override
  String get commonSharePdf => 'Kongsi PDF';

  @override
  String get commonSaveChanges => 'Simpan Perubahan';

  @override
  String get commonRequired => 'Diperlukan';

  @override
  String get commonInvalid => 'Tidak sah';

  @override
  String get commonSendLink => 'Hantar Pautan';

  @override
  String get commonGeneratingPdf => 'Menjana PDF...';

  @override
  String get dashboardGreetingMorning => 'Selamat pagi';

  @override
  String get dashboardGreetingAfternoon => 'Selamat tengah hari';

  @override
  String get dashboardGreetingEvening => 'Selamat petang';

  @override
  String get dashboardSubtitle =>
      'Berikut ialah gambaran keseluruhan perniagaan anda';

  @override
  String get dashboardOutstanding => 'Belum Dijelaskan';

  @override
  String get dashboardOverdue => 'Tertunggak';

  @override
  String get dashboardThisMonth => 'Bulan Ini';

  @override
  String get dashboardInvoices => 'invois';

  @override
  String dashboardPaidCount(Object count) {
    return '$count dibayar';
  }

  @override
  String get dashboardRecentInvoices => 'Invois Terkini';

  @override
  String get dashboardSeeAll => 'Lihat Semua';

  @override
  String get dashboardNotifications => 'Pemberitahuan';

  @override
  String get dashboardNotificationsHint =>
      'Kekal awasi aliran tunai dengan menyemak invois tertunggak dan belum selesai secara berkala.';

  @override
  String get dashboardNewInvoice => 'Invois Baharu';

  @override
  String get dashboardNoInvoicesYet => 'Belum ada invois';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Cipta invois profesional pertama anda dalam masa kurang 2 minit';

  @override
  String get dashboardCreateInvoice => 'Cipta Invois';

  @override
  String get dashboardMarkPaid => 'Tandakan Dibayar';

  @override
  String get dashboardDuePrefix => 'Tamat ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days hari tertunggak';
  }

  @override
  String get deleteInvoiceTitle => 'Padam Invois?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'Padam $invoiceNumber? Tindakan ini tidak boleh dibatalkan.';
  }

  @override
  String get loginHeading => 'Selamat kembali';

  @override
  String get loginSubtitle => 'Log masuk ke akaun InvoiceFlow anda';

  @override
  String get loginEmailLabel => 'Alamat e-mel';

  @override
  String get loginEmailHint => 'anda@contoh.com';

  @override
  String get loginEmailRequired => 'E-mel diperlukan';

  @override
  String get loginEmailInvalid => 'Masukkan e-mel yang sah';

  @override
  String get loginPasswordLabel => 'Kata laluan';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'Kata laluan diperlukan';

  @override
  String get loginPasswordMinLength =>
      'Kata laluan mestilah sekurang-kurangnya 6 aksara';

  @override
  String get loginForgotPassword => 'Lupa kata laluan?';

  @override
  String get loginSignIn => 'Log Masuk';

  @override
  String get loginOrContinueWith => 'atau teruskan dengan';

  @override
  String get loginContinueWithGoogle => 'Teruskan dengan Google';

  @override
  String get loginNoAccount => 'Tiada akaun? ';

  @override
  String get loginSignUp => 'Daftar';

  @override
  String get loginResetPasswordTitle => 'Tetapkan Semula Kata Laluan';

  @override
  String get loginResetPasswordMessage =>
      'Masukkan e-mel anda dan kami akan hantar pautan penetapan semula.';

  @override
  String get loginResetPasswordHint => 'anda@contoh.com';

  @override
  String get loginResetLinkSent =>
      'Pautan tetapan semula dihantar! Semak e-mel anda.';

  @override
  String get loginResetLinkFailed => 'Gagal menghantar pautan tetapan semula.';

  @override
  String get registerHeading => 'Cipta akaun';

  @override
  String get registerSubtitle => 'Mula menghantar invois profesional hari ini';

  @override
  String get registerNameLabel => 'Nama Penuh';

  @override
  String get registerNameHint => 'Ahmad Muhammad';

  @override
  String get registerNameRequired => 'Nama diperlukan';

  @override
  String get registerNameMinLength =>
      'Nama mestilah sekurang-kurangnya 2 aksara';

  @override
  String get registerEmailLabel => 'Alamat e-mel';

  @override
  String get registerEmailHint => 'anda@contoh.com';

  @override
  String get registerEmailRequired => 'E-mel diperlukan';

  @override
  String get registerEmailInvalid => 'Masukkan e-mel yang sah';

  @override
  String get registerPasswordLabel => 'Kata laluan';

  @override
  String get registerPasswordHint => 'Sekurang-kurangnya 6 aksara';

  @override
  String get registerPasswordRequired => 'Kata laluan diperlukan';

  @override
  String get registerPasswordMinLength =>
      'Kata laluan mestilah sekurang-kurangnya 6 aksara';

  @override
  String get registerConfirmPasswordLabel => 'Sahkan Kata Laluan';

  @override
  String get registerConfirmPasswordHint => 'Ulangi kata laluan anda';

  @override
  String get registerConfirmPasswordRequired => 'Sila sahkan kata laluan anda';

  @override
  String get registerPasswordsDoNotMatch => 'Kata laluan tidak sepadan';

  @override
  String get registerCreateAccount => 'Cipta Akaun';

  @override
  String get registerHaveAccount => 'Sudah ada akaun? ';

  @override
  String get registerSignIn => 'Log masuk';

  @override
  String get authTermsOfService => 'Terma Perkhidmatan';

  @override
  String get authPrivacyPolicy => 'Dasar Privasi';

  @override
  String get authAgreeRequired =>
      'Sila terima Terma Perkhidmatan dan Dasar Privasi untuk meneruskan';

  @override
  String get loginAgreePrefix => 'Dengan meneruskan, anda bersetuju dengan ';

  @override
  String get registerAgreePrefix => 'Saya bersetuju dengan ';

  @override
  String get authAgreeAnd => ' dan ';

  @override
  String get authTermsSheet =>
      'Terma Perkhidmatan ini mengawal penggunaan InvoiceFlow oleh anda. Dengan mengakses atau menggunakan aplikasi, anda bersetuju untuk terikat dengan terma ini.\n\n1. Anda bertanggungjawab ke atas ketepatan invois, anggaran dan data lain yang anda cipta.\n2. Aplikasi disediakan \"seadanya\" tanpa sebarang jaminan, sama ada tersurat atau tersirat.\n3. Kami tidak bertanggungjawab ke atas sebarang kerugian yang timbul daripada penggunaan perkhidmatan oleh anda.\n4. Anda tidak boleh menggunakan aplikasi untuk sebarang tujuan yang menyalahi undang-undang atau dilarang.\n5. Kami mungkin mengemas kini terma ini dari semasa ke semasa; penggunaan aplikasi secara berterusan merupakan penerimaan terma yang dikemas kini.';

  @override
  String get authPrivacySheet =>
      'Privasi anda penting kepada kami.\n\n1. Penyimpanan data: invois, klien dan tetapan anda disimpan secara setempat pada peranti anda.\n2. Penyegerakan awan: jika anda log masuk, data anda disegerakkan ke akaun anda supaya boleh diakses merentas semua peranti anda.\n3. Kami tidak pernah menjual atau berkongsi maklumat peribadi anda.\n4. Analitis: kami mungkin mengumpul data penggunaan tanpa nama untuk membantu menambah baik aplikasi.\n5. Hubungi: untuk sebarang soalan privasi, hubungi support@invoiceflow.app.';

  @override
  String get authErrorWeakPassword => 'Kata laluan terlalu lemah';

  @override
  String get authErrorEmailAlreadyInUse => 'Akaun sudah wujud';

  @override
  String get authErrorUserNotFound => 'Tiada pengguna ditemui dengan e-mel ini';

  @override
  String get authErrorWrongPassword => 'Kata laluan salah';

  @override
  String get authErrorInvalidEmail => 'Alamat e-mel tidak sah';

  @override
  String get authErrorTooManyRequests =>
      'Terlalu banyak percubaan. Cuba lagi kemudian';

  @override
  String get authErrorDefault => 'Pengesahan gagal. Cuba lagi.';

  @override
  String get authErrorGoogleSignInFailed => 'Log masuk Google gagal.';

  @override
  String get invoiceListTitle => 'Invois';

  @override
  String get invoiceListSearchHint => 'Cari invois...';

  @override
  String get invoiceListSortDate => 'Susun mengikut Tarikh';

  @override
  String get invoiceListSortAmount => 'Susun mengikut Jumlah';

  @override
  String get invoiceListSortClient => 'Susun mengikut Pelanggan';

  @override
  String get invoiceListTabAll => 'Semua';

  @override
  String get invoiceListTabPaid => 'Dibayar';

  @override
  String get invoiceListTabPending => 'Belum Dibayar';

  @override
  String get invoiceListTabOverdue => 'Tertunggak';

  @override
  String get invoiceListTabDraft => 'Draf';

  @override
  String get invoiceListEmpty => 'Tiada invois ditemui';

  @override
  String get invoiceCreateTitle => 'Invois Baharu';

  @override
  String get invoiceEditTitle => 'Sunting Invois';

  @override
  String get invoiceSaveDraft => 'Simpan Draf';

  @override
  String get invoiceStepClient => 'Pelanggan';

  @override
  String get invoiceStepItems => 'Item';

  @override
  String get invoiceStepReview => 'Semakan';

  @override
  String get invoiceSelectClient => 'Pilih pelanggan';

  @override
  String get invoiceSelectClientSubtitle => 'Pilih untuk siapa invois ini';

  @override
  String get invoiceSearchClients => 'Cari pelanggan...';

  @override
  String get invoiceAddNewClient => 'Tambah Pelanggan Baharu';

  @override
  String get invoiceNoClientsFound => 'Tiada pelanggan ditemui';

  @override
  String get invoiceSelectClientEmptyHint =>
      'Cipta pelanggan pertama anda untuk mula membuat invois';

  @override
  String get invoiceAddLineItem => 'Tambah Item Baris';

  @override
  String get invoiceItemDescription => 'Penerangan';

  @override
  String get invoiceItemDescriptionHint => 'cth. Pembangunan Web';

  @override
  String get invoiceItemQuickAdd => 'Tambah Pantas:';

  @override
  String get invoiceItemQty => 'Kuantiti';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Kadar';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Tambah Item';

  @override
  String get invoiceLineItems => 'Item Baris';

  @override
  String get invoiceLineItemsSubtitle => 'Tambah perkhidmatan atau produk';

  @override
  String get invoiceNoItems => 'Belum ada item. Tambah item pertama anda.';

  @override
  String get invoiceTaxRate => 'Kadar Cukai (%)';

  @override
  String get invoiceSubtotal => 'Jumlah Kecil';

  @override
  String invoiceTax(Object taxRate) {
    return 'Cukai ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'JUMLAH';

  @override
  String get invoiceReviewHeading => 'Semakan & Siapkan';

  @override
  String get invoiceReviewSubtitle =>
      'Tetapkan tarikh, tambah nota, logo dan tandatangan';

  @override
  String get invoiceCompanyLogo => 'Logo Syarikat';

  @override
  String get invoiceAddLogo => 'Tambah Logo';

  @override
  String get invoiceInvoiceDate => 'Tarikh Invois';

  @override
  String get invoiceDueDate => 'Tarikh Tamat';

  @override
  String get invoiceNotesLabel => 'Nota (Pilihan)';

  @override
  String get invoiceNotesHint => 'Terima kasih atas perniagaan anda!';

  @override
  String get invoicePaymentTermsLabel => 'Terma Pembayaran (Pilihan)';

  @override
  String get invoicePaymentTermsHint =>
      'Pembayaran perlu dijelaskan dalam tempoh 30 hari';

  @override
  String get invoiceSignatureLabel => 'Tandatangan';

  @override
  String get invoiceSignatureOverwrite =>
      'Tandatangan sedia ada disimpan. Lukis di atas untuk menggantikan.';

  @override
  String get invoiceCreatedSnackbar => 'Invois dicipta!';

  @override
  String get invoiceUpdatedSnackbar => 'Invois dikemas kini!';

  @override
  String get invoiceDetailTitle => 'INVOIS';

  @override
  String get invoiceDetailMarkAsPaid => 'Tandakan sebagai Dibayar';

  @override
  String get invoiceDetailTotalAmount => 'Jumlah Keseluruhan';

  @override
  String get invoiceDetailIssued => 'Diterbitkan';

  @override
  String get invoiceDetailDue => 'Tamat';

  @override
  String get invoiceDetailPaid => 'Dibayar';

  @override
  String get invoiceDetailBillTo => 'Bil Kepada';

  @override
  String get invoiceDetailItems => 'Item';

  @override
  String get invoiceDetailNotes => 'Nota';

  @override
  String get invoiceDetailSignature => 'Tandatangan';

  @override
  String get invoiceDetailMarkedPaidSnackbar =>
      'Invois ditandakan sebagai dibayar!';

  @override
  String get invoiceDetailPdfFailed => 'Gagal menjana PDF';

  @override
  String get clientListTitle => 'Pelanggan';

  @override
  String get clientListSearchHint => 'Cari pelanggan...';

  @override
  String get clientListTotalClients => 'Jumlah Pelanggan';

  @override
  String get clientListTotalBilled => 'Jumlah Dibil';

  @override
  String get clientListEmptySearch => 'Tiada pelanggan ditemui';

  @override
  String get clientListEmpty => 'Belum ada pelanggan';

  @override
  String get clientListEmptySubtitle =>
      'Tambah pelanggan pertama anda untuk mula mencipta invois';

  @override
  String get clientListAddClient => 'Tambah Pelanggan';

  @override
  String get clientListTotalBilledLabel => 'jumlah dibil';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count invois';
  }

  @override
  String get clientCreateTitle => 'Pelanggan Baharu';

  @override
  String get clientEditTitle => 'Sunting Pelanggan';

  @override
  String get clientBasicInfo => 'Maklumat Asas';

  @override
  String get clientNameLabel => 'Nama Penuh *';

  @override
  String get clientNameHint => 'Syarikat Acme';

  @override
  String get clientNameRequired => 'Nama diperlukan';

  @override
  String get clientNameTooShort => 'Nama terlalu pendek';

  @override
  String get clientEmailLabel => 'Alamat E-mel *';

  @override
  String get clientEmailHint => 'bil@company.com';

  @override
  String get clientEmailRequired => 'E-mel diperlukan';

  @override
  String get clientEmailInvalid => 'Masukkan e-mel yang sah';

  @override
  String get clientPhoneLabel => 'Nombor Telefon';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'Alamat';

  @override
  String get clientAddressLabel => 'Alamat Jalan';

  @override
  String get clientAddressHint => '123 Business Park, Pejabat 45';

  @override
  String get clientCityLabel => 'Bandar / Negara';

  @override
  String get clientCityHint => 'Dubai, Emiriah Arab Bersatu';

  @override
  String get clientBillingDefaults => 'Lalai Pengebilan';

  @override
  String get clientDefaultCurrency => 'Mata Wang Lalai';

  @override
  String get clientDefaultTaxRate => 'Kadar Cukai Lalai (VAT/GST)';

  @override
  String get clientVatLabel => 'Nombor Pendaftaran VAT / Cukai';

  @override
  String get clientVatHint => '123456789012345 (Pilihan)';

  @override
  String get clientUpdateButton => 'Kemas Kini Pelanggan';

  @override
  String get clientAddButton => 'Tambah Pelanggan';

  @override
  String get clientUpdatedSnackbar => 'Pelanggan dikemas kini!';

  @override
  String get clientAddedSnackbar => 'Pelanggan ditambah!';

  @override
  String get clientDetailInvoices => 'Invois';

  @override
  String get clientDetailTotalBilled => 'Jumlah Dibil';

  @override
  String get clientDetailOutstanding => 'Belum Dijelaskan';

  @override
  String get clientDetailEdit => 'Sunting';

  @override
  String get clientDetailNewInvoice => 'Invois Baharu';

  @override
  String get clientDetailEmailClient => 'E-mel Pelanggan';

  @override
  String get clientDetailClientDetails => 'Butiran Pelanggan';

  @override
  String get clientDetailEmail => 'E-mel';

  @override
  String get clientDetailPhone => 'Telefon';

  @override
  String get clientDetailAddress => 'Alamat';

  @override
  String get clientDetailCity => 'Bandar';

  @override
  String get clientDetailCurrency => 'Mata Wang';

  @override
  String get clientDetailTaxRate => 'Kadar Cukai';

  @override
  String get clientDetailVatNumber => 'Nombor VAT';

  @override
  String get clientDetailInvoiceHistory => 'Sejarah Invois';

  @override
  String get clientDetailNoInvoices => 'Belum ada invois untuk pelanggan ini';

  @override
  String get deleteClientTitle => 'Padam Pelanggan?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'Padam $clientName? Tindakan ini tidak boleh dibatalkan.';
  }

  @override
  String get settingsTitle => 'Tetapan';

  @override
  String get settingsYourName => 'Nama Anda';

  @override
  String get settingsBackupTitle => 'Sandarkan invois anda';

  @override
  String get settingsBackupDescription =>
      'Log masuk untuk menyegerakkan data anda dengan selamat dan mengaksesnya dari mana-mana sahaja.';

  @override
  String get settingsSignInRegister => 'Log Masuk atau Daftar';

  @override
  String get settingsProUpsell =>
      'Naik taraf kepada Pro untuk invois tanpa had, penyegerakan awan & tiada tanda air.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'Anda telah mencapai had pelan percuma $limit invois. Naik taraf kepada Pro untuk invois tanpa had dan penyegerakan awan.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'Anda telah mencapai had pelan percuma $limit pelanggan. Naik taraf kepada Pro untuk pelanggan tanpa had dan penyegerakan awan.';
  }

  @override
  String get settingsUpgradePro => 'Naik Taraf';

  @override
  String get settingsBusinessSection => 'TETAPAN PERNIAGAAN';

  @override
  String get settingsBusinessDetails => 'Butiran Perniagaan';

  @override
  String get settingsBusinessDetailsSubtitle => 'Tetapkan nama perniagaan anda';

  @override
  String get settingsInvoicePrefix => 'Awalan Invois';

  @override
  String get settingsDefaultCurrency => 'Mata Wang Lalai';

  @override
  String get settingsAppSection => 'TETAPAN APLIKASI';

  @override
  String get settingsDarkMode => 'Mod Gelap';

  @override
  String get settingsDailyNotification => 'Pemberitahuan Harian';

  @override
  String get settingsDailyNotificationNotSet => 'Tidak ditetapkan';

  @override
  String get settingsLanguage => 'Bahasa';

  @override
  String get settingsLanguageLabel => 'Bahasa Melayu';

  @override
  String get languageEnglish => 'Bahasa Inggeris';

  @override
  String get languageArabic => 'العربية';

  @override
  String get languageFrench => 'Perancis';

  @override
  String get languageSpanish => 'Sepanyol';

  @override
  String get languageUrdu => 'اردو';

  @override
  String get languageChinese => 'Cina';

  @override
  String get settingsAboutSection => 'PERIHAL';

  @override
  String get settingsRateApp => 'Nilai Aplikasi';

  @override
  String get settingsHelpSupport => 'Bantuan & Sokongan';

  @override
  String get settingsPrivacyPolicy => 'Dasar Privasi';

  @override
  String get settingsHelpSupportSheet =>
      'Perlukan bantuan? Hubungi support@invoiceflow.app dan kami akan menghubungi anda dalam tempoh 24 jam.';

  @override
  String get settingsPrivacySheet =>
      'Data anda disimpan secara setempat pada peranti anda. Kami tidak pernah menjual atau berkongsi maklumat peribadi anda.';

  @override
  String get settingsVersion => 'Versi';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Log Keluar';

  @override
  String get settingsEditProfile => 'Sunting Profil';

  @override
  String get settingsProfileNameLabel => 'Nama Penuh';

  @override
  String get settingsProfileNameHint => 'Nama anda';

  @override
  String get settingsBusinessNameLabel => 'Nama Perniagaan';

  @override
  String get settingsBusinessNameHint => 'Syarikat Anda Sdn. Bhd.';

  @override
  String get settingsBusinessEmailLabel => 'E-mel Perniagaan';

  @override
  String get settingsBusinessEmailHint => 'bil@company.com';

  @override
  String get settingsPhoneLabel => 'Telefon';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'Alamat';

  @override
  String get settingsAddressHint => 'Dubai, Emiriah Arab Bersatu';

  @override
  String get settingsBusinessDetailsSaved => 'Butiran perniagaan disimpan!';

  @override
  String get settingsInvoicePrefixTitle => 'Awalan Nombor Invois';

  @override
  String get settingsInvoicePrefixHint => 'cth. INV-, #, Bil-';

  @override
  String get settingsPrefixSaved => 'Awalan invois disimpan';

  @override
  String get settingsNotificationScheduled =>
      'Pemberitahuan harian dijadualkan dengan jayanya!';

  @override
  String get settingsSignOutTitle => 'Log Keluar?';

  @override
  String get settingsSignOutMessage =>
      'Adakah anda pasti mahu log keluar dari InvoiceFlow?';

  @override
  String get settingsSignedOut => 'Berjaya log keluar.';

  @override
  String get statusPaid => 'Dibayar';

  @override
  String get statusOverdue => 'Tertunggak';

  @override
  String get statusPending => 'Belum Dibayar';

  @override
  String get statusDraft => 'Draf';

  @override
  String get statusCancelled => 'Dibatalkan';

  @override
  String get notificationChannelName => 'Peringatan Harian';

  @override
  String get notificationChannelDescription =>
      'Mengingatkan anda untuk menyemak invois anda setiap hari';

  @override
  String get notificationTitle => 'Peringatan Invois';

  @override
  String get notificationBody =>
      'Masa untuk menyemak invois terkini anda dan mengesan pembayaran yang belum selesai.';

  @override
  String get pdfInvoice => 'INVOIS';

  @override
  String get pdfInvoiceNumber => 'Invois #:';

  @override
  String get pdfDate => 'Tarikh:';

  @override
  String get pdfDueDate => 'Tarikh Tamat:';

  @override
  String get pdfBillTo => 'BIL KEPADA:';

  @override
  String get pdfDescription => 'Penerangan';

  @override
  String get pdfQty => 'Kuantiti';

  @override
  String get pdfRate => 'Kadar';

  @override
  String get pdfAmount => 'Jumlah';

  @override
  String get pdfSubtotal => 'Jumlah Kecil:';

  @override
  String pdfTax(Object taxRate) {
    return 'Cukai ($taxRate%):';
  }

  @override
  String get pdfTotal => 'JUMLAH:';

  @override
  String get pdfSignature => 'Tandatangan:';

  @override
  String get pdfNotes => 'Nota:';

  @override
  String get pdfPaymentTerms => 'Terma Pembayaran:';

  @override
  String get pdfThankYou => 'Terima kasih atas perniagaan anda!';

  @override
  String get quickAddWebDesign => 'Reka Bentuk Web';

  @override
  String get quickAddDevelopment => 'Pembangunan';

  @override
  String get quickAddConsulting => 'Perundingan';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Penulisan Kandungan';

  @override
  String get paywallTitle => 'Buka Kunci InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'Tiada had dan segerak di mana-mana. Batal pada bila-bila masa.';

  @override
  String get paywallFeatureUnlimited => 'Invois & pelanggan tanpa had';

  @override
  String get paywallFeatureSync => 'Penyegerakan awan merentas peranti';

  @override
  String get paywallFeatureNoWatermark => 'Tiada tanda air, selamanya';

  @override
  String get paywallMonthly => 'Bulanan';

  @override
  String get paywallMonthlySub => 'Dibil setiap bulan';

  @override
  String get paywallYearly => 'Tahunan';

  @override
  String get paywallYearlySub => 'Nilai terbaik — 2 bulan percuma';

  @override
  String get paywallRestore => 'Pulihkan Pembelian';

  @override
  String get paywallTerms =>
      'Langganan diperbaharui secara automatik. Urus dalam tetapan gedung aplikasi anda.';

  @override
  String get purchaseSuccessTitle => 'Anda Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'Invois tanpa had, penyegerakan awan dan tanpa tanda air kini dibuka kunci. Terima kasih!';

  @override
  String get purchaseSuccessContinue => 'Teruskan';

  @override
  String get paywallLoading => 'Memuatkan pelan…';

  @override
  String get paywallLoadError =>
      'Pelan tidak dapat dimuatkan. Semak sambungan anda dan cuba lagi.';

  @override
  String get paywallNoOffering => 'Tiada pelan tersedia buat masa ini.';

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
  String get purchaseRestored => 'Pembelian berjaya dipulihkan';

  @override
  String get purchaseErrorGeneric => 'Pembelian gagal. Sila cuba lagi.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro aktif — invois dan klien tanpa had tanpa tanda air';

  @override
  String get settingsFreePlan => 'Pelan percuma';

  @override
  String get settingsFreeHint =>
      'Naik taraf untuk invois tanpa had, penyegerakan awan dan banyak lagi';

  @override
  String get settingsUpgradeToPro => 'Naik taraf ke Pro';

  @override
  String get settingsManageSubscription => 'Urus langganan';

  @override
  String get customerCenterFailed =>
      'Tidak dapat membuka pengurusan langganan.';

  @override
  String get onboardingSkip => 'Langkau';

  @override
  String get onboardingNext => 'Seterusnya';

  @override
  String get onboardingGetStarted => 'Mula';

  @override
  String get onboardingWelcomeTitle => 'Invois dalam 2 minit';

  @override
  String get onboardingWelcomeBody =>
      'Cipta invois PDF profesional untuk pelanggan anda — pantas dan menarik.';

  @override
  String get onboardingSyncTitle => 'Segerak di mana-mana';

  @override
  String get onboardingSyncBody =>
      'Log masuk untuk menyandarkan data anda ke awan dengan selamat dan mengaksesnya dari mana-mana peranti.';

  @override
  String get onboardingProTitle => 'Tiada had dengan Pro';

  @override
  String get onboardingProBody =>
      'Buka kunci invois tanpa had, penyegerakan awan dan buang tanda air dengan InvoiceFlow Pro.';

  @override
  String get settingsAccentColor => 'Warna Aksen';

  @override
  String get settingsAccentColorHint =>
      'Peribadikan aplikasi dengan warna pilihan anda.';

  @override
  String get settingsCountry => 'Negara';

  @override
  String get settingsTaxId => 'Nombor Pendaftaran Cukai';

  @override
  String get settingsTaxIdNotSet => 'Tidak ditetapkan';

  @override
  String get settingsTaxIdHint => 'cth. 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Nombor cukai disimpan';

  @override
  String get catalogTitle => 'Produk & Perkhidmatan';

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
      'Simpan produk dan perkhidmatan boleh guna semula untuk menambahnya ke invois dengan lebih pantas.';

  @override
  String get catalogFromSaved => 'Dari katalog anda';

  @override
  String get catalogSaveToCatalog => 'Simpan ke katalog untuk guna semula';

  @override
  String get catalogAddSnackbar => 'Ditambah ke katalog';

  @override
  String get catalogDeleteTitle => 'Padam item?';

  @override
  String catalogDeleteMessage(String description) {
    return 'Padam \"$description\"? Tindakan ini tidak boleh dibatalkan.';
  }

  @override
  String get commonDone => 'Selesai';

  @override
  String get estimateListTitle => 'Anggaran';

  @override
  String get estimateListSearchHint => 'Cari anggaran…';

  @override
  String get estimateListEmpty => 'Belum ada anggaran';

  @override
  String get estimateListTabAll => 'Semua';

  @override
  String get estimateListTabDraft => 'Draf';

  @override
  String get estimateListTabSent => 'Dihantar';

  @override
  String get estimateListTabAccepted => 'Diterima';

  @override
  String get estimateListTabExpired => 'Tamat Tempoh';

  @override
  String get estimateCreateTitle => 'Anggaran Baharu';

  @override
  String get estimateEditTitle => 'Sunting Anggaran';

  @override
  String get estimateCreatedSnackbar => 'Anggaran disimpan';

  @override
  String get estimateUpdatedSnackbar => 'Anggaran dikemas kini';

  @override
  String get estimateIssueDate => 'Tarikh terbitan';

  @override
  String get estimateExpiryDate => 'Tarikh luput';

  @override
  String get estimateExpiresPrefix => 'Luput ';

  @override
  String get estimateConvertToInvoice => 'Tukar kepada Invois';

  @override
  String get estimateConvertedSnackbar => 'Anggaran ditukar kepada invois';

  @override
  String get estimateConvertFailed => 'Tidak dapat menukar anggaran';

  @override
  String get estimateMarkSent => 'Tandakan sebagai dihantar';

  @override
  String get estimateMarkAccepted => 'Tandakan sebagai diterima';

  @override
  String get estimateMarkDeclined => 'Tandakan sebagai ditolak';

  @override
  String get estimateConvertedTitle => 'Ditukar';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'Ditukar kepada invois $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'JUMLAH ANGGARAN';

  @override
  String get estimateStatusSent => 'Dihantar';

  @override
  String get estimateStatusAccepted => 'Diterima';

  @override
  String get estimateStatusDeclined => 'Ditolak';

  @override
  String get estimateStatusExpired => 'Tamat Tempoh';

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
  String get deleteEstimateTitle => 'Padam anggaran?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'Padam \"$estimateNumber\"? Tindakan ini tidak boleh dibatalkan.';
  }

  @override
  String get estimatePdfFailed => 'Tidak dapat menjana PDF';

  @override
  String get pdfEstimate => 'ANGGARAN';

  @override
  String get pdfEstimateNumber => 'Anggaran #:';

  @override
  String get pdfValidUntil => 'Sah sehingga:';

  @override
  String get invoiceDetailPaymentTerms => 'Terma Pembayaran';

  @override
  String get recurringListTitle => 'Invois Berulang';

  @override
  String get recurringListEmpty => 'Belum ada invois berulang';

  @override
  String get recurringListEmptySubtitle =>
      'Sediakan invois automatik untuk pelanggan dan perkhidmatan tetap.';

  @override
  String get recurringCreateTitle => 'Berulang Baharu';

  @override
  String get recurringEditTitle => 'Sunting Berulang';

  @override
  String get recurringCreatedSnackbar => 'Invois berulang disimpan';

  @override
  String get recurringUpdatedSnackbar => 'Invois berulang dikemas kini';

  @override
  String get recurringDeleteTitle => 'Padam invois berulang?';

  @override
  String recurringDeleteMessage(String title) {
    return 'Padam \"$title\"? Invois sedia ada tidak akan dipadamkan.';
  }

  @override
  String get recurringTitleLabel => 'Tajuk';

  @override
  String get recurringTitleHint => 'cth. Honorarium bulanan';

  @override
  String get recurringClientLabel => 'Pelanggan';

  @override
  String get recurringFrequencyLabel => 'Kekerapan';

  @override
  String get recurringFrequencyWeekly => 'Mingguan';

  @override
  String get recurringFrequencyBiweekly => 'Dua Minggu Sekali';

  @override
  String get recurringFrequencyMonthly => 'Bulanan';

  @override
  String get recurringFrequencyQuarterly => 'Suku Tahunan';

  @override
  String get recurringFrequencyYearly => 'Tahunan';

  @override
  String get recurringNextRun => 'Jalankan seterusnya';

  @override
  String get recurringDueDays => 'Tamat dalam';

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
  String get reportsSubtitle => 'Analitik perniagaan';

  @override
  String get reportsEmpty => 'Cipta invois untuk melihat laporan';

  @override
  String get reportsCollected => 'Dikutip';

  @override
  String get reportsOutstanding => 'Belum Dijelaskan';

  @override
  String get reportsMonthlyRevenue => 'Hasil Bulanan';

  @override
  String get reportsLast6Months => '6 bulan terakhir';

  @override
  String get reportsByStatus => 'Mengikut Status';

  @override
  String get reportsTopClients => 'Pelanggan Teratas';

  @override
  String get paymentLinkTitle => 'Pautan Pembayaran';

  @override
  String get paymentLinkNotSet =>
      'Tiada pautan pembayaran ditetapkan dalam Tetapan';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'Pautan pembayaran anda disertakan pada PDF invois dan boleh disalin daripada menu invois.';

  @override
  String get paymentLinkSaved => 'Pautan pembayaran disimpan';

  @override
  String get settingsPaymentLinkNotSet => 'Tidak ditetapkan';

  @override
  String get invoiceDetailCopyPaymentLink => 'Salin Pautan Pembayaran';

  @override
  String get paymentLinkCopied => 'Pautan pembayaran disalin';

  @override
  String get pdfPayOnline => 'Bayar dalam talian';

  @override
  String get exportXml => 'Eksport XML';

  @override
  String get exportXmlFailed => 'Tidak dapat mengeksport XML';
}
