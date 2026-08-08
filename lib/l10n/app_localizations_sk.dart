// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Profesionálne faktúry za 2 minúty';

  @override
  String get bottomNavDashboard => 'Prehľad';

  @override
  String get bottomNavInvoices => 'Faktúry';

  @override
  String get bottomNavClients => 'Klienti';

  @override
  String get bottomNavSettings => 'Nastavenia';

  @override
  String get commonCancel => 'Zrušiť';

  @override
  String get commonDelete => 'Vymazať';

  @override
  String get commonSave => 'Uložiť';

  @override
  String get commonSearch => 'Hľadať';

  @override
  String get commonBack => 'Späť';

  @override
  String get commonContinue => 'Pokračovať';

  @override
  String get commonAdd => 'Pridať';

  @override
  String get commonEdit => 'Upraviť';

  @override
  String get commonCreate => 'Vytvoriť';

  @override
  String get commonClear => 'Vyčistiť';

  @override
  String get commonView => 'Zobraziť';

  @override
  String get commonShare => 'Zdieľať';

  @override
  String get commonExportPdf => 'Exportovať PDF';

  @override
  String get commonSharePdf => 'Zdieľať PDF';

  @override
  String get commonSaveChanges => 'Uložiť zmeny';

  @override
  String get commonRequired => 'Povinné';

  @override
  String get commonInvalid => 'Neplatné';

  @override
  String get commonSendLink => 'Odoslať odkaz';

  @override
  String get commonGeneratingPdf => 'Generujem PDF...';

  @override
  String get dashboardGreetingMorning => 'Dobré ráno';

  @override
  String get dashboardGreetingAfternoon => 'Dobré popoludnie';

  @override
  String get dashboardGreetingEvening => 'Dobrý večer';

  @override
  String get dashboardSubtitle => 'Tu je prehľad vášho podnikania';

  @override
  String get dashboardOutstanding => 'Neuhradené';

  @override
  String get dashboardOverdue => 'Po splatnosti';

  @override
  String get dashboardThisMonth => 'Tento mesiac';

  @override
  String get dashboardInvoices => 'faktúr';

  @override
  String dashboardPaidCount(Object count) {
    return '$count zaplatených';
  }

  @override
  String get dashboardRecentInvoices => 'Nedávne faktúry';

  @override
  String get dashboardSeeAll => 'Zobraziť všetky';

  @override
  String get dashboardNotifications => 'Notifikácie';

  @override
  String get dashboardNotificationsHint =>
      'Sledujte svoj peňažný tok pravidelnou kontrolou faktúr po splatnosti a čakajúcich faktúr.';

  @override
  String get dashboardNewInvoice => 'Nová faktúra';

  @override
  String get dashboardNoInvoicesYet => 'Zatiaľ žiadne faktúry';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Vytvorte svoju prvú profesionálnu faktúru za menej ako 2 minúty';

  @override
  String get dashboardCreateInvoice => 'Vytvoriť faktúru';

  @override
  String get dashboardMarkPaid => 'Označiť ako zaplatenú';

  @override
  String get dashboardDuePrefix => 'Splatnosť ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days dní po splatnosti';
  }

  @override
  String get deleteInvoiceTitle => 'Vymazať faktúru?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'Vymazať $invoiceNumber? Túto akciu nemožno vrátiť späť.';
  }

  @override
  String get loginHeading => 'Vitajte späť';

  @override
  String get loginSubtitle => 'Prihláste sa do svojho účtu InvoiceFlow';

  @override
  String get loginEmailLabel => 'E-mailová adresa';

  @override
  String get loginEmailHint => 'vy@example.com';

  @override
  String get loginEmailRequired => 'E-mail je povinný';

  @override
  String get loginEmailInvalid => 'Zadajte platný e-mail';

  @override
  String get loginPasswordLabel => 'Heslo';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'Heslo je povinné';

  @override
  String get loginPasswordMinLength => 'Heslo musí mať aspoň 6 znakov';

  @override
  String get loginForgotPassword => 'Zabudli ste heslo?';

  @override
  String get loginSignIn => 'Prihlásiť sa';

  @override
  String get loginOrContinueWith => 'alebo pokračujte cez';

  @override
  String get loginContinueWithGoogle => 'Pokračovať cez Google';

  @override
  String get loginNoAccount => 'Nemáte účet? ';

  @override
  String get loginSignUp => 'Zaregistrovať sa';

  @override
  String get loginResetPasswordTitle => 'Obnoviť heslo';

  @override
  String get loginResetPasswordMessage =>
      'Zadajte svoj e-mail a pošleme vám odkaz na obnovenie hesla.';

  @override
  String get loginResetPasswordHint => 'vy@example.com';

  @override
  String get loginResetLinkSent =>
      'Odkaz na obnovenie hesla bol odoslaný! Skontrolujte si e-mail.';

  @override
  String get loginResetLinkFailed =>
      'Odkaz na obnovenie hesla sa nepodarilo odoslať.';

  @override
  String get registerHeading => 'Vytvoriť účet';

  @override
  String get registerSubtitle =>
      'Začnite posielať profesionálne faktúry ešte dnes';

  @override
  String get registerNameLabel => 'Celé meno';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => 'Meno je povinné';

  @override
  String get registerNameMinLength => 'Meno musí mať aspoň 2 znaky';

  @override
  String get registerEmailLabel => 'E-mailová adresa';

  @override
  String get registerEmailHint => 'vy@example.com';

  @override
  String get registerEmailRequired => 'E-mail je povinný';

  @override
  String get registerEmailInvalid => 'Zadajte platný e-mail';

  @override
  String get registerPasswordLabel => 'Heslo';

  @override
  String get registerPasswordHint => 'Aspoň 6 znakov';

  @override
  String get registerPasswordRequired => 'Heslo je povinné';

  @override
  String get registerPasswordMinLength => 'Heslo musí mať aspoň 6 znakov';

  @override
  String get registerConfirmPasswordLabel => 'Potvrdenie hesla';

  @override
  String get registerConfirmPasswordHint => 'Zopakujte svoje heslo';

  @override
  String get registerConfirmPasswordRequired => 'Potvrďte svoje heslo';

  @override
  String get registerPasswordsDoNotMatch => 'Heslá sa nezhodujú';

  @override
  String get registerCreateAccount => 'Vytvoriť účet';

  @override
  String get registerHaveAccount => 'Už máte účet? ';

  @override
  String get registerSignIn => 'Prihlásiť sa';

  @override
  String get authTermsOfService => 'Podmienky služby';

  @override
  String get authPrivacyPolicy => 'Zásady ochrany osobných údajov';

  @override
  String get authAgreeRequired =>
      'Ak chcete pokračovať, súhlaste s podmienkami služby a zásadami ochrany osobných údajov';

  @override
  String get loginAgreePrefix => 'Pokračovaním súhlasíte s našimi ';

  @override
  String get registerAgreePrefix => 'Súhlasím s ';

  @override
  String get authAgreeAnd => ' a ';

  @override
  String get authTermsSheet =>
      'Tieto podmienky služby upravujú vaše používanie aplikácie InvoiceFlow. Prístupom k aplikácii alebo jej používaním súhlasíte s tým, že budete týmito podmienkami viazaní.\n\n1. Zodpovedáte za presnosť faktúr, rozpočtov a iných údajov, ktoré vytvoríte.\n2. Aplikácia sa poskytuje \"tak, ako je\", bez akýchkoľvek záruk, výslovných ani predpokladaných.\n3. Nezodpovedáme za žiadne straty vyplývajúce z vášho používania služby.\n4. Aplikáciu nesmiete používať na žiadny nezákonný alebo zakázaný účel.\n5. Tieto podmienky môžeme z času na čas aktualizovať; ďalšie používanie aplikácie predstavuje prijatie aktualizovaných podmienok.';

  @override
  String get authPrivacySheet =>
      'Vaše súkromie je pre nás dôležité.\n\n1. Ukladanie údajov: Vaše faktúry, klienti a nastavenia sa ukladajú lokálne vo vašom zariadení.\n2. Synchronizácia do cloudu: Ak sa prihlásite, vaše údaje sa synchronizujú do vášho účtu, aby boli dostupné vo všetkých vašich zariadeniach.\n3. Vaše osobné údaje nikdy nepredávame ani nezdieľame.\n4. Analytika: Môžeme zhromažďovať anonymizované údaje o používaní, aby sme aplikáciu zlepšovali.\n5. Kontakt: S akýmikoľvek otázkami týkajúcimi sa ochrany súkromia sa obráťte na support@invoiceflow.app.';

  @override
  String get authErrorWeakPassword => 'Heslo je príliš slabé';

  @override
  String get authErrorEmailAlreadyInUse => 'Účet už existuje';

  @override
  String get authErrorUserNotFound =>
      'Pre tento e-mail sa nenašiel žiadny používateľ';

  @override
  String get authErrorWrongPassword => 'Nesprávne heslo';

  @override
  String get authErrorInvalidEmail => 'Neplatná e-mailová adresa';

  @override
  String get authErrorTooManyRequests =>
      'Príliš veľa pokusov. Skúste to neskôr.';

  @override
  String get authErrorDefault => 'Prihlásenie zlyhalo. Skúste to znova.';

  @override
  String get authErrorGoogleSignInFailed => 'Prihlásenie cez Google zlyhalo.';

  @override
  String get invoiceListTitle => 'Faktúry';

  @override
  String get invoiceListSearchHint => 'Hľadať faktúry...';

  @override
  String get invoiceListSortDate => 'Zoradiť podľa dátumu';

  @override
  String get invoiceListSortAmount => 'Zoradiť podľa sumy';

  @override
  String get invoiceListSortClient => 'Zoradiť podľa klienta';

  @override
  String get invoiceListTabAll => 'Všetky';

  @override
  String get invoiceListTabPaid => 'Zaplatené';

  @override
  String get invoiceListTabPending => 'Čakajúce';

  @override
  String get invoiceListTabOverdue => 'Po splatnosti';

  @override
  String get invoiceListTabDraft => 'Koncepty';

  @override
  String get invoiceListEmpty => 'Nenašli sa žiadne faktúry';

  @override
  String get invoiceCreateTitle => 'Nová faktúra';

  @override
  String get invoiceEditTitle => 'Upraviť faktúru';

  @override
  String get invoiceSaveDraft => 'Uložiť koncept';

  @override
  String get invoiceStepClient => 'Klient';

  @override
  String get invoiceStepItems => 'Položky';

  @override
  String get invoiceStepReview => 'Kontrola';

  @override
  String get invoiceSelectClient => 'Vyberte klienta';

  @override
  String get invoiceSelectClientSubtitle =>
      'Vyberte, pre koho je táto faktúra určená';

  @override
  String get invoiceSearchClients => 'Hľadať klientov...';

  @override
  String get invoiceAddNewClient => 'Pridať nového klienta';

  @override
  String get invoiceNoClientsFound => 'Nenašli sa žiadni klienti';

  @override
  String get invoiceSelectClientEmptyHint =>
      'Vytvorte svojho prvého klienta, aby ste mohli vytvárať faktúry';

  @override
  String get invoiceAddLineItem => 'Pridať riadok';

  @override
  String get invoiceItemDescription => 'Popis';

  @override
  String get invoiceItemDescriptionHint => 'napr. Vývoj webu';

  @override
  String get invoiceItemQuickAdd => 'Rýchle pridanie:';

  @override
  String get invoiceItemQty => 'Množstvo';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Sadzba';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Pridať položku';

  @override
  String get invoiceLineItems => 'Riadky faktúry';

  @override
  String get invoiceLineItemsSubtitle => 'Pridajte služby alebo produkty';

  @override
  String get invoiceNoItems =>
      'Zatiaľ žiadne položky. Pridajte svoju prvú položku.';

  @override
  String get invoiceTaxRate => 'Sadzba dane (%)';

  @override
  String get invoiceSubtotal => 'Medzisúčet';

  @override
  String invoiceTax(Object taxRate) {
    return 'Daň ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'SPOLU';

  @override
  String get invoiceReviewHeading => 'Kontrola a finalizácia';

  @override
  String get invoiceReviewSubtitle =>
      'Nastavte dátumy, pridajte poznámky, logo a podpis';

  @override
  String get invoiceCompanyLogo => 'Logo spoločnosti';

  @override
  String get invoiceAddLogo => 'Pridať logo';

  @override
  String get invoiceInvoiceDate => 'Dátum faktúry';

  @override
  String get invoiceDueDate => 'Dátum splatnosti';

  @override
  String get invoiceNotesLabel => 'Poznámky (voliteľné)';

  @override
  String get invoiceNotesHint => 'Ďakujeme za vašu priazeň!';

  @override
  String get invoicePaymentTermsLabel => 'Platebné podmienky (voliteľné)';

  @override
  String get invoicePaymentTermsHint => 'Splatnosť do 30 dní';

  @override
  String get invoiceSignatureLabel => 'Podpis';

  @override
  String get invoiceSignatureOverwrite =>
      'Existujúci podpis je uložený. Nakreslite nad ním nový.';

  @override
  String get invoiceCreatedSnackbar => 'Faktúra bola vytvorená!';

  @override
  String get invoiceUpdatedSnackbar => 'Faktúra bola aktualizovaná!';

  @override
  String get invoiceDetailTitle => 'FAKTÚRA';

  @override
  String get invoiceDetailMarkAsPaid => 'Označiť ako zaplatenú';

  @override
  String get invoiceDetailTotalAmount => 'Celková suma';

  @override
  String get invoiceDetailIssued => 'Vystavená';

  @override
  String get invoiceDetailDue => 'Splatnosť';

  @override
  String get invoiceDetailPaid => 'Zaplatená';

  @override
  String get invoiceDetailBillTo => 'Príjemca';

  @override
  String get invoiceDetailItems => 'Položky';

  @override
  String get invoiceDetailNotes => 'Poznámky';

  @override
  String get invoiceDetailSignature => 'Podpis';

  @override
  String get invoiceDetailMarkedPaidSnackbar =>
      'Faktúra označená ako zaplatená!';

  @override
  String get invoiceDetailPdfFailed => 'Nepodarilo sa vygenerovať PDF';

  @override
  String get clientListTitle => 'Klienti';

  @override
  String get clientListSearchHint => 'Hľadať klientov...';

  @override
  String get clientListTotalClients => 'Celkový počet klientov';

  @override
  String get clientListTotalBilled => 'Celkom vyfakturované';

  @override
  String get clientListEmptySearch => 'Nenašli sa žiadni klienti';

  @override
  String get clientListEmpty => 'Zatiaľ žiadni klienti';

  @override
  String get clientListEmptySubtitle =>
      'Pridajte svojho prvého klienta, aby ste mohli vytvárať faktúry';

  @override
  String get clientListAddClient => 'Pridať klienta';

  @override
  String get clientListTotalBilledLabel => 'celkom vyfakturované';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count faktúra';
  }

  @override
  String get clientCreateTitle => 'Nový klient';

  @override
  String get clientEditTitle => 'Upraviť klienta';

  @override
  String get clientBasicInfo => 'Základné informácie';

  @override
  String get clientNameLabel => 'Celé meno *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'Meno je povinné';

  @override
  String get clientNameTooShort => 'Meno je príliš krátke';

  @override
  String get clientEmailLabel => 'E-mailová adresa *';

  @override
  String get clientEmailHint => 'billing@company.com';

  @override
  String get clientEmailRequired => 'E-mail je povinný';

  @override
  String get clientEmailInvalid => 'Zadajte platný e-mail';

  @override
  String get clientPhoneLabel => 'Telefónne číslo';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'Adresa';

  @override
  String get clientAddressLabel => 'Ulica';

  @override
  String get clientAddressHint => '123 Business Park, kancelária 45';

  @override
  String get clientCityLabel => 'Mesto / Krajina';

  @override
  String get clientCityHint => 'Dubaj, Spojené arabské emiráty';

  @override
  String get clientBillingDefaults => 'Predvolené fakturačné údaje';

  @override
  String get clientDefaultCurrency => 'Predvolená mena';

  @override
  String get clientDefaultTaxRate => 'Predvolená sadzba dane (VAT/GST)';

  @override
  String get clientVatLabel => 'VAT / daňové registračné číslo';

  @override
  String get clientVatHint => '123456789012345 (voliteľné)';

  @override
  String get clientUpdateButton => 'Aktualizovať klienta';

  @override
  String get clientAddButton => 'Pridať klienta';

  @override
  String get clientUpdatedSnackbar => 'Klient bol aktualizovaný!';

  @override
  String get clientAddedSnackbar => 'Klient bol pridaný!';

  @override
  String get clientDetailInvoices => 'Faktúry';

  @override
  String get clientDetailTotalBilled => 'Celkom vyfakturované';

  @override
  String get clientDetailOutstanding => 'Neuhradené';

  @override
  String get clientDetailEdit => 'Upraviť';

  @override
  String get clientDetailNewInvoice => 'Nová faktúra';

  @override
  String get clientDetailEmailClient => 'Napísať e-mail';

  @override
  String get clientDetailClientDetails => 'Údaje o klientovi';

  @override
  String get clientDetailEmail => 'E-mail';

  @override
  String get clientDetailPhone => 'Telefón';

  @override
  String get clientDetailAddress => 'Adresa';

  @override
  String get clientDetailCity => 'Mesto';

  @override
  String get clientDetailCurrency => 'Mena';

  @override
  String get clientDetailTaxRate => 'Sadzba dane';

  @override
  String get clientDetailVatNumber => 'VAT číslo';

  @override
  String get clientDetailInvoiceHistory => 'História faktúr';

  @override
  String get clientDetailNoInvoices =>
      'Pre tohto klienta zatiaľ nie sú žiadne faktúry';

  @override
  String get deleteClientTitle => 'Vymazať klienta?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'Vymazať $clientName? Túto akciu nemožno vrátiť späť.';
  }

  @override
  String get settingsTitle => 'Nastavenia';

  @override
  String get settingsYourName => 'Vaše meno';

  @override
  String get settingsBackupTitle => 'Zálohujte svoje faktúry';

  @override
  String get settingsBackupDescription =>
      'Prihláste sa na bezpečnú synchronizáciu svojich údajov a prístup k nim odkiaľkoľvek.';

  @override
  String get settingsSignInRegister => 'Prihlásiť sa alebo zaregistrovať';

  @override
  String get settingsProUpsell =>
      'Prejdite na Pro pre neobmedzené faktúry, cloudovú synchronizáciu a žiadne vodotlače.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'Dosiahli ste limit bezplatného plánu $limit faktúr. Prejdite na Pro pre neobmedzené faktúry a cloudovú synchronizáciu.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'Dosiahli ste limit bezplatného plánu $limit klientov. Prejdite na Pro pre neobmedzený počet klientov a cloudovú synchronizáciu.';
  }

  @override
  String get settingsUpgradePro => 'Prejsť na Pro';

  @override
  String get settingsBusinessSection => 'NASTAVENIA PODNIKU';

  @override
  String get settingsBusinessDetails => 'Údaje o podniku';

  @override
  String get settingsBusinessDetailsSubtitle => 'Nastavte názov svojho podniku';

  @override
  String get settingsInvoicePrefix => 'Predpona faktúry';

  @override
  String get settingsDefaultCurrency => 'Predvolená mena';

  @override
  String get settingsAppSection => 'NASTAVENIA APLIKÁCIE';

  @override
  String get settingsDarkMode => 'Tmavý režim';

  @override
  String get settingsDailyNotification => 'Denná notifikácia';

  @override
  String get settingsDailyNotificationNotSet => 'Nenastavené';

  @override
  String get settingsLanguage => 'Jazyk';

  @override
  String get settingsLanguageLabel => 'Slovenčina';

  @override
  String get languageEnglish => 'Angličtina';

  @override
  String get languageArabic => 'العربية';

  @override
  String get languageFrench => 'Francúzština';

  @override
  String get languageSpanish => 'Španielčina';

  @override
  String get languageUrdu => 'اردو';

  @override
  String get languageChinese => '中文';

  @override
  String get settingsAboutSection => 'O APLIKÁCII';

  @override
  String get settingsRateApp => 'Ohodnoťte aplikáciu';

  @override
  String get settingsHelpSupport => 'Pomoc a podpora';

  @override
  String get settingsPrivacyPolicy => 'Zásady ochrany osobných údajov';

  @override
  String get settingsHelpSupportSheet =>
      'Potrebujete pomoc? Napíšte na support@invoiceflow.app a ozveme sa vám do 24 hodín.';

  @override
  String get settingsPrivacySheet =>
      'Vaše údaje sú uložené lokálne vo vašom zariadení. Vaše osobné údaje nikdy nepredávame ani nezdieľame.';

  @override
  String get settingsVersion => 'Verzia';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Odhlásiť sa';

  @override
  String get settingsEditProfile => 'Upraviť profil';

  @override
  String get settingsProfileNameLabel => 'Celé meno';

  @override
  String get settingsProfileNameHint => 'Vaše meno';

  @override
  String get settingsBusinessNameLabel => 'Názov podniku';

  @override
  String get settingsBusinessNameHint => 'Vaša spoločnosť s.r.o.';

  @override
  String get settingsBusinessEmailLabel => 'Firemný e-mail';

  @override
  String get settingsBusinessEmailHint => 'billing@company.com';

  @override
  String get settingsPhoneLabel => 'Telefón';

  @override
  String get settingsPhoneHint => '+421 900 123 456';

  @override
  String get settingsAddressLabel => 'Adresa';

  @override
  String get settingsAddressHint => 'Bratislava, Slovensko';

  @override
  String get settingsBusinessDetailsSaved => 'Údaje o podniku boli uložené!';

  @override
  String get settingsInvoicePrefixTitle => 'Predpona čísla faktúry';

  @override
  String get settingsInvoicePrefixHint => 'napr. INV-, #, FA-';

  @override
  String get settingsPrefixSaved => 'Predpona faktúry bola uložená';

  @override
  String get settingsNotificationScheduled =>
      'Denná notifikácia bola úspešne naplánovaná!';

  @override
  String get settingsSignOutTitle => 'Odhlásiť sa?';

  @override
  String get settingsSignOutMessage =>
      'Naozaj sa chcete odhlásiť z InvoiceFlow?';

  @override
  String get settingsSignedOut => 'Úspešne odhlásené.';

  @override
  String get statusPaid => 'Zaplatená';

  @override
  String get statusOverdue => 'Po splatnosti';

  @override
  String get statusPending => 'Čakajúca';

  @override
  String get statusDraft => 'Koncept';

  @override
  String get statusCancelled => 'Zrušená';

  @override
  String get notificationChannelName => 'Denné pripomienky';

  @override
  String get notificationChannelDescription =>
      'Denne vám pripomenie skontrolovať faktúry';

  @override
  String get notificationTitle => 'Pripomienka faktúry';

  @override
  String get notificationBody =>
      'Je čas skontrolovať nedávne faktúry a sledovať čakajúce platby.';

  @override
  String get pdfInvoice => 'FAKTÚRA';

  @override
  String get pdfInvoiceNumber => 'Číslo faktúry:';

  @override
  String get pdfDate => 'Dátum:';

  @override
  String get pdfDueDate => 'Dátum splatnosti:';

  @override
  String get pdfBillTo => 'PRÍJEMCA:';

  @override
  String get pdfDescription => 'Popis';

  @override
  String get pdfQty => 'Množ.';

  @override
  String get pdfRate => 'Sadzba';

  @override
  String get pdfAmount => 'Suma';

  @override
  String get pdfSubtotal => 'Medzisúčet:';

  @override
  String pdfTax(Object taxRate) {
    return 'Daň ($taxRate%):';
  }

  @override
  String get pdfTotal => 'SPOLU:';

  @override
  String get pdfSignature => 'Podpis:';

  @override
  String get pdfNotes => 'Poznámky:';

  @override
  String get pdfPaymentTerms => 'Platebné podmienky:';

  @override
  String get pdfThankYou => 'Ďakujeme za vašu priazeň!';

  @override
  String get quickAddWebDesign => 'Web dizajn';

  @override
  String get quickAddDevelopment => 'Vývoj';

  @override
  String get quickAddConsulting => 'Konzultácie';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Tvorba obsahu';

  @override
  String get paywallTitle => 'Odomknite InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'Získajte neobmedzené možnosti a synchronizáciu všade. Zrušenie kedykoľvek.';

  @override
  String get paywallFeatureUnlimited => 'Neobmedzené faktúry a klienti';

  @override
  String get paywallFeatureSync => 'Cloudová synchronizácia medzi zariadeniami';

  @override
  String get paywallFeatureNoWatermark => 'Žiadne vodotlače, nikdy';

  @override
  String get paywallMonthly => 'Mesačne';

  @override
  String get paywallMonthlySub => 'Fakturované mesačne';

  @override
  String get paywallYearly => 'Ročne';

  @override
  String get paywallYearlySub => 'Najvýhodnejšia cena — 2 mesiace zadarmo';

  @override
  String get paywallRestore => 'Obnoviť nákupy';

  @override
  String get paywallTerms =>
      'Predplatné sa automaticky obnovuje. Spravujte ho v nastaveniach obchodu s aplikáciami.';

  @override
  String get purchaseSuccessTitle => 'Ste Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'Neobmedzené faktúry, cloudová synchronizácia a žiadne vodotlače sú odomknuté. Ďakujeme!';

  @override
  String get purchaseSuccessContinue => 'Pokračovať';

  @override
  String get paywallLoading => 'Načítavanie plánov…';

  @override
  String get paywallLoadError =>
      'Plány sa nepodarilo načítať. Skontrolujte pripojenie a skúste to znova.';

  @override
  String get paywallNoOffering =>
      'Momentálne nie sú k dispozícii žiadne plány.';

  @override
  String get purchaseRestored => 'Nákupy boli úspešne obnovené';

  @override
  String get purchaseErrorGeneric => 'Nákup sa nepodaril. Skúste to znova.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro je aktívne — neobmedzené faktúry a klienti bez vodoznakov';

  @override
  String get settingsFreePlan => 'Bezplatný plán';

  @override
  String get settingsFreeHint =>
      'Inovujte pre neobmedzené faktúry, synchronizáciu v cloude a ďalšie funkcie';

  @override
  String get settingsUpgradeToPro => 'Prejsť na Pro';

  @override
  String get settingsManageSubscription => 'Spravovať predplatné';

  @override
  String get customerCenterFailed =>
      'Nepodarilo sa otvoriť správu predplatného.';

  @override
  String get onboardingSkip => 'Preskočiť';

  @override
  String get onboardingNext => 'Ďalej';

  @override
  String get onboardingGetStarted => 'Začať';

  @override
  String get onboardingWelcomeTitle => 'Faktúry za 2 minúty';

  @override
  String get onboardingWelcomeBody =>
      'Vytvárajte profesionálne PDF faktúry pre svojich klientov — rýchlo a krásne.';

  @override
  String get onboardingSyncTitle => 'Synchronizácia všade';

  @override
  String get onboardingSyncBody =>
      'Prihláste sa na bezpečné zálohovanie údajov do cloudu a prístup k nim z akéhokoľvek zariadenia.';

  @override
  String get onboardingProTitle => 'Získajte Pro bez obmedzení';

  @override
  String get onboardingProBody =>
      'Odomknite neobmedzené faktúry, cloudovú synchronizáciu a odstráňte vodotlače pomocou InvoiceFlow Pro.';

  @override
  String get settingsAccentColor => 'Farebný akcent';

  @override
  String get settingsAccentColorHint =>
      'Prispôsobte aplikáciu farbou podľa svojho výberu.';

  @override
  String get settingsCountry => 'Krajina';

  @override
  String get settingsTaxId => 'Daňové registračné číslo';

  @override
  String get settingsTaxIdNotSet => 'Nenastavené';

  @override
  String get settingsTaxIdHint => 'napr. 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Daňové registračné číslo bolo uložené';

  @override
  String get catalogTitle => 'Produkty a služby';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count položiek',
      one: '$count položka',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'Zatiaľ žiadne produkty';

  @override
  String get catalogEmptySubtitle =>
      'Ukladajte opätovne použiteľné produkty a služby, aby ste ich mohli rýchlejšie pridávať do faktúr.';

  @override
  String get catalogFromSaved => 'Z vášho katalógu';

  @override
  String get catalogSaveToCatalog => 'Uložiť do katalógu na opätovné použitie';

  @override
  String get catalogAddSnackbar => 'Pridané do katalógu';

  @override
  String get catalogDeleteTitle => 'Vymazať položku?';

  @override
  String catalogDeleteMessage(String description) {
    return 'Vymazať „$description“? Túto akciu nemožno vrátiť späť.';
  }

  @override
  String get commonDone => 'Hotovo';

  @override
  String get estimateListTitle => 'Cenové ponuky';

  @override
  String get estimateListSearchHint => 'Hľadať cenové ponuky…';

  @override
  String get estimateListEmpty => 'Zatiaľ žiadne cenové ponuky';

  @override
  String get estimateListTabAll => 'Všetky';

  @override
  String get estimateListTabDraft => 'Koncepty';

  @override
  String get estimateListTabSent => 'Odoslané';

  @override
  String get estimateListTabAccepted => 'Prijaté';

  @override
  String get estimateListTabExpired => 'Expirované';

  @override
  String get estimateCreateTitle => 'Nová cenová ponuka';

  @override
  String get estimateEditTitle => 'Upraviť cenovú ponuku';

  @override
  String get estimateCreatedSnackbar => 'Cenová ponuka uložená';

  @override
  String get estimateUpdatedSnackbar => 'Cenová ponuka aktualizovaná';

  @override
  String get estimateIssueDate => 'Dátum vystavenia';

  @override
  String get estimateExpiryDate => 'Dátum platnosti';

  @override
  String get estimateExpiresPrefix => 'Platí do ';

  @override
  String get estimateConvertToInvoice => 'Konvertovať na faktúru';

  @override
  String get estimateConvertedSnackbar =>
      'Cenová ponuka konvertovaná na faktúru';

  @override
  String get estimateConvertFailed => 'Cenovú ponuku sa nepodarilo konvertovať';

  @override
  String get estimateMarkSent => 'Označiť ako odoslanú';

  @override
  String get estimateMarkAccepted => 'Označiť ako prijatú';

  @override
  String get estimateMarkDeclined => 'Označiť ako odmietnutú';

  @override
  String get estimateConvertedTitle => 'Konvertované';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'Konvertované na faktúru $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'CELKOVÁ SUMA PONUKY';

  @override
  String get estimateStatusSent => 'Odoslaná';

  @override
  String get estimateStatusAccepted => 'Prijatá';

  @override
  String get estimateStatusDeclined => 'Odmietnutá';

  @override
  String get estimateStatusExpired => 'Expirovaná';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count otvorených',
      one: '1 otvorená',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'Vymazať cenovú ponuku?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'Vymazať „$estimateNumber“? Túto akciu nemožno vrátiť späť.';
  }

  @override
  String get estimatePdfFailed => 'Nepodarilo sa vygenerovať PDF';

  @override
  String get pdfEstimate => 'CENOVÁ PONUKA';

  @override
  String get pdfEstimateNumber => 'Číslo ponuky:';

  @override
  String get pdfValidUntil => 'Platná do:';

  @override
  String get invoiceDetailPaymentTerms => 'Platebné podmienky';

  @override
  String get recurringListTitle => 'Opakujúce sa faktúry';

  @override
  String get recurringListEmpty => 'Zatiaľ žiadne opakujúce sa faktúry';

  @override
  String get recurringListEmptySubtitle =>
      'Nastavte automatické faktúry pre pravidelných klientov a služby.';

  @override
  String get recurringCreateTitle => 'Nová opakujúca sa faktúra';

  @override
  String get recurringEditTitle => 'Upraviť opakujúcu sa faktúru';

  @override
  String get recurringCreatedSnackbar => 'Opakujúca sa faktúra uložená';

  @override
  String get recurringUpdatedSnackbar => 'Opakujúca sa faktúra aktualizovaná';

  @override
  String get recurringDeleteTitle => 'Vymazať opakujúcu sa faktúru?';

  @override
  String recurringDeleteMessage(String title) {
    return 'Vymazať „$title“? Existujúce faktúry nebudú odstránené.';
  }

  @override
  String get recurringTitleLabel => 'Názov';

  @override
  String get recurringTitleHint => 'napr. Mesačný retainer';

  @override
  String get recurringClientLabel => 'Klient';

  @override
  String get recurringFrequencyLabel => 'Frekvencia';

  @override
  String get recurringFrequencyWeekly => 'Týždenne';

  @override
  String get recurringFrequencyBiweekly => 'Každé dva týždne';

  @override
  String get recurringFrequencyMonthly => 'Mesačne';

  @override
  String get recurringFrequencyQuarterly => 'Štvrťročne';

  @override
  String get recurringFrequencyYearly => 'Ročne';

  @override
  String get recurringNextRun => 'Ďalší termín';

  @override
  String get recurringDueDays => 'Splatnosť za';

  @override
  String get recurringDays => 'dní';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aktívnych',
      one: '1 aktívna',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'Prehľady';

  @override
  String get reportsSubtitle => 'Analytika podnikania';

  @override
  String get reportsEmpty => 'Vytvorte faktúry, aby ste videli prehľady';

  @override
  String get reportsCollected => 'Vybraté';

  @override
  String get reportsOutstanding => 'Neuhradené';

  @override
  String get reportsMonthlyRevenue => 'Mesačné príjmy';

  @override
  String get reportsLast6Months => 'Posledných 6 mesiacov';

  @override
  String get reportsByStatus => 'Podľa stavu';

  @override
  String get reportsTopClients => 'Najlepší klienti';

  @override
  String get paymentLinkTitle => 'Platobný odkaz';

  @override
  String get paymentLinkNotSet =>
      'V nastaveniach nie je nastavený žiadny platobný odkaz';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'Váš platobný odkaz je súčasťou PDF faktúry a môžete ho skopírovať z ponuky faktúry.';

  @override
  String get paymentLinkSaved => 'Platobný odkaz uložený';

  @override
  String get settingsPaymentLinkNotSet => 'Nenastavené';

  @override
  String get invoiceDetailCopyPaymentLink => 'Kopírovať platobný odkaz';

  @override
  String get paymentLinkCopied => 'Platobný odkaz skopírovaný';

  @override
  String get pdfPayOnline => 'Platiť online';

  @override
  String get exportXml => 'Exportovať XML';

  @override
  String get exportXmlFailed => 'XML sa nepodarilo exportovať';
}
