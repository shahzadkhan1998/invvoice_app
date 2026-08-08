// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Professionella fakturor på 2 minuter';

  @override
  String get bottomNavDashboard => 'Översikt';

  @override
  String get bottomNavInvoices => 'Fakturor';

  @override
  String get bottomNavClients => 'Kunder';

  @override
  String get bottomNavSettings => 'Inställningar';

  @override
  String get commonCancel => 'Avbryt';

  @override
  String get commonDelete => 'Ta bort';

  @override
  String get commonSave => 'Spara';

  @override
  String get commonSearch => 'Sök';

  @override
  String get commonBack => 'Tillbaka';

  @override
  String get commonContinue => 'Fortsätt';

  @override
  String get commonAdd => 'Lägg till';

  @override
  String get commonEdit => 'Redigera';

  @override
  String get commonCreate => 'Skapa';

  @override
  String get commonClear => 'Rensa';

  @override
  String get commonView => 'Visa';

  @override
  String get commonShare => 'Dela';

  @override
  String get commonExportPdf => 'Exportera PDF';

  @override
  String get commonSharePdf => 'Dela PDF';

  @override
  String get commonSaveChanges => 'Spara ändringar';

  @override
  String get commonRequired => 'Obligatoriskt';

  @override
  String get commonInvalid => 'Ogiltig';

  @override
  String get commonSendLink => 'Skicka länk';

  @override
  String get commonGeneratingPdf => 'Genererar PDF...';

  @override
  String get dashboardGreetingMorning => 'God morgon';

  @override
  String get dashboardGreetingAfternoon => 'God eftermiddag';

  @override
  String get dashboardGreetingEvening => 'God kväll';

  @override
  String get dashboardSubtitle => 'Här är din företagsöversikt';

  @override
  String get dashboardOutstanding => 'Utestående';

  @override
  String get dashboardOverdue => 'Försenade';

  @override
  String get dashboardThisMonth => 'Denna månad';

  @override
  String get dashboardInvoices => 'fakturor';

  @override
  String dashboardPaidCount(Object count) {
    return '$count betalda';
  }

  @override
  String get dashboardRecentInvoices => 'Senaste fakturor';

  @override
  String get dashboardSeeAll => 'Visa alla';

  @override
  String get dashboardNotifications => 'Aviseringar';

  @override
  String get dashboardNotificationsHint =>
      'Håll koll på kassaflödet genom att regelbundet granska försenade och väntande fakturor.';

  @override
  String get dashboardNewInvoice => 'Ny faktura';

  @override
  String get dashboardNoInvoicesYet => 'Inga fakturor ännu';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Skapa din första professionella faktura på under 2 minuter';

  @override
  String get dashboardCreateInvoice => 'Skapa faktura';

  @override
  String get dashboardMarkPaid => 'Markera som betald';

  @override
  String get dashboardDuePrefix => 'Förfaller ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days dagar försenade';
  }

  @override
  String get deleteInvoiceTitle => 'Ta bort fakturan?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'Ta bort $invoiceNumber? Detta kan inte ångras.';
  }

  @override
  String get loginHeading => 'Välkommen tillbaka';

  @override
  String get loginSubtitle => 'Logga in på ditt InvoiceFlow-konto';

  @override
  String get loginEmailLabel => 'E-postadress';

  @override
  String get loginEmailHint => 'du@exempel.se';

  @override
  String get loginEmailRequired => 'E-post krävs';

  @override
  String get loginEmailInvalid => 'Ange en giltig e-postadress';

  @override
  String get loginPasswordLabel => 'Lösenord';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'Lösenord krävs';

  @override
  String get loginPasswordMinLength => 'Lösenordet måste vara minst 6 tecken';

  @override
  String get loginForgotPassword => 'Glömt lösenordet?';

  @override
  String get loginSignIn => 'Logga in';

  @override
  String get loginOrContinueWith => 'eller fortsätt med';

  @override
  String get loginContinueWithGoogle => 'Fortsätt med Google';

  @override
  String get loginNoAccount => 'Har du inget konto? ';

  @override
  String get loginSignUp => 'Skapa konto';

  @override
  String get loginResetPasswordTitle => 'Återställ lösenord';

  @override
  String get loginResetPasswordMessage =>
      'Ange din e-postadress så skickar vi en återställningslänk.';

  @override
  String get loginResetPasswordHint => 'du@exempel.se';

  @override
  String get loginResetLinkSent =>
      'Återställningslänk skickad! Kontrollera din e-post.';

  @override
  String get loginResetLinkFailed =>
      'Det gick inte att skicka återställningslänken.';

  @override
  String get registerHeading => 'Skapa konto';

  @override
  String get registerSubtitle => 'Börja skicka professionella fakturor idag';

  @override
  String get registerNameLabel => 'Fullständigt namn';

  @override
  String get registerNameHint => 'Anna Andersson';

  @override
  String get registerNameRequired => 'Namn krävs';

  @override
  String get registerNameMinLength => 'Namnet måste vara minst 2 tecken';

  @override
  String get registerEmailLabel => 'E-postadress';

  @override
  String get registerEmailHint => 'du@exempel.se';

  @override
  String get registerEmailRequired => 'E-post krävs';

  @override
  String get registerEmailInvalid => 'Ange en giltig e-postadress';

  @override
  String get registerPasswordLabel => 'Lösenord';

  @override
  String get registerPasswordHint => 'Minst 6 tecken';

  @override
  String get registerPasswordRequired => 'Lösenord krävs';

  @override
  String get registerPasswordMinLength =>
      'Lösenordet måste vara minst 6 tecken';

  @override
  String get registerConfirmPasswordLabel => 'Bekräfta lösenord';

  @override
  String get registerConfirmPasswordHint => 'Upprepa ditt lösenord';

  @override
  String get registerConfirmPasswordRequired => 'Bekräfta ditt lösenord';

  @override
  String get registerPasswordsDoNotMatch => 'Lösenorden matchar inte';

  @override
  String get registerCreateAccount => 'Skapa konto';

  @override
  String get registerHaveAccount => 'Har du redan ett konto? ';

  @override
  String get registerSignIn => 'Logga in';

  @override
  String get authTermsOfService => 'Användarvillkor';

  @override
  String get authPrivacyPolicy => 'Integritetspolicy';

  @override
  String get authAgreeRequired =>
      'Acceptera användarvillkoren och integritetspolicyn för att fortsätta';

  @override
  String get loginAgreePrefix => 'Genom att fortsätta godkänner du våra ';

  @override
  String get registerAgreePrefix => 'Jag godkänner ';

  @override
  String get authAgreeAnd => ' och ';

  @override
  String get authTermsSheet =>
      'Dessa användarvillkor styr din användning av InvoiceFlow. Genom att komma åt eller använda appen samtycker du till att vara bunden av dessa villkor.\n\n1. Du är ansvarig för riktigheten i de fakturor, offerter och andra uppgifter du skapar.\n2. Appen tillhandahålls \"i befintligt skick\" utan garantier av något slag, vare sig uttryckliga eller underförstådda.\n3. Vi ansvarar inte för förluster som uppstår till följd av din användning av tjänsten.\n4. Du får inte använda appen för olagliga eller otillåtna ändamål.\n5. Vi kan uppdatera dessa villkor från tid till annan; fortsatt användning av appen innebär att du godkänner de uppdaterade villkoren.';

  @override
  String get authPrivacySheet =>
      'Din integritet är viktig för oss.\n\n1. Datalagring: Dina fakturor, kunder och inställningar lagras lokalt på din enhet.\n2. Molnsynkronisering: Om du loggar in synkroniseras dina uppgifter till ditt konto så att de är tillgängliga på alla dina enheter.\n3. Vi säljer eller delar aldrig din personliga information.\n4. Analys: Vi kan samla in anonymiserad användningsdata för att hjälpa till att förbättra appen.\n5. Kontakt: För frågor om integritet, kontakta support@invoiceflow.app.';

  @override
  String get authErrorWeakPassword => 'Lösenordet är för svagt';

  @override
  String get authErrorEmailAlreadyInUse => 'Kontot finns redan';

  @override
  String get authErrorUserNotFound =>
      'Ingen användare hittades med den här e-postadressen';

  @override
  String get authErrorWrongPassword => 'Fel lösenord';

  @override
  String get authErrorInvalidEmail => 'Ogiltig e-postadress';

  @override
  String get authErrorTooManyRequests => 'För många försök. Försök igen senare';

  @override
  String get authErrorDefault => 'Autentisering misslyckades. Försök igen.';

  @override
  String get authErrorGoogleSignInFailed => 'Google-inloggning misslyckades.';

  @override
  String get invoiceListTitle => 'Fakturor';

  @override
  String get invoiceListSearchHint => 'Sök fakturor...';

  @override
  String get invoiceListSortDate => 'Sortera efter datum';

  @override
  String get invoiceListSortAmount => 'Sortera efter belopp';

  @override
  String get invoiceListSortClient => 'Sortera efter kund';

  @override
  String get invoiceListTabAll => 'Alla';

  @override
  String get invoiceListTabPaid => 'Betalda';

  @override
  String get invoiceListTabPending => 'Väntande';

  @override
  String get invoiceListTabOverdue => 'Försenade';

  @override
  String get invoiceListTabDraft => 'Utkast';

  @override
  String get invoiceListEmpty => 'Inga fakturor hittades';

  @override
  String get invoiceCreateTitle => 'Ny faktura';

  @override
  String get invoiceEditTitle => 'Redigera faktura';

  @override
  String get invoiceSaveDraft => 'Spara utkast';

  @override
  String get invoiceStepClient => 'Kund';

  @override
  String get invoiceStepItems => 'Artiklar';

  @override
  String get invoiceStepReview => 'Granska';

  @override
  String get invoiceSelectClient => 'Välj en kund';

  @override
  String get invoiceSelectClientSubtitle => 'Välj vem fakturan är till för';

  @override
  String get invoiceSearchClients => 'Sök kunder...';

  @override
  String get invoiceAddNewClient => 'Lägg till ny kund';

  @override
  String get invoiceNoClientsFound => 'Inga kunder hittades';

  @override
  String get invoiceSelectClientEmptyHint =>
      'Skapa din första kund för att börja skapa fakturor';

  @override
  String get invoiceAddLineItem => 'Lägg till radartikel';

  @override
  String get invoiceItemDescription => 'Beskrivning';

  @override
  String get invoiceItemDescriptionHint => 't.ex. Webbutveckling';

  @override
  String get invoiceItemQuickAdd => 'Snabbval:';

  @override
  String get invoiceItemQty => 'Antal';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Pris';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Lägg till artikel';

  @override
  String get invoiceLineItems => 'Radartiklar';

  @override
  String get invoiceLineItemsSubtitle => 'Lägg till tjänster eller produkter';

  @override
  String get invoiceNoItems =>
      'Inga artiklar ännu. Lägg till din första artikel.';

  @override
  String get invoiceTaxRate => 'Momssats (%)';

  @override
  String get invoiceSubtotal => 'Delsumma';

  @override
  String invoiceTax(Object taxRate) {
    return 'Moms ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'TOTALT';

  @override
  String get invoiceReviewHeading => 'Granska och slutför';

  @override
  String get invoiceReviewSubtitle =>
      'Ange datum, lägg till anteckningar, logotyp och signatur';

  @override
  String get invoiceCompanyLogo => 'Företagslogotyp';

  @override
  String get invoiceAddLogo => 'Lägg till logotyp';

  @override
  String get invoiceInvoiceDate => 'Fakturadatum';

  @override
  String get invoiceDueDate => 'Förfallodatum';

  @override
  String get invoiceNotesLabel => 'Anteckningar (valfritt)';

  @override
  String get invoiceNotesHint => 'Tack för ditt förtroende!';

  @override
  String get invoicePaymentTermsLabel => 'Betalningsvillkor (valfritt)';

  @override
  String get invoicePaymentTermsHint => 'Betalning inom 30 dagar';

  @override
  String get invoiceSignatureLabel => 'Signatur';

  @override
  String get invoiceSignatureOverwrite =>
      'Befintlig signatur sparas. Rita ovanpå för att ersätta.';

  @override
  String get invoiceCreatedSnackbar => 'Faktura skapad!';

  @override
  String get invoiceUpdatedSnackbar => 'Faktura uppdaterad!';

  @override
  String get invoiceDetailTitle => 'FAKTURA';

  @override
  String get invoiceDetailMarkAsPaid => 'Markera som betald';

  @override
  String get invoiceDetailTotalAmount => 'Totalt belopp';

  @override
  String get invoiceDetailIssued => 'Utfärdad';

  @override
  String get invoiceDetailDue => 'Förfaller';

  @override
  String get invoiceDetailPaid => 'Betald';

  @override
  String get invoiceDetailBillTo => 'Fakturera till';

  @override
  String get invoiceDetailItems => 'Artiklar';

  @override
  String get invoiceDetailNotes => 'Anteckningar';

  @override
  String get invoiceDetailSignature => 'Signatur';

  @override
  String get invoiceDetailMarkedPaidSnackbar => 'Faktura markerad som betald!';

  @override
  String get invoiceDetailPdfFailed => 'Det gick inte att generera PDF';

  @override
  String get clientListTitle => 'Kunder';

  @override
  String get clientListSearchHint => 'Sök kunder...';

  @override
  String get clientListTotalClients => 'Totalt antal kunder';

  @override
  String get clientListTotalBilled => 'Totalt fakturerat';

  @override
  String get clientListEmptySearch => 'Inga kunder hittades';

  @override
  String get clientListEmpty => 'Inga kunder ännu';

  @override
  String get clientListEmptySubtitle =>
      'Lägg till din första kund för att börja skapa fakturor';

  @override
  String get clientListAddClient => 'Lägg till kund';

  @override
  String get clientListTotalBilledLabel => 'totalt fakturerat';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count faktura';
  }

  @override
  String get clientCreateTitle => 'Ny kund';

  @override
  String get clientEditTitle => 'Redigera kund';

  @override
  String get clientBasicInfo => 'Grundläggande information';

  @override
  String get clientNameLabel => 'Fullständigt namn *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'Namn krävs';

  @override
  String get clientNameTooShort => 'Namnet är för kort';

  @override
  String get clientEmailLabel => 'E-postadress *';

  @override
  String get clientEmailHint => 'fakturering@foretag.se';

  @override
  String get clientEmailRequired => 'E-post krävs';

  @override
  String get clientEmailInvalid => 'Ange en giltig e-postadress';

  @override
  String get clientPhoneLabel => 'Telefonnummer';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'Adress';

  @override
  String get clientAddressLabel => 'Gatuadress';

  @override
  String get clientAddressHint => '123 Business Park, Kontor 45';

  @override
  String get clientCityLabel => 'Stad / Land';

  @override
  String get clientCityHint => 'Stockholm, Sverige';

  @override
  String get clientBillingDefaults => 'Faktureringsinställningar';

  @override
  String get clientDefaultCurrency => 'Standardvaluta';

  @override
  String get clientDefaultTaxRate => 'Standardmomssats (VAT/GST)';

  @override
  String get clientVatLabel => 'VAT / skatteregistreringsnummer';

  @override
  String get clientVatHint => '123456789012345 (valfritt)';

  @override
  String get clientUpdateButton => 'Uppdatera kund';

  @override
  String get clientAddButton => 'Lägg till kund';

  @override
  String get clientUpdatedSnackbar => 'Kund uppdaterad!';

  @override
  String get clientAddedSnackbar => 'Kund tillagd!';

  @override
  String get clientDetailInvoices => 'Fakturor';

  @override
  String get clientDetailTotalBilled => 'Totalt fakturerat';

  @override
  String get clientDetailOutstanding => 'Utestående';

  @override
  String get clientDetailEdit => 'Redigera';

  @override
  String get clientDetailNewInvoice => 'Ny faktura';

  @override
  String get clientDetailEmailClient => 'E-posta kunden';

  @override
  String get clientDetailClientDetails => 'Kunduppgifter';

  @override
  String get clientDetailEmail => 'E-post';

  @override
  String get clientDetailPhone => 'Telefon';

  @override
  String get clientDetailAddress => 'Adress';

  @override
  String get clientDetailCity => 'Stad';

  @override
  String get clientDetailCurrency => 'Valuta';

  @override
  String get clientDetailTaxRate => 'Momssats';

  @override
  String get clientDetailVatNumber => 'VAT-nummer';

  @override
  String get clientDetailInvoiceHistory => 'Fakturahistorik';

  @override
  String get clientDetailNoInvoices => 'Inga fakturor ännu för den här kunden';

  @override
  String get deleteClientTitle => 'Ta bort kunden?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'Ta bort $clientName? Detta kan inte ångras.';
  }

  @override
  String get settingsTitle => 'Inställningar';

  @override
  String get settingsYourName => 'Ditt namn';

  @override
  String get settingsBackupTitle => 'Säkerhetskopiera dina fakturor';

  @override
  String get settingsBackupDescription =>
      'Logga in för att synkronisera dina data säkert och komma åt dem var som helst.';

  @override
  String get settingsSignInRegister => 'Logga in eller registrera dig';

  @override
  String get settingsProUpsell =>
      'Uppgradera till Pro för obegränsade fakturor, molnsynk och inga vattenstämplar.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'Du har nått gränsen på $limit fakturor i gratispaketet. Uppgradera till Pro för obegränsade fakturor och molnsynk.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'Du har nått gränsen på $limit kunder i gratispaketet. Uppgradera till Pro för obegränsade kunder och molnsynk.';
  }

  @override
  String get settingsUpgradePro => 'Uppgradera';

  @override
  String get settingsBusinessSection => 'FÖRETAGSINSTÄLLNINGAR';

  @override
  String get settingsBusinessDetails => 'Företagsuppgifter';

  @override
  String get settingsBusinessDetailsSubtitle => 'Ange ditt företagsnamn';

  @override
  String get settingsInvoicePrefix => 'Fakturaprefix';

  @override
  String get settingsDefaultCurrency => 'Standardvaluta';

  @override
  String get settingsAppSection => 'APPINSTÄLLNINGAR';

  @override
  String get settingsDarkMode => 'Mörkt läge';

  @override
  String get settingsDailyNotification => 'Daglig avisering';

  @override
  String get settingsDailyNotificationNotSet => 'Inte angivet';

  @override
  String get settingsLanguage => 'Språk';

  @override
  String get settingsLanguageLabel => 'Svenska';

  @override
  String get languageEnglish => 'Engelska';

  @override
  String get languageArabic => 'Arabiska';

  @override
  String get languageFrench => 'Franska';

  @override
  String get languageSpanish => 'Spanska';

  @override
  String get languageUrdu => 'Urdu';

  @override
  String get languageChinese => 'Kinesiska';

  @override
  String get settingsAboutSection => 'OM';

  @override
  String get settingsRateApp => 'Betygsätt appen';

  @override
  String get settingsHelpSupport => 'Hjälp och support';

  @override
  String get settingsPrivacyPolicy => 'Integritetspolicy';

  @override
  String get settingsHelpSupportSheet =>
      'Behöver du hjälp? Kontakta support@invoiceflow.app så återkommer vi inom 24 timmar.';

  @override
  String get settingsPrivacySheet =>
      'Dina data lagras lokalt på din enhet. Vi säljer eller delar aldrig din personliga information.';

  @override
  String get settingsVersion => 'Version';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Logga ut';

  @override
  String get settingsEditProfile => 'Redigera profil';

  @override
  String get settingsProfileNameLabel => 'Fullständigt namn';

  @override
  String get settingsProfileNameHint => 'Ditt namn';

  @override
  String get settingsBusinessNameLabel => 'Företagsnamn';

  @override
  String get settingsBusinessNameHint => 'Ditt företag AB';

  @override
  String get settingsBusinessEmailLabel => 'Företagets e-post';

  @override
  String get settingsBusinessEmailHint => 'fakturering@foretag.se';

  @override
  String get settingsPhoneLabel => 'Telefon';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'Adress';

  @override
  String get settingsAddressHint => 'Stockholm, Sverige';

  @override
  String get settingsBusinessDetailsSaved => 'Företagsuppgifterna sparades!';

  @override
  String get settingsInvoicePrefixTitle => 'Fakturanumrets prefix';

  @override
  String get settingsInvoicePrefixHint => 't.ex. INV-, #, Fakta-';

  @override
  String get settingsPrefixSaved => 'Fakturaprefix sparat';

  @override
  String get settingsNotificationScheduled => 'Daglig avisering schemalagd!';

  @override
  String get settingsSignOutTitle => 'Logga ut?';

  @override
  String get settingsSignOutMessage =>
      'Är du säker på att du vill logga ut från InvoiceFlow?';

  @override
  String get settingsSignedOut => 'Utloggningen lyckades.';

  @override
  String get statusPaid => 'Betald';

  @override
  String get statusOverdue => 'Försenad';

  @override
  String get statusPending => 'Väntande';

  @override
  String get statusDraft => 'Utkast';

  @override
  String get statusCancelled => 'Avbruten';

  @override
  String get notificationChannelName => 'Dagliga påminnelser';

  @override
  String get notificationChannelDescription =>
      'Påminner dig om att granska dina fakturor dagligen';

  @override
  String get notificationTitle => 'Fakturapåminnelse';

  @override
  String get notificationBody =>
      'Dags att granska dina senaste fakturor och följa upp väntande betalningar.';

  @override
  String get pdfInvoice => 'FAKTURA';

  @override
  String get pdfInvoiceNumber => 'Faktura nr:';

  @override
  String get pdfDate => 'Datum:';

  @override
  String get pdfDueDate => 'Förfallodatum:';

  @override
  String get pdfBillTo => 'FAKTURERA TILL:';

  @override
  String get pdfDescription => 'Beskrivning';

  @override
  String get pdfQty => 'Antal';

  @override
  String get pdfRate => 'Pris';

  @override
  String get pdfAmount => 'Belopp';

  @override
  String get pdfSubtotal => 'Delsumma:';

  @override
  String pdfTax(Object taxRate) {
    return 'Moms ($taxRate%):';
  }

  @override
  String get pdfTotal => 'TOTALT:';

  @override
  String get pdfSignature => 'Signatur:';

  @override
  String get pdfNotes => 'Anteckningar:';

  @override
  String get pdfPaymentTerms => 'Betalningsvillkor:';

  @override
  String get pdfThankYou => 'Tack för ditt förtroende!';

  @override
  String get quickAddWebDesign => 'Webbdesign';

  @override
  String get quickAddDevelopment => 'Utveckling';

  @override
  String get quickAddConsulting => 'Konsulttjänster';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Innehållsskrivande';

  @override
  String get paywallTitle => 'Lås upp InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'Gå obegränsat och synka överallt. Avsluta när som helst.';

  @override
  String get paywallFeatureUnlimited => 'Obegränsade fakturor och kunder';

  @override
  String get paywallFeatureSync => 'Molnsynk mellan enheter';

  @override
  String get paywallFeatureNoWatermark => 'Inga vattenstämplar, någonsin';

  @override
  String get paywallMonthly => 'Månadsvis';

  @override
  String get paywallMonthlySub => 'Faktureras månadsvis';

  @override
  String get paywallYearly => 'Årligen';

  @override
  String get paywallYearlySub => 'Bästa värdet — 2 månader gratis';

  @override
  String get paywallRestore => 'Återställ köp';

  @override
  String get paywallTerms =>
      'Prenumerationer förnyas automatiskt. Hantera i appbutikens inställningar.';

  @override
  String get purchaseSuccessTitle => 'Du är Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'Obegränsade fakturor, molnsynk och inga vattenstämplar är nu upplåsta. Tack!';

  @override
  String get purchaseSuccessContinue => 'Fortsätt';

  @override
  String get paywallLoading => 'Läser in planer…';

  @override
  String get paywallLoadError =>
      'Det gick inte att läsa in planerna. Kontrollera anslutningen och försök igen.';

  @override
  String get paywallNoOffering => 'Det finns inga tillgängliga planer just nu.';

  @override
  String get purchaseRestored => 'Köp återställda';

  @override
  String get purchaseErrorGeneric => 'Köpet misslyckades. Försök igen.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro är aktivt — obegränsade fakturor och kunder utan vattenstämplar';

  @override
  String get settingsFreePlan => 'Gratis plan';

  @override
  String get settingsFreeHint =>
      'Uppgradera för obegränsade fakturor, molnsynkronisering och mer';

  @override
  String get settingsUpgradeToPro => 'Uppgradera till Pro';

  @override
  String get settingsManageSubscription => 'Hantera prenumeration';

  @override
  String get customerCenterFailed =>
      'Det gick inte att öppna prenumerationshanteringen.';

  @override
  String get onboardingSkip => 'Hoppa över';

  @override
  String get onboardingNext => 'Nästa';

  @override
  String get onboardingGetStarted => 'Kom igång';

  @override
  String get onboardingWelcomeTitle => 'Fakturor på 2 minuter';

  @override
  String get onboardingWelcomeBody =>
      'Skapa professionella PDF-fakturor åt dina kunder – snabbt och snyggt.';

  @override
  String get onboardingSyncTitle => 'Synka överallt';

  @override
  String get onboardingSyncBody =>
      'Logga in för att säkert säkerhetskopiera dina data till molnet och komma åt dem från vilken enhet som helst.';

  @override
  String get onboardingProTitle => 'Gå obegränsat med Pro';

  @override
  String get onboardingProBody =>
      'Lås upp obegränsade fakturor, molnsynk och ta bort vattenstämplar med InvoiceFlow Pro.';

  @override
  String get settingsAccentColor => 'Accentfärg';

  @override
  String get settingsAccentColorHint =>
      'Anpassa appen med en färg som du väljer.';

  @override
  String get settingsCountry => 'Land';

  @override
  String get settingsTaxId => 'Skatteregistreringsnummer';

  @override
  String get settingsTaxIdNotSet => 'Inte angivet';

  @override
  String get settingsTaxIdHint => 't.ex. 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Skattenummer sparat';

  @override
  String get catalogTitle => 'Produkter och tjänster';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count varor',
      one: '$count vara',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'Inga produkter ännu';

  @override
  String get catalogEmptySubtitle =>
      'Spara återanvändbara produkter och tjänster för att lägga till dem i fakturor snabbare.';

  @override
  String get catalogFromSaved => 'Från din katalog';

  @override
  String get catalogSaveToCatalog => 'Spara i katalogen för återanvändning';

  @override
  String get catalogAddSnackbar => 'Tillagd i katalogen';

  @override
  String get catalogDeleteTitle => 'Ta bort artikel?';

  @override
  String catalogDeleteMessage(String description) {
    return 'Ta bort \"$description\"? Detta kan inte ångras.';
  }

  @override
  String get commonDone => 'Klar';

  @override
  String get estimateListTitle => 'Offerter';

  @override
  String get estimateListSearchHint => 'Sök offerter…';

  @override
  String get estimateListEmpty => 'Inga offerter ännu';

  @override
  String get estimateListTabAll => 'Alla';

  @override
  String get estimateListTabDraft => 'Utkast';

  @override
  String get estimateListTabSent => 'Skickad';

  @override
  String get estimateListTabAccepted => 'Accepterad';

  @override
  String get estimateListTabExpired => 'Utgången';

  @override
  String get estimateCreateTitle => 'Ny offert';

  @override
  String get estimateEditTitle => 'Redigera offert';

  @override
  String get estimateCreatedSnackbar => 'Offert sparad';

  @override
  String get estimateUpdatedSnackbar => 'Offert uppdaterad';

  @override
  String get estimateIssueDate => 'Utfärdandedatum';

  @override
  String get estimateExpiryDate => 'Sista giltighetsdatum';

  @override
  String get estimateExpiresPrefix => 'Gäller till ';

  @override
  String get estimateConvertToInvoice => 'Konvertera till faktura';

  @override
  String get estimateConvertedSnackbar => 'Offerten konverterades till faktura';

  @override
  String get estimateConvertFailed => 'Det gick inte att konvertera offerten';

  @override
  String get estimateMarkSent => 'Markera som skickad';

  @override
  String get estimateMarkAccepted => 'Markera som accepterad';

  @override
  String get estimateMarkDeclined => 'Markera som avböjd';

  @override
  String get estimateConvertedTitle => 'Konverterad';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'Konverterad till faktura $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'OFFERTTOTAL';

  @override
  String get estimateStatusSent => 'Skickad';

  @override
  String get estimateStatusAccepted => 'Accepterad';

  @override
  String get estimateStatusDeclined => 'Avböjd';

  @override
  String get estimateStatusExpired => 'Utgången';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count öppna',
      one: '1 öppen',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'Ta bort offerten?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'Ta bort \"$estimateNumber\"? Detta kan inte ångras.';
  }

  @override
  String get estimatePdfFailed => 'Det gick inte att generera PDF';

  @override
  String get pdfEstimate => 'OFFERT';

  @override
  String get pdfEstimateNumber => 'Offert nr:';

  @override
  String get pdfValidUntil => 'Giltig till:';

  @override
  String get invoiceDetailPaymentTerms => 'Betalningsvillkor';

  @override
  String get recurringListTitle => 'Återkommande fakturor';

  @override
  String get recurringListEmpty => 'Inga återkommande fakturor ännu';

  @override
  String get recurringListEmptySubtitle =>
      'Ställ in automatiska fakturor för återkommande kunder och tjänster.';

  @override
  String get recurringCreateTitle => 'Ny återkommande';

  @override
  String get recurringEditTitle => 'Redigera återkommande';

  @override
  String get recurringCreatedSnackbar => 'Återkommande faktura sparad';

  @override
  String get recurringUpdatedSnackbar => 'Återkommande faktura uppdaterad';

  @override
  String get recurringDeleteTitle => 'Ta bort den återkommande fakturan?';

  @override
  String recurringDeleteMessage(String title) {
    return 'Ta bort \"$title\"? Befintliga fakturor tas inte bort.';
  }

  @override
  String get recurringTitleLabel => 'Rubrik';

  @override
  String get recurringTitleHint => 't.ex. Månadsarvode';

  @override
  String get recurringClientLabel => 'Kund';

  @override
  String get recurringFrequencyLabel => 'Frekvens';

  @override
  String get recurringFrequencyWeekly => 'Varje vecka';

  @override
  String get recurringFrequencyBiweekly => 'Varannan vecka';

  @override
  String get recurringFrequencyMonthly => 'Varje månad';

  @override
  String get recurringFrequencyQuarterly => 'Varje kvartal';

  @override
  String get recurringFrequencyYearly => 'Varje år';

  @override
  String get recurringNextRun => 'Nästa körning';

  @override
  String get recurringDueDays => 'Förfaller om';

  @override
  String get recurringDays => 'dagar';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aktiva',
      one: '1 aktiv',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'Rapporter';

  @override
  String get reportsSubtitle => 'Företagsanalys';

  @override
  String get reportsEmpty => 'Skapa fakturor för att se rapporter';

  @override
  String get reportsCollected => 'Inkasserat';

  @override
  String get reportsOutstanding => 'Utestående';

  @override
  String get reportsMonthlyRevenue => 'Månatliga intäkter';

  @override
  String get reportsLast6Months => 'Senaste 6 månaderna';

  @override
  String get reportsByStatus => 'Efter status';

  @override
  String get reportsTopClients => 'Bästa kunderna';

  @override
  String get paymentLinkTitle => 'Betalningslänk';

  @override
  String get paymentLinkNotSet =>
      'Ingen betalningslänk har angetts i inställningarna';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'Din betalningslänk ingår i fakturans PDF och kan kopieras från fakturamentyn.';

  @override
  String get paymentLinkSaved => 'Betalningslänken sparades';

  @override
  String get settingsPaymentLinkNotSet => 'Inte angivet';

  @override
  String get invoiceDetailCopyPaymentLink => 'Kopiera betalningslänk';

  @override
  String get paymentLinkCopied => 'Betalningslänken kopierad';

  @override
  String get pdfPayOnline => 'Betala online';

  @override
  String get exportXml => 'Exportera XML';

  @override
  String get exportXmlFailed => 'Det gick inte att exportera XML';
}
