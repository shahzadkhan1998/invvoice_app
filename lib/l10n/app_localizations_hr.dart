// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Profesionalne fakture u 2 minute';

  @override
  String get bottomNavDashboard => 'Nadzorna ploča';

  @override
  String get bottomNavInvoices => 'Fakture';

  @override
  String get bottomNavClients => 'Klijenti';

  @override
  String get bottomNavSettings => 'Postavke';

  @override
  String get commonCancel => 'Odustani';

  @override
  String get commonDelete => 'Obriši';

  @override
  String get commonSave => 'Spremi';

  @override
  String get commonSearch => 'Traži';

  @override
  String get commonBack => 'Natrag';

  @override
  String get commonContinue => 'Nastavi';

  @override
  String get commonAdd => 'Dodaj';

  @override
  String get commonEdit => 'Uredi';

  @override
  String get commonCreate => 'Stvori';

  @override
  String get commonClear => 'Očisti';

  @override
  String get commonView => 'Prikaži';

  @override
  String get commonShare => 'Podijeli';

  @override
  String get commonExportPdf => 'Izvezi PDF';

  @override
  String get commonSharePdf => 'Podijeli PDF';

  @override
  String get commonSaveChanges => 'Spremi promjene';

  @override
  String get commonRequired => 'Obavezno';

  @override
  String get commonInvalid => 'Neispravno';

  @override
  String get commonSendLink => 'Pošalji poveznicu';

  @override
  String get commonGeneratingPdf => 'Generiranje PDF-a...';

  @override
  String get dashboardGreetingMorning => 'Dobro jutro';

  @override
  String get dashboardGreetingAfternoon => 'Dobar dan';

  @override
  String get dashboardGreetingEvening => 'Dobra večer';

  @override
  String get dashboardSubtitle => 'Ovdje je pregled vašeg poslovanja';

  @override
  String get dashboardOutstanding => 'Neplaćeno';

  @override
  String get dashboardOverdue => 'Zakašnjelo';

  @override
  String get dashboardThisMonth => 'Ovaj mjesec';

  @override
  String get dashboardInvoices => 'fakture';

  @override
  String dashboardPaidCount(Object count) {
    return '$count plaćeno';
  }

  @override
  String get dashboardRecentInvoices => 'Nedavne fakture';

  @override
  String get dashboardSeeAll => 'Prikaži sve';

  @override
  String get dashboardNotifications => 'Obavijesti';

  @override
  String get dashboardNotificationsHint =>
      'Pratite svoj novčani tijek redovitim pregledom zakašnjelih i faktura na čekanju.';

  @override
  String get dashboardNewInvoice => 'Nova faktura';

  @override
  String get dashboardNoInvoicesYet => 'Još nema faktura';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Stvorite svoju prvu profesionalnu fakturu za manje od 2 minute';

  @override
  String get dashboardCreateInvoice => 'Stvori fakturu';

  @override
  String get dashboardMarkPaid => 'Označi kao plaćenu';

  @override
  String get dashboardDuePrefix => 'Dospijeće ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days dana zakašnjenja';
  }

  @override
  String get deleteInvoiceTitle => 'Obrisati fakturu?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'Obrisati $invoiceNumber? Ova se radnja ne može poništiti.';
  }

  @override
  String get loginHeading => 'Dobrodošli natrag';

  @override
  String get loginSubtitle => 'Prijavite se u svoj InvoiceFlow račun';

  @override
  String get loginEmailLabel => 'E-adresa';

  @override
  String get loginEmailHint => 'vi@example.com';

  @override
  String get loginEmailRequired => 'E-adresa je obavezna';

  @override
  String get loginEmailInvalid => 'Unesite ispravnu e-adresu';

  @override
  String get loginPasswordLabel => 'Lozinka';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'Lozinka je obavezna';

  @override
  String get loginPasswordMinLength => 'Lozinka mora imati najmanje 6 znakova';

  @override
  String get loginForgotPassword => 'Zaboravili ste lozinku?';

  @override
  String get loginSignIn => 'Prijavi se';

  @override
  String get loginOrContinueWith => 'ili nastavite putem';

  @override
  String get loginContinueWithGoogle => 'Nastavi s Googleom';

  @override
  String get loginNoAccount => 'Nemate račun? ';

  @override
  String get loginSignUp => 'Registriraj se';

  @override
  String get loginResetPasswordTitle => 'Poništi lozinku';

  @override
  String get loginResetPasswordMessage =>
      'Unesite svoju e-adresu i poslat ćemo vam poveznicu za poništavanje.';

  @override
  String get loginResetPasswordHint => 'vi@example.com';

  @override
  String get loginResetLinkSent =>
      'Poveznica za poništavanje poslana! Provjerite svoju e-poštu.';

  @override
  String get loginResetLinkFailed =>
      'Slanje poveznice za poništavanje nije uspjelo.';

  @override
  String get registerHeading => 'Stvori račun';

  @override
  String get registerSubtitle =>
      'Počnite slati profesionalne fakture već danas';

  @override
  String get registerNameLabel => 'Puno ime';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => 'Ime je obavezno';

  @override
  String get registerNameMinLength => 'Ime mora imati najmanje 2 znaka';

  @override
  String get registerEmailLabel => 'E-adresa';

  @override
  String get registerEmailHint => 'vi@example.com';

  @override
  String get registerEmailRequired => 'E-adresa je obavezna';

  @override
  String get registerEmailInvalid => 'Unesite ispravnu e-adresu';

  @override
  String get registerPasswordLabel => 'Lozinka';

  @override
  String get registerPasswordHint => 'Najmanje 6 znakova';

  @override
  String get registerPasswordRequired => 'Lozinka je obavezna';

  @override
  String get registerPasswordMinLength =>
      'Lozinka mora imati najmanje 6 znakova';

  @override
  String get registerConfirmPasswordLabel => 'Potvrdi lozinku';

  @override
  String get registerConfirmPasswordHint => 'Ponovite svoju lozinku';

  @override
  String get registerConfirmPasswordRequired =>
      'Molimo potvrdite svoju lozinku';

  @override
  String get registerPasswordsDoNotMatch => 'Lozinke se ne podudaraju';

  @override
  String get registerCreateAccount => 'Stvori račun';

  @override
  String get registerHaveAccount => 'Već imate račun? ';

  @override
  String get registerSignIn => 'Prijavi se';

  @override
  String get authTermsOfService => 'Uvjeti korištenja';

  @override
  String get authPrivacyPolicy => 'Politika privatnosti';

  @override
  String get authAgreeRequired =>
      'Za nastavak prihvatite uvjete korištenja i politiku privatnosti';

  @override
  String get loginAgreePrefix => 'Nastavkom prihvaćate naše ';

  @override
  String get registerAgreePrefix => 'Prihvaćam ';

  @override
  String get authAgreeAnd => ' i ';

  @override
  String get authTermsSheet =>
      'Ovi uvjeti korištenja uređuju vaše korištenje aplikacije InvoiceFlow. Pristupom aplikaciji ili njezinim korištenjem prihvaćate da ste obvezani ovim uvjetima.\n\n1. Odgovorni ste za točnost računa, ponuda i drugih podataka koje izradite.\n2. Aplikacija se pruža \"kakva jest\", bez ikakvih jamstava, izričitih ili podrazumijevanih.\n3. Ne snosimo odgovornost za gubitke proizašle iz vašeg korištenja usluge.\n4. Aplikaciju ne smijete koristiti u nezakonite ili zabranjene svrhe.\n5. Ove uvjete možemo s vremena na vrijeme ažurirati; daljnje korištenje aplikacije predstavlja prihvaćanje ažuriranih uvjeta.';

  @override
  String get authPrivacySheet =>
      'Vaša privatnost nam je važna.\n\n1. Pohrana podataka: vaši računi, klijenti i postavke pohranjuju se lokalno na vašem uređaju.\n2. Sinkronizacija u oblaku: ako se prijavite, vaši se podaci sinkroniziraju s vašim računom kako bi bili dostupni na svim vašim uređajima.\n3. Nikada ne prodajemo niti dijelimo vaše osobne podatke.\n4. Analitika: možemo prikupljati anonimizirane podatke o korištenju kako bismo poboljšali aplikaciju.\n5. Kontakt: za sva pitanja o privatnosti obratite se na support@invoiceflow.app.';

  @override
  String get authErrorWeakPassword => 'Lozinka je preslaba';

  @override
  String get authErrorEmailAlreadyInUse => 'Račun već postoji';

  @override
  String get authErrorUserNotFound => 'Nije pronađen korisnik s ovom e-adresom';

  @override
  String get authErrorWrongPassword => 'Neispravna lozinka';

  @override
  String get authErrorInvalidEmail => 'Neispravna e-adresa';

  @override
  String get authErrorTooManyRequests =>
      'Previše pokušaja. Pokušajte ponovno kasnije.';

  @override
  String get authErrorDefault => 'Prijava nije uspjela. Pokušajte ponovno.';

  @override
  String get authErrorGoogleSignInFailed =>
      'Prijava putem Googlea nije uspjela.';

  @override
  String get invoiceListTitle => 'Fakture';

  @override
  String get invoiceListSearchHint => 'Traži fakture...';

  @override
  String get invoiceListSortDate => 'Sortiraj po datumu';

  @override
  String get invoiceListSortAmount => 'Sortiraj po iznosu';

  @override
  String get invoiceListSortClient => 'Sortiraj po klijentu';

  @override
  String get invoiceListTabAll => 'Sve';

  @override
  String get invoiceListTabPaid => 'Plaćene';

  @override
  String get invoiceListTabPending => 'Na čekanju';

  @override
  String get invoiceListTabOverdue => 'Zakašnjele';

  @override
  String get invoiceListTabDraft => 'Nacrti';

  @override
  String get invoiceListEmpty => 'Nema pronađenih faktura';

  @override
  String get invoiceCreateTitle => 'Nova faktura';

  @override
  String get invoiceEditTitle => 'Uredi fakturu';

  @override
  String get invoiceSaveDraft => 'Spremi nacrt';

  @override
  String get invoiceStepClient => 'Klijent';

  @override
  String get invoiceStepItems => 'Stavke';

  @override
  String get invoiceStepReview => 'Pregled';

  @override
  String get invoiceSelectClient => 'Odaberite klijenta';

  @override
  String get invoiceSelectClientSubtitle => 'Odaberite za koga je ova faktura';

  @override
  String get invoiceSearchClients => 'Traži klijente...';

  @override
  String get invoiceAddNewClient => 'Dodaj novog klijenta';

  @override
  String get invoiceNoClientsFound => 'Nema pronađenih klijenata';

  @override
  String get invoiceSelectClientEmptyHint =>
      'Stvorite svog prvog klijenta da biste počeli izrađivati fakture';

  @override
  String get invoiceAddLineItem => 'Dodaj stavku';

  @override
  String get invoiceItemDescription => 'Opis';

  @override
  String get invoiceItemDescriptionHint => 'npr. Web razvoj';

  @override
  String get invoiceItemQuickAdd => 'Brzo dodavanje:';

  @override
  String get invoiceItemQty => 'Količina';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Cijena';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Dodaj stavku';

  @override
  String get invoiceLineItems => 'Stavke fakture';

  @override
  String get invoiceLineItemsSubtitle => 'Dodajte usluge ili proizvode';

  @override
  String get invoiceNoItems => 'Još nema stavki. Dodajte svoju prvu stavku.';

  @override
  String get invoiceTaxRate => 'Porezna stopa (%)';

  @override
  String get invoiceSubtotal => 'Međuzbroj';

  @override
  String invoiceTax(Object taxRate) {
    return 'Porez ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'UKUPNO';

  @override
  String get invoiceReviewHeading => 'Pregled i dovršetak';

  @override
  String get invoiceReviewSubtitle =>
      'Postavite datume, dodajte bilješke, logotip i potpis';

  @override
  String get invoiceCompanyLogo => 'Logotip tvrtke';

  @override
  String get invoiceAddLogo => 'Dodaj logotip';

  @override
  String get invoiceInvoiceDate => 'Datum fakture';

  @override
  String get invoiceDueDate => 'Datum dospijeća';

  @override
  String get invoiceNotesLabel => 'Bilješke (opcionalno)';

  @override
  String get invoiceNotesHint => 'Hvala na poslovnoj suradnji!';

  @override
  String get invoicePaymentTermsLabel => 'Uvjeti plaćanja (opcionalno)';

  @override
  String get invoicePaymentTermsHint => 'Plaćanje u roku od 30 dana';

  @override
  String get invoiceSignatureLabel => 'Potpis';

  @override
  String get invoiceSignatureOverwrite =>
      'Postojeći potpis je spremljen. Crtajte preko njega da biste ga zamijenili.';

  @override
  String get invoiceCreatedSnackbar => 'Faktura je stvorena!';

  @override
  String get invoiceUpdatedSnackbar => 'Faktura je ažurirana!';

  @override
  String get invoiceDetailTitle => 'FAKTURA';

  @override
  String get invoiceDetailMarkAsPaid => 'Označi kao plaćenu';

  @override
  String get invoiceDetailTotalAmount => 'Ukupan iznos';

  @override
  String get invoiceDetailIssued => 'Izdana';

  @override
  String get invoiceDetailDue => 'Dospijeće';

  @override
  String get invoiceDetailPaid => 'Plaćena';

  @override
  String get invoiceDetailBillTo => 'Primatelj';

  @override
  String get invoiceDetailItems => 'Stavke';

  @override
  String get invoiceDetailNotes => 'Bilješke';

  @override
  String get invoiceDetailSignature => 'Potpis';

  @override
  String get invoiceDetailMarkedPaidSnackbar => 'Faktura označena kao plaćena!';

  @override
  String get invoiceDetailPdfFailed => 'Generiranje PDF-a nije uspjelo';

  @override
  String get clientListTitle => 'Klijenti';

  @override
  String get clientListSearchHint => 'Traži klijente...';

  @override
  String get clientListTotalClients => 'Ukupno klijenata';

  @override
  String get clientListTotalBilled => 'Ukupno fakturirano';

  @override
  String get clientListEmptySearch => 'Nema pronađenih klijenata';

  @override
  String get clientListEmpty => 'Još nema klijenata';

  @override
  String get clientListEmptySubtitle =>
      'Dodajte svog prvog klijenta da biste počeli izrađivati fakture';

  @override
  String get clientListAddClient => 'Dodaj klijenta';

  @override
  String get clientListTotalBilledLabel => 'ukupno fakturirano';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count faktura';
  }

  @override
  String get clientCreateTitle => 'Novi klijent';

  @override
  String get clientEditTitle => 'Uredi klijenta';

  @override
  String get clientBasicInfo => 'Osnovne informacije';

  @override
  String get clientNameLabel => 'Puno ime *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'Ime je obavezno';

  @override
  String get clientNameTooShort => 'Ime je prekratko';

  @override
  String get clientEmailLabel => 'E-adresa *';

  @override
  String get clientEmailHint => 'billing@company.com';

  @override
  String get clientEmailRequired => 'E-adresa je obavezna';

  @override
  String get clientEmailInvalid => 'Unesite ispravnu e-adresu';

  @override
  String get clientPhoneLabel => 'Telefonski broj';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'Adresa';

  @override
  String get clientAddressLabel => 'Ulica';

  @override
  String get clientAddressHint => '123 Business Park, ured 45';

  @override
  String get clientCityLabel => 'Grad / Država';

  @override
  String get clientCityHint => 'Dubai, Ujedinjeni Arapski Emirati';

  @override
  String get clientBillingDefaults => 'Zadane postavke naplate';

  @override
  String get clientDefaultCurrency => 'Zadana valuta';

  @override
  String get clientDefaultTaxRate => 'Zadana porezna stopa (VAT/GST)';

  @override
  String get clientVatLabel => 'VAT / porezni registracijski broj';

  @override
  String get clientVatHint => '123456789012345 (opcionalno)';

  @override
  String get clientUpdateButton => 'Ažuriraj klijenta';

  @override
  String get clientAddButton => 'Dodaj klijenta';

  @override
  String get clientUpdatedSnackbar => 'Klijent je ažuriran!';

  @override
  String get clientAddedSnackbar => 'Klijent je dodan!';

  @override
  String get clientDetailInvoices => 'Fakture';

  @override
  String get clientDetailTotalBilled => 'Ukupno fakturirano';

  @override
  String get clientDetailOutstanding => 'Neplaćeno';

  @override
  String get clientDetailEdit => 'Uredi';

  @override
  String get clientDetailNewInvoice => 'Nova faktura';

  @override
  String get clientDetailEmailClient => 'Pošalji e-poštu';

  @override
  String get clientDetailClientDetails => 'Podaci o klijentu';

  @override
  String get clientDetailEmail => 'E-pošta';

  @override
  String get clientDetailPhone => 'Telefon';

  @override
  String get clientDetailAddress => 'Adresa';

  @override
  String get clientDetailCity => 'Grad';

  @override
  String get clientDetailCurrency => 'Valuta';

  @override
  String get clientDetailTaxRate => 'Porezna stopa';

  @override
  String get clientDetailVatNumber => 'VAT broj';

  @override
  String get clientDetailInvoiceHistory => 'Povijest faktura';

  @override
  String get clientDetailNoInvoices => 'Još nema faktura za ovog klijenta';

  @override
  String get deleteClientTitle => 'Obrisati klijenta?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'Obrisati $clientName? Ova se radnja ne može poništiti.';
  }

  @override
  String get settingsTitle => 'Postavke';

  @override
  String get settingsYourName => 'Vaše ime';

  @override
  String get settingsBackupTitle => 'Sigurnosno kopirajte svoje fakture';

  @override
  String get settingsBackupDescription =>
      'Prijavite se za sigurnu sinkronizaciju podataka i pristup odasvud.';

  @override
  String get settingsSignInRegister => 'Prijava ili registracija';

  @override
  String get settingsProUpsell =>
      'Nadogradite na Pro za neograničene fakture, sinkronizaciju u oblaku i bez vodenih žigova.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'Dosegli ste ograničenje besplatnog plana od $limit faktura. Nadogradite na Pro za neograničene fakture i sinkronizaciju u oblaku.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'Dosegli ste ograničenje besplatnog plana od $limit klijenata. Nadogradite na Pro za neograničeni broj klijenata i sinkronizaciju u oblaku.';
  }

  @override
  String get settingsUpgradePro => 'Nadogradi';

  @override
  String get settingsBusinessSection => 'POSLOVNE POSTAVKE';

  @override
  String get settingsBusinessDetails => 'Podaci o poslovanju';

  @override
  String get settingsBusinessDetailsSubtitle =>
      'Postavite naziv svog poslovanja';

  @override
  String get settingsInvoicePrefix => 'Prefiks fakture';

  @override
  String get settingsDefaultCurrency => 'Zadana valuta';

  @override
  String get settingsAppSection => 'POSTAVKE APLIKACIJE';

  @override
  String get settingsDarkMode => 'Tamni način rada';

  @override
  String get settingsDailyNotification => 'Dnevna obavijest';

  @override
  String get settingsDailyNotificationNotSet => 'Nije postavljeno';

  @override
  String get settingsLanguage => 'Jezik';

  @override
  String get settingsLanguageLabel => 'Hrvatski';

  @override
  String get languageEnglish => 'Engleski';

  @override
  String get languageArabic => 'العربية';

  @override
  String get languageFrench => 'Francuski';

  @override
  String get languageSpanish => 'Španjolski';

  @override
  String get languageUrdu => 'اردو';

  @override
  String get languageChinese => '中文';

  @override
  String get settingsAboutSection => 'O APLIKACIJI';

  @override
  String get settingsRateApp => 'Ocijenite aplikaciju';

  @override
  String get settingsHelpSupport => 'Pomoć i podrška';

  @override
  String get settingsPrivacyPolicy => 'Politika privatnosti';

  @override
  String get settingsHelpSupportSheet =>
      'Trebate pomoć? Pišite nam na support@invoiceflow.app i javit ćemo vam se u roku od 24 sata.';

  @override
  String get settingsPrivacySheet =>
      'Vaši se podaci pohranjuju lokalno na vašem uređaju. Vaše osobne podatke nikada ne prodajemo niti dijelimo.';

  @override
  String get settingsVersion => 'Verzija';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Odjava';

  @override
  String get settingsEditProfile => 'Uredi profil';

  @override
  String get settingsProfileNameLabel => 'Puno ime';

  @override
  String get settingsProfileNameHint => 'Vaše ime';

  @override
  String get settingsBusinessNameLabel => 'Naziv tvrtke';

  @override
  String get settingsBusinessNameHint => 'Vaša tvrtka d.o.o.';

  @override
  String get settingsBusinessEmailLabel => 'Poslovna e-pošta';

  @override
  String get settingsBusinessEmailHint => 'billing@company.com';

  @override
  String get settingsPhoneLabel => 'Telefon';

  @override
  String get settingsPhoneHint => '+385 91 123 4567';

  @override
  String get settingsAddressLabel => 'Adresa';

  @override
  String get settingsAddressHint => 'Zagreb, Hrvatska';

  @override
  String get settingsBusinessDetailsSaved =>
      'Podaci o poslovanju su spremljeni!';

  @override
  String get settingsInvoicePrefixTitle => 'Prefiks broja fakture';

  @override
  String get settingsInvoicePrefixHint => 'npr. INV-, #, FA-';

  @override
  String get settingsPrefixSaved => 'Prefiks fakture je spremljen';

  @override
  String get settingsNotificationScheduled =>
      'Dnevna obavijest uspješno zakazana!';

  @override
  String get settingsSignOutTitle => 'Odjava?';

  @override
  String get settingsSignOutMessage =>
      'Jeste li sigurni da se želite odjaviti iz InvoiceFlow-a?';

  @override
  String get settingsSignedOut => 'Uspješno ste se odjavili.';

  @override
  String get statusPaid => 'Plaćena';

  @override
  String get statusOverdue => 'Zakašnjela';

  @override
  String get statusPending => 'Na čekanju';

  @override
  String get statusDraft => 'Nacrt';

  @override
  String get statusCancelled => 'Otkazana';

  @override
  String get notificationChannelName => 'Dnevni podsjetnici';

  @override
  String get notificationChannelDescription =>
      'Podsjeća vas da svakodnevno provjerite svoje fakture';

  @override
  String get notificationTitle => 'Podsjetnik za fakturu';

  @override
  String get notificationBody =>
      'Vrijeme je da provjerite svoje nedavne fakture i pratite plaćanja na čekanju.';

  @override
  String get pdfInvoice => 'FAKTURA';

  @override
  String get pdfInvoiceNumber => 'Br. fakture:';

  @override
  String get pdfDate => 'Datum:';

  @override
  String get pdfDueDate => 'Datum dospijeća:';

  @override
  String get pdfBillTo => 'PRIMATELJ:';

  @override
  String get pdfDescription => 'Opis';

  @override
  String get pdfQty => 'Kol.';

  @override
  String get pdfRate => 'Cijena';

  @override
  String get pdfAmount => 'Iznos';

  @override
  String get pdfSubtotal => 'Međuzbroj:';

  @override
  String pdfTax(Object taxRate) {
    return 'Porez ($taxRate%):';
  }

  @override
  String get pdfTotal => 'UKUPNO:';

  @override
  String get pdfSignature => 'Potpis:';

  @override
  String get pdfNotes => 'Bilješke:';

  @override
  String get pdfPaymentTerms => 'Uvjeti plaćanja:';

  @override
  String get pdfThankYou => 'Hvala na poslovnoj suradnji!';

  @override
  String get quickAddWebDesign => 'Web dizajn';

  @override
  String get quickAddDevelopment => 'Razvoj';

  @override
  String get quickAddConsulting => 'Konzultacije';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Pisanje sadržaja';

  @override
  String get paywallTitle => 'Otključajte InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'Krenite bez ograničenja i sinkronizirajte odasvud. Otkažite bilo kada.';

  @override
  String get paywallFeatureUnlimited => 'Neograničene fakture i klijenti';

  @override
  String get paywallFeatureSync => 'Sinkronizacija u oblaku na svim uređajima';

  @override
  String get paywallFeatureNoWatermark => 'Bez vodenih žigova, ikada';

  @override
  String get paywallMonthly => 'Mjesečno';

  @override
  String get paywallMonthlySub => 'Naplaćuje se mjesečno';

  @override
  String get paywallYearly => 'Godišnje';

  @override
  String get paywallYearlySub => 'Najbolja vrijednost — 2 mjeseca besplatno';

  @override
  String get paywallRestore => 'Vrati kupnje';

  @override
  String get paywallTerms =>
      'Pretplate se automatski obnavljaju. Upravljajte njima u postavkama trgovine.';

  @override
  String get purchaseSuccessTitle => 'Postali ste Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'Otključane su neograničene fakture, sinkronizacija u oblaku i uklanjanje vodenih žigova. Hvala!';

  @override
  String get purchaseSuccessContinue => 'Nastavi';

  @override
  String get paywallLoading => 'Učitavanje planova…';

  @override
  String get paywallLoadError =>
      'Planove nije moguće učitati. Provjerite vezu i pokušajte ponovno.';

  @override
  String get paywallNoOffering => 'Trenutačno nema dostupnih planova.';

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
  String get purchaseRestored => 'Kupnje uspješno vraćene';

  @override
  String get purchaseErrorGeneric => 'Kupnja nije uspjela. Pokušajte ponovno.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro je aktivan — neograničeni računi i klijenti bez vodenih žigova';

  @override
  String get settingsFreePlan => 'Besplatni plan';

  @override
  String get settingsFreeHint =>
      'Nadogradite za neograničene račune, sinkronizaciju u oblaku i više';

  @override
  String get settingsUpgradeToPro => 'Nadogradite na Pro';

  @override
  String get settingsManageSubscription => 'Upravljanje pretplatom';

  @override
  String get customerCenterFailed =>
      'Upravljanje pretplatom nije moguće otvoriti.';

  @override
  String get onboardingSkip => 'Preskoči';

  @override
  String get onboardingNext => 'Dalje';

  @override
  String get onboardingGetStarted => 'Započni';

  @override
  String get onboardingWelcomeTitle => 'Fakture u 2 minute';

  @override
  String get onboardingWelcomeBody =>
      'Izrađujte profesionalne PDF fakture za svoje klijente — brzo i lijepo.';

  @override
  String get onboardingSyncTitle => 'Sinkronizirajte odasvud';

  @override
  String get onboardingSyncBody =>
      'Prijavite se za sigurnu sigurnosnu kopiju podataka u oblaku i pristup s bilo kojeg uređaja.';

  @override
  String get onboardingProTitle => 'Krenite bez ograničenja s Proom';

  @override
  String get onboardingProBody =>
      'Otključajte neograničene fakture, sinkronizaciju u oblaku i uklonite vodene žigove uz InvoiceFlow Pro.';

  @override
  String get settingsAccentColor => 'Naglasna boja';

  @override
  String get settingsAccentColorHint =>
      'Personalizirajte aplikaciju bojom po vašem izboru.';

  @override
  String get settingsCountry => 'Država';

  @override
  String get settingsTaxId => 'Porezni registracijski broj';

  @override
  String get settingsTaxIdNotSet => 'Nije postavljeno';

  @override
  String get settingsTaxIdHint => 'npr. 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Porezni broj je spremljen';

  @override
  String get catalogTitle => 'Proizvodi i usluge';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count stavki',
      one: '$count stavka',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'Još nema proizvoda';

  @override
  String get catalogEmptySubtitle =>
      'Spremite proizvode i usluge koje ponovno koristite da biste ih brže dodavali u fakture.';

  @override
  String get catalogFromSaved => 'Iz vašeg kataloga';

  @override
  String get catalogSaveToCatalog => 'Spremi u katalog za ponovnu upotrebu';

  @override
  String get catalogAddSnackbar => 'Dodano u katalog';

  @override
  String get catalogDeleteTitle => 'Obrisati stavku?';

  @override
  String catalogDeleteMessage(String description) {
    return 'Obrisati „$description“? Ova se radnja ne može poništiti.';
  }

  @override
  String get commonDone => 'Gotovo';

  @override
  String get estimateListTitle => 'Ponude';

  @override
  String get estimateListSearchHint => 'Traži ponude…';

  @override
  String get estimateListEmpty => 'Još nema ponuda';

  @override
  String get estimateListTabAll => 'Sve';

  @override
  String get estimateListTabDraft => 'Nacrti';

  @override
  String get estimateListTabSent => 'Poslane';

  @override
  String get estimateListTabAccepted => 'Prihvaćene';

  @override
  String get estimateListTabExpired => 'Istekle';

  @override
  String get estimateCreateTitle => 'Nova ponuda';

  @override
  String get estimateEditTitle => 'Uredi ponudu';

  @override
  String get estimateCreatedSnackbar => 'Ponuda je spremljena';

  @override
  String get estimateUpdatedSnackbar => 'Ponuda je ažurirana';

  @override
  String get estimateIssueDate => 'Datum izdavanja';

  @override
  String get estimateExpiryDate => 'Datum isteka';

  @override
  String get estimateExpiresPrefix => 'Istječe ';

  @override
  String get estimateConvertToInvoice => 'Pretvori u fakturu';

  @override
  String get estimateConvertedSnackbar => 'Ponuda je pretvorena u fakturu';

  @override
  String get estimateConvertFailed => 'Ponudu nije moguće pretvoriti';

  @override
  String get estimateMarkSent => 'Označi kao poslanu';

  @override
  String get estimateMarkAccepted => 'Označi kao prihvaćenu';

  @override
  String get estimateMarkDeclined => 'Označi kao odbijenu';

  @override
  String get estimateConvertedTitle => 'Pretvoreno';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'Pretvoreno u fakturu $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'UKUPNO ZA PONUDU';

  @override
  String get estimateStatusSent => 'Poslana';

  @override
  String get estimateStatusAccepted => 'Prihvaćena';

  @override
  String get estimateStatusDeclined => 'Odbijena';

  @override
  String get estimateStatusExpired => 'Istekla';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count otvorenih',
      one: '1 otvorena',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'Obrisati ponudu?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'Obrisati „$estimateNumber“? Ova se radnja ne može poništiti.';
  }

  @override
  String get estimatePdfFailed => 'Generiranje PDF-a nije uspjelo';

  @override
  String get pdfEstimate => 'PONUDA';

  @override
  String get pdfEstimateNumber => 'Br. ponude:';

  @override
  String get pdfValidUntil => 'Vrijedi do:';

  @override
  String get invoiceDetailPaymentTerms => 'Uvjeti plaćanja';

  @override
  String get recurringListTitle => 'Periodične fakture';

  @override
  String get recurringListEmpty => 'Još nema periodičnih faktura';

  @override
  String get recurringListEmptySubtitle =>
      'Postavite automatske fakture za redovite klijente i usluge.';

  @override
  String get recurringCreateTitle => 'Nova periodična';

  @override
  String get recurringEditTitle => 'Uredi periodičnu';

  @override
  String get recurringCreatedSnackbar => 'Periodična faktura je spremljena';

  @override
  String get recurringUpdatedSnackbar => 'Periodična faktura je ažurirana';

  @override
  String get recurringDeleteTitle => 'Obrisati periodičnu fakturu?';

  @override
  String recurringDeleteMessage(String title) {
    return 'Obrisati „$title“? Postojeće fakture neće biti uklonjene.';
  }

  @override
  String get recurringTitleLabel => 'Naslov';

  @override
  String get recurringTitleHint => 'npr. Mjesečni honorar';

  @override
  String get recurringClientLabel => 'Klijent';

  @override
  String get recurringFrequencyLabel => 'Učestalost';

  @override
  String get recurringFrequencyWeekly => 'Tjedno';

  @override
  String get recurringFrequencyBiweekly => 'Svaka dva tjedna';

  @override
  String get recurringFrequencyMonthly => 'Mjesečno';

  @override
  String get recurringFrequencyQuarterly => 'Kvartalno';

  @override
  String get recurringFrequencyYearly => 'Godišnje';

  @override
  String get recurringNextRun => 'Sljedeće izvršenje';

  @override
  String get recurringDueDays => 'Dospijeće za';

  @override
  String get recurringDays => 'dana';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aktivnih',
      one: '1 aktivna',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'Izvještaji';

  @override
  String get reportsSubtitle => 'Analitika poslovanja';

  @override
  String get reportsEmpty => 'Stvorite fakture da biste vidjeli izvještaje';

  @override
  String get reportsCollected => 'Naplaćeno';

  @override
  String get reportsOutstanding => 'Neplaćeno';

  @override
  String get reportsMonthlyRevenue => 'Mjesečni prihod';

  @override
  String get reportsLast6Months => 'Posljednjih 6 mjeseci';

  @override
  String get reportsByStatus => 'Po statusu';

  @override
  String get reportsTopClients => 'Najbolji klijenti';

  @override
  String get paymentLinkTitle => 'Poveznica za plaćanje';

  @override
  String get paymentLinkNotSet =>
      'U postavkama nije postavljena poveznica za plaćanje';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'Vaša poveznica za plaćanje uključena je u PDF fakture i može se kopirati iz izbornika fakture.';

  @override
  String get paymentLinkSaved => 'Poveznica za plaćanje je spremljena';

  @override
  String get settingsPaymentLinkNotSet => 'Nije postavljeno';

  @override
  String get invoiceDetailCopyPaymentLink => 'Kopiraj poveznicu za plaćanje';

  @override
  String get paymentLinkCopied => 'Poveznica za plaćanje kopirana';

  @override
  String get pdfPayOnline => 'Plati putem interneta';

  @override
  String get exportXml => 'Izvezi XML';

  @override
  String get exportXmlFailed => 'XML nije moguće izvesti';
}
