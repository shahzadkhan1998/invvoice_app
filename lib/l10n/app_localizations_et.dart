// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsEt extends AppLocalizations {
  AppLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Professionaalsed arved 2 minutiga';

  @override
  String get bottomNavDashboard => 'Töölaud';

  @override
  String get bottomNavInvoices => 'Arved';

  @override
  String get bottomNavClients => 'Kliendid';

  @override
  String get bottomNavSettings => 'Seaded';

  @override
  String get commonCancel => 'Tühista';

  @override
  String get commonDelete => 'Kustuta';

  @override
  String get commonSave => 'Salvesta';

  @override
  String get commonSearch => 'Otsi';

  @override
  String get commonBack => 'Tagasi';

  @override
  String get commonContinue => 'Jätka';

  @override
  String get commonAdd => 'Lisa';

  @override
  String get commonEdit => 'Muuda';

  @override
  String get commonCreate => 'Loo';

  @override
  String get commonClear => 'Tühjenda';

  @override
  String get commonView => 'Vaata';

  @override
  String get commonShare => 'Jaga';

  @override
  String get commonExportPdf => 'Ekspordi PDF';

  @override
  String get commonSharePdf => 'Jaga PDF-i';

  @override
  String get commonSaveChanges => 'Salvesta muudatused';

  @override
  String get commonRequired => 'Kohustuslik';

  @override
  String get commonInvalid => 'Vigane';

  @override
  String get commonSendLink => 'Saada link';

  @override
  String get commonGeneratingPdf => 'PDF-i loomine...';

  @override
  String get dashboardGreetingMorning => 'Tere hommikust';

  @override
  String get dashboardGreetingAfternoon => 'Tere päevast';

  @override
  String get dashboardGreetingEvening => 'Tere õhtust';

  @override
  String get dashboardSubtitle => 'Siin on teie ettevõtte ülevaade';

  @override
  String get dashboardOutstanding => 'Tasumata';

  @override
  String get dashboardOverdue => 'Tähtaja ületanud';

  @override
  String get dashboardThisMonth => 'See kuu';

  @override
  String get dashboardInvoices => 'arvet';

  @override
  String dashboardPaidCount(Object count) {
    return '$count makstud';
  }

  @override
  String get dashboardRecentInvoices => 'Hiljutised arved';

  @override
  String get dashboardSeeAll => 'Kuva kõik';

  @override
  String get dashboardNotifications => 'Teated';

  @override
  String get dashboardNotificationsHint =>
      'Jälgige rahavoogu, kontrollides regulaarselt tähtaja ületanud ja ootel arveid.';

  @override
  String get dashboardNewInvoice => 'Uus arve';

  @override
  String get dashboardNoInvoicesYet => 'Arveid veel pole';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Looge oma esimene professionaalne arve alla 2 minuti';

  @override
  String get dashboardCreateInvoice => 'Loo arve';

  @override
  String get dashboardMarkPaid => 'Märgi makstuks';

  @override
  String get dashboardDuePrefix => 'Tähtaeg: ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days päeva ületanud';
  }

  @override
  String get deleteInvoiceTitle => 'Kustutada arve?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'Kustutada $invoiceNumber? Seda toimingut ei saa tagasi võtta.';
  }

  @override
  String get loginHeading => 'Tere tulemast tagasi';

  @override
  String get loginSubtitle => 'Logige sisse oma InvoiceFlow kontole';

  @override
  String get loginEmailLabel => 'E-posti aadress';

  @override
  String get loginEmailHint => 'teie@naide.ee';

  @override
  String get loginEmailRequired => 'E-post on kohustuslik';

  @override
  String get loginEmailInvalid => 'Sisestage kehtiv e-post';

  @override
  String get loginPasswordLabel => 'Parool';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'Parool on kohustuslik';

  @override
  String get loginPasswordMinLength => 'Parool peab olema vähemalt 6 tähemärki';

  @override
  String get loginForgotPassword => 'Unustasite parooli?';

  @override
  String get loginSignIn => 'Logi sisse';

  @override
  String get loginOrContinueWith => 'või jätkake kasutades';

  @override
  String get loginContinueWithGoogle => 'Jätka Google\'iga';

  @override
  String get loginNoAccount => 'Pole kontot? ';

  @override
  String get loginSignUp => 'Registreeru';

  @override
  String get loginResetPasswordTitle => 'Parooli lähtestamine';

  @override
  String get loginResetPasswordMessage =>
      'Sisestage oma e-post ja me saadame lähtestuslingi.';

  @override
  String get loginResetPasswordHint => 'teie@naide.ee';

  @override
  String get loginResetLinkSent =>
      'Lähtestuslink saadetud! Kontrollige oma e-posti.';

  @override
  String get loginResetLinkFailed => 'Lähtestuslingi saatmine ebaõnnestus.';

  @override
  String get registerHeading => 'Konto loomine';

  @override
  String get registerSubtitle =>
      'Alustage professionaalsete arvete saatmist juba täna';

  @override
  String get registerNameLabel => 'Täisnimi';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => 'Nimi on kohustuslik';

  @override
  String get registerNameMinLength => 'Nimi peab olema vähemalt 2 tähemärki';

  @override
  String get registerEmailLabel => 'E-posti aadress';

  @override
  String get registerEmailHint => 'teie@naide.ee';

  @override
  String get registerEmailRequired => 'E-post on kohustuslik';

  @override
  String get registerEmailInvalid => 'Sisestage kehtiv e-post';

  @override
  String get registerPasswordLabel => 'Parool';

  @override
  String get registerPasswordHint => 'Vähemalt 6 tähemärki';

  @override
  String get registerPasswordRequired => 'Parool on kohustuslik';

  @override
  String get registerPasswordMinLength =>
      'Parool peab olema vähemalt 6 tähemärki';

  @override
  String get registerConfirmPasswordLabel => 'Kinnita parool';

  @override
  String get registerConfirmPasswordHint => 'Korrake oma parooli';

  @override
  String get registerConfirmPasswordRequired => 'Palun kinnitage oma parool';

  @override
  String get registerPasswordsDoNotMatch => 'Paroolid ei ühti';

  @override
  String get registerCreateAccount => 'Loo konto';

  @override
  String get registerHaveAccount => 'Kas teil on juba konto? ';

  @override
  String get registerSignIn => 'Logi sisse';

  @override
  String get authTermsOfService => 'Kasutustingimused';

  @override
  String get authPrivacyPolicy => 'Privaatsuspoliitika';

  @override
  String get authAgreeRequired =>
      'Jätkamiseks nõustuge kasutustingimuste ja privaatsuspoliitikaga';

  @override
  String get loginAgreePrefix => 'Jätkates nõustud meie ';

  @override
  String get registerAgreePrefix => 'Nõustun ';

  @override
  String get authAgreeAnd => ' ja ';

  @override
  String get authTermsSheet =>
      'Need kasutustingimused reguleerivad InvoiceFlow\'i kasutamist. Rakendusele juurdepääsul või selle kasutamisel nõustud nende tingimustega.\n\n1. Vastutad loodud arvete, hinnapakkumiste ja muude andmete õigsuse eest.\n2. Rakendus pakutakse \"nagu on\", ilma igasuguste garantiideta, olgu need otsesed või kaudsed.\n3. Me ei vastuta kahjude eest, mis tulenevad teenuse kasutamisest.\n4. Sa ei tohi kasutada rakendust ebaseaduslikel ega keelatud eesmärkidel.\n5. Me võime neid tingimusi aeg-ajalt ajakohastada; rakenduse edasine kasutamine tähendab ajakohastatud tingimuste aktsepteerimist.';

  @override
  String get authPrivacySheet =>
      'Sinu privaatsus on meile oluline.\n\n1. Andmete salvestamine: sinu arved, kliendid ja seaded salvestatakse seadmesse kohalikult.\n2. Pilvesünkroonimine: sisselogimisel sünkroonitakse sinu andmed sinu kontoga, et need oleksid kättesaadavad kõigil sinu seadmetel.\n3. Me ei müü ega jaga kunagi sinu isikuandmeid.\n4. Analüütika: me võime koguda anonüümseid kasutusandmeid rakenduse täiustamiseks.\n5. Kontakt: privaatsusega seotud küsimuste korral kirjuta aadressile support@invoiceflow.app.';

  @override
  String get authErrorWeakPassword => 'Parool on liiga nõrk';

  @override
  String get authErrorEmailAlreadyInUse => 'Konto on juba olemas';

  @override
  String get authErrorUserNotFound => 'Selle e-postiga kasutajat ei leitud';

  @override
  String get authErrorWrongPassword => 'Vale parool';

  @override
  String get authErrorInvalidEmail => 'Vigane e-posti aadress';

  @override
  String get authErrorTooManyRequests =>
      'Liiga palju katseid. Proovige hiljem uuesti.';

  @override
  String get authErrorDefault => 'Autentimine ebaõnnestus. Proovige uuesti.';

  @override
  String get authErrorGoogleSignInFailed =>
      'Google\'i sisselogimine ebaõnnestus.';

  @override
  String get invoiceListTitle => 'Arved';

  @override
  String get invoiceListSearchHint => 'Otsi arveid...';

  @override
  String get invoiceListSortDate => 'Sorteeri kuupäeva järgi';

  @override
  String get invoiceListSortAmount => 'Sorteeri summa järgi';

  @override
  String get invoiceListSortClient => 'Sorteeri kliendi järgi';

  @override
  String get invoiceListTabAll => 'Kõik';

  @override
  String get invoiceListTabPaid => 'Makstud';

  @override
  String get invoiceListTabPending => 'Ootel';

  @override
  String get invoiceListTabOverdue => 'Tähtaja ületanud';

  @override
  String get invoiceListTabDraft => 'Mustand';

  @override
  String get invoiceListEmpty => 'Arveid ei leitud';

  @override
  String get invoiceCreateTitle => 'Uus arve';

  @override
  String get invoiceEditTitle => 'Muuda arvet';

  @override
  String get invoiceSaveDraft => 'Salvesta mustand';

  @override
  String get invoiceStepClient => 'Klient';

  @override
  String get invoiceStepItems => 'Kirjed';

  @override
  String get invoiceStepReview => 'Ülevaade';

  @override
  String get invoiceSelectClient => 'Valige klient';

  @override
  String get invoiceSelectClientSubtitle =>
      'Valige, kellele see arve on mõeldud';

  @override
  String get invoiceSearchClients => 'Otsi kliente...';

  @override
  String get invoiceAddNewClient => 'Lisa uus klient';

  @override
  String get invoiceNoClientsFound => 'Kliente ei leitud';

  @override
  String get invoiceSelectClientEmptyHint =>
      'Arvete loomise alustamiseks looge esimene klient';

  @override
  String get invoiceAddLineItem => 'Lisa rida';

  @override
  String get invoiceItemDescription => 'Kirjeldus';

  @override
  String get invoiceItemDescriptionHint => 'nt veebiarendus';

  @override
  String get invoiceItemQuickAdd => 'Kiirlisa:';

  @override
  String get invoiceItemQty => 'Kogus';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Hind';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Lisa kirje';

  @override
  String get invoiceLineItems => 'Reakirjed';

  @override
  String get invoiceLineItemsSubtitle => 'Lisage teenuseid või tooteid';

  @override
  String get invoiceNoItems => 'Kirjeid veel pole. Lisage oma esimene kirje.';

  @override
  String get invoiceTaxRate => 'Maksumäär (%)';

  @override
  String get invoiceSubtotal => 'Vahesumma';

  @override
  String invoiceTax(Object taxRate) {
    return 'Maks ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'KOKKU';

  @override
  String get invoiceReviewHeading => 'Ülevaade ja lõpetamine';

  @override
  String get invoiceReviewSubtitle =>
      'Määrake kuupäevad, lisage märkused, logo ja allkiri';

  @override
  String get invoiceCompanyLogo => 'Ettevõtte logo';

  @override
  String get invoiceAddLogo => 'Lisa logo';

  @override
  String get invoiceInvoiceDate => 'Arve kuupäev';

  @override
  String get invoiceDueDate => 'Maksetähtaeg';

  @override
  String get invoiceNotesLabel => 'Märkused (valikuline)';

  @override
  String get invoiceNotesHint => 'Täname teie koostöö eest!';

  @override
  String get invoicePaymentTermsLabel => 'Maksetingimused (valikuline)';

  @override
  String get invoicePaymentTermsHint => 'Makse 30 päeva jooksul';

  @override
  String get invoiceSignatureLabel => 'Allkiri';

  @override
  String get invoiceSignatureOverwrite =>
      'Olemasolev allkiri on salvestatud. Uue allkirja lisamiseks joonistage peale.';

  @override
  String get invoiceCreatedSnackbar => 'Arve loodud!';

  @override
  String get invoiceUpdatedSnackbar => 'Arve uuendatud!';

  @override
  String get invoiceDetailTitle => 'ARVE';

  @override
  String get invoiceDetailMarkAsPaid => 'Märgi makstuks';

  @override
  String get invoiceDetailTotalAmount => 'Kogusumma';

  @override
  String get invoiceDetailIssued => 'Väljastatud';

  @override
  String get invoiceDetailDue => 'Tähtaeg';

  @override
  String get invoiceDetailPaid => 'Makstud';

  @override
  String get invoiceDetailBillTo => 'Saaja';

  @override
  String get invoiceDetailItems => 'Kirjed';

  @override
  String get invoiceDetailNotes => 'Märkused';

  @override
  String get invoiceDetailSignature => 'Allkiri';

  @override
  String get invoiceDetailMarkedPaidSnackbar => 'Arve märgitud makstuks!';

  @override
  String get invoiceDetailPdfFailed => 'PDF-i loomine ebaõnnestus';

  @override
  String get clientListTitle => 'Kliendid';

  @override
  String get clientListSearchHint => 'Otsi kliente...';

  @override
  String get clientListTotalClients => 'Kliente kokku';

  @override
  String get clientListTotalBilled => 'Arvelduskäive kokku';

  @override
  String get clientListEmptySearch => 'Kliente ei leitud';

  @override
  String get clientListEmpty => 'Kliente veel pole';

  @override
  String get clientListEmptySubtitle =>
      'Arvete loomise alustamiseks lisage esimene klient';

  @override
  String get clientListAddClient => 'Lisa klient';

  @override
  String get clientListTotalBilledLabel => 'arvelduskäive kokku';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count arve';
  }

  @override
  String get clientCreateTitle => 'Uus klient';

  @override
  String get clientEditTitle => 'Muuda klienti';

  @override
  String get clientBasicInfo => 'Põhiandmed';

  @override
  String get clientNameLabel => 'Täisnimi *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'Nimi on kohustuslik';

  @override
  String get clientNameTooShort => 'Nimi on liiga lühike';

  @override
  String get clientEmailLabel => 'E-posti aadress *';

  @override
  String get clientEmailHint => 'arveldus@ettevote.ee';

  @override
  String get clientEmailRequired => 'E-post on kohustuslik';

  @override
  String get clientEmailInvalid => 'Sisestage kehtiv e-post';

  @override
  String get clientPhoneLabel => 'Telefoninumber';

  @override
  String get clientPhoneHint => '+372 5123 4567';

  @override
  String get clientAddressSection => 'Aadress';

  @override
  String get clientAddressLabel => 'Tänavaaadress';

  @override
  String get clientAddressHint => '123 Äripargi, kontor 45';

  @override
  String get clientCityLabel => 'Linn / Riik';

  @override
  String get clientCityHint => 'Dubai, Araabia Ühendemiraadid';

  @override
  String get clientBillingDefaults => 'Arvelduse vaikeväärtused';

  @override
  String get clientDefaultCurrency => 'Vaikevaluuta';

  @override
  String get clientDefaultTaxRate => 'Vaikemaksumäär (VAT/GST)';

  @override
  String get clientVatLabel => 'VAT / maksukohustuslase number';

  @override
  String get clientVatHint => '123456789012345 (valikuline)';

  @override
  String get clientUpdateButton => 'Uuenda klienti';

  @override
  String get clientAddButton => 'Lisa klient';

  @override
  String get clientUpdatedSnackbar => 'Klient uuendatud!';

  @override
  String get clientAddedSnackbar => 'Klient lisatud!';

  @override
  String get clientDetailInvoices => 'Arved';

  @override
  String get clientDetailTotalBilled => 'Arvelduskäive kokku';

  @override
  String get clientDetailOutstanding => 'Tasumata';

  @override
  String get clientDetailEdit => 'Muuda';

  @override
  String get clientDetailNewInvoice => 'Uus arve';

  @override
  String get clientDetailEmailClient => 'Saada kliendile e-kiri';

  @override
  String get clientDetailClientDetails => 'Kliendi andmed';

  @override
  String get clientDetailEmail => 'E-post';

  @override
  String get clientDetailPhone => 'Telefon';

  @override
  String get clientDetailAddress => 'Aadress';

  @override
  String get clientDetailCity => 'Linn';

  @override
  String get clientDetailCurrency => 'Valuuta';

  @override
  String get clientDetailTaxRate => 'Maksumäär';

  @override
  String get clientDetailVatNumber => 'VAT-number';

  @override
  String get clientDetailInvoiceHistory => 'Arvete ajalugu';

  @override
  String get clientDetailNoInvoices => 'Selle kliendi arveid veel pole';

  @override
  String get deleteClientTitle => 'Kustutada klient?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'Kustutada $clientName? Seda toimingut ei saa tagasi võtta.';
  }

  @override
  String get settingsTitle => 'Seaded';

  @override
  String get settingsYourName => 'Teie nimi';

  @override
  String get settingsBackupTitle => 'Varundage oma arved';

  @override
  String get settingsBackupDescription =>
      'Logige sisse, et andmed turvaliselt sünkroonida ja neile kõikjalt juurde pääseda.';

  @override
  String get settingsSignInRegister => 'Logi sisse või registreeru';

  @override
  String get settingsProUpsell =>
      'Uuendage Pro versioonile, et saada piiramatud arved, pilvesünkroonimine ja veemärkideta kogemus.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'Olete jõudnud tasuta paketi $limit arve piirini. Uuendage Pro versioonile piiramatute arvete ja pilvesünkroonimise jaoks.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'Olete jõudnud tasuta paketi $limit kliendi piirini. Uuendage Pro versioonile piiramatu kliendihalduse ja pilvesünkroonimise jaoks.';
  }

  @override
  String get settingsUpgradePro => 'Uuenda';

  @override
  String get settingsBusinessSection => 'ETTEVÕTTE SEADED';

  @override
  String get settingsBusinessDetails => 'Ettevõtte andmed';

  @override
  String get settingsBusinessDetailsSubtitle => 'Määrake oma ettevõtte nimi';

  @override
  String get settingsInvoicePrefix => 'Arve eesliide';

  @override
  String get settingsDefaultCurrency => 'Vaikevaluuta';

  @override
  String get settingsAppSection => 'RAKENDUSE SEADED';

  @override
  String get settingsDarkMode => 'Tumerežiim';

  @override
  String get settingsDailyNotification => 'Igapäevane teavitus';

  @override
  String get settingsDailyNotificationNotSet => 'Määramata';

  @override
  String get settingsLanguage => 'Keel';

  @override
  String get settingsLanguageLabel => 'Eesti';

  @override
  String get languageEnglish => 'Inglise';

  @override
  String get languageArabic => 'Araabia';

  @override
  String get languageFrench => 'Prantsuse';

  @override
  String get languageSpanish => 'Hispaania';

  @override
  String get languageUrdu => 'Urdu';

  @override
  String get languageChinese => 'Hiina';

  @override
  String get settingsAboutSection => 'TEAVE';

  @override
  String get settingsRateApp => 'Hinda rakendust';

  @override
  String get settingsHelpSupport => 'Abi ja tugi';

  @override
  String get settingsPrivacyPolicy => 'Privaatsuspoliitika';

  @override
  String get settingsHelpSupportSheet =>
      'Kas vajate abi? Kirjutage meile support@invoiceflow.app ja vastame 24 tunni jooksul.';

  @override
  String get settingsPrivacySheet =>
      'Teie andmed salvestatakse teie seadmes. Me ei müü ega jaga kunagi teie isikuandmeid.';

  @override
  String get settingsVersion => 'Versioon';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Logi välja';

  @override
  String get settingsEditProfile => 'Muuda profiili';

  @override
  String get settingsProfileNameLabel => 'Täisnimi';

  @override
  String get settingsProfileNameHint => 'Teie nimi';

  @override
  String get settingsBusinessNameLabel => 'Ettevõtte nimi';

  @override
  String get settingsBusinessNameHint => 'Teie Ettevõte OÜ';

  @override
  String get settingsBusinessEmailLabel => 'Ettevõtte e-post';

  @override
  String get settingsBusinessEmailHint => 'arveldus@ettevote.ee';

  @override
  String get settingsPhoneLabel => 'Telefon';

  @override
  String get settingsPhoneHint => '+372 5123 4567';

  @override
  String get settingsAddressLabel => 'Aadress';

  @override
  String get settingsAddressHint => 'Dubai, Araabia Ühendemiraadid';

  @override
  String get settingsBusinessDetailsSaved => 'Ettevõtte andmed salvestatud!';

  @override
  String get settingsInvoicePrefixTitle => 'Arve numbri eesliide';

  @override
  String get settingsInvoicePrefixHint => 'nt ARV-, #, Arve-';

  @override
  String get settingsPrefixSaved => 'Arve eesliide salvestatud';

  @override
  String get settingsNotificationScheduled =>
      'Igapäevane teavitus on edukalt ajastatud!';

  @override
  String get settingsSignOutTitle => 'Logida välja?';

  @override
  String get settingsSignOutMessage =>
      'Kas olete kindel, et soovite InvoiceFlow\'st välja logida?';

  @override
  String get settingsSignedOut => 'Väljalogimine õnnestus.';

  @override
  String get statusPaid => 'Makstud';

  @override
  String get statusOverdue => 'Tähtaja ületanud';

  @override
  String get statusPending => 'Ootel';

  @override
  String get statusDraft => 'Mustand';

  @override
  String get statusCancelled => 'Tühistatud';

  @override
  String get notificationChannelName => 'Igapäevased meeldetuletused';

  @override
  String get notificationChannelDescription =>
      'Tuletab teile igapäevaselt arvete kontrollimist meelde';

  @override
  String get notificationTitle => 'Arve meeldetuletus';

  @override
  String get notificationBody =>
      'On aeg kontrollida oma hiljutisi arveid ja jälgida ootel makseid.';

  @override
  String get pdfInvoice => 'ARVE';

  @override
  String get pdfInvoiceNumber => 'Arve nr:';

  @override
  String get pdfDate => 'Kuupäev:';

  @override
  String get pdfDueDate => 'Maksetähtaeg:';

  @override
  String get pdfBillTo => 'SAAJA:';

  @override
  String get pdfDescription => 'Kirjeldus';

  @override
  String get pdfQty => 'Kogus';

  @override
  String get pdfRate => 'Hind';

  @override
  String get pdfAmount => 'Summa';

  @override
  String get pdfSubtotal => 'Vahesumma:';

  @override
  String pdfTax(Object taxRate) {
    return 'Maks ($taxRate%):';
  }

  @override
  String get pdfTotal => 'KOKKU:';

  @override
  String get pdfSignature => 'Allkiri:';

  @override
  String get pdfNotes => 'Märkused:';

  @override
  String get pdfPaymentTerms => 'Maksetingimused:';

  @override
  String get pdfThankYou => 'Täname teie koostöö eest!';

  @override
  String get quickAddWebDesign => 'Veebidisain';

  @override
  String get quickAddDevelopment => 'Arendus';

  @override
  String get quickAddConsulting => 'Konsultatsioon';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Sisuloome';

  @override
  String get paywallTitle => 'Avage InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'Kasutage piiramatult ja sünkroonige kõikjal. Tühistage igal ajal.';

  @override
  String get paywallFeatureUnlimited => 'Piiramatud arved ja kliendid';

  @override
  String get paywallFeatureSync => 'Pilvesünkroonimine seadmete vahel';

  @override
  String get paywallFeatureNoWatermark => 'Kunagi veemärke';

  @override
  String get paywallMonthly => 'Kuupõhine';

  @override
  String get paywallMonthlySub => 'Arveldatakse kuu kaupa';

  @override
  String get paywallYearly => 'Aastapõhine';

  @override
  String get paywallYearlySub => 'Parim hind — 2 kuud tasuta';

  @override
  String get paywallRestore => 'Taasta ostud';

  @override
  String get paywallTerms =>
      'Tellimused pikenevad automaatselt. Haldate neid rakenduste poe seadetes.';

  @override
  String get purchaseSuccessTitle => 'Olete nüüd Pro kasutaja!';

  @override
  String get purchaseSuccessSubtitle =>
      'Piiramatud arved, pilvesünkroonimine ja veemärkideta kasutus on nüüd avatud. Täname!';

  @override
  String get purchaseSuccessContinue => 'Jätka';

  @override
  String get paywallLoading => 'Plaanide laadimine…';

  @override
  String get paywallLoadError =>
      'Plaane ei õnnestunud laadida. Kontrolli ühendust ja proovi uuesti.';

  @override
  String get paywallNoOffering => 'Praegu pole plaane saadaval.';

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
  String get purchaseRestored => 'Ostud taastatud edukalt';

  @override
  String get purchaseErrorGeneric => 'Ost ebaõnnestus. Palun proovi uuesti.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro on aktiivne — piiramatud arved ja kliendid ilma vesimärkideta';

  @override
  String get settingsFreePlan => 'Tasuta plaan';

  @override
  String get settingsFreeHint =>
      'Täienda piiramatute arvete, pilvesünkroonimise ja muu eest';

  @override
  String get settingsUpgradeToPro => 'Täienda versioonile Pro';

  @override
  String get settingsManageSubscription => 'Halda tellimust';

  @override
  String get customerCenterFailed => 'Tellimuse haldust ei õnnestunud avada.';

  @override
  String get onboardingSkip => 'Jäta vahele';

  @override
  String get onboardingNext => 'Edasi';

  @override
  String get onboardingGetStarted => 'Alusta';

  @override
  String get onboardingWelcomeTitle => 'Arved 2 minutiga';

  @override
  String get onboardingWelcomeBody =>
      'Looge oma klientidele professionaalsed PDF-arved — kiiresti ja kaunilt.';

  @override
  String get onboardingSyncTitle => 'Sünkroonige kõikjal';

  @override
  String get onboardingSyncBody =>
      'Logige sisse, et varundada oma andmed turvaliselt pilve ja pääseda neile juurde igast seadmest.';

  @override
  String get onboardingProTitle => 'Pro abil piiramatult';

  @override
  String get onboardingProBody =>
      'Avage InvoiceFlow Pro abil piiramatud arved, pilvesünkroonimine ja veemärkide eemaldamine.';

  @override
  String get settingsAccentColor => 'Rõhuvärv';

  @override
  String get settingsAccentColorHint =>
      'Kohandage rakendust oma valitud värviga.';

  @override
  String get settingsCountry => 'Riik';

  @override
  String get settingsTaxId => 'Maksukohustuslase number';

  @override
  String get settingsTaxIdNotSet => 'Määramata';

  @override
  String get settingsTaxIdHint => 'nt 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Maksukohustuslase number salvestatud';

  @override
  String get catalogTitle => 'Tooted ja teenused';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count toode',
      one: '$count toode',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'Tooteid veel pole';

  @override
  String get catalogEmptySubtitle =>
      'Salvestage korduvkasutatavad tooted ja teenused, et neid arvetele kiiremini lisada.';

  @override
  String get catalogFromSaved => 'Oma kataloogist';

  @override
  String get catalogSaveToCatalog => 'Salvesta kataloogi taaskasutamiseks';

  @override
  String get catalogAddSnackbar => 'Lisatud kataloogi';

  @override
  String get catalogDeleteTitle => 'Kustutada kirje?';

  @override
  String catalogDeleteMessage(String description) {
    return 'Kustutada \"$description\"? Seda ei saa tagasi võtta.';
  }

  @override
  String get commonDone => 'Valmis';

  @override
  String get estimateListTitle => 'Pakkumised';

  @override
  String get estimateListSearchHint => 'Otsi pakkumisi…';

  @override
  String get estimateListEmpty => 'Pakkumisi veel pole';

  @override
  String get estimateListTabAll => 'Kõik';

  @override
  String get estimateListTabDraft => 'Mustand';

  @override
  String get estimateListTabSent => 'Saadetud';

  @override
  String get estimateListTabAccepted => 'Vastu võetud';

  @override
  String get estimateListTabExpired => 'Aegunud';

  @override
  String get estimateCreateTitle => 'Uus pakkumine';

  @override
  String get estimateEditTitle => 'Muuda pakkumist';

  @override
  String get estimateCreatedSnackbar => 'Pakkumine salvestatud';

  @override
  String get estimateUpdatedSnackbar => 'Pakkumine uuendatud';

  @override
  String get estimateIssueDate => 'Väljastamise kuupäev';

  @override
  String get estimateExpiryDate => 'Aegumise kuupäev';

  @override
  String get estimateExpiresPrefix => 'Aegub: ';

  @override
  String get estimateConvertToInvoice => 'Teisenda arveks';

  @override
  String get estimateConvertedSnackbar => 'Pakkumine teisendatud arveks';

  @override
  String get estimateConvertFailed => 'Pakkumist ei õnnestunud teisendada';

  @override
  String get estimateMarkSent => 'Märgi saadetuks';

  @override
  String get estimateMarkAccepted => 'Märgi vastu võetuks';

  @override
  String get estimateMarkDeclined => 'Märgi tagasi lükatuks';

  @override
  String get estimateConvertedTitle => 'Teisendatud';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'Teisendatud arveks $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'PAKKUMISE KOGUSUMMA';

  @override
  String get estimateStatusSent => 'Saadetud';

  @override
  String get estimateStatusAccepted => 'Vastu võetud';

  @override
  String get estimateStatusDeclined => 'Tagasi lükatud';

  @override
  String get estimateStatusExpired => 'Aegunud';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count avatud',
      one: '1 avatud',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'Kustutada pakkumine?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'Kustutada \"$estimateNumber\"? Seda ei saa tagasi võtta.';
  }

  @override
  String get estimatePdfFailed => 'PDF-i loomine ebaõnnestus';

  @override
  String get pdfEstimate => 'PAKKUMINE';

  @override
  String get pdfEstimateNumber => 'Pakkumise nr:';

  @override
  String get pdfValidUntil => 'Kehtiv kuni:';

  @override
  String get invoiceDetailPaymentTerms => 'Maksetingimused';

  @override
  String get recurringListTitle => 'Korduvad arved';

  @override
  String get recurringListEmpty => 'Korduvaid arveid veel pole';

  @override
  String get recurringListEmptySubtitle =>
      'Seadistage tavalistele klientidele ja teenustele automaatsed arved.';

  @override
  String get recurringCreateTitle => 'Uus korduv';

  @override
  String get recurringEditTitle => 'Muuda korduvat';

  @override
  String get recurringCreatedSnackbar => 'Korduv arve salvestatud';

  @override
  String get recurringUpdatedSnackbar => 'Korduv arve uuendatud';

  @override
  String get recurringDeleteTitle => 'Kustutada korduv arve?';

  @override
  String recurringDeleteMessage(String title) {
    return 'Kustutada \"$title\"? Olemasolevaid arveid ei eemaldata.';
  }

  @override
  String get recurringTitleLabel => 'Pealkiri';

  @override
  String get recurringTitleHint => 'nt kuutasu';

  @override
  String get recurringClientLabel => 'Klient';

  @override
  String get recurringFrequencyLabel => 'Sagedus';

  @override
  String get recurringFrequencyWeekly => 'Iganädalane';

  @override
  String get recurringFrequencyBiweekly => 'Üle nädala';

  @override
  String get recurringFrequencyMonthly => 'Igakuine';

  @override
  String get recurringFrequencyQuarterly => 'Kord kvartalis';

  @override
  String get recurringFrequencyYearly => 'Kord aastas';

  @override
  String get recurringNextRun => 'Järgmine käivitumine';

  @override
  String get recurringDueDays => 'Tähtaeg:';

  @override
  String get recurringDays => 'päeva';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aktiivne',
      one: '1 aktiivne',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'Aruanded';

  @override
  String get reportsSubtitle => 'Ettevõtte analüüs';

  @override
  String get reportsEmpty => 'Aruannete nägemiseks looge arveid';

  @override
  String get reportsCollected => 'Lackunud';

  @override
  String get reportsOutstanding => 'Tasumata';

  @override
  String get reportsMonthlyRevenue => 'Igakuine tulu';

  @override
  String get reportsLast6Months => 'Viimased 6 kuud';

  @override
  String get reportsByStatus => 'Staatuse järgi';

  @override
  String get reportsTopClients => 'Parimad kliendid';

  @override
  String get paymentLinkTitle => 'Makselink';

  @override
  String get paymentLinkNotSet => 'Seadetes pole makselinki määratud';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'Teie makselink on arve PDF-il ja seda saab arve menüüst kopeerida.';

  @override
  String get paymentLinkSaved => 'Makselink salvestatud';

  @override
  String get settingsPaymentLinkNotSet => 'Määramata';

  @override
  String get invoiceDetailCopyPaymentLink => 'Kopeeri makselink';

  @override
  String get paymentLinkCopied => 'Makselink kopeeritud';

  @override
  String get pdfPayOnline => 'Maksa veebis';

  @override
  String get exportXml => 'Ekspordi XML';

  @override
  String get exportXmlFailed => 'XML-i eksportimine ebaõnnestus';
}
