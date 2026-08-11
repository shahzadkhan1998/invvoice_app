// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Ammattimaiset laskut 2 minuutissa';

  @override
  String get bottomNavDashboard => 'Hallintapaneeli';

  @override
  String get bottomNavInvoices => 'Laskut';

  @override
  String get bottomNavClients => 'Asiakkaat';

  @override
  String get bottomNavSettings => 'Asetukset';

  @override
  String get commonCancel => 'Peruuta';

  @override
  String get commonDelete => 'Poista';

  @override
  String get commonSave => 'Tallenna';

  @override
  String get commonSearch => 'Hae';

  @override
  String get commonBack => 'Takaisin';

  @override
  String get commonContinue => 'Jatka';

  @override
  String get commonAdd => 'Lisää';

  @override
  String get commonEdit => 'Muokkaa';

  @override
  String get commonCreate => 'Luo';

  @override
  String get commonClear => 'Tyhjennä';

  @override
  String get commonView => 'Näytä';

  @override
  String get commonShare => 'Jaa';

  @override
  String get commonExportPdf => 'Vie PDF';

  @override
  String get commonSharePdf => 'Jaa PDF';

  @override
  String get commonSaveChanges => 'Tallenna muutokset';

  @override
  String get commonRequired => 'Pakollinen';

  @override
  String get commonInvalid => 'Virheellinen';

  @override
  String get commonSendLink => 'Lähetä linkki';

  @override
  String get commonGeneratingPdf => 'Luodaan PDF-tiedostoa...';

  @override
  String get dashboardGreetingMorning => 'Hyvää huomenta';

  @override
  String get dashboardGreetingAfternoon => 'Hyvää iltapäivää';

  @override
  String get dashboardGreetingEvening => 'Hyvää iltaa';

  @override
  String get dashboardSubtitle => 'Tässä on yrityksesi yleiskuva';

  @override
  String get dashboardOutstanding => 'Avoimet';

  @override
  String get dashboardOverdue => 'Erääntyneet';

  @override
  String get dashboardThisMonth => 'Tässä kuussa';

  @override
  String get dashboardInvoices => 'laskua';

  @override
  String dashboardPaidCount(Object count) {
    return '$count maksettu';
  }

  @override
  String get dashboardRecentInvoices => 'Viimeisimmät laskut';

  @override
  String get dashboardSeeAll => 'Näytä kaikki';

  @override
  String get dashboardNotifications => 'Ilmoitukset';

  @override
  String get dashboardNotificationsHint =>
      'Pysy ajan tasalla kassavirrastasi tarkistamalla erääntyneet ja odottavat laskut säännöllisesti.';

  @override
  String get dashboardNewInvoice => 'Uusi lasku';

  @override
  String get dashboardNoInvoicesYet => 'Ei laskuja vielä';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Luo ensimmäinen ammattimainen laskusi alle 2 minuutissa';

  @override
  String get dashboardCreateInvoice => 'Luo lasku';

  @override
  String get dashboardMarkPaid => 'Merkitse maksetuksi';

  @override
  String get dashboardDuePrefix => 'Erääntyy ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days päivää myöhässä';
  }

  @override
  String get deleteInvoiceTitle => 'Poista lasku?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'Poista lasku $invoiceNumber? Tätä ei voi kumota.';
  }

  @override
  String get loginHeading => 'Tervetuloa takaisin';

  @override
  String get loginSubtitle => 'Kirjaudu InvoiceFlow-tilillesi';

  @override
  String get loginEmailLabel => 'Sähköpostiosoite';

  @override
  String get loginEmailHint => 'sina@esimerkki.com';

  @override
  String get loginEmailRequired => 'Sähköposti on pakollinen';

  @override
  String get loginEmailInvalid => 'Anna kelvollinen sähköpostiosoite';

  @override
  String get loginPasswordLabel => 'Salasana';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'Salasana on pakollinen';

  @override
  String get loginPasswordMinLength =>
      'Salasanan tulee olla vähintään 6 merkkiä';

  @override
  String get loginForgotPassword => 'Unohditko salasanan?';

  @override
  String get loginSignIn => 'Kirjaudu sisään';

  @override
  String get loginOrContinueWith => 'tai jatka';

  @override
  String get loginContinueWithGoogle => 'Jatka Google-tilillä';

  @override
  String get loginNoAccount => 'Ei tiliä? ';

  @override
  String get loginSignUp => 'Rekisteröidy';

  @override
  String get loginResetPasswordTitle => 'Nollaa salasana';

  @override
  String get loginResetPasswordMessage =>
      'Anna sähköpostiosoitteesi, niin lähetämme nollauslinkin.';

  @override
  String get loginResetPasswordHint => 'sina@esimerkki.com';

  @override
  String get loginResetLinkSent =>
      'Nollauslinkki lähetetty! Tarkista sähköpostisi.';

  @override
  String get loginResetLinkFailed => 'Nollauslinkin lähettäminen epäonnistui.';

  @override
  String get registerHeading => 'Luo tili';

  @override
  String get registerSubtitle =>
      'Aloita ammattimaisten laskujen lähettäminen jo tänään';

  @override
  String get registerNameLabel => 'Koko nimi';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => 'Nimi on pakollinen';

  @override
  String get registerNameMinLength => 'Nimen tulee olla vähintään 2 merkkiä';

  @override
  String get registerEmailLabel => 'Sähköpostiosoite';

  @override
  String get registerEmailHint => 'sina@esimerkki.com';

  @override
  String get registerEmailRequired => 'Sähköposti on pakollinen';

  @override
  String get registerEmailInvalid => 'Anna kelvollinen sähköpostiosoite';

  @override
  String get registerPasswordLabel => 'Salasana';

  @override
  String get registerPasswordHint => 'Vähintään 6 merkkiä';

  @override
  String get registerPasswordRequired => 'Salasana on pakollinen';

  @override
  String get registerPasswordMinLength =>
      'Salasanan tulee olla vähintään 6 merkkiä';

  @override
  String get registerConfirmPasswordLabel => 'Vahvista salasana';

  @override
  String get registerConfirmPasswordHint => 'Toista salasanasi';

  @override
  String get registerConfirmPasswordRequired => 'Vahvista salasanasi';

  @override
  String get registerPasswordsDoNotMatch => 'Salasanat eivät täsmää';

  @override
  String get registerCreateAccount => 'Luo tili';

  @override
  String get registerHaveAccount => 'Onko sinulla jo tili? ';

  @override
  String get registerSignIn => 'Kirjaudu sisään';

  @override
  String get authTermsOfService => 'Palvelun ehdot';

  @override
  String get authPrivacyPolicy => 'Tietosuojakäytäntö';

  @override
  String get authAgreeRequired =>
      'Jatkaaksesi hyväksy palvelun ehdot ja tietosuojakäytäntö';

  @override
  String get loginAgreePrefix => 'Jatkamalla hyväksyt ';

  @override
  String get registerAgreePrefix => 'Hyväksyn ';

  @override
  String get authAgreeAnd => ' ja ';

  @override
  String get authTermsSheet =>
      'Nämä palvelun ehdot säätelevät InvoiceFlow\'n käyttöä. Käyttämällä sovellusta tai kirjautumalla siihen hyväksyt sitoutuvasi näihin ehtoihin.\n\n1. Olet vastuussa luomiesi laskujen, tarjousten ja muiden tietojen oikeellisuudesta.\n2. Sovellus tarjotaan \"sellaisena kuin se on\" ilman minkäänlaisia takuita, nimenomaisia tai oletettuja.\n3. Emme vastaa palvelun käytöstä aiheutuvista tappioista.\n4. Älä käytä sovellusta laittomiin tai kiellettyihin tarkoituksiin.\n5. Voimme päivittää näitä ehtoja ajoittain; sovelluksen jatkuva käyttö merkitsee päivitettyjen ehtojen hyväksymistä.';

  @override
  String get authPrivacySheet =>
      'Yksityisyytesi on meille tärkeää.\n\n1. Tietojen tallennus: laskusi, asiakkaasi ja asetuksesi tallennetaan paikallisesti laitteellesi.\n2. Pilvisynkronointi: jos kirjaudut sisään, tietosi synkronoidaan tilillesi, jotta ne ovat käytettävissä kaikilla laitteillasi.\n3. Emme koskaan myy tai jaa henkilökohtaisia tietojasi.\n4. Analytiikka: voimme kerätä anonymisoituja käyttötietoja sovelluksen parantamiseksi.\n5. Yhteystiedot: jos sinulla on kysyttävää yksityisyydestä, ota yhteyttä osoitteeseen support@invoiceflow.app.';

  @override
  String get authErrorWeakPassword => 'Salasana on liian heikko';

  @override
  String get authErrorEmailAlreadyInUse => 'Tili on jo olemassa';

  @override
  String get authErrorUserNotFound =>
      'Tällä sähköpostilla ei löytynyt käyttäjää';

  @override
  String get authErrorWrongPassword => 'Väärä salasana';

  @override
  String get authErrorInvalidEmail => 'Virheellinen sähköpostiosoite';

  @override
  String get authErrorTooManyRequests =>
      'Liian monta yritystä. Yritä myöhemmin uudelleen.';

  @override
  String get authErrorDefault => 'Kirjautuminen epäonnistui. Yritä uudelleen.';

  @override
  String get authErrorGoogleSignInFailed => 'Google-kirjautuminen epäonnistui.';

  @override
  String get invoiceListTitle => 'Laskut';

  @override
  String get invoiceListSearchHint => 'Hae laskuja...';

  @override
  String get invoiceListSortDate => 'Lajittele päivän mukaan';

  @override
  String get invoiceListSortAmount => 'Lajittele summan mukaan';

  @override
  String get invoiceListSortClient => 'Lajittele asiakkaan mukaan';

  @override
  String get invoiceListTabAll => 'Kaikki';

  @override
  String get invoiceListTabPaid => 'Maksetut';

  @override
  String get invoiceListTabPending => 'Odottavat';

  @override
  String get invoiceListTabOverdue => 'Erääntyneet';

  @override
  String get invoiceListTabDraft => 'Luonnokset';

  @override
  String get invoiceListEmpty => 'Ei laskuja löytynyt';

  @override
  String get invoiceCreateTitle => 'Uusi lasku';

  @override
  String get invoiceEditTitle => 'Muokkaa laskua';

  @override
  String get invoiceSaveDraft => 'Tallenna luonnos';

  @override
  String get invoiceStepClient => 'Asiakas';

  @override
  String get invoiceStepItems => 'Rivit';

  @override
  String get invoiceStepReview => 'Tarkistus';

  @override
  String get invoiceSelectClient => 'Valitse asiakas';

  @override
  String get invoiceSelectClientSubtitle => 'Valitse kenelle tämä lasku on';

  @override
  String get invoiceSearchClients => 'Hae asiakkaita...';

  @override
  String get invoiceAddNewClient => 'Lisää uusi asiakas';

  @override
  String get invoiceNoClientsFound => 'Ei asiakkaita löytynyt';

  @override
  String get invoiceSelectClientEmptyHint =>
      'Luo ensimmäinen asiakkaasi aloittaaksesi laskujen luomisen';

  @override
  String get invoiceAddLineItem => 'Lisää rivi';

  @override
  String get invoiceItemDescription => 'Kuvaus';

  @override
  String get invoiceItemDescriptionHint => 'esim. Web-kehitys';

  @override
  String get invoiceItemQuickAdd => 'Pikalisäys:';

  @override
  String get invoiceItemQty => 'Määrä';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Hinta';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Lisää rivi';

  @override
  String get invoiceLineItems => 'Laskurivit';

  @override
  String get invoiceLineItemsSubtitle => 'Lisää palveluita tai tuotteita';

  @override
  String get invoiceNoItems => 'Ei rivejä vielä. Lisää ensimmäinen rivi.';

  @override
  String get invoiceTaxRate => 'Veroprosentti (%)';

  @override
  String get invoiceSubtotal => 'Välisumma';

  @override
  String invoiceTax(Object taxRate) {
    return 'Vero ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'YHTEENSÄ';

  @override
  String get invoiceReviewHeading => 'Tarkista ja viimeistele';

  @override
  String get invoiceReviewSubtitle =>
      'Aseta päivämäärät, lisää muistiinpanot, logo ja allekirjoitus';

  @override
  String get invoiceCompanyLogo => 'Yrityksen logo';

  @override
  String get invoiceAddLogo => 'Lisää logo';

  @override
  String get invoiceInvoiceDate => 'Laskun päivämäärä';

  @override
  String get invoiceDueDate => 'Eräpäivä';

  @override
  String get invoiceNotesLabel => 'Muistiinpanot (valinnainen)';

  @override
  String get invoiceNotesHint => 'Kiitos yhteistyöstä!';

  @override
  String get invoicePaymentTermsLabel => 'Maksuehdot (valinnainen)';

  @override
  String get invoicePaymentTermsHint => 'Maksu 30 päivän kuluessa';

  @override
  String get invoiceSignatureLabel => 'Allekirjoitus';

  @override
  String get invoiceSignatureOverwrite =>
      'Aiempi allekirjoitus on tallennettu. Piirrä päälle korvataksesi.';

  @override
  String get invoiceCreatedSnackbar => 'Lasku luotu!';

  @override
  String get invoiceUpdatedSnackbar => 'Lasku päivitetty!';

  @override
  String get invoiceDetailTitle => 'LASKU';

  @override
  String get invoiceDetailMarkAsPaid => 'Merkitse maksetuksi';

  @override
  String get invoiceDetailTotalAmount => 'Kokonaissumma';

  @override
  String get invoiceDetailIssued => 'Laadittu';

  @override
  String get invoiceDetailDue => 'Eräpäivä';

  @override
  String get invoiceDetailPaid => 'Maksettu';

  @override
  String get invoiceDetailBillTo => 'Vastaanottaja';

  @override
  String get invoiceDetailItems => 'Rivit';

  @override
  String get invoiceDetailNotes => 'Muistiinpanot';

  @override
  String get invoiceDetailSignature => 'Allekirjoitus';

  @override
  String get invoiceDetailMarkedPaidSnackbar => 'Lasku merkitty maksetuksi!';

  @override
  String get invoiceDetailPdfFailed => 'PDF-tiedoston luominen epäonnistui';

  @override
  String get clientListTitle => 'Asiakkaat';

  @override
  String get clientListSearchHint => 'Hae asiakkaita...';

  @override
  String get clientListTotalClients => 'Asiakkaat yhteensä';

  @override
  String get clientListTotalBilled => 'Laskutettu yhteensä';

  @override
  String get clientListEmptySearch => 'Ei asiakkaita löytynyt';

  @override
  String get clientListEmpty => 'Ei asiakkaita vielä';

  @override
  String get clientListEmptySubtitle =>
      'Lisää ensimmäinen asiakkaasi aloittaaksesi laskujen luomisen';

  @override
  String get clientListAddClient => 'Lisää asiakas';

  @override
  String get clientListTotalBilledLabel => 'laskutettu yhteensä';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count lasku';
  }

  @override
  String get clientCreateTitle => 'Uusi asiakas';

  @override
  String get clientEditTitle => 'Muokkaa asiakasta';

  @override
  String get clientBasicInfo => 'Perustiedot';

  @override
  String get clientNameLabel => 'Koko nimi *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'Nimi on pakollinen';

  @override
  String get clientNameTooShort => 'Nimi liian lyhyt';

  @override
  String get clientEmailLabel => 'Sähköpostiosoite *';

  @override
  String get clientEmailHint => 'laskutus@yritys.fi';

  @override
  String get clientEmailRequired => 'Sähköposti on pakollinen';

  @override
  String get clientEmailInvalid => 'Anna kelvollinen sähköpostiosoite';

  @override
  String get clientPhoneLabel => 'Puhelinnumero';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'Osoite';

  @override
  String get clientAddressLabel => 'Katuosoite';

  @override
  String get clientAddressHint => '123 Business Park, Toimisto 45';

  @override
  String get clientCityLabel => 'Kaupunki / Maa';

  @override
  String get clientCityHint => 'Dubai, Yhdistyneet arabiemiirikunnat';

  @override
  String get clientBillingDefaults => 'Laskutuksen oletusasetukset';

  @override
  String get clientDefaultCurrency => 'Oletusvaluutta';

  @override
  String get clientDefaultTaxRate => 'Oletusveroprosentti (VAT/GST)';

  @override
  String get clientVatLabel => 'ALV / verorekisterinumero';

  @override
  String get clientVatHint => '123456789012345 (valinnainen)';

  @override
  String get clientUpdateButton => 'Päivitä asiakas';

  @override
  String get clientAddButton => 'Lisää asiakas';

  @override
  String get clientUpdatedSnackbar => 'Asiakas päivitetty!';

  @override
  String get clientAddedSnackbar => 'Asiakas lisätty!';

  @override
  String get clientDetailInvoices => 'Laskut';

  @override
  String get clientDetailTotalBilled => 'Laskutettu yhteensä';

  @override
  String get clientDetailOutstanding => 'Avoimet';

  @override
  String get clientDetailEdit => 'Muokkaa';

  @override
  String get clientDetailNewInvoice => 'Uusi lasku';

  @override
  String get clientDetailEmailClient => 'Lähetä sähköpostia';

  @override
  String get clientDetailClientDetails => 'Asiakkaan tiedot';

  @override
  String get clientDetailEmail => 'Sähköposti';

  @override
  String get clientDetailPhone => 'Puhelin';

  @override
  String get clientDetailAddress => 'Osoite';

  @override
  String get clientDetailCity => 'Kaupunki';

  @override
  String get clientDetailCurrency => 'Valuutta';

  @override
  String get clientDetailTaxRate => 'Veroprosentti';

  @override
  String get clientDetailVatNumber => 'ALV-numero';

  @override
  String get clientDetailInvoiceHistory => 'Laskuhistoria';

  @override
  String get clientDetailNoInvoices => 'Ei laskuja vielä tälle asiakkaalle';

  @override
  String get deleteClientTitle => 'Poista asiakas?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'Poista asiakas $clientName? Tätä ei voi kumota.';
  }

  @override
  String get settingsTitle => 'Asetukset';

  @override
  String get settingsYourName => 'Nimesi';

  @override
  String get settingsBackupTitle => 'Varmuuskopioi laskusi';

  @override
  String get settingsBackupDescription =>
      'Kirjaudu sisään synkronoidaksesi tietosi turvallisesti ja käyttääksesi niitä mistä tahansa.';

  @override
  String get settingsSignInRegister => 'Kirjaudu sisään tai rekisteröidy';

  @override
  String get settingsProUpsell =>
      'Päivitä Pro-tilille saadaksesi rajoittamattoman määrän laskuja, pilvisynkronoinnin ja ilman vesileimoja.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'Olet saavuttanut ilmaisversion rajan $limit laskua. Päivitä Pro-tilille saadaksesi rajoittamattoman määrän laskuja ja pilvisynkronoinnin.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'Olet saavuttanut ilmaisversion rajan $limit asiakasta. Päivitä Pro-tilille saadaksesi rajoittamattoman määrän asiakkaita ja pilvisynkronoinnin.';
  }

  @override
  String get settingsUpgradePro => 'Päivitä Pro';

  @override
  String get settingsBusinessSection => 'YRITYKSEN ASETUKSET';

  @override
  String get settingsBusinessDetails => 'Yrityksen tiedot';

  @override
  String get settingsBusinessDetailsSubtitle => 'Aseta yrityksesi nimi';

  @override
  String get settingsInvoicePrefix => 'Laskun etuliite';

  @override
  String get settingsDefaultCurrency => 'Oletusvaluutta';

  @override
  String get settingsAppSection => 'SOVELLUKSEN ASETUKSET';

  @override
  String get settingsDarkMode => 'Tumma tila';

  @override
  String get settingsDailyNotification => 'Päivittäinen ilmoitus';

  @override
  String get settingsDailyNotificationNotSet => 'Ei asetettu';

  @override
  String get settingsLanguage => 'Kieli';

  @override
  String get settingsLanguageLabel => 'Suomi';

  @override
  String get languageEnglish => 'Englanti';

  @override
  String get languageArabic => 'العربية';

  @override
  String get languageFrench => 'Français';

  @override
  String get languageSpanish => 'Español';

  @override
  String get languageUrdu => 'اردو';

  @override
  String get languageChinese => '中文';

  @override
  String get settingsAboutSection => 'TIETOJA';

  @override
  String get settingsRateApp => 'Arvioi sovellus';

  @override
  String get settingsHelpSupport => 'Ohje ja tuki';

  @override
  String get settingsPrivacyPolicy => 'Tietosuojakäytäntö';

  @override
  String get settingsHelpSupportSheet =>
      'Tarvitsetko apua? Ota yhteyttä osoitteeseen support@invoiceflow.app, niin vastaamme 24 tunnin kuluessa.';

  @override
  String get settingsPrivacySheet =>
      'Tietosi tallennetaan paikallisesti laitteellesi. Emme koskaan myy tai jaa henkilökohtaisia tietojasi.';

  @override
  String get settingsVersion => 'Versio';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Kirjaudu ulos';

  @override
  String get settingsEditProfile => 'Muokkaa profiilia';

  @override
  String get settingsProfileNameLabel => 'Koko nimi';

  @override
  String get settingsProfileNameHint => 'Nimesi';

  @override
  String get settingsBusinessNameLabel => 'Yrityksen nimi';

  @override
  String get settingsBusinessNameHint => 'Yrityksesi Oy';

  @override
  String get settingsBusinessEmailLabel => 'Yrityksen sähköposti';

  @override
  String get settingsBusinessEmailHint => 'laskutus@yritys.fi';

  @override
  String get settingsPhoneLabel => 'Puhelin';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'Osoite';

  @override
  String get settingsAddressHint => 'Dubai, Yhdistyneet arabiemiirikunnat';

  @override
  String get settingsBusinessDetailsSaved => 'Yrityksen tiedot tallennettu!';

  @override
  String get settingsInvoicePrefixTitle => 'Laskun numeron etuliite';

  @override
  String get settingsInvoicePrefixHint => 'esim. INV-, #, Lasku-';

  @override
  String get settingsPrefixSaved => 'Laskun etuliite tallennettu';

  @override
  String get settingsNotificationScheduled =>
      'Päivittäinen ilmoitus ajastettu onnistuneesti!';

  @override
  String get settingsSignOutTitle => 'Kirjaudu ulos?';

  @override
  String get settingsSignOutMessage =>
      'Haluatko varmasti kirjautua ulos InvoiceFlow-sovelluksesta?';

  @override
  String get settingsSignedOut => 'Uloskirjautuminen onnistui.';

  @override
  String get statusPaid => 'Maksettu';

  @override
  String get statusOverdue => 'Erääntynyt';

  @override
  String get statusPending => 'Odottava';

  @override
  String get statusDraft => 'Luonnos';

  @override
  String get statusCancelled => 'Peruutettu';

  @override
  String get notificationChannelName => 'Päivittäiset muistutukset';

  @override
  String get notificationChannelDescription =>
      'Muistuttaa sinua tarkistamaan laskusi päivittäin';

  @override
  String get notificationTitle => 'Laskumuistutus';

  @override
  String get notificationBody =>
      'On aika tarkistaa viimeisimmät laskusi ja seurata odottavia maksuja.';

  @override
  String get pdfInvoice => 'LASKU';

  @override
  String get pdfInvoiceNumber => 'Lasku nro:';

  @override
  String get pdfDate => 'Päivämäärä:';

  @override
  String get pdfDueDate => 'Eräpäivä:';

  @override
  String get pdfBillTo => 'LASKUTETAAN:';

  @override
  String get pdfDescription => 'Kuvaus';

  @override
  String get pdfQty => 'Määrä';

  @override
  String get pdfRate => 'Hinta';

  @override
  String get pdfAmount => 'Summa';

  @override
  String get pdfSubtotal => 'Välisumma:';

  @override
  String pdfTax(Object taxRate) {
    return 'Vero ($taxRate%):';
  }

  @override
  String get pdfTotal => 'YHTEENSÄ:';

  @override
  String get pdfSignature => 'Allekirjoitus:';

  @override
  String get pdfNotes => 'Muistiinpanot:';

  @override
  String get pdfPaymentTerms => 'Maksuehdot:';

  @override
  String get pdfThankYou => 'Kiitos yhteistyöstä!';

  @override
  String get quickAddWebDesign => 'Web-suunnittelu';

  @override
  String get quickAddDevelopment => 'Kehitys';

  @override
  String get quickAddConsulting => 'Konsultointi';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Sisällöntuotanto';

  @override
  String get paywallTitle => 'Avaa InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'Rajattomasti ja synkronoi kaikkialle. Peruuta milloin tahansa.';

  @override
  String get paywallFeatureUnlimited => 'Rajattomasti laskuja ja asiakkaita';

  @override
  String get paywallFeatureSync => 'Pilvisynkronointi laitteiden välillä';

  @override
  String get paywallFeatureNoWatermark => 'Ei koskaan vesileimoja';

  @override
  String get paywallMonthly => 'Kuukausittain';

  @override
  String get paywallMonthlySub => 'Veloitetaan kuukausittain';

  @override
  String get paywallYearly => 'Vuosittain';

  @override
  String get paywallYearlySub => 'Paras hinta — 2 kuukautta ilmaiseksi';

  @override
  String get paywallRestore => 'Palauta ostokset';

  @override
  String get paywallTerms =>
      'Tilaukset uusiutuvat automaattisesti. Hallinnoi sovelluskaupan asetuksissa.';

  @override
  String get purchaseSuccessTitle => 'Olet Pro-käyttäjä!';

  @override
  String get purchaseSuccessSubtitle =>
      'Rajattomat laskut, pilvisynkronointi ja vesileimattomat laskut ovat nyt käytössä. Kiitos!';

  @override
  String get purchaseSuccessContinue => 'Jatka';

  @override
  String get paywallLoading => 'Ladataan suunnitelmia…';

  @override
  String get paywallLoadError =>
      'Suunnitelmia ei voitu ladata. Tarkista yhteys ja yritä uudelleen.';

  @override
  String get paywallNoOffering =>
      'Suunnitelmia ei ole tällä hetkellä saatavilla.';

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
  String get purchaseRestored => 'Ostokset palautettu onnistuneesti';

  @override
  String get purchaseErrorGeneric => 'Osto epäonnistui. Yritä uudelleen.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro on aktiivinen — rajoittamattomat laskut ja asiakkaat ilman vesileimoja';

  @override
  String get settingsFreePlan => 'Ilmainen suunnitelma';

  @override
  String get settingsFreeHint =>
      'Päivitä saadaksesi rajoittamattomat laskut, pilvisynkronoinnin ja paljon muuta';

  @override
  String get settingsUpgradeToPro => 'Päivitä Pro-versioon';

  @override
  String get settingsManageSubscription => 'Hallinnoi tilausta';

  @override
  String get customerCenterFailed => 'Tilauksen hallintaa ei voitu avata.';

  @override
  String get onboardingSkip => 'Ohita';

  @override
  String get onboardingNext => 'Seuraava';

  @override
  String get onboardingGetStarted => 'Aloita';

  @override
  String get onboardingWelcomeTitle => 'Laskut 2 minuutissa';

  @override
  String get onboardingWelcomeBody =>
      'Luo ammattimaisia PDF-laskuja asiakkaille — nopeasti ja kauniisti.';

  @override
  String get onboardingSyncTitle => 'Synkronoi kaikkialla';

  @override
  String get onboardingSyncBody =>
      'Kirjaudu sisään varmuuskopioidaksesi tietosi pilveen turvallisesti ja käyttääksesi niitä millä tahansa laitteella.';

  @override
  String get onboardingProTitle => 'Rajattomasti Pro-tilillä';

  @override
  String get onboardingProBody =>
      'Avaa rajattomat laskut, pilvisynkronointi ja poista vesileimat InvoiceFlow Pro -tilillä.';

  @override
  String get settingsAccentColor => 'Korostusväri';

  @override
  String get settingsAccentColorHint =>
      'Muokkaa sovellusta haluamallasi värillä.';

  @override
  String get settingsCountry => 'Maa';

  @override
  String get settingsTaxId => 'Verorekisterinumero';

  @override
  String get settingsTaxIdNotSet => 'Ei asetettu';

  @override
  String get settingsTaxIdHint => 'esim. 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Verotunnus tallennettu';

  @override
  String get catalogTitle => 'Tuotteet ja palvelut';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tuotetta',
      one: '$count tuote',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'Ei tuotteita vielä';

  @override
  String get catalogEmptySubtitle =>
      'Tallenna uudelleenkäytettävät tuotteet ja palvelut lisätäksesi ne laskuihin nopeammin.';

  @override
  String get catalogFromSaved => 'Luettelostasi';

  @override
  String get catalogSaveToCatalog =>
      'Tallenna luetteloon uudelleenkäyttöä varten';

  @override
  String get catalogAddSnackbar => 'Lisätty luetteloon';

  @override
  String get catalogDeleteTitle => 'Poista tuote?';

  @override
  String catalogDeleteMessage(String description) {
    return 'Poista \"$description\"? Tätä ei voi kumota.';
  }

  @override
  String get commonDone => 'Valmis';

  @override
  String get estimateListTitle => 'Tarjoukset';

  @override
  String get estimateListSearchHint => 'Hae tarjouksia…';

  @override
  String get estimateListEmpty => 'Ei tarjouksia vielä';

  @override
  String get estimateListTabAll => 'Kaikki';

  @override
  String get estimateListTabDraft => 'Luonnokset';

  @override
  String get estimateListTabSent => 'Lähetetyt';

  @override
  String get estimateListTabAccepted => 'Hyväksytyt';

  @override
  String get estimateListTabExpired => 'Vanhentuneet';

  @override
  String get estimateCreateTitle => 'Uusi tarjous';

  @override
  String get estimateEditTitle => 'Muokkaa tarjousta';

  @override
  String get estimateCreatedSnackbar => 'Tarjous tallennettu';

  @override
  String get estimateUpdatedSnackbar => 'Tarjous päivitetty';

  @override
  String get estimateIssueDate => 'Tarjouspäivä';

  @override
  String get estimateExpiryDate => 'Voimassaolon loppupäivä';

  @override
  String get estimateExpiresPrefix => 'Vanhenee ';

  @override
  String get estimateConvertToInvoice => 'Muunna laskuksi';

  @override
  String get estimateConvertedSnackbar => 'Tarjous muunnettu laskuksi';

  @override
  String get estimateConvertFailed => 'Tarjouksen muuntaminen epäonnistui';

  @override
  String get estimateMarkSent => 'Merkitse lähetetyksi';

  @override
  String get estimateMarkAccepted => 'Merkitse hyväksytyksi';

  @override
  String get estimateMarkDeclined => 'Merkitse hylätyksi';

  @override
  String get estimateConvertedTitle => 'Muunnettu';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'Muunnettu laskuksi $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'TARJOUKSEN YHTEENSÄ';

  @override
  String get estimateStatusSent => 'Lähetetty';

  @override
  String get estimateStatusAccepted => 'Hyväksytty';

  @override
  String get estimateStatusDeclined => 'Hylätty';

  @override
  String get estimateStatusExpired => 'Vanhentunut';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count avointa',
      one: '1 avoin',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'Poista tarjous?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'Poista \"$estimateNumber\"? Tätä ei voi kumota.';
  }

  @override
  String get estimatePdfFailed => 'PDF-tiedoston luominen epäonnistui';

  @override
  String get pdfEstimate => 'TARJOUS';

  @override
  String get pdfEstimateNumber => 'Tarjous nro:';

  @override
  String get pdfValidUntil => 'Voimassa:';

  @override
  String get invoiceDetailPaymentTerms => 'Maksuehdot';

  @override
  String get recurringListTitle => 'Toistuvat laskut';

  @override
  String get recurringListEmpty => 'Ei toistuvia laskuja vielä';

  @override
  String get recurringListEmptySubtitle =>
      'Aseta automaattiset laskut säännöllisille asiakkaille ja palveluille.';

  @override
  String get recurringCreateTitle => 'Uusi toistuva lasku';

  @override
  String get recurringEditTitle => 'Muokkaa toistuvaa laskua';

  @override
  String get recurringCreatedSnackbar => 'Toistuva lasku tallennettu';

  @override
  String get recurringUpdatedSnackbar => 'Toistuva lasku päivitetty';

  @override
  String get recurringDeleteTitle => 'Poista toistuva lasku?';

  @override
  String recurringDeleteMessage(String title) {
    return 'Poista \"$title\"? Olemassa olevia laskuja ei poisteta.';
  }

  @override
  String get recurringTitleLabel => 'Otsikko';

  @override
  String get recurringTitleHint => 'esim. Kuukausipalkkio';

  @override
  String get recurringClientLabel => 'Asiakas';

  @override
  String get recurringFrequencyLabel => 'Toistuvuus';

  @override
  String get recurringFrequencyWeekly => 'Viikoittain';

  @override
  String get recurringFrequencyBiweekly => 'Joka toinen viikko';

  @override
  String get recurringFrequencyMonthly => 'Kuukausittain';

  @override
  String get recurringFrequencyQuarterly => 'Neljännesvuosittain';

  @override
  String get recurringFrequencyYearly => 'Vuosittain';

  @override
  String get recurringNextRun => 'Seuraava suoritus';

  @override
  String get recurringDueDays => 'Erääntyy';

  @override
  String get recurringDays => 'päivää';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aktiivista',
      one: '1 aktiivinen',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'Raportit';

  @override
  String get reportsSubtitle => 'Yritysanalytiikka';

  @override
  String get reportsEmpty => 'Luo laskuja nähdäksesi raportit';

  @override
  String get reportsCollected => 'Maksetut';

  @override
  String get reportsOutstanding => 'Avoimet';

  @override
  String get reportsMonthlyRevenue => 'Kuukausittainen liikevaihto';

  @override
  String get reportsLast6Months => 'Viimeiset 6 kuukautta';

  @override
  String get reportsByStatus => 'Tilan mukaan';

  @override
  String get reportsTopClients => 'Suurimmat asiakkaat';

  @override
  String get paymentLinkTitle => 'Maksulinkki';

  @override
  String get paymentLinkNotSet => 'Maksulinkkiä ei ole asetettu asetuksissa';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'Maksulinkkisi sisältyy laskun PDF-tiedostoon, ja sen voi kopioida laskun valikosta.';

  @override
  String get paymentLinkSaved => 'Maksulinkki tallennettu';

  @override
  String get settingsPaymentLinkNotSet => 'Ei asetettu';

  @override
  String get invoiceDetailCopyPaymentLink => 'Kopioi maksulinkki';

  @override
  String get paymentLinkCopied => 'Maksulinkki kopioitu';

  @override
  String get pdfPayOnline => 'Maksa verkossa';

  @override
  String get exportXml => 'Vie XML';

  @override
  String get exportXmlFailed => 'XML-tiedoston vieminen epäonnistui';
}
