// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Professionele facturen in 2 minuten';

  @override
  String get bottomNavDashboard => 'Dashboard';

  @override
  String get bottomNavInvoices => 'Facturen';

  @override
  String get bottomNavClients => 'Klanten';

  @override
  String get bottomNavSettings => 'Instellingen';

  @override
  String get commonCancel => 'Annuleren';

  @override
  String get commonDelete => 'Verwijderen';

  @override
  String get commonSave => 'Opslaan';

  @override
  String get commonSearch => 'Zoeken';

  @override
  String get commonBack => 'Terug';

  @override
  String get commonContinue => 'Doorgaan';

  @override
  String get commonAdd => 'Toevoegen';

  @override
  String get commonEdit => 'Bewerken';

  @override
  String get commonCreate => 'Maken';

  @override
  String get commonClear => 'Wissen';

  @override
  String get commonView => 'Bekijken';

  @override
  String get commonShare => 'Delen';

  @override
  String get commonExportPdf => 'PDF exporteren';

  @override
  String get commonSharePdf => 'PDF delen';

  @override
  String get commonSaveChanges => 'Wijzigingen opslaan';

  @override
  String get commonRequired => 'Verplicht';

  @override
  String get commonInvalid => 'Ongeldig';

  @override
  String get commonSendLink => 'Link verzenden';

  @override
  String get commonGeneratingPdf => 'PDF genereren...';

  @override
  String get dashboardGreetingMorning => 'Goedemorgen';

  @override
  String get dashboardGreetingAfternoon => 'Goedemiddag';

  @override
  String get dashboardGreetingEvening => 'Goedenavond';

  @override
  String get dashboardSubtitle => 'Hier is uw bedrijfsoverzicht';

  @override
  String get dashboardOutstanding => 'Openstaand';

  @override
  String get dashboardOverdue => 'Achterstallig';

  @override
  String get dashboardThisMonth => 'Deze maand';

  @override
  String get dashboardInvoices => 'facturen';

  @override
  String dashboardPaidCount(Object count) {
    return '$count betaald';
  }

  @override
  String get dashboardRecentInvoices => 'Recente facturen';

  @override
  String get dashboardSeeAll => 'Alles bekijken';

  @override
  String get dashboardNotifications => 'Meldingen';

  @override
  String get dashboardNotificationsHint =>
      'Houd uw cashflow in de gaten door achterstallige en openstaande facturen regelmatig te controleren.';

  @override
  String get dashboardNewInvoice => 'Nieuwe factuur';

  @override
  String get dashboardNoInvoicesYet => 'Nog geen facturen';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Maak uw eerste professionele factuur in minder dan 2 minuten';

  @override
  String get dashboardCreateInvoice => 'Factuur maken';

  @override
  String get dashboardMarkPaid => 'Markeer als betaald';

  @override
  String get dashboardDuePrefix => 'Vervalt ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days dagen te laat';
  }

  @override
  String get deleteInvoiceTitle => 'Factuur verwijderen?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return '$invoiceNumber verwijderen? Dit kan niet ongedaan worden gemaakt.';
  }

  @override
  String get loginHeading => 'Welkom terug';

  @override
  String get loginSubtitle => 'Log in op uw InvoiceFlow-account';

  @override
  String get loginEmailLabel => 'E-mailadres';

  @override
  String get loginEmailHint => 'u@voorbeeld.nl';

  @override
  String get loginEmailRequired => 'E-mail is verplicht';

  @override
  String get loginEmailInvalid => 'Voer een geldig e-mailadres in';

  @override
  String get loginPasswordLabel => 'Wachtwoord';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'Wachtwoord is verplicht';

  @override
  String get loginPasswordMinLength =>
      'Het wachtwoord moet minimaal 6 tekens bevatten';

  @override
  String get loginForgotPassword => 'Wachtwoord vergeten?';

  @override
  String get loginSignIn => 'Inloggen';

  @override
  String get loginOrContinueWith => 'of ga verder met';

  @override
  String get loginContinueWithGoogle => 'Doorgaan met Google';

  @override
  String get loginNoAccount => 'Nog geen account? ';

  @override
  String get loginSignUp => 'Aanmelden';

  @override
  String get loginResetPasswordTitle => 'Wachtwoord opnieuw instellen';

  @override
  String get loginResetPasswordMessage =>
      'Voer uw e-mailadres in en we sturen u een reset-link.';

  @override
  String get loginResetPasswordHint => 'u@voorbeeld.nl';

  @override
  String get loginResetLinkSent =>
      'Reset-link verzonden! Controleer uw e-mail.';

  @override
  String get loginResetLinkFailed => 'De reset-link kon niet worden verzonden.';

  @override
  String get registerHeading => 'Account aanmaken';

  @override
  String get registerSubtitle =>
      'Begin vandaag nog met het verzenden van professionele facturen';

  @override
  String get registerNameLabel => 'Volledige naam';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => 'Naam is verplicht';

  @override
  String get registerNameMinLength => 'De naam moet minimaal 2 tekens bevatten';

  @override
  String get registerEmailLabel => 'E-mailadres';

  @override
  String get registerEmailHint => 'u@voorbeeld.nl';

  @override
  String get registerEmailRequired => 'E-mail is verplicht';

  @override
  String get registerEmailInvalid => 'Voer een geldig e-mailadres in';

  @override
  String get registerPasswordLabel => 'Wachtwoord';

  @override
  String get registerPasswordHint => 'Minimaal 6 tekens';

  @override
  String get registerPasswordRequired => 'Wachtwoord is verplicht';

  @override
  String get registerPasswordMinLength =>
      'Het wachtwoord moet minimaal 6 tekens bevatten';

  @override
  String get registerConfirmPasswordLabel => 'Wachtwoord bevestigen';

  @override
  String get registerConfirmPasswordHint => 'Herhaal uw wachtwoord';

  @override
  String get registerConfirmPasswordRequired => 'Bevestig uw wachtwoord';

  @override
  String get registerPasswordsDoNotMatch => 'Wachtwoorden komen niet overeen';

  @override
  String get registerCreateAccount => 'Account aanmaken';

  @override
  String get registerHaveAccount => 'Heeft u al een account? ';

  @override
  String get registerSignIn => 'Inloggen';

  @override
  String get authTermsOfService => 'Servicevoorwaarden';

  @override
  String get authPrivacyPolicy => 'Privacybeleid';

  @override
  String get authAgreeRequired =>
      'Ga akkoord met de servicevoorwaarden en het privacybeleid om door te gaan';

  @override
  String get loginAgreePrefix => 'Door verder te gaan accepteer je onze ';

  @override
  String get registerAgreePrefix => 'Ik ga akkoord met de ';

  @override
  String get authAgreeAnd => ' en de ';

  @override
  String get authTermsSheet =>
      'Deze servicevoorwaarden regelen het gebruik van InvoiceFlow. Door toegang te krijgen tot de app of de app te gebruiken ga je akkoord met deze voorwaarden.\n\n1. Je bent verantwoordelijk voor de juistheid van de facturen, offertes en andere gegevens die je maakt.\n2. De app wordt \"as is\" geleverd, zonder enige garantie, expliciet of impliciet.\n3. We zijn niet aansprakelijk voor verliezen die voortvloeien uit jouw gebruik van de service.\n4. Je mag de app niet gebruiken voor illegale of verboden doeleinden.\n5. We kunnen deze voorwaarden van tijd tot tijd bijwerken; het blijven gebruiken van de app geldt als acceptatie van de bijgewerkte voorwaarden.';

  @override
  String get authPrivacySheet =>
      'Jouw privacy is belangrijk voor ons.\n\n1. Gegevensopslag: je facturen, klanten en instellingen worden lokaal op je apparaat opgeslagen.\n2. Cloud-synchronisatie: als je inlogt, worden je gegevens gesynchroniseerd met je account, zodat ze op al je apparaten toegankelijk zijn.\n3. We verkopen of delen je persoonlijke gegevens nooit.\n4. Analyses: we kunnen geanonimiseerde gebruiksgegevens verzamelen om de app te verbeteren.\n5. Contact: neem voor privacyvragen contact op via support@invoiceflow.app.';

  @override
  String get authErrorWeakPassword => 'Het wachtwoord is te zwak';

  @override
  String get authErrorEmailAlreadyInUse => 'Account bestaat al';

  @override
  String get authErrorUserNotFound =>
      'Geen gebruiker gevonden met dit e-mailadres';

  @override
  String get authErrorWrongPassword => 'Onjuist wachtwoord';

  @override
  String get authErrorInvalidEmail => 'Ongeldig e-mailadres';

  @override
  String get authErrorTooManyRequests =>
      'Te veel pogingen. Probeer het later opnieuw.';

  @override
  String get authErrorDefault => 'Authenticatie mislukt. Probeer het opnieuw.';

  @override
  String get authErrorGoogleSignInFailed => 'Inloggen met Google mislukt.';

  @override
  String get invoiceListTitle => 'Facturen';

  @override
  String get invoiceListSearchHint => 'Facturen zoeken...';

  @override
  String get invoiceListSortDate => 'Sorteren op datum';

  @override
  String get invoiceListSortAmount => 'Sorteren op bedrag';

  @override
  String get invoiceListSortClient => 'Sorteren op klant';

  @override
  String get invoiceListTabAll => 'Alle';

  @override
  String get invoiceListTabPaid => 'Betaald';

  @override
  String get invoiceListTabPending => 'In afwachting';

  @override
  String get invoiceListTabOverdue => 'Achterstallig';

  @override
  String get invoiceListTabDraft => 'Concept';

  @override
  String get invoiceListEmpty => 'Geen facturen gevonden';

  @override
  String get invoiceCreateTitle => 'Nieuwe factuur';

  @override
  String get invoiceEditTitle => 'Factuur bewerken';

  @override
  String get invoiceSaveDraft => 'Concept opslaan';

  @override
  String get invoiceStepClient => 'Klant';

  @override
  String get invoiceStepItems => 'Artikelen';

  @override
  String get invoiceStepReview => 'Controleren';

  @override
  String get invoiceSelectClient => 'Selecteer een klant';

  @override
  String get invoiceSelectClientSubtitle => 'Kies voor wie deze factuur is';

  @override
  String get invoiceSearchClients => 'Klanten zoeken...';

  @override
  String get invoiceAddNewClient => 'Nieuwe klant toevoegen';

  @override
  String get invoiceNoClientsFound => 'Geen klanten gevonden';

  @override
  String get invoiceSelectClientEmptyHint =>
      'Maak uw eerste klant aan om te beginnen met het maken van facturen';

  @override
  String get invoiceAddLineItem => 'Regel toevoegen';

  @override
  String get invoiceItemDescription => 'Beschrijving';

  @override
  String get invoiceItemDescriptionHint => 'bijv. Webontwikkeling';

  @override
  String get invoiceItemQuickAdd => 'Snel toevoegen:';

  @override
  String get invoiceItemQty => 'Aantal';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Tarief';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Artikel toevoegen';

  @override
  String get invoiceLineItems => 'Regels';

  @override
  String get invoiceLineItemsSubtitle => 'Voeg diensten of producten toe';

  @override
  String get invoiceNoItems =>
      'Nog geen artikelen. Voeg uw eerste artikel toe.';

  @override
  String get invoiceTaxRate => 'Belastingtarief (%)';

  @override
  String get invoiceSubtotal => 'Subtotaal';

  @override
  String invoiceTax(Object taxRate) {
    return 'Belasting ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'TOTAAL';

  @override
  String get invoiceReviewHeading => 'Controleren en afronden';

  @override
  String get invoiceReviewSubtitle =>
      'Stel datums in en voeg notities, logo en handtekening toe';

  @override
  String get invoiceCompanyLogo => 'Bedrijfslogo';

  @override
  String get invoiceAddLogo => 'Logo toevoegen';

  @override
  String get invoiceInvoiceDate => 'Factuurdatum';

  @override
  String get invoiceDueDate => 'Vervaldatum';

  @override
  String get invoiceNotesLabel => 'Notities (optioneel)';

  @override
  String get invoiceNotesHint => 'Bedankt voor uw vertrouwen!';

  @override
  String get invoicePaymentTermsLabel => 'Betaalvoorwaarden (optioneel)';

  @override
  String get invoicePaymentTermsHint => 'Betaling binnen 30 dagen';

  @override
  String get invoiceSignatureLabel => 'Handtekening';

  @override
  String get invoiceSignatureOverwrite =>
      'Bestaande handtekening opgeslagen. Teken hierboven om te overschrijven.';

  @override
  String get invoiceCreatedSnackbar => 'Factuur aangemaakt!';

  @override
  String get invoiceUpdatedSnackbar => 'Factuur bijgewerkt!';

  @override
  String get invoiceDetailTitle => 'FACTUUR';

  @override
  String get invoiceDetailMarkAsPaid => 'Markeer als betaald';

  @override
  String get invoiceDetailTotalAmount => 'Totaalbedrag';

  @override
  String get invoiceDetailIssued => 'Uitgegeven';

  @override
  String get invoiceDetailDue => 'Vervaldatum';

  @override
  String get invoiceDetailPaid => 'Betaald';

  @override
  String get invoiceDetailBillTo => 'Factuur aan';

  @override
  String get invoiceDetailItems => 'Artikelen';

  @override
  String get invoiceDetailNotes => 'Notities';

  @override
  String get invoiceDetailSignature => 'Handtekening';

  @override
  String get invoiceDetailMarkedPaidSnackbar =>
      'Factuur gemarkeerd als betaald!';

  @override
  String get invoiceDetailPdfFailed => 'PDF genereren mislukt';

  @override
  String get clientListTitle => 'Klanten';

  @override
  String get clientListSearchHint => 'Klanten zoeken...';

  @override
  String get clientListTotalClients => 'Totaal klanten';

  @override
  String get clientListTotalBilled => 'Totaal gefactureerd';

  @override
  String get clientListEmptySearch => 'Geen klanten gevonden';

  @override
  String get clientListEmpty => 'Nog geen klanten';

  @override
  String get clientListEmptySubtitle =>
      'Voeg uw eerste klant toe om te beginnen met het maken van facturen';

  @override
  String get clientListAddClient => 'Klant toevoegen';

  @override
  String get clientListTotalBilledLabel => 'totaal gefactureerd';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count factuur';
  }

  @override
  String get clientCreateTitle => 'Nieuwe klant';

  @override
  String get clientEditTitle => 'Klant bewerken';

  @override
  String get clientBasicInfo => 'Basisgegevens';

  @override
  String get clientNameLabel => 'Volledige naam *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'Naam is verplicht';

  @override
  String get clientNameTooShort => 'Naam te kort';

  @override
  String get clientEmailLabel => 'E-mailadres *';

  @override
  String get clientEmailHint => 'facturatie@bedrijf.nl';

  @override
  String get clientEmailRequired => 'E-mail is verplicht';

  @override
  String get clientEmailInvalid => 'Voer een geldig e-mailadres in';

  @override
  String get clientPhoneLabel => 'Telefoonnummer';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'Adres';

  @override
  String get clientAddressLabel => 'Straat';

  @override
  String get clientAddressHint => '123 Business Park, Kantoor 45';

  @override
  String get clientCityLabel => 'Stad / Land';

  @override
  String get clientCityHint => 'Dubai, Verenigde Arabische Emiraten';

  @override
  String get clientBillingDefaults => 'Facturatiestandaarden';

  @override
  String get clientDefaultCurrency => 'Standaardvaluta';

  @override
  String get clientDefaultTaxRate => 'Standaard belastingtarief (VAT/GST)';

  @override
  String get clientVatLabel => 'VAT / Belastingnummer';

  @override
  String get clientVatHint => '123456789012345 (optioneel)';

  @override
  String get clientUpdateButton => 'Klant bijwerken';

  @override
  String get clientAddButton => 'Klant toevoegen';

  @override
  String get clientUpdatedSnackbar => 'Klant bijgewerkt!';

  @override
  String get clientAddedSnackbar => 'Klant toegevoegd!';

  @override
  String get clientDetailInvoices => 'Facturen';

  @override
  String get clientDetailTotalBilled => 'Totaal gefactureerd';

  @override
  String get clientDetailOutstanding => 'Openstaand';

  @override
  String get clientDetailEdit => 'Bewerken';

  @override
  String get clientDetailNewInvoice => 'Nieuwe factuur';

  @override
  String get clientDetailEmailClient => 'Klant e-mailen';

  @override
  String get clientDetailClientDetails => 'Klantgegevens';

  @override
  String get clientDetailEmail => 'E-mail';

  @override
  String get clientDetailPhone => 'Telefoon';

  @override
  String get clientDetailAddress => 'Adres';

  @override
  String get clientDetailCity => 'Stad';

  @override
  String get clientDetailCurrency => 'Valuta';

  @override
  String get clientDetailTaxRate => 'Belastingtarief';

  @override
  String get clientDetailVatNumber => 'VAT-nummer';

  @override
  String get clientDetailInvoiceHistory => 'Factuurgeschiedenis';

  @override
  String get clientDetailNoInvoices => 'Nog geen facturen voor deze klant';

  @override
  String get deleteClientTitle => 'Klant verwijderen?';

  @override
  String deleteClientMessage(Object clientName) {
    return '$clientName verwijderen? Dit kan niet ongedaan worden gemaakt.';
  }

  @override
  String get settingsTitle => 'Instellingen';

  @override
  String get settingsYourName => 'Uw naam';

  @override
  String get settingsBackupTitle => 'Maak een back-up van uw facturen';

  @override
  String get settingsBackupDescription =>
      'Log in om uw gegevens veilig te synchroniseren en overal toegankelijk te maken.';

  @override
  String get settingsSignInRegister => 'Inloggen of aanmelden';

  @override
  String get settingsProUpsell =>
      'Upgrade naar Pro voor onbeperkte facturen, cloud-sync en geen watermerken.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'U hebt de limiet van het gratis abonnement van $limit facturen bereikt. Upgrade naar Pro voor onbeperkte facturen en cloud-sync.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'U hebt de limiet van het gratis abonnement van $limit klanten bereikt. Upgrade naar Pro voor onbeperkte klanten en cloud-sync.';
  }

  @override
  String get settingsUpgradePro => 'Upgraden';

  @override
  String get settingsBusinessSection => 'BEDRIJFSINSTELLINGEN';

  @override
  String get settingsBusinessDetails => 'Bedrijfsgegevens';

  @override
  String get settingsBusinessDetailsSubtitle => 'Stel uw bedrijfsnaam in';

  @override
  String get settingsInvoicePrefix => 'Factuurprefix';

  @override
  String get settingsDefaultCurrency => 'Standaardvaluta';

  @override
  String get settingsAppSection => 'APP-INSTELLINGEN';

  @override
  String get settingsDarkMode => 'Donkere modus';

  @override
  String get settingsDailyNotification => 'Dagelijkse melding';

  @override
  String get settingsDailyNotificationNotSet => 'Niet ingesteld';

  @override
  String get settingsLanguage => 'Taal';

  @override
  String get settingsLanguageLabel => 'Nederlands';

  @override
  String get languageEnglish => 'Engels';

  @override
  String get languageArabic => 'Arabisch';

  @override
  String get languageFrench => 'Frans';

  @override
  String get languageSpanish => 'Spaans';

  @override
  String get languageUrdu => 'Urdu';

  @override
  String get languageChinese => 'Chinees';

  @override
  String get settingsAboutSection => 'OVER';

  @override
  String get settingsRateApp => 'Beoordeel de app';

  @override
  String get settingsHelpSupport => 'Help & ondersteuning';

  @override
  String get settingsPrivacyPolicy => 'Privacybeleid';

  @override
  String get settingsHelpSupportSheet =>
      'Hulp nodig? Neem contact op via support@invoiceflow.app en we nemen binnen 24 uur contact met u op.';

  @override
  String get settingsPrivacySheet =>
      'Uw gegevens worden lokaal op uw apparaat opgeslagen. We verkopen of delen uw persoonlijke gegevens nooit.';

  @override
  String get settingsVersion => 'Versie';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Uitloggen';

  @override
  String get settingsEditProfile => 'Profiel bewerken';

  @override
  String get settingsProfileNameLabel => 'Volledige naam';

  @override
  String get settingsProfileNameHint => 'Uw naam';

  @override
  String get settingsBusinessNameLabel => 'Bedrijfsnaam';

  @override
  String get settingsBusinessNameHint => 'Uw Bedrijf B.V.';

  @override
  String get settingsBusinessEmailLabel => 'Zakelijke e-mail';

  @override
  String get settingsBusinessEmailHint => 'facturatie@bedrijf.nl';

  @override
  String get settingsPhoneLabel => 'Telefoon';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'Adres';

  @override
  String get settingsAddressHint => 'Dubai, Verenigde Arabische Emiraten';

  @override
  String get settingsBusinessDetailsSaved => 'Bedrijfsgegevens opgeslagen!';

  @override
  String get settingsInvoicePrefixTitle => 'Prefix van het factuurnummer';

  @override
  String get settingsInvoicePrefixHint => 'bijv. INV-, #, Fact-';

  @override
  String get settingsPrefixSaved => 'Factuurprefix opgeslagen';

  @override
  String get settingsNotificationScheduled =>
      'Dagelijkse melding succesvol gepland!';

  @override
  String get settingsSignOutTitle => 'Uitloggen?';

  @override
  String get settingsSignOutMessage =>
      'Weet u zeker dat u wilt uitloggen bij InvoiceFlow?';

  @override
  String get settingsSignedOut => 'Succesvol uitgelogd.';

  @override
  String get statusPaid => 'Betaald';

  @override
  String get statusOverdue => 'Achterstallig';

  @override
  String get statusPending => 'In afwachting';

  @override
  String get statusDraft => 'Concept';

  @override
  String get statusCancelled => 'Geannuleerd';

  @override
  String get notificationChannelName => 'Dagelijkse herinneringen';

  @override
  String get notificationChannelDescription =>
      'Herinnert u eraan om uw facturen dagelijks te controleren';

  @override
  String get notificationTitle => 'Factuurherinnering';

  @override
  String get notificationBody =>
      'Tijd om uw recente facturen te controleren en openstaande betalingen te volgen.';

  @override
  String get pdfInvoice => 'FACTUUR';

  @override
  String get pdfInvoiceNumber => 'Factuurnr.:';

  @override
  String get pdfDate => 'Datum:';

  @override
  String get pdfDueDate => 'Vervaldatum:';

  @override
  String get pdfBillTo => 'FACTUUR AAN:';

  @override
  String get pdfDescription => 'Beschrijving';

  @override
  String get pdfQty => 'Aantal';

  @override
  String get pdfRate => 'Tarief';

  @override
  String get pdfAmount => 'Bedrag';

  @override
  String get pdfSubtotal => 'Subtotaal:';

  @override
  String pdfTax(Object taxRate) {
    return 'Belasting ($taxRate%):';
  }

  @override
  String get pdfTotal => 'TOTAAL:';

  @override
  String get pdfSignature => 'Handtekening:';

  @override
  String get pdfNotes => 'Notities:';

  @override
  String get pdfPaymentTerms => 'Betaalvoorwaarden:';

  @override
  String get pdfThankYou => 'Bedankt voor uw vertrouwen!';

  @override
  String get quickAddWebDesign => 'Webdesign';

  @override
  String get quickAddDevelopment => 'Ontwikkeling';

  @override
  String get quickAddConsulting => 'Consultancy';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Contentcreatie';

  @override
  String get paywallTitle => 'Ontgrendel InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'Onbeperkt en overal gesynchroniseerd. Op elk moment opzegbaar.';

  @override
  String get paywallFeatureUnlimited => 'Onbeperkte facturen en klanten';

  @override
  String get paywallFeatureSync => 'Cloud-sync op alle apparaten';

  @override
  String get paywallFeatureNoWatermark => 'Nooit watermerken';

  @override
  String get paywallMonthly => 'Maandelijks';

  @override
  String get paywallMonthlySub => 'Maandelijks gefactureerd';

  @override
  String get paywallYearly => 'Jaarlijks';

  @override
  String get paywallYearlySub => 'Beste prijs-kwaliteit — 2 maanden gratis';

  @override
  String get paywallRestore => 'Aankopen herstellen';

  @override
  String get paywallTerms =>
      'Abonnementen verlengen automatisch. Beheer dit in de instellingen van uw appstore.';

  @override
  String get purchaseSuccessTitle => 'U bent Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'Onbeperkte facturen, cloud-sync en geen watermerken zijn nu ontgrendeld. Bedankt!';

  @override
  String get purchaseSuccessContinue => 'Doorgaan';

  @override
  String get paywallLoading => 'Abonnementen laden…';

  @override
  String get paywallLoadError =>
      'De abonnementen konden niet worden geladen. Controleer je verbinding en probeer het opnieuw.';

  @override
  String get paywallNoOffering =>
      'Er zijn op dit moment geen abonnementen beschikbaar.';

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
  String get purchaseRestored => 'Aankopen succesvol hersteld';

  @override
  String get purchaseErrorGeneric => 'Aankoop mislukt. Probeer het opnieuw.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro is actief — onbeperkt facturen en klanten zonder watermerken';

  @override
  String get settingsFreePlan => 'Gratis abonnement';

  @override
  String get settingsFreeHint =>
      'Upgrade voor onbeperkte facturen, cloud-synchronisatie en meer';

  @override
  String get settingsUpgradeToPro => 'Upgrade naar Pro';

  @override
  String get settingsManageSubscription => 'Abonnement beheren';

  @override
  String get customerCenterFailed =>
      'Abonnementbeheer kan niet worden geopend.';

  @override
  String get onboardingSkip => 'Overslaan';

  @override
  String get onboardingNext => 'Volgende';

  @override
  String get onboardingGetStarted => 'Aan de slag';

  @override
  String get onboardingWelcomeTitle => 'Facturen in 2 minuten';

  @override
  String get onboardingWelcomeBody =>
      'Maak professionele PDF-facturen voor uw klanten — snel en mooi.';

  @override
  String get onboardingSyncTitle => 'Overal synchroniseren';

  @override
  String get onboardingSyncBody =>
      'Log in om uw gegevens veilig in de cloud te back-uppen en overal toegankelijk te maken.';

  @override
  String get onboardingProTitle => 'Onbeperkt met Pro';

  @override
  String get onboardingProBody =>
      'Ontgrendel onbeperkte facturen, cloud-sync en verwijder watermerken met InvoiceFlow Pro.';

  @override
  String get settingsAccentColor => 'Accentkleur';

  @override
  String get settingsAccentColorHint =>
      'Personaliseer de app met een kleur naar keuze.';

  @override
  String get settingsCountry => 'Land';

  @override
  String get settingsTaxId => 'Belastingregistratienummer';

  @override
  String get settingsTaxIdNotSet => 'Niet ingesteld';

  @override
  String get settingsTaxIdHint => 'bijv. 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Belastingnummer opgeslagen';

  @override
  String get catalogTitle => 'Producten & diensten';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count artikelen',
      one: '$count artikel',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'Nog geen producten';

  @override
  String get catalogEmptySubtitle =>
      'Sla herbruikbare producten en diensten op om ze sneller aan facturen toe te voegen.';

  @override
  String get catalogFromSaved => 'Uit uw catalogus';

  @override
  String get catalogSaveToCatalog => 'Opslaan in catalogus voor hergebruik';

  @override
  String get catalogAddSnackbar => 'Toegevoegd aan catalogus';

  @override
  String get catalogDeleteTitle => 'Item verwijderen?';

  @override
  String catalogDeleteMessage(String description) {
    return '„$description\" verwijderen? Dit kan niet ongedaan worden gemaakt.';
  }

  @override
  String get commonDone => 'Klaar';

  @override
  String get estimateListTitle => 'Offertes';

  @override
  String get estimateListSearchHint => 'Offertes zoeken…';

  @override
  String get estimateListEmpty => 'Nog geen offertes';

  @override
  String get estimateListTabAll => 'Alle';

  @override
  String get estimateListTabDraft => 'Concept';

  @override
  String get estimateListTabSent => 'Verzonden';

  @override
  String get estimateListTabAccepted => 'Geaccepteerd';

  @override
  String get estimateListTabExpired => 'Verlopen';

  @override
  String get estimateCreateTitle => 'Nieuwe offerte';

  @override
  String get estimateEditTitle => 'Offerte bewerken';

  @override
  String get estimateCreatedSnackbar => 'Offerte opgeslagen';

  @override
  String get estimateUpdatedSnackbar => 'Offerte bijgewerkt';

  @override
  String get estimateIssueDate => 'Uitgiftedatum';

  @override
  String get estimateExpiryDate => 'Vervaldatum';

  @override
  String get estimateExpiresPrefix => 'Verloopt ';

  @override
  String get estimateConvertToInvoice => 'Omzetten naar factuur';

  @override
  String get estimateConvertedSnackbar => 'Offerte omgezet naar factuur';

  @override
  String get estimateConvertFailed => 'Offerte kon niet worden omgezet';

  @override
  String get estimateMarkSent => 'Markeer als verzonden';

  @override
  String get estimateMarkAccepted => 'Markeer als geaccepteerd';

  @override
  String get estimateMarkDeclined => 'Markeer als afgewezen';

  @override
  String get estimateConvertedTitle => 'Omgezet';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'Omgezet naar factuur $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'OFFERTE TOTAAL';

  @override
  String get estimateStatusSent => 'Verzonden';

  @override
  String get estimateStatusAccepted => 'Geaccepteerd';

  @override
  String get estimateStatusDeclined => 'Afgewezen';

  @override
  String get estimateStatusExpired => 'Verlopen';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count open',
      one: '1 open',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'Offerte verwijderen?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return '„$estimateNumber\" verwijderen? Dit kan niet ongedaan worden gemaakt.';
  }

  @override
  String get estimatePdfFailed => 'PDF genereren mislukt';

  @override
  String get pdfEstimate => 'OFFERTE';

  @override
  String get pdfEstimateNumber => 'Offerte nr.:';

  @override
  String get pdfValidUntil => 'Geldig tot:';

  @override
  String get invoiceDetailPaymentTerms => 'Betaalvoorwaarden';

  @override
  String get recurringListTitle => 'Terugkerende facturen';

  @override
  String get recurringListEmpty => 'Nog geen terugkerende facturen';

  @override
  String get recurringListEmptySubtitle =>
      'Stel automatische facturen in voor vaste klanten en diensten.';

  @override
  String get recurringCreateTitle => 'Nieuwe terugkerende';

  @override
  String get recurringEditTitle => 'Terugkerende bewerken';

  @override
  String get recurringCreatedSnackbar => 'Terugkerende factuur opgeslagen';

  @override
  String get recurringUpdatedSnackbar => 'Terugkerende factuur bijgewerkt';

  @override
  String get recurringDeleteTitle => 'Terugkerende factuur verwijderen?';

  @override
  String recurringDeleteMessage(String title) {
    return '„$title\" verwijderen? Bestaande facturen worden niet verwijderd.';
  }

  @override
  String get recurringTitleLabel => 'Titel';

  @override
  String get recurringTitleHint => 'bijv. Maandelijks retainer';

  @override
  String get recurringClientLabel => 'Klant';

  @override
  String get recurringFrequencyLabel => 'Frequentie';

  @override
  String get recurringFrequencyWeekly => 'Wekelijks';

  @override
  String get recurringFrequencyBiweekly => 'Tweewekelijks';

  @override
  String get recurringFrequencyMonthly => 'Maandelijks';

  @override
  String get recurringFrequencyQuarterly => 'Per kwartaal';

  @override
  String get recurringFrequencyYearly => 'Jaarlijks';

  @override
  String get recurringNextRun => 'Volgende uitvoering';

  @override
  String get recurringDueDays => 'Vervalt over';

  @override
  String get recurringDays => 'dagen';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count actief',
      one: '1 actief',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'Rapporten';

  @override
  String get reportsSubtitle => 'Bedrijfsanalyses';

  @override
  String get reportsEmpty => 'Maak facturen om rapporten te bekijken';

  @override
  String get reportsCollected => 'Ontvangen';

  @override
  String get reportsOutstanding => 'Openstaand';

  @override
  String get reportsMonthlyRevenue => 'Maandelijkse omzet';

  @override
  String get reportsLast6Months => 'Laatste 6 maanden';

  @override
  String get reportsByStatus => 'Op status';

  @override
  String get reportsTopClients => 'Topklanten';

  @override
  String get paymentLinkTitle => 'Betaallink';

  @override
  String get paymentLinkNotSet => 'Geen betaallink ingesteld in Instellingen';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'Uw betaallink is opgenomen in de factuur-PDF en kan worden gekopieerd via het factuurmenu.';

  @override
  String get paymentLinkSaved => 'Betaallink opgeslagen';

  @override
  String get settingsPaymentLinkNotSet => 'Niet ingesteld';

  @override
  String get invoiceDetailCopyPaymentLink => 'Betaallink kopiëren';

  @override
  String get paymentLinkCopied => 'Betaallink gekopieerd';

  @override
  String get pdfPayOnline => 'Online betalen';

  @override
  String get exportXml => 'XML exporteren';

  @override
  String get exportXmlFailed => 'XML kon niet worden geëxporteerd';
}
