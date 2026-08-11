// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian (`no`).
class AppLocalizationsNo extends AppLocalizations {
  AppLocalizationsNo([String locale = 'no']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Profesjonelle fakturaer på 2 minutter';

  @override
  String get bottomNavDashboard => 'Dashbord';

  @override
  String get bottomNavInvoices => 'Fakturaer';

  @override
  String get bottomNavClients => 'Kunder';

  @override
  String get bottomNavSettings => 'Innstillinger';

  @override
  String get commonCancel => 'Avbryt';

  @override
  String get commonDelete => 'Slett';

  @override
  String get commonSave => 'Lagre';

  @override
  String get commonSearch => 'Søk';

  @override
  String get commonBack => 'Tilbake';

  @override
  String get commonContinue => 'Fortsett';

  @override
  String get commonAdd => 'Legg til';

  @override
  String get commonEdit => 'Rediger';

  @override
  String get commonCreate => 'Opprett';

  @override
  String get commonClear => 'Tøm';

  @override
  String get commonView => 'Vis';

  @override
  String get commonShare => 'Del';

  @override
  String get commonExportPdf => 'Eksporter PDF';

  @override
  String get commonSharePdf => 'Del PDF';

  @override
  String get commonSaveChanges => 'Lagre endringer';

  @override
  String get commonRequired => 'Påkrevd';

  @override
  String get commonInvalid => 'Ugyldig';

  @override
  String get commonSendLink => 'Send lenke';

  @override
  String get commonGeneratingPdf => 'Genererer PDF...';

  @override
  String get dashboardGreetingMorning => 'God morgen';

  @override
  String get dashboardGreetingAfternoon => 'God ettermiddag';

  @override
  String get dashboardGreetingEvening => 'God kveld';

  @override
  String get dashboardSubtitle => 'Her er oversikten over virksomheten din';

  @override
  String get dashboardOutstanding => 'Utestående';

  @override
  String get dashboardOverdue => 'Forfalt';

  @override
  String get dashboardThisMonth => 'Denne måneden';

  @override
  String get dashboardInvoices => 'fakturaer';

  @override
  String dashboardPaidCount(Object count) {
    return '$count betalt';
  }

  @override
  String get dashboardRecentInvoices => 'Nylige fakturaer';

  @override
  String get dashboardSeeAll => 'Se alle';

  @override
  String get dashboardNotifications => 'Varsler';

  @override
  String get dashboardNotificationsHint =>
      'Hold oversikt over kontantstrømmen ved å gå gjennom forfalte og ventende fakturaer jevnlig.';

  @override
  String get dashboardNewInvoice => 'Ny faktura';

  @override
  String get dashboardNoInvoicesYet => 'Ingen fakturaer ennå';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Opprett din første profesjonelle faktura på under 2 minutter';

  @override
  String get dashboardCreateInvoice => 'Opprett faktura';

  @override
  String get dashboardMarkPaid => 'Marker som betalt';

  @override
  String get dashboardDuePrefix => 'Forfaller ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days dager forfalt';
  }

