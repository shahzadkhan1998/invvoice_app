// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Professionelle fakturaer på 2 minutter';

  @override
  String get bottomNavDashboard => 'Dashboard';

  @override
  String get bottomNavInvoices => 'Fakturaer';

  @override
  String get bottomNavClients => 'Kunder';

  @override
  String get bottomNavSettings => 'Indstillinger';

  @override
  String get commonCancel => 'Annuller';

  @override
  String get commonDelete => 'Slet';

  @override
  String get commonSave => 'Gem';

  @override
  String get commonSearch => 'Søg';

  @override
  String get commonBack => 'Tilbage';

  @override
  String get commonContinue => 'Fortsæt';

  @override
  String get commonAdd => 'Tilføj';

  @override
  String get commonEdit => 'Rediger';

  @override
  String get commonCreate => 'Opret';

  @override
  String get commonClear => 'Ryd';

  @override
  String get commonView => 'Vis';

  @override
  String get commonShare => 'Del';

  @override
  String get commonExportPdf => 'Eksporter PDF';

  @override
  String get commonSharePdf => 'Del PDF';

  @override
  String get commonSaveChanges => 'Gem ændringer';

  @override
  String get commonRequired => 'Påkrævet';

  @override
  String get commonInvalid => 'Ugyldig';

  @override
  String get commonSendLink => 'Send link';

  @override
  String get commonGeneratingPdf => 'Genererer PDF...';

  @override
  String get dashboardGreetingMorning => 'Godmorgen';

  @override
  String get dashboardGreetingAfternoon => 'God eftermiddag';

  @override
  String get dashboardGreetingEvening => 'Godaften';

  @override
  String get dashboardSubtitle => 'Her er din virksomhedsoversigt';

  @override
  String get dashboardOutstanding => 'Udestående';

  @override
  String get dashboardOverdue => 'Forfalden';

  @override
  String get dashboardThisMonth => 'Denne måned';

  @override
  String get dashboardInvoices => 'fakturaer';

  @override
  String dashboardPaidCount(Object count) {
    return '$count betalt';
  }

  @override
  String get dashboardRecentInvoices => 'Seneste fakturaer';

  @override
  String get dashboardSeeAll => 'Se alle';

  @override
  String get dashboardNotifications => 'Notifikationer';

  @override
  String get dashboardNotificationsHint =>
      'Hold styr på pengestrømmen ved regelmæssigt at gennemgå forfaldne og ventende fakturaer.';

  @override
  String get dashboardNewInvoice => 'Ny faktura';

  @override
  String get dashboardNoInvoicesYet => 'Ingen fakturaer endnu';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Opret din første professionelle faktura på under 2 minutter';

  @override
  String get dashboardCreateInvoice => 'Opret faktura';

  @override
  String get dashboardMarkPaid => 'Markér som betalt';

  @override
  String get dashboardDuePrefix => 'Forfalder ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days dage forfaldet';
  }

  @override
  String get deleteInvoiceTitle => 'Slet fakturaen?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'Slet $invoiceNumber? Dette kan ikke fortrydes.';
  }

  @override
  String get loginHeading => 'Velkommen tilbage';

  @override
  String get loginSubtitle => 'Log ind på din InvoiceFlow-konto';

  @override
  String get loginEmailLabel => 'E-mailadresse';

  @override
  String get loginEmailHint => 'dig@eksempel.dk';

  @override
  String get loginEmailRequired => 'E-mail er påkrævet';

  @override
  String get loginEmailInvalid => 'Angiv en gyldig e-mailadresse';

  @override
  String get loginPasswordLabel => 'Adgangskode';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'Adgangskode er påkrævet';

  @override
  String get loginPasswordMinLength =>
      'Adgangskoden skal være på mindst 6 tegn';

  @override
  String get loginForgotPassword => 'Glemt adgangskode?';

  @override
  String get loginSignIn => 'Log ind';

  @override
  String get loginOrContinueWith => 'eller fortsæt med';

  @override
  String get loginContinueWithGoogle => 'Fortsæt med Google';

  @override
  String get loginNoAccount => 'Har du ingen konto? ';

  @override
  String get loginSignUp => 'Opret konto';

  @override
  String get loginResetPasswordTitle => 'Nulstil adgangskode';

  @override
  String get loginResetPasswordMessage =>
      'Angiv din e-mail, så sender vi dig et nulstillingslink.';

  @override
  String get loginResetPasswordHint => 'dig@eksempel.dk';

  @override
  String get loginResetLinkSent => 'Nulstillingslink sendt! Tjek din e-mail.';

  @override
  String get loginResetLinkFailed =>
      'Det lykkedes ikke at sende nulstillingslinket.';

  @override
  String get registerHeading => 'Opret konto';

  @override
  String get registerSubtitle =>
      'Begynd at sende professionelle fakturaer i dag';

  @override
  String get registerNameLabel => 'Fulde navn';

  @override
  String get registerNameHint => 'Jens Jensen';

  @override
  String get registerNameRequired => 'Navn er påkrævet';

  @override
  String get registerNameMinLength => 'Navnet skal være på mindst 2 tegn';

  @override
  String get registerEmailLabel => 'E-mailadresse';

  @override
  String get registerEmailHint => 'dig@eksempel.dk';

  @override
  String get registerEmailRequired => 'E-mail er påkrævet';

  @override
  String get registerEmailInvalid => 'Angiv en gyldig e-mailadresse';

  @override
  String get registerPasswordLabel => 'Adgangskode';

  @override
  String get registerPasswordHint => 'Mindst 6 tegn';

  @override
  String get registerPasswordRequired => 'Adgangskode er påkrævet';

  @override
  String get registerPasswordMinLength =>
      'Adgangskoden skal være på mindst 6 tegn';

  @override
  String get registerConfirmPasswordLabel => 'Bekræft adgangskode';

  @override
  String get registerConfirmPasswordHint => 'Gentag din adgangskode';

  @override
  String get registerConfirmPasswordRequired =>
      'Bekræft venligst din adgangskode';

  @override
  String get registerPasswordsDoNotMatch =>
      'Adgangskoderne stemmer ikke overens';

  @override
  String get registerCreateAccount => 'Opret konto';

  @override
  String get registerHaveAccount => 'Har du allerede en konto? ';

  @override
  String get registerSignIn => 'Log ind';

  @override
  String get authTermsOfService => 'Servicevilkår';

  @override
  String get authPrivacyPolicy => 'Privatlivspolitik';

  @override
  String get authAgreeRequired =>
      'Accepter venligst servicevilkårene og privatlivspolitikken for at fortsætte';

  @override
  String get loginAgreePrefix => 'Ved at fortsætte accepterer du vores ';

  @override
  String get registerAgreePrefix => 'Jeg accepterer ';

  @override
  String get authAgreeAnd => ' og ';

  @override
  String get authTermsSheet =>
      'Disse servicevilkår gælder for din brug af InvoiceFlow. Ved at få adgang til eller bruge appen accepterer du at være bundet af disse vilkår.\n\n1. Du er ansvarlig for nøjagtigheden af de fakturaer, overslag og andre data, du opretter.\n2. Appen leveres \"som den er\" uden garantier af nogen art, hverken udtrykkelige eller underforståede.\n3. Vi er ikke ansvarlige for tab, der opstår som følge af din brug af tjenesten.\n4. Du må ikke bruge appen til ulovlige eller forbudte formål.\n5. Vi kan opdatere disse vilkår fra tid til anden; fortsat brug af appen udgør accept af de opdaterede vilkår.';

  @override
  String get authPrivacySheet =>
      'Dit privatliv betyder noget for os.\n\n1. Datatilstand: Dine fakturaer, kunder og indstillinger gemmes lokalt på din enhed.\n2. Cloud-synkronisering: Hvis du logger ind, synkroniseres dine data til din konto, så de er tilgængelige på tværs af dine enheder.\n3. Vi sælger eller deler aldrig dine personlige oplysninger.\n4. Analyse: Vi kan indsamle anonymiserede brugsdata for at hjælpe med at forbedre appen.\n5. Kontakt: Ved spørgsmål om privatliv kan du kontakte support@invoiceflow.app.';

  @override
  String get authErrorWeakPassword => 'Adgangskoden er for svag';

  @override
  String get authErrorEmailAlreadyInUse => 'Kontoen findes allerede';

  @override
  String get authErrorUserNotFound => 'Ingen bruger fundet med denne e-mail';

  @override
  String get authErrorWrongPassword => 'Forkert adgangskode';

  @override
  String get authErrorInvalidEmail => 'Ugyldig e-mailadresse';

  @override
  String get authErrorTooManyRequests => 'For mange forsøg. Prøv igen senere';

  @override
  String get authErrorDefault => 'Login mislykkedes. Prøv igen.';

  @override
  String get authErrorGoogleSignInFailed => 'Google-login mislykkedes.';

  @override
  String get invoiceListTitle => 'Fakturaer';

  @override
  String get invoiceListSearchHint => 'Søg i fakturaer...';

  @override
  String get invoiceListSortDate => 'Sorter efter dato';

  @override
  String get invoiceListSortAmount => 'Sorter efter beløb';

  @override
  String get invoiceListSortClient => 'Sorter efter kunde';

  @override
  String get invoiceListTabAll => 'Alle';

  @override
  String get invoiceListTabPaid => 'Betalt';

  @override
  String get invoiceListTabPending => 'Ventende';

  @override
  String get invoiceListTabOverdue => 'Forfaldne';

  @override
  String get invoiceListTabDraft => 'Kladde';

  @override
  String get invoiceListEmpty => 'Ingen fakturaer fundet';

  @override
  String get invoiceCreateTitle => 'Ny faktura';

  @override
  String get invoiceEditTitle => 'Rediger faktura';

  @override
  String get invoiceSaveDraft => 'Gem kladde';

  @override
  String get invoiceStepClient => 'Kunde';

  @override
  String get invoiceStepItems => 'Varer';

  @override
  String get invoiceStepReview => 'Gennemgang';

  @override
  String get invoiceSelectClient => 'Vælg en kunde';

  @override
  String get invoiceSelectClientSubtitle => 'Vælg, hvem fakturaen er til';

  @override
  String get invoiceSearchClients => 'Søg efter kunder...';

  @override
  String get invoiceAddNewClient => 'Tilføj ny kunde';

  @override
  String get invoiceNoClientsFound => 'Ingen kunder fundet';

  @override
  String get invoiceSelectClientEmptyHint =>
      'Opret din første kunde for at begynde at oprette fakturaer';

  @override
  String get invoiceAddLineItem => 'Tilføj linje';

  @override
  String get invoiceItemDescription => 'Beskrivelse';

  @override
  String get invoiceItemDescriptionHint => 'f.eks. Webudvikling';

  @override
  String get invoiceItemQuickAdd => 'Hurtigtilføj:';

  @override
  String get invoiceItemQty => 'Antal';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Sats';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Tilføj vare';

  @override
  String get invoiceLineItems => 'Linjer';

  @override
  String get invoiceLineItemsSubtitle => 'Tilføj tjenester eller produkter';

  @override
  String get invoiceNoItems => 'Ingen varer endnu. Tilføj din første vare.';

  @override
  String get invoiceTaxRate => 'Momssats (%)';

  @override
  String get invoiceSubtotal => 'Subtotal';

  @override
  String invoiceTax(Object taxRate) {
    return 'Moms ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'TOTAL';

  @override
  String get invoiceReviewHeading => 'Gennemgå og færdiggør';

  @override
  String get invoiceReviewSubtitle =>
      'Angiv datoer, tilføj noter, logo og underskrift';

  @override
  String get invoiceCompanyLogo => 'Virksomhedslogo';

  @override
  String get invoiceAddLogo => 'Tilføj logo';

  @override
  String get invoiceInvoiceDate => 'Fakturadato';

  @override
  String get invoiceDueDate => 'Forfaldsdato';

  @override
  String get invoiceNotesLabel => 'Noter (valgfrit)';

  @override
  String get invoiceNotesHint => 'Tak for din tillid!';

  @override
  String get invoicePaymentTermsLabel => 'Betalingsbetingelser (valgfrit)';

  @override
  String get invoicePaymentTermsHint => 'Betaling inden for 30 dage';

  @override
  String get invoiceSignatureLabel => 'Underskrift';

  @override
  String get invoiceSignatureOverwrite =>
      'Den eksisterende underskrift er gemt. Tegn ovenpå for at erstatte.';

  @override
  String get invoiceCreatedSnackbar => 'Faktura oprettet!';

  @override
  String get invoiceUpdatedSnackbar => 'Faktura opdateret!';

  @override
  String get invoiceDetailTitle => 'FAKTURA';

  @override
  String get invoiceDetailMarkAsPaid => 'Markér som betalt';

  @override
  String get invoiceDetailTotalAmount => 'Samlet beløb';

  @override
  String get invoiceDetailIssued => 'Udstedt';

  @override
  String get invoiceDetailDue => 'Forfalder';

  @override
  String get invoiceDetailPaid => 'Betalt';

  @override
  String get invoiceDetailBillTo => 'Fakturer til';

  @override
  String get invoiceDetailItems => 'Varer';

  @override
  String get invoiceDetailNotes => 'Noter';

  @override
  String get invoiceDetailSignature => 'Underskrift';

  @override
  String get invoiceDetailMarkedPaidSnackbar =>
      'Fakturaen er markeret som betalt!';

  @override
  String get invoiceDetailPdfFailed => 'Kunne ikke generere PDF';

  @override
  String get clientListTitle => 'Kunder';

  @override
  String get clientListSearchHint => 'Søg efter kunder...';

  @override
  String get clientListTotalClients => 'Kunder i alt';

  @override
  String get clientListTotalBilled => 'Faktureret i alt';

  @override
  String get clientListEmptySearch => 'Ingen kunder fundet';

  @override
  String get clientListEmpty => 'Ingen kunder endnu';

  @override
  String get clientListEmptySubtitle =>
      'Tilføj din første kunde for at begynde at oprette fakturaer';

  @override
  String get clientListAddClient => 'Tilføj kunde';

  @override
  String get clientListTotalBilledLabel => 'faktureret i alt';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count faktura';
  }

  @override
  String get clientCreateTitle => 'Ny kunde';

  @override
  String get clientEditTitle => 'Rediger kunde';

  @override
  String get clientBasicInfo => 'Grundlæggende oplysninger';

  @override
  String get clientNameLabel => 'Fulde navn *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'Navn er påkrævet';

  @override
  String get clientNameTooShort => 'Navnet er for kort';

  @override
  String get clientEmailLabel => 'E-mailadresse *';

  @override
  String get clientEmailHint => 'fakturering@virksomhed.dk';

  @override
  String get clientEmailRequired => 'E-mail er påkrævet';

  @override
  String get clientEmailInvalid => 'Angiv en gyldig e-mailadresse';

  @override
  String get clientPhoneLabel => 'Telefonnummer';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'Adresse';

  @override
  String get clientAddressLabel => 'Gadeadresse';

  @override
  String get clientAddressHint => '123 Business Park, Kontor 45';

  @override
  String get clientCityLabel => 'By / Land';

  @override
  String get clientCityHint => 'København, Danmark';

  @override
  String get clientBillingDefaults => 'Faktureringsstandarder';

  @override
  String get clientDefaultCurrency => 'Standardvaluta';

  @override
  String get clientDefaultTaxRate => 'Standardmomssats (VAT/GST)';

  @override
  String get clientVatLabel => 'VAT / skatteregistreringsnummer';

  @override
  String get clientVatHint => '123456789012345 (valgfrit)';

  @override
  String get clientUpdateButton => 'Opdater kunde';

  @override
  String get clientAddButton => 'Tilføj kunde';

  @override
  String get clientUpdatedSnackbar => 'Kunde opdateret!';

  @override
  String get clientAddedSnackbar => 'Kunde tilføjet!';

  @override
  String get clientDetailInvoices => 'Fakturaer';

  @override
  String get clientDetailTotalBilled => 'Faktureret i alt';

  @override
  String get clientDetailOutstanding => 'Udestående';

  @override
  String get clientDetailEdit => 'Rediger';

  @override
  String get clientDetailNewInvoice => 'Ny faktura';

  @override
  String get clientDetailEmailClient => 'Send e-mail til kunde';

  @override
  String get clientDetailClientDetails => 'Kundeoplysninger';

  @override
  String get clientDetailEmail => 'E-mail';

  @override
  String get clientDetailPhone => 'Telefon';

  @override
  String get clientDetailAddress => 'Adresse';

  @override
  String get clientDetailCity => 'By';

  @override
  String get clientDetailCurrency => 'Valuta';

  @override
  String get clientDetailTaxRate => 'Momssats';

  @override
  String get clientDetailVatNumber => 'VAT-nummer';

  @override
  String get clientDetailInvoiceHistory => 'Fakturahistorik';

  @override
  String get clientDetailNoInvoices => 'Ingen fakturaer endnu for denne kunde';

  @override
  String get deleteClientTitle => 'Slet kunden?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'Slet $clientName? Dette kan ikke fortrydes.';
  }

  @override
  String get settingsTitle => 'Indstillinger';

  @override
  String get settingsYourName => 'Dit navn';

  @override
  String get settingsBackupTitle => 'Sikkerhedskopier dine fakturaer';

  @override
  String get settingsBackupDescription =>
      'Log ind for at synkronisere dine data sikkert og få adgang til dem hvor som helst.';

  @override
  String get settingsSignInRegister => 'Log ind eller opret konto';

  @override
  String get settingsProUpsell =>
      'Opgrader til Pro for ubegrænsede fakturaer, skysynkronisering og ingen vandmærker.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'Du har nået grænsen på $limit fakturaer i gratisplanen. Opgrader til Pro for ubegrænsede fakturaer og skysynkronisering.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'Du har nået grænsen på $limit kunder i gratisplanen. Opgrader til Pro for ubegrænsede kunder og skysynkronisering.';
  }

  @override
  String get settingsUpgradePro => 'Opgrader';

  @override
  String get settingsBusinessSection => 'VIRKSOMHEDSINDSTILLINGER';

  @override
  String get settingsBusinessDetails => 'Virksomhedsoplysninger';

  @override
  String get settingsBusinessDetailsSubtitle => 'Angiv dit virksomhedsnavn';

  @override
  String get settingsInvoicePrefix => 'Fakturaprefiks';

  @override
  String get settingsDefaultCurrency => 'Standardvaluta';

  @override
  String get settingsAppSection => 'APP-INDSTILLINGER';

  @override
  String get settingsDarkMode => 'Mørk tilstand';

  @override
  String get settingsDailyNotification => 'Daglig notifikation';

  @override
  String get settingsDailyNotificationNotSet => 'Ikke angivet';

  @override
  String get settingsLanguage => 'Sprog';

  @override
  String get settingsLanguageLabel => 'Dansk';

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
  String get settingsRateApp => 'Bedøm appen';

  @override
  String get settingsHelpSupport => 'Hjælp og support';

  @override
  String get settingsPrivacyPolicy => 'Privatlivspolitik';

  @override
  String get settingsHelpSupportSheet =>
      'Har du brug for hjælp? Kontakt support@invoiceflow.app, så vender vi tilbage inden for 24 timer.';

  @override
  String get settingsPrivacySheet =>
      'Dine data gemmes lokalt på din enhed. Vi sælger eller deler aldrig dine personlige oplysninger.';

  @override
  String get settingsVersion => 'Version';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Log ud';

  @override
  String get settingsEditProfile => 'Rediger profil';

  @override
  String get settingsProfileNameLabel => 'Fulde navn';

  @override
  String get settingsProfileNameHint => 'Dit navn';

  @override
  String get settingsBusinessNameLabel => 'Virksomhedsnavn';

  @override
  String get settingsBusinessNameHint => 'Din Virksomhed ApS';

  @override
  String get settingsBusinessEmailLabel => 'Virksomheds-e-mail';

  @override
  String get settingsBusinessEmailHint => 'fakturering@virksomhed.dk';

  @override
  String get settingsPhoneLabel => 'Telefon';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'Adresse';

  @override
  String get settingsAddressHint => 'København, Danmark';

  @override
  String get settingsBusinessDetailsSaved =>
      'Virksomhedsoplysningerne blev gemt!';

  @override
  String get settingsInvoicePrefixTitle => 'Præfiks for fakturanummer';

  @override
  String get settingsInvoicePrefixHint => 'f.eks. INV-, #, Fakta-';

  @override
  String get settingsPrefixSaved => 'Fakturaprefiks gemt';

  @override
  String get settingsNotificationScheduled => 'Daglig notifikation planlagt!';

  @override
  String get settingsSignOutTitle => 'Log ud?';

  @override
  String get settingsSignOutMessage =>
      'Er du sikker på, at du vil logge ud af InvoiceFlow?';

  @override
  String get settingsSignedOut => 'Du er nu logget ud.';

  @override
  String get statusPaid => 'Betalt';

  @override
  String get statusOverdue => 'Forfalden';

  @override
  String get statusPending => 'Ventende';

  @override
  String get statusDraft => 'Kladde';

  @override
  String get statusCancelled => 'Annulleret';

  @override
  String get notificationChannelName => 'Daglige påmindelser';

  @override
  String get notificationChannelDescription =>
      'Påminder dig om at tjekke dine fakturaer dagligt';

  @override
  String get notificationTitle => 'Fakturapåmindelse';

  @override
  String get notificationBody =>
      'Tid til at tjekke dine seneste fakturaer og følge op på ventende betalinger.';

  @override
  String get pdfInvoice => 'FAKTURA';

  @override
  String get pdfInvoiceNumber => 'Faktura nr.:';

  @override
  String get pdfDate => 'Dato:';

  @override
  String get pdfDueDate => 'Forfaldsdato:';

  @override
  String get pdfBillTo => 'FAKTURER TIL:';

  @override
  String get pdfDescription => 'Beskrivelse';

  @override
  String get pdfQty => 'Ant.';

  @override
  String get pdfRate => 'Sats';

  @override
  String get pdfAmount => 'Beløb';

  @override
  String get pdfSubtotal => 'Subtotal:';

  @override
  String pdfTax(Object taxRate) {
    return 'Moms ($taxRate%):';
  }

  @override
  String get pdfTotal => 'TOTAL:';

  @override
  String get pdfSignature => 'Underskrift:';

  @override
  String get pdfNotes => 'Noter:';

  @override
  String get pdfPaymentTerms => 'Betalingsbetingelser:';

  @override
  String get pdfThankYou => 'Tak for din tillid!';

  @override
  String get quickAddWebDesign => 'Webdesign';

  @override
  String get quickAddDevelopment => 'Udvikling';

  @override
  String get quickAddConsulting => 'Rådgivning';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Indholdsproduktion';

  @override
  String get paywallTitle => 'Lås op for InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'Gå ubegrænset og synkroniser overalt. Annuller når som helst.';

  @override
  String get paywallFeatureUnlimited => 'Ubegrænsede fakturaer og kunder';

  @override
  String get paywallFeatureSync => 'Skysynkronisering på tværs af enheder';

  @override
  String get paywallFeatureNoWatermark => 'Ingen vandmærker, nogensinde';

  @override
  String get paywallMonthly => 'Månedligt';

  @override
  String get paywallMonthlySub => 'Faktureres månedligt';

  @override
  String get paywallYearly => 'Årligt';

  @override
  String get paywallYearlySub => 'Bedste værdi — 2 måneder gratis';

  @override
  String get paywallRestore => 'Gendan køb';

  @override
  String get paywallTerms =>
      'Abonnementer fornyes automatisk. Administrer i din appstore-indstillinger.';

  @override
  String get purchaseSuccessTitle => 'Du er Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'Ubegrænsede fakturaer, skysynkronisering og ingen vandmærker er nu låst op. Tak!';

  @override
  String get purchaseSuccessContinue => 'Fortsæt';

  @override
  String get paywallLoading => 'Indlæser planer…';

  @override
  String get paywallLoadError =>
      'Planerne kunne ikke indlæses. Tjek din forbindelse, og prøv igen.';

  @override
  String get paywallNoOffering => 'Der er ingen tilgængelige planer lige nu.';

  @override
  String get purchaseRestored => 'Køb blev genoprettet';

  @override
  String get purchaseErrorGeneric => 'Købet mislykkedes. Prøv venligst igen.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro er aktivt — ubegrænsede fakturaer og kunder uden vandmærker';

  @override
  String get settingsFreePlan => 'Gratis plan';

  @override
  String get settingsFreeHint =>
      'Opgrader for ubegrænsede fakturaer, cloud-synkronisering og mere';

  @override
  String get settingsUpgradeToPro => 'Opgrader til Pro';

  @override
  String get settingsManageSubscription => 'Administrer abonnement';

  @override
  String get customerCenterFailed =>
      'Kunne ikke åbne administration af abonnementet.';

  @override
  String get onboardingSkip => 'Spring over';

  @override
  String get onboardingNext => 'Næste';

  @override
  String get onboardingGetStarted => 'Kom i gang';

  @override
  String get onboardingWelcomeTitle => 'Fakturaer på 2 minutter';

  @override
  String get onboardingWelcomeBody =>
      'Opret professionelle PDF-fakturaer til dine kunder — hurtigt og elegant.';

  @override
  String get onboardingSyncTitle => 'Synkroniser overalt';

  @override
  String get onboardingSyncBody =>
      'Log ind for sikkert at sikkerhedskopiere dine data til skyen og få adgang til dem fra enhver enhed.';

  @override
  String get onboardingProTitle => 'Gå ubegrænset med Pro';

  @override
  String get onboardingProBody =>
      'Lås op for ubegrænsede fakturaer, skysynkronisering og fjern vandmærker med InvoiceFlow Pro.';

  @override
  String get settingsAccentColor => 'Accentfarve';

  @override
  String get settingsAccentColorHint =>
      'Tilpas appen med en farve efter eget valg.';

  @override
  String get settingsCountry => 'Land';

  @override
  String get settingsTaxId => 'Skatteregistreringsnummer';

  @override
  String get settingsTaxIdNotSet => 'Ikke angivet';

  @override
  String get settingsTaxIdHint => 'f.eks. 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Skatteregistreringsnummer gemt';

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
  String get catalogEmpty => 'Ingen produkter endnu';

  @override
  String get catalogEmptySubtitle =>
      'Gem genanvendelige produkter og tjenester for at tilføje dem hurtigere til fakturaer.';

  @override
  String get catalogFromSaved => 'Fra dit katalog';

  @override
  String get catalogSaveToCatalog => 'Gem i kataloget til genbrug';

  @override
  String get catalogAddSnackbar => 'Tilføjet til kataloget';

  @override
  String get catalogDeleteTitle => 'Slet element?';

  @override
  String catalogDeleteMessage(String description) {
    return 'Slet \"$description\"? Dette kan ikke fortrydes.';
  }

  @override
  String get commonDone => 'Færdig';

  @override
  String get estimateListTitle => 'Tilbud';

  @override
  String get estimateListSearchHint => 'Søg i tilbud…';

  @override
  String get estimateListEmpty => 'Ingen tilbud endnu';

  @override
  String get estimateListTabAll => 'Alle';

  @override
  String get estimateListTabDraft => 'Kladde';

  @override
  String get estimateListTabSent => 'Sendt';

  @override
  String get estimateListTabAccepted => 'Accepteret';

  @override
  String get estimateListTabExpired => 'Udløbet';

  @override
  String get estimateCreateTitle => 'Nyt tilbud';

  @override
  String get estimateEditTitle => 'Rediger tilbud';

  @override
  String get estimateCreatedSnackbar => 'Tilbuddet blev gemt';

  @override
  String get estimateUpdatedSnackbar => 'Tilbuddet blev opdateret';

  @override
  String get estimateIssueDate => 'Udstedelsesdato';

  @override
  String get estimateExpiryDate => 'Udløbsdato';

  @override
  String get estimateExpiresPrefix => 'Udløber ';

  @override
  String get estimateConvertToInvoice => 'Konverter til faktura';

  @override
  String get estimateConvertedSnackbar =>
      'Tilbuddet blev konverteret til faktura';

  @override
  String get estimateConvertFailed => 'Kunne ikke konvertere tilbuddet';

  @override
  String get estimateMarkSent => 'Markér som sendt';

  @override
  String get estimateMarkAccepted => 'Markér som accepteret';

  @override
  String get estimateMarkDeclined => 'Markér som afvist';

  @override
  String get estimateConvertedTitle => 'Konverteret';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'Konverteret til faktura $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'TILBUDSTOTAL';

  @override
  String get estimateStatusSent => 'Sendt';

  @override
  String get estimateStatusAccepted => 'Accepteret';

  @override
  String get estimateStatusDeclined => 'Afvist';

  @override
  String get estimateStatusExpired => 'Udløbet';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count åbne',
      one: '1 åben',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'Slet tilbuddet?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'Slet \"$estimateNumber\"? Dette kan ikke fortrydes.';
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
  String get recurringListTitle => 'Tilbagevendende fakturaer';

  @override
  String get recurringListEmpty => 'Ingen tilbagevendende fakturaer endnu';

  @override
  String get recurringListEmptySubtitle =>
      'Opsæt automatiske fakturaer til faste kunder og tjenester.';

  @override
  String get recurringCreateTitle => 'Ny tilbagevendende';

  @override
  String get recurringEditTitle => 'Rediger tilbagevendende';

  @override
  String get recurringCreatedSnackbar => 'Tilbagevendende faktura gemt';

  @override
  String get recurringUpdatedSnackbar => 'Tilbagevendende faktura opdateret';

  @override
  String get recurringDeleteTitle => 'Slet den tilbagevendende faktura?';

  @override
  String recurringDeleteMessage(String title) {
    return 'Slet \"$title\"? Eksisterende fakturaer fjernes ikke.';
  }

  @override
  String get recurringTitleLabel => 'Titel';

  @override
  String get recurringTitleHint => 'f.eks. Månedligt honorar';

  @override
  String get recurringClientLabel => 'Kunde';

  @override
  String get recurringFrequencyLabel => 'Frekvens';

  @override
  String get recurringFrequencyWeekly => 'Ugentligt';

  @override
  String get recurringFrequencyBiweekly => 'Hver anden uge';

  @override
  String get recurringFrequencyMonthly => 'Månedligt';

  @override
  String get recurringFrequencyQuarterly => 'Kvartalsvis';

  @override
  String get recurringFrequencyYearly => 'Årligt';

  @override
  String get recurringNextRun => 'Næste kørsel';

  @override
  String get recurringDueDays => 'Forfalder om';

  @override
  String get recurringDays => 'dage';

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
  String get reportsSubtitle => 'Virksomhedsanalyse';

  @override
  String get reportsEmpty => 'Opret fakturaer for at se rapporter';

  @override
  String get reportsCollected => 'Opkrævet';

  @override
  String get reportsOutstanding => 'Udestående';

  @override
  String get reportsMonthlyRevenue => 'Månedlig omsætning';

  @override
  String get reportsLast6Months => 'Seneste 6 måneder';

  @override
  String get reportsByStatus => 'Efter status';

  @override
  String get reportsTopClients => 'Topkunder';

  @override
  String get paymentLinkTitle => 'Betalingslink';

  @override
  String get paymentLinkNotSet =>
      'Intet betalingslink angivet i indstillingerne';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'Dit betalingslink er inkluderet i fakturaens PDF og kan kopieres fra fakturaens menu.';

  @override
  String get paymentLinkSaved => 'Betalingslink gemt';

  @override
  String get settingsPaymentLinkNotSet => 'Ikke angivet';

  @override
  String get invoiceDetailCopyPaymentLink => 'Kopiér betalingslink';

  @override
  String get paymentLinkCopied => 'Betalingslink kopieret';

  @override
  String get pdfPayOnline => 'Betal online';

  @override
  String get exportXml => 'Eksporter XML';

  @override
  String get exportXmlFailed => 'Kunne ikke eksportere XML';
}
