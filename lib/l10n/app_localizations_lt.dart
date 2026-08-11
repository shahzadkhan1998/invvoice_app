// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsLt extends AppLocalizations {
  AppLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle =>
      'Profesionalios sąskaitos faktūros per 2 minutes';

  @override
  String get bottomNavDashboard => 'Valdymo skydelis';

  @override
  String get bottomNavInvoices => 'Sąskaitos faktūros';

  @override
  String get bottomNavClients => 'Klientai';

  @override
  String get bottomNavSettings => 'Nustatymai';

  @override
  String get commonCancel => 'Atšaukti';

  @override
  String get commonDelete => 'Ištrinti';

  @override
  String get commonSave => 'Išsaugoti';

  @override
  String get commonSearch => 'Ieškoti';

  @override
  String get commonBack => 'Atgal';

  @override
  String get commonContinue => 'Tęsti';

  @override
  String get commonAdd => 'Pridėti';

  @override
  String get commonEdit => 'Redaguoti';

  @override
  String get commonCreate => 'Sukurti';

  @override
  String get commonClear => 'Išvalyti';

  @override
  String get commonView => 'Peržiūrėti';

  @override
  String get commonShare => 'Bendrinti';

  @override
  String get commonExportPdf => 'Eksportuoti PDF';

  @override
  String get commonSharePdf => 'Bendrinti PDF';

  @override
  String get commonSaveChanges => 'Išsaugoti pakeitimus';

  @override
  String get commonRequired => 'Privaloma';

  @override
  String get commonInvalid => 'Neteisinga';

  @override
  String get commonSendLink => 'Siųsti nuorodą';

  @override
  String get commonGeneratingPdf => 'Generuojamas PDF...';

  @override
  String get dashboardGreetingMorning => 'Labas rytas';

  @override
  String get dashboardGreetingAfternoon => 'Laba diena';

  @override
  String get dashboardGreetingEvening => 'Labas vakaras';

  @override
  String get dashboardSubtitle => 'Štai jūsų verslo apžvalga';

  @override
  String get dashboardOutstanding => 'Neapmokėta';

  @override
  String get dashboardOverdue => 'Pradelsta';

  @override
  String get dashboardThisMonth => 'Šį mėnesį';

  @override
  String get dashboardInvoices => 'sąskaitos faktūros';

  @override
  String dashboardPaidCount(Object count) {
    return '$count apmokėta';
  }

  @override
  String get dashboardRecentInvoices => 'Naujausios sąskaitos faktūros';

  @override
  String get dashboardSeeAll => 'Rodyti visus';

  @override
  String get dashboardNotifications => 'Pranešimai';

  @override
  String get dashboardNotificationsHint =>
      'Sekite pinigų srautus reguliariai peržiūrėdami pradelstas ir neapmokėtas sąskaitas faktūras.';

  @override
  String get dashboardNewInvoice => 'Nauja sąskaita faktūra';

  @override
  String get dashboardNoInvoicesYet => 'Sąskaitų faktūrų dar nėra';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Sukurkite pirmąją profesionalią sąskaitą faktūrą greičiau nei per 2 minutes';

  @override
  String get dashboardCreateInvoice => 'Sukurti sąskaitą faktūrą';

  @override
  String get dashboardMarkPaid => 'Pažymėti apmokėtą';

  @override
  String get dashboardDuePrefix => 'Terminas: ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days d. pradelsta';
  }

  @override
  String get deleteInvoiceTitle => 'Ištrinti sąskaitą faktūrą?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'Ištrinti $invoiceNumber? Šio veiksmo atšaukti negalima.';
  }

  @override
  String get loginHeading => 'Sveiki sugrįžę';

  @override
  String get loginSubtitle => 'Prisijunkite prie savo InvoiceFlow paskyros';

  @override
  String get loginEmailLabel => 'El. pašto adresas';

  @override
  String get loginEmailHint => 'you@example.com';

  @override
  String get loginEmailRequired => 'El. paštas yra privalomas';

  @override
  String get loginEmailInvalid => 'Įveskite tinkamą el. pašto adresą';

  @override
  String get loginPasswordLabel => 'Slaptažodis';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'Slaptažodis yra privalomas';

  @override
  String get loginPasswordMinLength => 'Slaptažodis turi būti bent 6 simbolių';

  @override
  String get loginForgotPassword => 'Pamiršote slaptažodį?';

  @override
  String get loginSignIn => 'Prisijungti';

  @override
  String get loginOrContinueWith => 'arba tęskite su';

  @override
  String get loginContinueWithGoogle => 'Tęsti su Google';

  @override
  String get loginNoAccount => 'Neturite paskyros? ';

  @override
  String get loginSignUp => 'Registruotis';

  @override
  String get loginResetPasswordTitle => 'Slaptažodžio atkūrimas';

  @override
  String get loginResetPasswordMessage =>
      'Įveskite el. pašto adresą, ir mes atsiųsime atkūrimo nuorodą.';

  @override
  String get loginResetPasswordHint => 'you@example.com';

  @override
  String get loginResetLinkSent =>
      'Atkūrimo nuoroda išsiųsta! Patikrinkite el. paštą.';

  @override
  String get loginResetLinkFailed => 'Nepavyko išsiųsti atkūrimo nuorodos.';

  @override
  String get registerHeading => 'Sukurti paskyrą';

  @override
  String get registerSubtitle =>
      'Pradėkite siųsti profesionalias sąskaitas faktūras jau šiandien';

  @override
  String get registerNameLabel => 'Vardas, pavardė';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => 'Vardas yra privalomas';

  @override
  String get registerNameMinLength => 'Vardas turi būti bent 2 simbolių';

  @override
  String get registerEmailLabel => 'El. pašto adresas';

  @override
  String get registerEmailHint => 'you@example.com';

  @override
  String get registerEmailRequired => 'El. paštas yra privalomas';

  @override
  String get registerEmailInvalid => 'Įveskite tinkamą el. pašto adresą';

  @override
  String get registerPasswordLabel => 'Slaptažodis';

  @override
  String get registerPasswordHint => 'Bent 6 simboliai';

  @override
  String get registerPasswordRequired => 'Slaptažodis yra privalomas';

  @override
  String get registerPasswordMinLength =>
      'Slaptažodis turi būti bent 6 simbolių';

  @override
  String get registerConfirmPasswordLabel => 'Pakartokite slaptažodį';

  @override
  String get registerConfirmPasswordHint => 'Pakartokite slaptažodį';

  @override
  String get registerConfirmPasswordRequired => 'Patvirtinkite slaptažodį';

  @override
  String get registerPasswordsDoNotMatch => 'Slaptažodžiai nesutampa';

  @override
  String get registerCreateAccount => 'Sukurti paskyrą';

  @override
  String get registerHaveAccount => 'Jau turite paskyrą? ';

  @override
  String get registerSignIn => 'Prisijungti';

  @override
  String get authTermsOfService => 'Paslaugų teikimo sąlygos';

  @override
  String get authPrivacyPolicy => 'Privatumo politika';

  @override
  String get authAgreeRequired =>
      'Norėdami tęsti, sutikite su paslaugų teikimo sąlygomis ir privatumo politika';

  @override
  String get loginAgreePrefix => 'Tęsdami sutinkate su mūsų ';

  @override
  String get registerAgreePrefix => 'Sutinku su ';

  @override
  String get authAgreeAnd => ' ir ';

  @override
  String get authTermsSheet =>
      'Šios paslaugų teikimo sąlygos reglamentuoja jūsų „InvoiceFlow\" naudojimą. Naudodami programą arba ją pasiekdami sutinkate laikytis šių sąlygų.\n\n1. Jūs esate atsakingi už jūsų sukurtų sąskaitų faktūrų, sąmatų ir kitų duomenų tikslumą.\n2. Programa teikiama \"tokia, kokia yra\", be jokių garantijų, tiesioginių ar numanomų.\n3. Mes neatsakome už nuostolius, atsiradusius naudojant šią paslaugą.\n4. Programos negalima naudoti neteisėtais arba uždraustais tikslais.\n5. Šias sąlygas galime kartais atnaujinti; tolesnis programos naudojimas reiškia atnaujintų sąlygų priėmimą.';

  @override
  String get authPrivacySheet =>
      'Jūsų privatumas mums svarbus.\n\n1. Duomenų saugojimas: jūsų sąskaitos faktūros, klientai ir nustatymai saugomi lokaliai jūsų įrenginyje.\n2. Sinchronizavimas debesyje: prisijungę pamatysite, kad duomenys sinchronizuojami į jūsų paskyrą, kad būtų pasiekiami visuose jūsų įrenginiuose.\n3. Mes niekada neparduodame ir neatskleidžiame jūsų asmeninės informacijos.\n4. Analitika: programai tobulinti galime rinkti anoniminius naudojimo duomenis.\n5. Kontaktas: dėl visų su privatumu susijusių klausimų rašykite support@invoiceflow.app.';

  @override
  String get authErrorWeakPassword => 'Slaptažodis per silpnas';

  @override
  String get authErrorEmailAlreadyInUse => 'Tokia paskyra jau egzistuoja';

  @override
  String get authErrorUserNotFound => 'Naudotojas su šiuo el. paštu nerastas';

  @override
  String get authErrorWrongPassword => 'Neteisingas slaptažodis';

  @override
  String get authErrorInvalidEmail => 'Neteisingas el. pašto adresas';

  @override
  String get authErrorTooManyRequests => 'Per daug bandymų. Pabandykite vėliau';

  @override
  String get authErrorDefault => 'Prisijungti nepavyko. Bandykite dar kartą.';

  @override
  String get authErrorGoogleSignInFailed => 'Prisijungti per Google nepavyko.';

  @override
  String get invoiceListTitle => 'Sąskaitos faktūros';

  @override
  String get invoiceListSearchHint => 'Ieškoti sąskaitų faktūrų...';

  @override
  String get invoiceListSortDate => 'Rūšiuoti pagal datą';

  @override
  String get invoiceListSortAmount => 'Rūšiuoti pagal sumą';

  @override
  String get invoiceListSortClient => 'Rūšiuoti pagal klientą';

  @override
  String get invoiceListTabAll => 'Visos';

  @override
  String get invoiceListTabPaid => 'Apmokėtos';

  @override
  String get invoiceListTabPending => 'Laukiančios';

  @override
  String get invoiceListTabOverdue => 'Pradelstos';

  @override
  String get invoiceListTabDraft => 'Juodraščiai';

  @override
  String get invoiceListEmpty => 'Sąskaitų faktūrų nerasta';

  @override
  String get invoiceCreateTitle => 'Nauja sąskaita faktūra';

  @override
  String get invoiceEditTitle => 'Redaguoti sąskaitą faktūrą';

  @override
  String get invoiceSaveDraft => 'Išsaugoti juodraštį';

  @override
  String get invoiceStepClient => 'Klientas';

  @override
  String get invoiceStepItems => 'Prekės';

  @override
  String get invoiceStepReview => 'Peržiūra';

  @override
  String get invoiceSelectClient => 'Pasirinkite klientą';

  @override
  String get invoiceSelectClientSubtitle =>
      'Pasirinkite, kam skirta ši sąskaita faktūra';

  @override
  String get invoiceSearchClients => 'Ieškoti klientų...';

  @override
  String get invoiceAddNewClient => 'Pridėti naują klientą';

  @override
  String get invoiceNoClientsFound => 'Klientų nerasta';

  @override
  String get invoiceSelectClientEmptyHint =>
      'Sukurkite pirmąjį klientą, kad pradėtumėte kurti sąskaitas faktūras';

  @override
  String get invoiceAddLineItem => 'Pridėti eilutę';

  @override
  String get invoiceItemDescription => 'Aprašymas';

  @override
  String get invoiceItemDescriptionHint => 'pvz., interneto svetainių kūrimas';

  @override
  String get invoiceItemQuickAdd => 'Greitas pridėjimas:';

  @override
  String get invoiceItemQty => 'Kiekis';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Įkainis';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Pridėti prekę';

  @override
  String get invoiceLineItems => 'Eilutės';

  @override
  String get invoiceLineItemsSubtitle => 'Pridėkite paslaugas ar produktus';

  @override
  String get invoiceNoItems => 'Prekių dar nėra. Pridėkite pirmąją prekę.';

  @override
  String get invoiceTaxRate => 'Mokesčio tarifas (%)';

  @override
  String get invoiceSubtotal => 'Tarpinė suma';

  @override
  String invoiceTax(Object taxRate) {
    return 'Mokestis ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'IŠ VISO';

  @override
  String get invoiceReviewHeading => 'Peržiūra ir užbaigimas';

  @override
  String get invoiceReviewSubtitle =>
      'Nustatykite datas, pridėkite pastabas, logotipą ir parašą';

  @override
  String get invoiceCompanyLogo => 'Įmonės logotipas';

  @override
  String get invoiceAddLogo => 'Pridėti logotipą';

  @override
  String get invoiceInvoiceDate => 'Sąskaitos faktūros data';

  @override
  String get invoiceDueDate => 'Apmokėjimo terminas';

  @override
  String get invoiceNotesLabel => 'Pastabos (neprivaloma)';

  @override
  String get invoiceNotesHint => 'Ačiū už bendradarbiavimą!';

  @override
  String get invoicePaymentTermsLabel => 'Apmokėjimo sąlygos (neprivaloma)';

  @override
  String get invoicePaymentTermsHint => 'Apmokėjimas per 30 dienų';

  @override
  String get invoiceSignatureLabel => 'Parašas';

  @override
  String get invoiceSignatureOverwrite =>
      'Esamas parašas išsaugotas. Pieškite viršuje, kad pakeistumėte.';

  @override
  String get invoiceCreatedSnackbar => 'Sąskaita faktūra sukurta!';

  @override
  String get invoiceUpdatedSnackbar => 'Sąskaita faktūra atnaujinta!';

  @override
  String get invoiceDetailTitle => 'SĄSKAITA FAKTŪRA';

  @override
  String get invoiceDetailMarkAsPaid => 'Pažymėti apmokėta';

  @override
  String get invoiceDetailTotalAmount => 'Bendra suma';

  @override
  String get invoiceDetailIssued => 'Išrašyta';

  @override
  String get invoiceDetailDue => 'Terminas';

  @override
  String get invoiceDetailPaid => 'Apmokėta';

  @override
  String get invoiceDetailBillTo => 'Kam';

  @override
  String get invoiceDetailItems => 'Prekės';

  @override
  String get invoiceDetailNotes => 'Pastabos';

  @override
  String get invoiceDetailSignature => 'Parašas';

  @override
  String get invoiceDetailMarkedPaidSnackbar =>
      'Sąskaita faktūra pažymėta apmokėta!';

  @override
  String get invoiceDetailPdfFailed => 'Nepavyko sugeneruoti PDF';

  @override
  String get clientListTitle => 'Klientai';

  @override
  String get clientListSearchHint => 'Ieškoti klientų...';

  @override
  String get clientListTotalClients => 'Iš viso klientų';

  @override
  String get clientListTotalBilled => 'Iš viso išrašyta';

  @override
  String get clientListEmptySearch => 'Klientų nerasta';

  @override
  String get clientListEmpty => 'Klientų dar nėra';

  @override
  String get clientListEmptySubtitle =>
      'Pridėkite pirmąjį klientą, kad pradėtumėte kurti sąskaitas faktūras';

  @override
  String get clientListAddClient => 'Pridėti klientą';

  @override
  String get clientListTotalBilledLabel => 'iš viso išrašyta';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count sąskaita faktūra';
  }

  @override
  String get clientCreateTitle => 'Naujas klientas';

  @override
  String get clientEditTitle => 'Redaguoti klientą';

  @override
  String get clientBasicInfo => 'Pagrindinė informacija';

  @override
  String get clientNameLabel => 'Vardas, pavardė *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'Vardas yra privalomas';

  @override
  String get clientNameTooShort => 'Vardas per trumpas';

  @override
  String get clientEmailLabel => 'El. pašto adresas *';

  @override
  String get clientEmailHint => 'billing@company.com';

  @override
  String get clientEmailRequired => 'El. paštas yra privalomas';

  @override
  String get clientEmailInvalid => 'Įveskite tinkamą el. pašto adresą';

  @override
  String get clientPhoneLabel => 'Telefono numeris';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'Adresas';

  @override
  String get clientAddressLabel => 'Gatvės adresas';

  @override
  String get clientAddressHint => '123 Business Park, Office 45';

  @override
  String get clientCityLabel => 'Miestas / šalis';

  @override
  String get clientCityHint => 'Dubajus, Jungtiniai Arabų Emyratai';

  @override
  String get clientBillingDefaults => 'Apmokėjimo nustatymai';

  @override
  String get clientDefaultCurrency => 'Numatytoji valiuta';

  @override
  String get clientDefaultTaxRate => 'Numatytasis mokesčio tarifas (VAT/GST)';

  @override
  String get clientVatLabel => 'VAT / mokesčių registracijos numeris';

  @override
  String get clientVatHint => '123456789012345 (neprivaloma)';

  @override
  String get clientUpdateButton => 'Atnaujinti klientą';

  @override
  String get clientAddButton => 'Pridėti klientą';

  @override
  String get clientUpdatedSnackbar => 'Klientas atnaujintas!';

  @override
  String get clientAddedSnackbar => 'Klientas pridėtas!';

  @override
  String get clientDetailInvoices => 'Sąskaitos faktūros';

  @override
  String get clientDetailTotalBilled => 'Iš viso išrašyta';

  @override
  String get clientDetailOutstanding => 'Neapmokėta';

  @override
  String get clientDetailEdit => 'Redaguoti';

  @override
  String get clientDetailNewInvoice => 'Nauja sąskaita faktūra';

  @override
  String get clientDetailEmailClient => 'Siųsti el. laišką';

  @override
  String get clientDetailClientDetails => 'Kliento duomenys';

  @override
  String get clientDetailEmail => 'El. paštas';

  @override
  String get clientDetailPhone => 'Telefonas';

  @override
  String get clientDetailAddress => 'Adresas';

  @override
  String get clientDetailCity => 'Miestas';

  @override
  String get clientDetailCurrency => 'Valiuta';

  @override
  String get clientDetailTaxRate => 'Mokesčio tarifas';

  @override
  String get clientDetailVatNumber => 'VAT numeris';

  @override
  String get clientDetailInvoiceHistory => 'Sąskaitų faktūrų istorija';

  @override
  String get clientDetailNoInvoices =>
      'Šiam klientui sąskaitų faktūrų dar nėra';

  @override
  String get deleteClientTitle => 'Ištrinti klientą?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'Ištrinti $clientName? Šio veiksmo atšaukti negalima.';
  }

  @override
  String get settingsTitle => 'Nustatymai';

  @override
  String get settingsYourName => 'Jūsų vardas';

  @override
  String get settingsBackupTitle => 'Atsarginė sąskaitų faktūrų kopija';

  @override
  String get settingsBackupDescription =>
      'Prisijunkite, kad saugiai sinchronizuotumėte duomenis ir pasiektumėte juos iš bet kur.';

  @override
  String get settingsSignInRegister => 'Prisijungti arba užsiregistruoti';

  @override
  String get settingsProUpsell =>
      'Atnaujinkite iki Pro ir gaukite neribotas sąskaitas faktūras, debesies sinchronizavimą ir be vandenženklių.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'Pasiekėte nemokamo plano ribą – $limit sąskaitos faktūros. Atnaujinkite iki Pro, kad gautumėte neribotas sąskaitas faktūras ir debesies sinchronizavimą.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'Pasiekėte nemokamo plano ribą – $limit klientai. Atnaujinkite iki Pro, kad gautumėte neribotus klientus ir debesies sinchronizavimą.';
  }

  @override
  String get settingsUpgradePro => 'Atnaujinti';

  @override
  String get settingsBusinessSection => 'VERSLO NUSTATYMAI';

  @override
  String get settingsBusinessDetails => 'Verslo duomenys';

  @override
  String get settingsBusinessDetailsSubtitle =>
      'Nustatykite savo verslo pavadinimą';

  @override
  String get settingsInvoicePrefix => 'Sąskaitos faktūros priešdėlis';

  @override
  String get settingsDefaultCurrency => 'Numatytoji valiuta';

  @override
  String get settingsAppSection => 'APLIKACIJOS NUSTATYMAI';

  @override
  String get settingsDarkMode => 'Tamsusis režimas';

  @override
  String get settingsDailyNotification => 'Kasdienis pranešimas';

  @override
  String get settingsDailyNotificationNotSet => 'Nenustatyta';

  @override
  String get settingsLanguage => 'Kalba';

  @override
  String get settingsLanguageLabel => 'Lietuvių';

  @override
  String get languageEnglish => 'Anglų';

  @override
  String get languageArabic => 'العربية';

  @override
  String get languageFrench => 'Prancūzų';

  @override
  String get languageSpanish => 'Ispanų';

  @override
  String get languageUrdu => 'اردو';

  @override
  String get languageChinese => 'Kinų';

  @override
  String get settingsAboutSection => 'APIE';

  @override
  String get settingsRateApp => 'Įvertinkite programėlę';

  @override
  String get settingsHelpSupport => 'Pagalba ir palaikymas';

  @override
  String get settingsPrivacyPolicy => 'Privatumo politika';

  @override
  String get settingsHelpSupportSheet =>
      'Reikia pagalbos? Rašykite adresu support@invoiceflow.app, ir atsakysime per 24 valandas.';

  @override
  String get settingsPrivacySheet =>
      'Jūsų duomenys saugomi lokaliai jūsų įrenginyje. Niekada neparduodame ir neatskleidžiame jūsų asmeninės informacijos.';

  @override
  String get settingsVersion => 'Versija';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Atsijungti';

  @override
  String get settingsEditProfile => 'Redaguoti profilį';

  @override
  String get settingsProfileNameLabel => 'Vardas, pavardė';

  @override
  String get settingsProfileNameHint => 'Jūsų vardas';

  @override
  String get settingsBusinessNameLabel => 'Verslo pavadinimas';

  @override
  String get settingsBusinessNameHint => 'Jūsų įmonė UAB';

  @override
  String get settingsBusinessEmailLabel => 'Verslo el. paštas';

  @override
  String get settingsBusinessEmailHint => 'billing@company.com';

  @override
  String get settingsPhoneLabel => 'Telefonas';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'Adresas';

  @override
  String get settingsAddressHint => 'Dubajus, Jungtiniai Arabų Emyratai';

  @override
  String get settingsBusinessDetailsSaved => 'Verslo duomenys išsaugoti!';

  @override
  String get settingsInvoicePrefixTitle =>
      'Sąskaitos faktūros numerio priešdėlis';

  @override
  String get settingsInvoicePrefixHint => 'pvz., INV-, #, Sąsk-';

  @override
  String get settingsPrefixSaved => 'Sąskaitos faktūros priešdėlis išsaugotas';

  @override
  String get settingsNotificationScheduled =>
      'Kasdienis pranešimas sėkmingai suplanuotas!';

  @override
  String get settingsSignOutTitle => 'Atsijungti?';

  @override
  String get settingsSignOutMessage =>
      'Ar tikrai norite atsijungti iš InvoiceFlow?';

  @override
  String get settingsSignedOut => 'Sėkmingai atsijungėte.';

  @override
  String get statusPaid => 'Apmokėta';

  @override
  String get statusOverdue => 'Pradelsta';

  @override
  String get statusPending => 'Laukiama';

  @override
  String get statusDraft => 'Juodraštis';

  @override
  String get statusCancelled => 'Atšaukta';

  @override
  String get notificationChannelName => 'Kasdieniai priminimai';

  @override
  String get notificationChannelDescription =>
      'Kasdien primena patikrinti sąskaitas faktūras';

  @override
  String get notificationTitle => 'Sąskaitos faktūros priminimas';

  @override
  String get notificationBody =>
      'Laikas patikrinti naujausias sąskaitas faktūras ir stebėti laukiamus mokėjimus.';

  @override
  String get pdfInvoice => 'SĄSKAITA FAKTŪRA';

  @override
  String get pdfInvoiceNumber => 'Sąskaitos faktūros nr.:';

  @override
  String get pdfDate => 'Data:';

  @override
  String get pdfDueDate => 'Apmokėjimo terminas:';

  @override
  String get pdfBillTo => 'KAM:';

  @override
  String get pdfDescription => 'Aprašymas';

  @override
  String get pdfQty => 'Kiekis';

  @override
  String get pdfRate => 'Įkainis';

  @override
  String get pdfAmount => 'Suma';

  @override
  String get pdfSubtotal => 'Tarpinė suma:';

  @override
  String pdfTax(Object taxRate) {
    return 'Mokestis ($taxRate%):';
  }

  @override
  String get pdfTotal => 'IŠ VISO:';

  @override
  String get pdfSignature => 'Parašas:';

  @override
  String get pdfNotes => 'Pastabos:';

  @override
  String get pdfPaymentTerms => 'Apmokėjimo sąlygos:';

  @override
  String get pdfThankYou => 'Ačiū už bendradarbiavimą!';

  @override
  String get quickAddWebDesign => 'Svetainių dizainas';

  @override
  String get quickAddDevelopment => 'Programavimas';

  @override
  String get quickAddConsulting => 'Konsultavimas';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Turinio rašymas';

  @override
  String get paywallTitle => 'Atrakinkite InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'Neribotai ir sinchronizuokite visur. Atsisakyti galima bet kada.';

  @override
  String get paywallFeatureUnlimited =>
      'Neribotos sąskaitos faktūros ir klientai';

  @override
  String get paywallFeatureSync => 'Debesies sinchronizavimas tarp įrenginių';

  @override
  String get paywallFeatureNoWatermark => 'Jokių vandenženklių, niekada';

  @override
  String get paywallMonthly => 'Kas mėnesį';

  @override
  String get paywallMonthlySub => 'Apmokama kas mėnesį';

  @override
  String get paywallYearly => 'Kasmet';

  @override
  String get paywallYearlySub => 'Geriausia vertė – 2 mėnesiai nemokamai';

  @override
  String get paywallRestore => 'Atkurti pirkinius';

  @override
  String get paywallTerms =>
      'Prenumeratos atnaujinamos automatiškai. Tvarkykite jas programėlių parduotuvės nustatymuose.';

  @override
  String get purchaseSuccessTitle => 'Jūs esate Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'Neribotos sąskaitos faktūros, debesies sinchronizavimas ir be vandenženklių dabar atrakinti. Ačiū!';

  @override
  String get purchaseSuccessContinue => 'Tęsti';

  @override
  String get paywallLoading => 'Įkeliami planai…';

  @override
  String get paywallLoadError =>
      'Planų įkelti nepavyko. Patikrinkite ryšį ir bandykite dar kartą.';

  @override
  String get paywallNoOffering => 'Šiuo metu nėra galimų planų.';

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
  String get purchaseRestored => 'Pirkimai sėkmingai atkurti';

  @override
  String get purchaseErrorGeneric => 'Pirkimas nepavyko. Bandykite dar kartą.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro aktyvus — neribotos sąskaitos faktūros ir klientai be vandens ženklų';

  @override
  String get settingsFreePlan => 'Nemokamas planas';

  @override
  String get settingsFreeHint =>
      'Atnaujinkite, kad gautumėte neribotas sąskaitas faktūras, sinchronizavimą debesyje ir kt.';

  @override
  String get settingsUpgradeToPro => 'Atnaujinti į Pro';

  @override
  String get settingsManageSubscription => 'Tvarkyti prenumeratą';

  @override
  String get customerCenterFailed => 'Nepavyko atidaryti prenumeratos valdymo.';

  @override
  String get onboardingSkip => 'Praleisti';

  @override
  String get onboardingNext => 'Toliau';

  @override
  String get onboardingGetStarted => 'Pradėti';

  @override
  String get onboardingWelcomeTitle => 'Sąskaitos faktūros per 2 minutes';

  @override
  String get onboardingWelcomeBody =>
      'Kurkite profesionalias PDF sąskaitas faktūras savo klientams – greitai ir gražiai.';

  @override
  String get onboardingSyncTitle => 'Sinchronizuokite visur';

  @override
  String get onboardingSyncBody =>
      'Prisijunkite, kad saugiai atsargintumėte duomenis debesyje ir pasiektumėte juos iš bet kurio įrenginio.';

  @override
  String get onboardingProTitle => 'Gaukite neribotas galimybes su Pro';

  @override
  String get onboardingProBody =>
      'Atrakinkite neribotas sąskaitas faktūras, debesies sinchronizavimą ir pašalinkite vandenženklius su InvoiceFlow Pro.';

  @override
  String get settingsAccentColor => 'Akcento spalva';

  @override
  String get settingsAccentColorHint =>
      'Pritaikykite programėlę pagal pasirinktą spalvą.';

  @override
  String get settingsCountry => 'Šalis';

  @override
  String get settingsTaxId => 'Mokesčių registracijos numeris';

  @override
  String get settingsTaxIdNotSet => 'Nenustatyta';

  @override
  String get settingsTaxIdHint => 'pvz., 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Mokesčių numeris išsaugotas';

  @override
  String get catalogTitle => 'Produktai ir paslaugos';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count prekių',
      one: '$count prekė',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'Produktų dar nėra';

  @override
  String get catalogEmptySubtitle =>
      'Išsaugokite daugkartinio naudojimo produktus ir paslaugas, kad galėtumėte juos greičiau pridėti prie sąskaitų faktūrų.';

  @override
  String get catalogFromSaved => 'Iš jūsų katalogo';

  @override
  String get catalogSaveToCatalog =>
      'Išsaugoti kataloge, kad galėtumėte naudoti pakartotinai';

  @override
  String get catalogAddSnackbar => 'Pridėta į katalogą';

  @override
  String get catalogDeleteTitle => 'Ištrinti prekę?';

  @override
  String catalogDeleteMessage(String description) {
    return 'Ištrinti „$description”? Šio veiksmo atšaukti negalima.';
  }

  @override
  String get commonDone => 'Atlikta';

  @override
  String get estimateListTitle => 'Sąmatos';

  @override
  String get estimateListSearchHint => 'Ieškoti sąmatų…';

  @override
  String get estimateListEmpty => 'Sąmatų dar nėra';

  @override
  String get estimateListTabAll => 'Visos';

  @override
  String get estimateListTabDraft => 'Juodraštis';

  @override
  String get estimateListTabSent => 'Išsiųsta';

  @override
  String get estimateListTabAccepted => 'Priimta';

  @override
  String get estimateListTabExpired => 'Pasibaigusi';

  @override
  String get estimateCreateTitle => 'Nauja sąmata';

  @override
  String get estimateEditTitle => 'Redaguoti sąmatą';

  @override
  String get estimateCreatedSnackbar => 'Sąmata išsaugota';

  @override
  String get estimateUpdatedSnackbar => 'Sąmata atnaujinta';

  @override
  String get estimateIssueDate => 'Išrašymo data';

  @override
  String get estimateExpiryDate => 'Galiojimo pabaigos data';

  @override
  String get estimateExpiresPrefix => 'Galioja iki ';

  @override
  String get estimateConvertToInvoice => 'Konvertuoti į sąskaitą faktūrą';

  @override
  String get estimateConvertedSnackbar =>
      'Sąmata konvertuota į sąskaitą faktūrą';

  @override
  String get estimateConvertFailed => 'Nepavyko konvertuoti sąmatos';

  @override
  String get estimateMarkSent => 'Pažymėti išsiųsta';

  @override
  String get estimateMarkAccepted => 'Pažymėti priimta';

  @override
  String get estimateMarkDeclined => 'Pažymėti atsisakyta';

  @override
  String get estimateConvertedTitle => 'Konvertuota';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'Konvertuota į sąskaitą faktūrą $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'SĄMATOS SUMA';

  @override
  String get estimateStatusSent => 'Išsiųsta';

  @override
  String get estimateStatusAccepted => 'Priimta';

  @override
  String get estimateStatusDeclined => 'Atsisakyta';

  @override
  String get estimateStatusExpired => 'Pasibaigusi';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count atidarytų',
      one: '1 atidaryta',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'Ištrinti sąmatą?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'Ištrinti „$estimateNumber”? Šio veiksmo atšaukti negalima.';
  }

  @override
  String get estimatePdfFailed => 'Nepavyko sugeneruoti PDF';

  @override
  String get pdfEstimate => 'SĄMATA';

  @override
  String get pdfEstimateNumber => 'Sąmatos nr.:';

  @override
  String get pdfValidUntil => 'Galioja iki:';

  @override
  String get invoiceDetailPaymentTerms => 'Apmokėjimo sąlygos';

  @override
  String get recurringListTitle => 'Pasikartojančios sąskaitos faktūros';

  @override
  String get recurringListEmpty => 'Pasikartojančių sąskaitų faktūrų dar nėra';

  @override
  String get recurringListEmptySubtitle =>
      'Nustatykite automatiškai išrašomas sąskaitas faktūras nuolatiniams klientams ir paslaugoms.';

  @override
  String get recurringCreateTitle => 'Nauja pasikartojanti';

  @override
  String get recurringEditTitle => 'Redaguoti pasikartojančią';

  @override
  String get recurringCreatedSnackbar =>
      'Pasikartojanti sąskaita faktūra išsaugota';

  @override
  String get recurringUpdatedSnackbar =>
      'Pasikartojanti sąskaita faktūra atnaujinta';

  @override
  String get recurringDeleteTitle =>
      'Ištrinti pasikartojančią sąskaitą faktūrą?';

  @override
  String recurringDeleteMessage(String title) {
    return 'Ištrinti „$title”? Esamos sąskaitos faktūros nebus pašalintos.';
  }

  @override
  String get recurringTitleLabel => 'Pavadinimas';

  @override
  String get recurringTitleHint => 'pvz., mėnesinis užmokestis';

  @override
  String get recurringClientLabel => 'Klientas';

  @override
  String get recurringFrequencyLabel => 'Dažnumas';

  @override
  String get recurringFrequencyWeekly => 'Kas savaitę';

  @override
  String get recurringFrequencyBiweekly => 'Kas dvi savaites';

  @override
  String get recurringFrequencyMonthly => 'Kas mėnesį';

  @override
  String get recurringFrequencyQuarterly => 'Kas ketvirtį';

  @override
  String get recurringFrequencyYearly => 'Kasmet';

  @override
  String get recurringNextRun => 'Kitas kartas';

  @override
  String get recurringDueDays => 'Per';

  @override
  String get recurringDays => 'd.';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aktyvių',
      one: '1 aktyvi',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'Ataskaitos';

  @override
  String get reportsSubtitle => 'Verslo analitika';

  @override
  String get reportsEmpty =>
      'Sukurkite sąskaitas faktūras, kad matytumėte ataskaitas';

  @override
  String get reportsCollected => 'Surinkta';

  @override
  String get reportsOutstanding => 'Neapmokėta';

  @override
  String get reportsMonthlyRevenue => 'Mėnesio pajamos';

  @override
  String get reportsLast6Months => 'Paskutiniai 6 mėnesiai';

  @override
  String get reportsByStatus => 'Pagal būseną';

  @override
  String get reportsTopClients => 'Didžiausi klientai';

  @override
  String get paymentLinkTitle => 'Apmokėjimo nuoroda';

  @override
  String get paymentLinkNotSet => 'Apmokėjimo nuoroda nenustatyta';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'Jūsų apmokėjimo nuoroda įtraukiama į sąskaitos faktūros PDF ir gali būti nukopijuota iš sąskaitos faktūros meniu.';

  @override
  String get paymentLinkSaved => 'Apmokėjimo nuoroda išsaugota';

  @override
  String get settingsPaymentLinkNotSet => 'Nenustatyta';

  @override
  String get invoiceDetailCopyPaymentLink => 'Kopijuoti apmokėjimo nuorodą';

  @override
  String get paymentLinkCopied => 'Apmokėjimo nuoroda nukopijuota';

  @override
  String get pdfPayOnline => 'Apmokėti internetu';

  @override
  String get exportXml => 'Eksportuoti XML';

  @override
  String get exportXmlFailed => 'Nepavyko eksportuoti XML';
}