  @override
  String get deleteInvoiceTitle => 'Slette fakturaen?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'Slett $invoiceNumber? Dette kan ikke angres.';
  }

  @override
  String get loginHeading => 'Velkommen tilbake';

  @override
  String get loginSubtitle => 'Logg inn på InvoiceFlow-kontoen din';

  @override
  String get loginEmailLabel => 'E-postadresse';

  @override
  String get loginEmailHint => 'deg@eksempel.no';

  @override
  String get loginEmailRequired => 'E-post er påkrevd';

  @override
  String get loginEmailInvalid => 'Angi en gyldig e-postadresse';

  @override
  String get loginPasswordLabel => 'Passord';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'Passord er påkrevd';

  @override
  String get loginPasswordMinLength => 'Passordet må være minst 6 tegn';

  @override
  String get loginForgotPassword => 'Glemt passord?';

  @override
  String get loginSignIn => 'Logg inn';

  @override
  String get loginOrContinueWith => 'eller fortsett med';

  @override
  String get loginContinueWithGoogle => 'Fortsett med Google';

  @override
  String get loginNoAccount => 'Har du ingen konto? ';

  @override
  String get loginSignUp => 'Registrer deg';

  @override
  String get loginResetPasswordTitle => 'Tilbakestill passord';

  @override
  String get loginResetPasswordMessage =>
      'Angi e-postadressen din, så sender vi deg en tilbakestillingslenke.';

  @override
  String get loginResetPasswordHint => 'deg@eksempel.no';

  @override
  String get loginResetLinkSent =>
      'Tilbakestillingslenke sendt! Sjekk e-posten din.';

  @override
  String get loginResetLinkFailed => 'Kunne ikke sende tilbakestillingslenken.';

  @override
  String get registerHeading => 'Opprett konto';

  @override
  String get registerSubtitle => 'Begynn å sende profesjonelle fakturaer i dag';

  @override
  String get registerNameLabel => 'Fullt navn';

  @override
  String get registerNameHint => 'Ola Nordmann';

  @override
  String get registerNameRequired => 'Navn er påkrevd';

  @override
  String get registerNameMinLength => 'Navnet må være minst 2 tegn';

  @override
  String get registerEmailLabel => 'E-postadresse';

  @override
  String get registerEmailHint => 'deg@eksempel.no';

  @override
  String get registerEmailRequired => 'E-post er påkrevd';

  @override
  String get registerEmailInvalid => 'Angi en gyldig e-postadresse';

  @override
  String get registerPasswordLabel => 'Passord';

  @override
  String get registerPasswordHint => 'Minst 6 tegn';

  @override
  String get registerPasswordRequired => 'Passord er påkrevd';

  @override
  String get registerPasswordMinLength => 'Passordet må være minst 6 tegn';

  @override
  String get registerConfirmPasswordLabel => 'Bekreft passord';

  @override
  String get registerConfirmPasswordHint => 'Gjenta passordet';

  @override
  String get registerConfirmPasswordRequired => 'Bekreft passordet ditt';

  @override
  String get registerPasswordsDoNotMatch => 'Passordene stemmer ikke overens';

  @override
  String get registerCreateAccount => 'Opprett konto';

  @override
  String get registerHaveAccount => 'Har du allerede en konto? ';

  @override
  String get registerSignIn => 'Logg inn';

  @override
  String get authTermsOfService => 'Tjenestevilkår';

  @override
  String get authPrivacyPolicy => 'Personvernpolicy';

  @override
  String get authAgreeRequired =>
      'Godta tjenestevilkårene og personvernpolicyen for å fortsette';

  @override
  String get loginAgreePrefix => 'Ved å fortsette godtar du våre ';

  @override
  String get registerAgreePrefix => 'Jeg godtar ';

  @override
  String get authAgreeAnd => ' og ';

  @override
  String get authTermsSheet =>
      'Disse tjenestevilkårene regulerer bruken din av InvoiceFlow. Ved å få tilgang til eller bruke appen godtar du å være bundet av disse vilkårene.\n\n1. Du er ansvarlig for nøyaktigheten av fakturaene, prisoverslagene og andre data du oppretter.\n2. Appen leveres \"som den er\", uten garantier av noe slag, verken uttrykte eller underforståtte.\n3. Vi er ikke ansvarlige for tap som oppstår som følge av din bruk av tjenesten.\n4. Du må ikke bruke appen til ulovlige eller forbudte formål.\n5. Vi kan oppdatere disse vilkårene fra tid til annen; fortsatt bruk av appen utgjør aksept av de oppdaterte vilkårene.';

  @override
  String get authPrivacySheet =>
      'Personvernet ditt betyr noe for oss.\n\n1. Datalagring: Fakturaene, kundene og innstillingene dine lagres lokalt på enheten din.\n2. Sky-synkronisering: Hvis du logger inn, synkroniseres dataene dine til kontoen din, slik at de er tilgjengelige på alle enhetene dine.\n3. Vi selger eller deler aldri personopplysningene dine.\n4. Analyse: Vi kan samle inn anonymiserte bruksdata for å hjelpe med å forbedre appen.\n5. Kontakt: For spørsmål om personvern, ta kontakt med support@invoiceflow.app.';

  @override
  String get authErrorWeakPassword => 'Passordet er for svakt';

  @override
  String get authErrorEmailAlreadyInUse => 'Kontoen finnes allerede';

  @override
  String get authErrorUserNotFound =>
      'Fant ingen bruker med denne e-postadressen';

  @override
  String get authErrorWrongPassword => 'Feil passord';

  @override
  String get authErrorInvalidEmail => 'Ugyldig e-postadresse';

  @override
  String get authErrorTooManyRequests => 'For mange forsøk. Prøv igjen senere';

  @override
  String get authErrorDefault => 'Autentisering mislyktes. Prøv igjen.';

  @override
  String get authErrorGoogleSignInFailed => 'Google-innlogging mislyktes.';

  @override
  String get invoiceListTitle => 'Fakturaer';

  @override
  String get invoiceListSearchHint => 'Søk i fakturaer...';

  @override
  String get invoiceListSortDate => 'Sorter etter dato';

  @override
  String get invoiceListSortAmount => 'Sorter etter beløp';

  @override
  String get invoiceListSortClient => 'Sorter etter kunde';

  @override
  String get invoiceListTabAll => 'Alle';

  @override
  String get invoiceListTabPaid => 'Betalt';

  @override
  String get invoiceListTabPending => 'Ventende';

  @override
  String get invoiceListTabOverdue => 'Forfalt';

  @override
  String get invoiceListTabDraft => 'Utkast';

  @override
  String get invoiceListEmpty => 'Fant ingen fakturaer';

  @override
  String get invoiceCreateTitle => 'Ny faktura';

  @override
  String get invoiceEditTitle => 'Rediger faktura';

  @override
  String get invoiceSaveDraft => 'Lagre utkast';

  @override
  String get invoiceStepClient => 'Kunde';

  @override
  String get invoiceStepItems => 'Artikler';

  @override
  String get invoiceStepReview => 'Gjennomgå';

  @override
  String get invoiceSelectClient => 'Velg en kunde';

  @override
  String get invoiceSelectClientSubtitle => 'Velg hvem fakturaen er for';

  @override
  String get invoiceSearchClients => 'Søk etter kunder...';

  @override
  String get invoiceAddNewClient => 'Legg til ny kunde';

  @override
  String get invoiceNoClientsFound => 'Fant ingen kunder';

  @override
  String get invoiceSelectClientEmptyHint =>
      'Opprett din første kunde for å begynne å lage fakturaer';

  @override
  String get invoiceAddLineItem => 'Legg til linjeartikkel';

  @override
  String get invoiceItemDescription => 'Beskrivelse';

  @override
  String get invoiceItemDescriptionHint => 'f.eks. Nettutvikling';

  @override
  String get invoiceItemQuickAdd => 'Hurtigtilføy:';

  @override
  String get invoiceItemQty => 'Antall';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Sats';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Legg til artikkel';

  @override
  String get invoiceLineItems => 'Linjeartikler';

  @override
  String get invoiceLineItemsSubtitle => 'Legg til tjenester eller produkter';

  @override
  String get invoiceNoItems =>
      'Ingen artikler ennå. Legg til din første artikkel.';

  @override
  String get invoiceTaxRate => 'MVA-sats (%)';

  @override
  String get invoiceSubtotal => 'Delsum';

  @override
  String invoiceTax(Object taxRate) {
    return 'MVA ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'TOTALT';

  @override
  String get invoiceReviewHeading => 'Gjennomgå og fullfør';

  @override
  String get invoiceReviewSubtitle =>
      'Angi datoer, legg til notater, logo og signatur';

  @override
  String get invoiceCompanyLogo => 'Firmalogo';

  @override
  String get invoiceAddLogo => 'Legg til logo';

  @override
  String get invoiceInvoiceDate => 'Fakturadato';

  @override
  String get invoiceDueDate => 'Forfallsdato';

  @override
  String get invoiceNotesLabel => 'Notater (valgfritt)';

  @override
  String get invoiceNotesHint => 'Takk for tilliten!';

  @override
  String get invoicePaymentTermsLabel => 'Betalingsbetingelser (valgfritt)';

  @override
  String get invoicePaymentTermsHint => 'Betaling innen 30 dager';

  @override
  String get invoiceSignatureLabel => 'Signatur';

  @override
  String get invoiceSignatureOverwrite =>
      'Eksisterende signatur er lagret. Tegn over for å erstatte.';

  @override
  String get invoiceCreatedSnackbar => 'Faktura opprettet!';

  @override
  String get invoiceUpdatedSnackbar => 'Faktura oppdatert!';

  @override
  String get invoiceDetailTitle => 'FAKTURA';

  @override
  String get invoiceDetailMarkAsPaid => 'Marker som betalt';

  @override
  String get invoiceDetailTotalAmount => 'Totalt beløp';

  @override
  String get invoiceDetailIssued => 'Utstedt';

  @override
  String get invoiceDetailDue => 'Forfaller';

  @override
  String get invoiceDetailPaid => 'Betalt';

  @override
  String get invoiceDetailBillTo => 'Fakturér til';

  @override
  String get invoiceDetailItems => 'Artikler';

  @override
  String get invoiceDetailNotes => 'Notater';

  @override
  String get invoiceDetailSignature => 'Signatur';

  @override
  String get invoiceDetailMarkedPaidSnackbar =>
      'Fakturaen er merket som betalt!';

  @override
  String get invoiceDetailPdfFailed => 'Kunne ikke generere PDF';

  @override
  String get clientListTitle => 'Kunder';

  @override
  String get clientListSearchHint => 'Søk etter kunder...';

  @override
  String get clientListTotalClients => 'Totalt antall kunder';

  @override
  String get clientListTotalBilled => 'Totalt fakturert';

  @override
  String get clientListEmptySearch => 'Fant ingen kunder';

  @override
  String get clientListEmpty => 'Ingen kunder ennå';

  @override
  String get clientListEmptySubtitle =>
      'Legg til din første kunde for å begynne å lage fakturaer';

  @override
  String get clientListAddClient => 'Legg til kunde';

  @override
  String get clientListTotalBilledLabel => 'totalt fakturert';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count faktura';
  }

  @override
  String get clientCreateTitle => 'Ny kunde';

  @override
  String get clientEditTitle => 'Rediger kunde';

  @override
  String get clientBasicInfo => 'Grunnleggende informasjon';

  @override
  String get clientNameLabel => 'Fullt navn *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'Navn er påkrevd';

  @override
  String get clientNameTooShort => 'Navnet er for kort';

  @override
  String get clientEmailLabel => 'E-postadresse *';

  @override
  String get clientEmailHint => 'fakturering@firma.no';

  @override
  String get clientEmailRequired => 'E-post er påkrevd';

  @override
  String get clientEmailInvalid => 'Angi en gyldig e-postadresse';

  @override
  String get clientPhoneLabel => 'Telefonnummer';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'Adresse';

  @override
  String get clientAddressLabel => 'Gateadresse';

  @override
  String get clientAddressHint => '123 Business Park, Kontor 45';

  @override
  String get clientCityLabel => 'By / Land';

  @override
  String get clientCityHint => 'Oslo, Norge';

  @override
  String get clientBillingDefaults => 'Standard fakturering';

  @override
  String get clientDefaultCurrency => 'Standardvaluta';

  @override
  String get clientDefaultTaxRate => 'Standard MVA-sats (VAT/GST)';

  @override
  String get clientVatLabel => 'VAT / skatteregistreringsnummer';

  @override
  String get clientVatHint => '123456789012345 (valgfritt)';

  @override
  String get clientUpdateButton => 'Oppdater kunde';

  @override
  String get clientAddButton => 'Legg til kunde';

  @override
  String get clientUpdatedSnackbar => 'Kunde oppdatert!';

  @override
  String get clientAddedSnackbar => 'Kunde lagt til!';

  @override
  String get clientDetailInvoices => 'Fakturaer';

  @override
  String get clientDetailTotalBilled => 'Totalt fakturert';

  @override
  String get clientDetailOutstanding => 'Utestående';

  @override
  String get clientDetailEdit => 'Rediger';

  @override
  String get clientDetailNewInvoice => 'Ny faktura';

  @override
  String get clientDetailEmailClient => 'Send e-post til kunden';

  @override
  String get clientDetailClientDetails => 'Kundeopplysninger';

  @override
  String get clientDetailEmail => 'E-post';

  @override
  String get clientDetailPhone => 'Telefon';

  @override
  String get clientDetailAddress => 'Adresse';

  @override
  String get clientDetailCity => 'By';

  @override
  String get clientDetailCurrency => 'Valuta';

  @override
  String get clientDetailTaxRate => 'MVA-sats';

  @override
  String get clientDetailVatNumber => 'VAT-nummer';

  @override
  String get clientDetailInvoiceHistory => 'Fakturahistorikk';

  @override
  String get clientDetailNoInvoices => 'Ingen fakturaer ennå for denne kunden';

  @override
  String get deleteClientTitle => 'Slette kunden?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'Slett $clientName? Dette kan ikke angres.';
  }

  @override
  String get settingsTitle => 'Innstillinger';

  @override
  String get settingsYourName => 'Navnet ditt';

  @override
  String get settingsBackupTitle => 'Sikkerhetskopier fakturaene dine';

  @override
  String get settingsBackupDescription =>
      'Logg inn for å synkronisere dataene dine sikkert og få tilgang til dem hvor som helst.';

  @override
  String get settingsSignInRegister => 'Logg inn eller registrer deg';

  @override
  String get settingsProUpsell =>
      'Oppgrader til Pro for ubegrensede fakturaer, skysynk og ingen vannmerker.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'Du har nådd grensen på $limit fakturaer i gratisplanen. Oppgrader til Pro for ubegrensede fakturaer og skysynk.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'Du har nådd grensen på $limit kunder i gratisplanen. Oppgrader til Pro for ubegrensede kunder og skysynk.';
  }

  @override
  String get settingsUpgradePro => 'Oppgrader';

  @override
  String get settingsBusinessSection => 'FORRETNINGSINNSTILLINGER';

  @override
  String get settingsBusinessDetails => 'Forretningsdetaljer';

  @override
  String get settingsBusinessDetailsSubtitle => 'Angi firmanavnet ditt';

  @override
  String get settingsInvoicePrefix => 'Fakturaprefiks';

  @override
  String get settingsDefaultCurrency => 'Standardvaluta';

  @override
  String get settingsAppSection => 'APPINNSTILLINGER';

  @override
  String get settingsDarkMode => 'Mørk modus';

  @override
  String get settingsDailyNotification => 'Daglig varsel';

  @override
  String get settingsDailyNotificationNotSet => 'Ikke angitt';

  @override
  String get settingsLanguage => 'Språk';

  @override
  String get settingsLanguageLabel => 'Norsk';

  @override
  String get languageEnglish => 'Engelsk';

  @override
  String get languageArabic => 'Arabisk';

  @override
  String get languageFrench => 'Fransk';

  @override
  String get languageSpanish => 'Spansk';

  @override
  String get languageUrdu => 'Urdu';

  @override
  String get languageChinese => 'Kinesisk';

  @override
  String get settingsAboutSection => 'OM';

  @override
  String get settingsRateApp => 'Vurder appen';

  @override
  String get settingsHelpSupport => 'Hjelp og støtte';

  @override
  String get settingsPrivacyPolicy => 'Personvernpolicy';

  @override
  String get settingsHelpSupportSheet =>
      'Trenger du hjelp? Kontakt support@invoiceflow.app, så svarer vi innen 24 timer.';

  @override
  String get settingsPrivacySheet =>
      'Dataene dine lagres lokalt på enheten din. Vi selger eller deler aldri din personlige informasjon.';

  @override
  String get settingsVersion => 'Versjon';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Logg ut';

  @override
  String get settingsEditProfile => 'Rediger profil';

  @override
  String get settingsProfileNameLabel => 'Fullt navn';

  @override
  String get settingsProfileNameHint => 'Navnet ditt';

  @override
  String get settingsBusinessNameLabel => 'Firmanavn';

  @override
  String get settingsBusinessNameHint => 'Ditt Firma AS';

  @override
  String get settingsBusinessEmailLabel => 'Forretnings-e-post';

  @override
  String get settingsBusinessEmailHint => 'fakturering@firma.no';

  @override
  String get settingsPhoneLabel => 'Telefon';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'Adresse';

  @override
  String get settingsAddressHint => 'Oslo, Norge';

  @override
  String get settingsBusinessDetailsSaved => 'Forretningsdetaljene ble lagret!';

  @override
  String get settingsInvoicePrefixTitle => 'Prefiks for fakturanummer';

  @override
  String get settingsInvoicePrefixHint => 'f.eks. INV-, #, Fakta-';

  @override
  String get settingsPrefixSaved => 'Fakturaprefiks lagret';

  @override
  String get settingsNotificationScheduled => 'Daglig varsel planlagt!';

  @override
  String get settingsSignOutTitle => 'Logge ut?';

  @override
  String get settingsSignOutMessage =>
      'Er du sikker på at du vil logge ut av InvoiceFlow?';

  @override
  String get settingsSignedOut => 'Utloggingen var vellykket.';

  @override
  String get statusPaid => 'Betalt';

  @override
  String get statusOverdue => 'Forfalt';

  @override
  String get statusPending => 'Ventende';

  @override
  String get statusDraft => 'Utkast';

  @override
  String get statusCancelled => 'Kansellert';

  @override
  String get notificationChannelName => 'Daglige påminnelser';

  @override
  String get notificationChannelDescription =>
      'Påminner deg om å sjekke fakturaene dine daglig';

  @override
  String get notificationTitle => 'Fakturapåminnelse';

  @override
  String get notificationBody =>
      'På tide å sjekke de nyeste fakturaene dine og følge opp ventende betalinger.';

  @override
  String get pdfInvoice => 'FAKTURA';

  @override
  String get pdfInvoiceNumber => 'Faktura nr.:';

  @override
  String get pdfDate => 'Dato:';

  @override
  String get pdfDueDate => 'Forfallsdato:';

  @override
  String get pdfBillTo => 'FAKTURÉR TIL:';

  @override
  String get pdfDescription => 'Beskrivelse';

  @override
  String get pdfQty => 'Ant.';

  @override
  String get pdfRate => 'Sats';

  @override
  String get pdfAmount => 'Beløp';

  @override
  String get pdfSubtotal => 'Delsum:';

  @override
  String pdfTax(Object taxRate) {
    return 'MVA ($taxRate%):';
  }

  @override
  String get pdfTotal => 'TOTALT:';

  @override
  String get pdfSignature => 'Signatur:';

  @override
  String get pdfNotes => 'Notater:';

  @override
  String get pdfPaymentTerms => 'Betalingsbetingelser:';

  @override
  String get pdfThankYou => 'Takk for tilliten!';

  @override
  String get quickAddWebDesign => 'Webdesign';

  @override
  String get quickAddDevelopment => 'Utvikling';

  @override
  String get quickAddConsulting => 'Konsulenttjenester';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Innholdsskriving';

  @override
  String get paywallTitle => 'Lås opp InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'Gå ubegrenset og synkroniser overalt. Avslutt når som helst.';

  @override
  String get paywallFeatureUnlimited => 'Ubegrensede fakturaer og kunder';

  @override
  String get paywallFeatureSync => 'Skysynk på tvers av enheter';

  @override
  String get paywallFeatureNoWatermark => 'Ingen vannmerker, noensinne';

  @override
  String get paywallMonthly => 'Månedlig';

  @override
  String get paywallMonthlySub => 'Faktureres månedlig';

  @override
  String get paywallYearly => 'Årlig';

  @override
  String get paywallYearlySub => 'Beste verdi — 2 måneder gratis';

  @override
  String get paywallRestore => 'Gjenopprett kjøp';

  @override
  String get paywallTerms =>
      'Abonnementer fornyes automatisk. Administrer i appbutikkens innstillinger.';

  @override
  String get purchaseSuccessTitle => 'Du er Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'Ubegrensede fakturaer, skysynk og ingen vannmerker er nå låst opp. Takk!';

  @override
  String get purchaseSuccessContinue => 'Fortsett';

  @override
  String get paywallLoading => 'Laster inn planer…';

  @override
  String get paywallLoadError =>
      'Kunne ikke laste inn planene. Sjekk tilkoblingen og prøv igjen.';

  @override
  String get paywallNoOffering =>
      'Det er ingen tilgjengelige planer akkurat nå.';

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
  String get purchaseRestored => 'Kjøpene ble gjenopprettet';

  @override
  String get purchaseErrorGeneric => 'Kjøpet mislyktes. Prøv igjen.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro er aktivt — ubegrensede fakturaer og kunder uten vannmerker';

  @override
  String get settingsFreePlan => 'Gratis plan';

  @override
  String get settingsFreeHint =>
      'Oppgrader for ubegrensede fakturaer, sky-synkronisering og mer';

  @override
  String get settingsUpgradeToPro => 'Oppgrader til Pro';

  @override
  String get settingsManageSubscription => 'Administrer abonnement';

  @override
  String get customerCenterFailed =>
      'Kunne ikke åpne abonnementsadministrasjonen.';

  @override
  String get onboardingSkip => 'Hopp over';

  @override
  String get onboardingNext => 'Neste';

  @override
  String get onboardingGetStarted => 'Kom i gang';

  @override
  String get onboardingWelcomeTitle => 'Fakturaer på 2 minutter';

  @override
  String get onboardingWelcomeBody =>
      'Opprett profesjonelle PDF-fakturaer for kundene dine — raskt og elegant.';

  @override
  String get onboardingSyncTitle => 'Synkroniser overalt';

  @override
  String get onboardingSyncBody =>
      'Logg inn for å sikkerhetskopiere dataene dine sikkert til skyen og få tilgang til dem fra hvilken som helst enhet.';

  @override
  String get onboardingProTitle => 'Gå ubegrenset med Pro';

  @override
  String get onboardingProBody =>
      'Lås opp ubegrensede fakturaer, skysynk og fjern vannmerker med InvoiceFlow Pro.';

  @override
  String get settingsAccentColor => 'Aksentfarge';

  @override
  String get settingsAccentColorHint => 'Tilpass appen med en farge du velger.';

  @override
  String get settingsCountry => 'Land';

  @override
  String get settingsTaxId => 'Skatteregistreringsnummer';

  @override
  String get settingsTaxIdNotSet => 'Ikke angitt';

  @override
  String get settingsTaxIdHint => 'f.eks. 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Skatteregistreringsnummer lagret';

  @override
  String get catalogTitle => 'Produkter og tjenester';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count varer',
      one: '$count vare',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'Ingen produkter ennå';

  @override
  String get catalogEmptySubtitle =>
      'Lagre gjenbrukbare produkter og tjenester for å legge dem til i fakturaer raskere.';

  @override
  String get catalogFromSaved => 'Fra katalogen din';

  @override
  String get catalogSaveToCatalog => 'Lagre i katalogen for gjenbruk';

  @override
  String get catalogAddSnackbar => 'Lagt til i katalogen';

  @override
  String get catalogDeleteTitle => 'Slette element?';

  @override
  String catalogDeleteMessage(String description) {
    return 'Slett \"$description\"? Dette kan ikke angres.';
  }

  @override
  String get commonDone => 'Ferdig';

  @override
  String get estimateListTitle => 'Tilbud';

  @override
  String get estimateListSearchHint => 'Søk i tilbud…';

  @override
  String get estimateListEmpty => 'Ingen tilbud ennå';

  @override
  String get estimateListTabAll => 'Alle';

  @override
  String get estimateListTabDraft => 'Utkast';

  @override
  String get estimateListTabSent => 'Sendt';

  @override
  String get estimateListTabAccepted => 'Akseptert';

  @override
  String get estimateListTabExpired => 'Utløpt';

  @override
  String get estimateCreateTitle => 'Nytt tilbud';

  @override
  String get estimateEditTitle => 'Rediger tilbud';

  @override
  String get estimateCreatedSnackbar => 'Tilbudet ble lagret';

  @override
  String get estimateUpdatedSnackbar => 'Tilbudet ble oppdatert';

  @override
  String get estimateIssueDate => 'Utstedelsesdato';

  @override
  String get estimateExpiryDate => 'Utløpsdato';

  @override
  String get estimateExpiresPrefix => 'Utløper ';

  @override
  String get estimateConvertToInvoice => 'Konverter til faktura';

  @override
  String get estimateConvertedSnackbar => 'Tilbudet ble konvertert til faktura';

  @override
  String get estimateConvertFailed => 'Kunne ikke konvertere tilbudet';

  @override
  String get estimateMarkSent => 'Marker som sendt';

  @override
  String get estimateMarkAccepted => 'Marker som akseptert';

  @override
  String get estimateMarkDeclined => 'Marker som avslått';

  @override
  String get estimateConvertedTitle => 'Konvertert';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'Konvertert til faktura $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'TILBUDSTOTAL';

  @override
  String get estimateStatusSent => 'Sendt';

  @override
  String get estimateStatusAccepted => 'Akseptert';

  @override
  String get estimateStatusDeclined => 'Avslått';

  @override
  String get estimateStatusExpired => 'Utløpt';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count åpne',
      one: '1 åpen',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'Slette tilbudet?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'Slett \"$estimateNumber\"? Dette kan ikke angres.';
  }

  @override
  String get estimatePdfFailed => 'Kunne ikke generere PDF';

  @override
  String get pdfEstimate => 'TILBUD';

  @override
  String get pdfEstimateNumber => 'Tilbud nr.:';

  @override
  String get pdfValidUntil => 'Gyldig til:';

  @override
  String get invoiceDetailPaymentTerms => 'Betalingsbetingelser';

  @override
  String get recurringListTitle => 'Gjentakende fakturaer';

  @override
  String get recurringListEmpty => 'Ingen gjentakende fakturaer ennå';

  @override
  String get recurringListEmptySubtitle =>
      'Sett opp automatiske fakturaer for faste kunder og tjenester.';

  @override
  String get recurringCreateTitle => 'Ny gjentakende';

  @override
  String get recurringEditTitle => 'Rediger gjentakende';

  @override
  String get recurringCreatedSnackbar => 'Gjentakende faktura lagret';

  @override
  String get recurringUpdatedSnackbar => 'Gjentakende faktura oppdatert';

  @override
  String get recurringDeleteTitle => 'Slette den gjentakende fakturaen?';

  @override
  String recurringDeleteMessage(String title) {
    return 'Slett \"$title\"? Eksisterende fakturaer blir ikke fjernet.';
  }

  @override
  String get recurringTitleLabel => 'Tittel';

  @override
  String get recurringTitleHint => 'f.eks. Månedlig honorar';

  @override
  String get recurringClientLabel => 'Kunde';

  @override
  String get recurringFrequencyLabel => 'Frekvens';

  @override
  String get recurringFrequencyWeekly => 'Ukentlig';

  @override
  String get recurringFrequencyBiweekly => 'Annenhver uke';

  @override
  String get recurringFrequencyMonthly => 'Månedlig';

  @override
  String get recurringFrequencyQuarterly => 'Kvartalsvis';

  @override
  String get recurringFrequencyYearly => 'Årlig';

  @override
  String get recurringNextRun => 'Neste kjøring';

  @override
  String get recurringDueDays => 'Forfaller om';

  @override
  String get recurringDays => 'dager';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aktive',
      one: '1 aktiv',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'Rapporter';

  @override
  String get reportsSubtitle => 'Bedriftsanalyse';

  @override
  String get reportsEmpty => 'Opprett fakturaer for å se rapporter';

  @override
  String get reportsCollected => 'Innkrevd';

  @override
  String get reportsOutstanding => 'Utestående';

  @override
  String get reportsMonthlyRevenue => 'Månedlig omsetning';

  @override
  String get reportsLast6Months => 'Siste 6 måneder';

  @override
  String get reportsByStatus => 'Etter status';

  @override
  String get reportsTopClients => 'Toppkunder';

  @override
  String get paymentLinkTitle => 'Betalingslenke';

  @override
  String get paymentLinkNotSet =>
      'Ingen betalingslenke angitt i innstillingene';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'Betalingslenken din er inkludert i fakturaens PDF og kan kopieres fra fakturaens meny.';

  @override
  String get paymentLinkSaved => 'Betalingslenken ble lagret';

  @override
  String get settingsPaymentLinkNotSet => 'Ikke angitt';

  @override
  String get invoiceDetailCopyPaymentLink => 'Kopier betalingslenke';

  @override
  String get paymentLinkCopied => 'Betalingslenken ble kopiert';

  @override
  String get pdfPayOnline => 'Betal på nett';

  @override
  String get exportXml => 'Eksporter XML';

  @override
  String get exportXmlFailed => 'Kunne ikke eksportere XML';
}
