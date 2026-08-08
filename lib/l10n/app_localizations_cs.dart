// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Profesionální faktury za 2 minuty';

  @override
  String get bottomNavDashboard => 'Nástěnka';

  @override
  String get bottomNavInvoices => 'Faktury';

  @override
  String get bottomNavClients => 'Klienti';

  @override
  String get bottomNavSettings => 'Nastavení';

  @override
  String get commonCancel => 'Zrušit';

  @override
  String get commonDelete => 'Smazat';

  @override
  String get commonSave => 'Uložit';

  @override
  String get commonSearch => 'Hledat';

  @override
  String get commonBack => 'Zpět';

  @override
  String get commonContinue => 'Pokračovat';

  @override
  String get commonAdd => 'Přidat';

  @override
  String get commonEdit => 'Upravit';

  @override
  String get commonCreate => 'Vytvořit';

  @override
  String get commonClear => 'Vymazat';

  @override
  String get commonView => 'Zobrazit';

  @override
  String get commonShare => 'Sdílet';

  @override
  String get commonExportPdf => 'Exportovat PDF';

  @override
  String get commonSharePdf => 'Sdílet PDF';

  @override
  String get commonSaveChanges => 'Uložit změny';

  @override
  String get commonRequired => 'Povinné';

  @override
  String get commonInvalid => 'Neplatné';

  @override
  String get commonSendLink => 'Odeslat odkaz';

  @override
  String get commonGeneratingPdf => 'Generování PDF...';

  @override
  String get dashboardGreetingMorning => 'Dobré ráno';

  @override
  String get dashboardGreetingAfternoon => 'Dobré odpoledne';

  @override
  String get dashboardGreetingEvening => 'Dobrý večer';

  @override
  String get dashboardSubtitle => 'Tady je přehled vašeho podnikání';

  @override
  String get dashboardOutstanding => 'Neuhrazeno';

  @override
  String get dashboardOverdue => 'Po splatnosti';

  @override
  String get dashboardThisMonth => 'Tento měsíc';

  @override
  String get dashboardInvoices => 'faktury';

  @override
  String dashboardPaidCount(Object count) {
    return '$count zaplaceno';
  }

  @override
  String get dashboardRecentInvoices => 'Poslední faktury';

  @override
  String get dashboardSeeAll => 'Zobrazit vše';

  @override
  String get dashboardNotifications => 'Oznámení';

  @override
  String get dashboardNotificationsHint =>
      'Sledujte svůj cash flow pravidelnou kontrolou faktur po splatnosti a čekajících faktur.';

  @override
  String get dashboardNewInvoice => 'Nová faktura';

  @override
  String get dashboardNoInvoicesYet => 'Zatím žádné faktury';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Vytvořte svou první profesionální fakturu za méně než 2 minuty';

  @override
  String get dashboardCreateInvoice => 'Vytvořit fakturu';

  @override
  String get dashboardMarkPaid => 'Označit jako zaplacenou';

  @override
  String get dashboardDuePrefix => 'Splatnost ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days dnů po splatnosti';
  }

  @override
  String get deleteInvoiceTitle => 'Smazat fakturu?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'Smazat $invoiceNumber? Tuto akci nelze vrátit zpět.';
  }

  @override
  String get loginHeading => 'Vítejte zpět';

  @override
  String get loginSubtitle => 'Přihlaste se ke svému účtu InvoiceFlow';

  @override
  String get loginEmailLabel => 'E-mailová adresa';

  @override
  String get loginEmailHint => 'you@example.com';

  @override
  String get loginEmailRequired => 'E-mail je povinný';

  @override
  String get loginEmailInvalid => 'Zadejte platný e-mail';

  @override
  String get loginPasswordLabel => 'Heslo';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'Heslo je povinné';

  @override
  String get loginPasswordMinLength => 'Heslo musí mít alespoň 6 znaků';

  @override
  String get loginForgotPassword => 'Zapomněli jste heslo?';

  @override
  String get loginSignIn => 'Přihlásit se';

  @override
  String get loginOrContinueWith => 'nebo pokračujte přes';

  @override
  String get loginContinueWithGoogle => 'Pokračovat přes Google';

  @override
  String get loginNoAccount => 'Nemáte účet? ';

  @override
  String get loginSignUp => 'Registrace';

  @override
  String get loginResetPasswordTitle => 'Obnovení hesla';

  @override
  String get loginResetPasswordMessage =>
      'Zadejte svůj e-mail a pošleme vám odkaz pro obnovení hesla.';

  @override
  String get loginResetPasswordHint => 'you@example.com';

  @override
  String get loginResetLinkSent =>
      'Odkaz pro obnovení byl odeslán! Zkontrolujte si e-mail.';

  @override
  String get loginResetLinkFailed =>
      'Odkaz pro obnovení se nepodařilo odeslat.';

  @override
  String get registerHeading => 'Vytvořit účet';

  @override
  String get registerSubtitle =>
      'Začněte posílat profesionální faktury ještě dnes';

  @override
  String get registerNameLabel => 'Celé jméno';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => 'Jméno je povinné';

  @override
  String get registerNameMinLength => 'Jméno musí mít alespoň 2 znaky';

  @override
  String get registerEmailLabel => 'E-mailová adresa';

  @override
  String get registerEmailHint => 'you@example.com';

  @override
  String get registerEmailRequired => 'E-mail je povinný';

  @override
  String get registerEmailInvalid => 'Zadejte platný e-mail';

  @override
  String get registerPasswordLabel => 'Heslo';

  @override
  String get registerPasswordHint => 'Alespoň 6 znaků';

  @override
  String get registerPasswordRequired => 'Heslo je povinné';

  @override
  String get registerPasswordMinLength => 'Heslo musí mít alespoň 6 znaků';

  @override
  String get registerConfirmPasswordLabel => 'Potvrdit heslo';

  @override
  String get registerConfirmPasswordHint => 'Zopakujte heslo';

  @override
  String get registerConfirmPasswordRequired => 'Potvrďte prosím své heslo';

  @override
  String get registerPasswordsDoNotMatch => 'Hesla se neshodují';

  @override
  String get registerCreateAccount => 'Vytvořit účet';

  @override
  String get registerHaveAccount => 'Již máte účet? ';

  @override
  String get registerSignIn => 'Přihlásit se';

  @override
  String get authTermsOfService => 'Podmínky služby';

  @override
  String get authPrivacyPolicy => 'Zásady ochrany osobních údajů';

  @override
  String get authAgreeRequired =>
      'Chcete-li pokračovat, souhlaste prosím s podmínkami služby a zásadami ochrany osobních údajů';

  @override
  String get loginAgreePrefix => 'Pokračováním souhlasíte s našimi ';

  @override
  String get registerAgreePrefix => 'Souhlasím s ';

  @override
  String get authAgreeAnd => ' a ';

  @override
  String get authTermsSheet =>
      'Tyto podmínky služby upravují vaše používání aplikace InvoiceFlow. Přístupem k aplikaci nebo jejím používáním souhlasíte s tím, že budete těmito podmínkami vázáni.\n\n1. Odpovídáte za přesnost faktur, rozpočtů a dalších údajů, které vytvoříte.\n2. Aplikace je poskytována \"tak, jak je\", bez jakýchkoli záruk, výslovných ani předpokládaných.\n3. Neodpovídáme za žádné ztráty vyplývající z vašeho používání služby.\n4. Aplikaci nesmíte používat k žádnému protiprávnímu nebo zakázanému účelu.\n5. Tyto podmínky můžeme čas od času aktualizovat; další používání aplikace představuje přijetí aktualizovaných podmínek.';

  @override
  String get authPrivacySheet =>
      'Vaše soukromí je pro nás důležité.\n\n1. Ukládání dat: Vaše faktury, klienti a nastavení se ukládají lokálně ve vašem zařízení.\n2. Synchronizace do cloudu: Pokud se přihlásíte, vaše data se synchronizují do vašeho účtu, aby byla dostupná ve všech vašich zařízeních.\n3. Vaše osobní údaje nikdy neprodáváme ani nesdílíme.\n4. Analýzy: Můžeme shromažďovat anonymizovaná data o používání, abychom aplikaci zlepšovali.\n5. Kontakt: S jakýmikoli dotazy ohledně ochrany soukromí se obraťte na support@invoiceflow.app.';

  @override
  String get authErrorWeakPassword => 'Heslo je příliš slabé';

  @override
  String get authErrorEmailAlreadyInUse => 'Účet již existuje';

  @override
  String get authErrorUserNotFound =>
      'Nebyl nalezen žádný uživatel s tímto e-mailem';

  @override
  String get authErrorWrongPassword => 'Nesprávné heslo';

  @override
  String get authErrorInvalidEmail => 'Neplatná e-mailová adresa';

  @override
  String get authErrorTooManyRequests =>
      'Příliš mnoho pokusů. Zkuste to později';

  @override
  String get authErrorDefault => 'Ověření se nezdařilo. Zkuste to znovu.';

  @override
  String get authErrorGoogleSignInFailed =>
      'Přihlášení přes Google se nezdařilo.';

  @override
  String get invoiceListTitle => 'Faktury';

  @override
  String get invoiceListSearchHint => 'Hledat faktury...';

  @override
  String get invoiceListSortDate => 'Seřadit podle data';

  @override
  String get invoiceListSortAmount => 'Seřadit podle částky';

  @override
  String get invoiceListSortClient => 'Seřadit podle klienta';

  @override
  String get invoiceListTabAll => 'Všechny';

  @override
  String get invoiceListTabPaid => 'Zaplacené';

  @override
  String get invoiceListTabPending => 'Čekající';

  @override
  String get invoiceListTabOverdue => 'Po splatnosti';

  @override
  String get invoiceListTabDraft => 'Koncepty';

  @override
  String get invoiceListEmpty => 'Nebyly nalezeny žádné faktury';

  @override
  String get invoiceCreateTitle => 'Nová faktura';

  @override
  String get invoiceEditTitle => 'Upravit fakturu';

  @override
  String get invoiceSaveDraft => 'Uložit koncept';

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
      'Vyberte, pro koho je tato faktura určena';

  @override
  String get invoiceSearchClients => 'Hledat klienty...';

  @override
  String get invoiceAddNewClient => 'Přidat nového klienta';

  @override
  String get invoiceNoClientsFound => 'Nebyli nalezeni žádní klienti';

  @override
  String get invoiceSelectClientEmptyHint =>
      'Vytvořte svého prvního klienta, abyste mohli začít vytvářet faktury';

  @override
  String get invoiceAddLineItem => 'Přidat položku';

  @override
  String get invoiceItemDescription => 'Popis';

  @override
  String get invoiceItemDescriptionHint => 'např. tvorba webových stránek';

  @override
  String get invoiceItemQuickAdd => 'Rychlé přidání:';

  @override
  String get invoiceItemQty => 'Množství';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Sazba';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Přidat položku';

  @override
  String get invoiceLineItems => 'Položky faktury';

  @override
  String get invoiceLineItemsSubtitle => 'Přidejte služby nebo produkty';

  @override
  String get invoiceNoItems =>
      'Zatím žádné položky. Přidejte svou první položku.';

  @override
  String get invoiceTaxRate => 'Daňová sazba (%)';

  @override
  String get invoiceSubtotal => 'Mezisoučet';

  @override
  String invoiceTax(Object taxRate) {
    return 'Daň ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'CELKEM';

  @override
  String get invoiceReviewHeading => 'Kontrola a dokončení';

  @override
  String get invoiceReviewSubtitle =>
      'Nastavte data, přidejte poznámky, logo a podpis';

  @override
  String get invoiceCompanyLogo => 'Logo společnosti';

  @override
  String get invoiceAddLogo => 'Přidat logo';

  @override
  String get invoiceInvoiceDate => 'Datum vystavení';

  @override
  String get invoiceDueDate => 'Datum splatnosti';

  @override
  String get invoiceNotesLabel => 'Poznámky (volitelné)';

  @override
  String get invoiceNotesHint => 'Děkujeme za obchod!';

  @override
  String get invoicePaymentTermsLabel => 'Platební podmínky (volitelné)';

  @override
  String get invoicePaymentTermsHint => 'Platba do 30 dnů';

  @override
  String get invoiceSignatureLabel => 'Podpis';

  @override
  String get invoiceSignatureOverwrite =>
      'Stávající podpis je uložen. Nakreslete výše, abyste jej nahradili.';

  @override
  String get invoiceCreatedSnackbar => 'Faktura vytvořena!';

  @override
  String get invoiceUpdatedSnackbar => 'Faktura aktualizována!';

  @override
  String get invoiceDetailTitle => 'FAKTURA';

  @override
  String get invoiceDetailMarkAsPaid => 'Označit jako zaplacenou';

  @override
  String get invoiceDetailTotalAmount => 'Celková částka';

  @override
  String get invoiceDetailIssued => 'Vystaveno';

  @override
  String get invoiceDetailDue => 'Splatnost';

  @override
  String get invoiceDetailPaid => 'Zaplaceno';

  @override
  String get invoiceDetailBillTo => 'Odběratel';

  @override
  String get invoiceDetailItems => 'Položky';

  @override
  String get invoiceDetailNotes => 'Poznámky';

  @override
  String get invoiceDetailSignature => 'Podpis';

  @override
  String get invoiceDetailMarkedPaidSnackbar =>
      'Faktura označena jako zaplacená!';

  @override
  String get invoiceDetailPdfFailed => 'Nepodařilo se vygenerovat PDF';

  @override
  String get clientListTitle => 'Klienti';

  @override
  String get clientListSearchHint => 'Hledat klienty...';

  @override
  String get clientListTotalClients => 'Celkový počet klientů';

  @override
  String get clientListTotalBilled => 'Celkem vyfakturováno';

  @override
  String get clientListEmptySearch => 'Nebyli nalezeni žádní klienti';

  @override
  String get clientListEmpty => 'Zatím žádní klienti';

  @override
  String get clientListEmptySubtitle =>
      'Přidejte svého prvního klienta, abyste mohli začít vytvářet faktury';

  @override
  String get clientListAddClient => 'Přidat klienta';

  @override
  String get clientListTotalBilledLabel => 'celkem vyfakturováno';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count faktura';
  }

  @override
  String get clientCreateTitle => 'Nový klient';

  @override
  String get clientEditTitle => 'Upravit klienta';

  @override
  String get clientBasicInfo => 'Základní informace';

  @override
  String get clientNameLabel => 'Celé jméno *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'Jméno je povinné';

  @override
  String get clientNameTooShort => 'Jméno je příliš krátké';

  @override
  String get clientEmailLabel => 'E-mailová adresa *';

  @override
  String get clientEmailHint => 'billing@company.com';

  @override
  String get clientEmailRequired => 'E-mail je povinný';

  @override
  String get clientEmailInvalid => 'Zadejte platný e-mail';

  @override
  String get clientPhoneLabel => 'Telefonní číslo';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'Adresa';

  @override
  String get clientAddressLabel => 'Ulice';

  @override
  String get clientAddressHint => '123 Business Park, kancelář 45';

  @override
  String get clientCityLabel => 'Město / Země';

  @override
  String get clientCityHint => 'Dubaj, Spojené arabské emiráty';

  @override
  String get clientBillingDefaults => 'Výchozí nastavení fakturace';

  @override
  String get clientDefaultCurrency => 'Výchozí měna';

  @override
  String get clientDefaultTaxRate => 'Výchozí daňová sazba (VAT/GST)';

  @override
  String get clientVatLabel => 'Číslo VAT / daňové registrace';

  @override
  String get clientVatHint => '123456789012345 (volitelné)';

  @override
  String get clientUpdateButton => 'Aktualizovat klienta';

  @override
  String get clientAddButton => 'Přidat klienta';

  @override
  String get clientUpdatedSnackbar => 'Klient aktualizován!';

  @override
  String get clientAddedSnackbar => 'Klient přidán!';

  @override
  String get clientDetailInvoices => 'Faktury';

  @override
  String get clientDetailTotalBilled => 'Celkem vyfakturováno';

  @override
  String get clientDetailOutstanding => 'Neuhrazeno';

  @override
  String get clientDetailEdit => 'Upravit';

  @override
  String get clientDetailNewInvoice => 'Nová faktura';

  @override
  String get clientDetailEmailClient => 'Napsat e-mail klientovi';

  @override
  String get clientDetailClientDetails => 'Údaje o klientovi';

  @override
  String get clientDetailEmail => 'E-mail';

  @override
  String get clientDetailPhone => 'Telefon';

  @override
  String get clientDetailAddress => 'Adresa';

  @override
  String get clientDetailCity => 'Město';

  @override
  String get clientDetailCurrency => 'Měna';

  @override
  String get clientDetailTaxRate => 'Daňová sazba';

  @override
  String get clientDetailVatNumber => 'Číslo VAT';

  @override
  String get clientDetailInvoiceHistory => 'Historie faktur';

  @override
  String get clientDetailNoInvoices =>
      'Pro tohoto klienta zatím nejsou žádné faktury';

  @override
  String get deleteClientTitle => 'Smazat klienta?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'Smazat $clientName? Tuto akci nelze vrátit zpět.';
  }

  @override
  String get settingsTitle => 'Nastavení';

  @override
  String get settingsYourName => 'Vaše jméno';

  @override
  String get settingsBackupTitle => 'Zálohujte své faktury';

  @override
  String get settingsBackupDescription =>
      'Přihlaste se pro bezpečnou synchronizaci dat a přístup odkudkoli.';

  @override
  String get settingsSignInRegister => 'Přihlásit se nebo zaregistrovat';

  @override
  String get settingsProUpsell =>
      'Přejděte na Pro pro neomezené faktury, cloudovou synchronizaci a bez vodoznaků.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'Dosáhli jste limitu bezplatného plánu $limit faktur. Přejděte na Pro pro neomezené faktury a cloudovou synchronizaci.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'Dosáhli jste limitu bezplatného plánu $limit klientů. Přejděte na Pro pro neomezený počet klientů a cloudovou synchronizaci.';
  }

  @override
  String get settingsUpgradePro => 'Přejít na Pro';

  @override
  String get settingsBusinessSection => 'OBCHODNÍ NASTAVENÍ';

  @override
  String get settingsBusinessDetails => 'Údaje o firmě';

  @override
  String get settingsBusinessDetailsSubtitle => 'Nastavte název své firmy';

  @override
  String get settingsInvoicePrefix => 'Předpona faktury';

  @override
  String get settingsDefaultCurrency => 'Výchozí měna';

  @override
  String get settingsAppSection => 'NASTAVENÍ APLIKACE';

  @override
  String get settingsDarkMode => 'Tmavý režim';

  @override
  String get settingsDailyNotification => 'Denní oznámení';

  @override
  String get settingsDailyNotificationNotSet => 'Nenastaveno';

  @override
  String get settingsLanguage => 'Jazyk';

  @override
  String get settingsLanguageLabel => 'Čeština';

  @override
  String get languageEnglish => 'Angličtina';

  @override
  String get languageArabic => 'العربية';

  @override
  String get languageFrench => 'Francouzština';

  @override
  String get languageSpanish => 'Španělština';

  @override
  String get languageUrdu => 'اردو';

  @override
  String get languageChinese => 'Čínština';

  @override
  String get settingsAboutSection => 'O APLIKACI';

  @override
  String get settingsRateApp => 'Ohodnotit aplikaci';

  @override
  String get settingsHelpSupport => 'Nápověda a podpora';

  @override
  String get settingsPrivacyPolicy => 'Zásady ochrany osobních údajů';

  @override
  String get settingsHelpSupportSheet =>
      'Potřebujete pomoc? Napište na support@invoiceflow.app a odpovíme vám do 24 hodin.';

  @override
  String get settingsPrivacySheet =>
      'Vaše data jsou uložena lokálně ve vašem zařízení. Vaše osobní údaje nikdy neprodáváme ani nesdílíme.';

  @override
  String get settingsVersion => 'Verze';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Odhlásit se';

  @override
  String get settingsEditProfile => 'Upravit profil';

  @override
  String get settingsProfileNameLabel => 'Celé jméno';

  @override
  String get settingsProfileNameHint => 'Vaše jméno';

  @override
  String get settingsBusinessNameLabel => 'Název firmy';

  @override
  String get settingsBusinessNameHint => 'Vaše firma s.r.o.';

  @override
  String get settingsBusinessEmailLabel => 'Firemní e-mail';

  @override
  String get settingsBusinessEmailHint => 'billing@company.com';

  @override
  String get settingsPhoneLabel => 'Telefon';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'Adresa';

  @override
  String get settingsAddressHint => 'Dubaj, Spojené arabské emiráty';

  @override
  String get settingsBusinessDetailsSaved => 'Údaje o firmě uloženy!';

  @override
  String get settingsInvoicePrefixTitle => 'Předpona čísla faktury';

  @override
  String get settingsInvoicePrefixHint => 'např. INV-, #, Fakt-';

  @override
  String get settingsPrefixSaved => 'Předpona faktury uložena';

  @override
  String get settingsNotificationScheduled =>
      'Denní oznámení bylo úspěšně naplánováno!';

  @override
  String get settingsSignOutTitle => 'Odhlásit se?';

  @override
  String get settingsSignOutMessage =>
      'Opravdu se chcete odhlásit z InvoiceFlow?';

  @override
  String get settingsSignedOut => 'Úspěšně odhlášeno.';

  @override
  String get statusPaid => 'Zaplacená';

  @override
  String get statusOverdue => 'Po splatnosti';

  @override
  String get statusPending => 'Čekající';

  @override
  String get statusDraft => 'Koncept';

  @override
  String get statusCancelled => 'Zrušená';

  @override
  String get notificationChannelName => 'Denní připomínky';

  @override
  String get notificationChannelDescription =>
      'Připomíná vám denně kontrolovat faktury';

  @override
  String get notificationTitle => 'Připomínka faktury';

  @override
  String get notificationBody =>
      'Je čas zkontrolovat své nedávné faktury a sledovat čekající platby.';

  @override
  String get pdfInvoice => 'FAKTURA';

  @override
  String get pdfInvoiceNumber => 'Faktura č.:';

  @override
  String get pdfDate => 'Datum:';

  @override
  String get pdfDueDate => 'Splatnost:';

  @override
  String get pdfBillTo => 'ODBĚRATEL:';

  @override
  String get pdfDescription => 'Popis';

  @override
  String get pdfQty => 'Množství';

  @override
  String get pdfRate => 'Sazba';

  @override
  String get pdfAmount => 'Částka';

  @override
  String get pdfSubtotal => 'Mezisoučet:';

  @override
  String pdfTax(Object taxRate) {
    return 'Daň ($taxRate%):';
  }

  @override
  String get pdfTotal => 'CELKEM:';

  @override
  String get pdfSignature => 'Podpis:';

  @override
  String get pdfNotes => 'Poznámky:';

  @override
  String get pdfPaymentTerms => 'Platební podmínky:';

  @override
  String get pdfThankYou => 'Děkujeme za obchod!';

  @override
  String get quickAddWebDesign => 'Webdesign';

  @override
  String get quickAddDevelopment => 'Vývoj';

  @override
  String get quickAddConsulting => 'Poradenství';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Tvorba obsahu';

  @override
  String get paywallTitle => 'Odemkněte InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'Bez omezení a synchronizace všude. Zrušte kdykoli.';

  @override
  String get paywallFeatureUnlimited => 'Neomezené faktury a klienti';

  @override
  String get paywallFeatureSync => 'Cloudová synchronizace mezi zařízeními';

  @override
  String get paywallFeatureNoWatermark => 'Bez vodoznaků, nikdy';

  @override
  String get paywallMonthly => 'Měsíčně';

  @override
  String get paywallMonthlySub => 'Fakturujeme měsíčně';

  @override
  String get paywallYearly => 'Ročně';

  @override
  String get paywallYearlySub => 'Nejlepší cena — 2 měsíce zdarma';

  @override
  String get paywallRestore => 'Obnovit nákupy';

  @override
  String get paywallTerms =>
      'Předplatné se automaticky obnovuje. Spravujte v nastavení obchodu s aplikacemi.';

  @override
  String get purchaseSuccessTitle => 'Máte Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'Neomezené faktury, cloudová synchronizace a žádné vodoznaky jsou nyní odemčeny. Děkujeme!';

  @override
  String get purchaseSuccessContinue => 'Pokračovat';

  @override
  String get paywallLoading => 'Načítání plánů…';

  @override
  String get paywallLoadError =>
      'Plány se nepodařilo načíst. Zkontrolujte připojení a zkuste to znovu.';

  @override
  String get paywallNoOffering =>
      'V tuto chvíli nejsou k dispozici žádné plány.';

  @override
  String get purchaseRestored => 'Nákupy byly úspěšně obnoveny';

  @override
  String get purchaseErrorGeneric =>
      'Nákup se nezdařil. Zkuste to prosím znovu.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro je aktivní — neomezené faktury a klienti bez vodoznaků';

  @override
  String get settingsFreePlan => 'Bezplatný plán';

  @override
  String get settingsFreeHint =>
      'Upgradujte pro neomezené faktury, cloudovou synchronizaci a další funkce';

  @override
  String get settingsUpgradeToPro => 'Přejít na Pro';

  @override
  String get settingsManageSubscription => 'Spravovat předplatné';

  @override
  String get customerCenterFailed =>
      'Nepodařilo se otevřít správu předplatného.';

  @override
  String get onboardingSkip => 'Přeskočit';

  @override
  String get onboardingNext => 'Další';

  @override
  String get onboardingGetStarted => 'Začít';

  @override
  String get onboardingWelcomeTitle => 'Faktury za 2 minuty';

  @override
  String get onboardingWelcomeBody =>
      'Vytvářejte profesionální PDF faktury pro své klienty — rychle a elegantně.';

  @override
  String get onboardingSyncTitle => 'Synchronizujte všude';

  @override
  String get onboardingSyncBody =>
      'Přihlaste se pro bezpečné zálohování dat do cloudu a přístup z jakéhokoli zařízení.';

  @override
  String get onboardingProTitle => 'Bez omezení s Pro';

  @override
  String get onboardingProBody =>
      'Odemkněte neomezené faktury, cloudovou synchronizaci a odstraňte vodoznaky pomocí InvoiceFlow Pro.';

  @override
  String get settingsAccentColor => 'Akcentní barva';

  @override
  String get settingsAccentColorHint =>
      'Přizpůsobte si aplikaci barvou podle svého výběru.';

  @override
  String get settingsCountry => 'Země';

  @override
  String get settingsTaxId => 'Daňové registrační číslo';

  @override
  String get settingsTaxIdNotSet => 'Nenastaveno';

  @override
  String get settingsTaxIdHint => 'např. 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Daňové číslo uloženo';

  @override
  String get catalogTitle => 'Produkty a služby';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count položek',
      one: '$count položka',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'Zatím žádné produkty';

  @override
  String get catalogEmptySubtitle =>
      'Ukládejte opakovaně použitelné produkty a služby, abyste je mohli rychleji přidávat do faktur.';

  @override
  String get catalogFromSaved => 'Z vašeho katalogu';

  @override
  String get catalogSaveToCatalog => 'Uložit do katalogu pro opětovné použití';

  @override
  String get catalogAddSnackbar => 'Přidáno do katalogu';

  @override
  String get catalogDeleteTitle => 'Smazat položku?';

  @override
  String catalogDeleteMessage(String description) {
    return 'Smazat \"$description\"? Tuto akci nelze vrátit zpět.';
  }

  @override
  String get commonDone => 'Hotovo';

  @override
  String get estimateListTitle => 'Kalkulace';

  @override
  String get estimateListSearchHint => 'Hledat kalkulace…';

  @override
  String get estimateListEmpty => 'Zatím žádné kalkulace';

  @override
  String get estimateListTabAll => 'Všechny';

  @override
  String get estimateListTabDraft => 'Koncepty';

  @override
  String get estimateListTabSent => 'Odeslané';

  @override
  String get estimateListTabAccepted => 'Přijaté';

  @override
  String get estimateListTabExpired => 'Propadlé';

  @override
  String get estimateCreateTitle => 'Nová kalkulace';

  @override
  String get estimateEditTitle => 'Upravit kalkulaci';

  @override
  String get estimateCreatedSnackbar => 'Kalkulace uložena';

  @override
  String get estimateUpdatedSnackbar => 'Kalkulace aktualizována';

  @override
  String get estimateIssueDate => 'Datum vystavení';

  @override
  String get estimateExpiryDate => 'Datum expirace';

  @override
  String get estimateExpiresPrefix => 'Platí do ';

  @override
  String get estimateConvertToInvoice => 'Převést na fakturu';

  @override
  String get estimateConvertedSnackbar => 'Kalkulace převedena na fakturu';

  @override
  String get estimateConvertFailed => 'Kalkulaci se nepodařilo převést';

  @override
  String get estimateMarkSent => 'Označit jako odeslanou';

  @override
  String get estimateMarkAccepted => 'Označit jako přijatou';

  @override
  String get estimateMarkDeclined => 'Označit jako odmítnutou';

  @override
  String get estimateConvertedTitle => 'Převedeno';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'Převedeno na fakturu $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'CELKEM KALKULACE';

  @override
  String get estimateStatusSent => 'Odeslaná';

  @override
  String get estimateStatusAccepted => 'Přijatá';

  @override
  String get estimateStatusDeclined => 'Odmítnutá';

  @override
  String get estimateStatusExpired => 'Propadlá';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count otevřených',
      one: '1 otevřená',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'Smazat kalkulaci?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'Smazat \"$estimateNumber\"? Tuto akci nelze vrátit zpět.';
  }

  @override
  String get estimatePdfFailed => 'Nepodařilo se vygenerovat PDF';

  @override
  String get pdfEstimate => 'KALKULACE';

  @override
  String get pdfEstimateNumber => 'Kalkulace č.:';

  @override
  String get pdfValidUntil => 'Platná do:';

  @override
  String get invoiceDetailPaymentTerms => 'Platební podmínky';

  @override
  String get recurringListTitle => 'Opakované faktury';

  @override
  String get recurringListEmpty => 'Zatím žádné opakované faktury';

  @override
  String get recurringListEmptySubtitle =>
      'Nastavte automatické faktury pro pravidelné klienty a služby.';

  @override
  String get recurringCreateTitle => 'Nová opakovaná faktura';

  @override
  String get recurringEditTitle => 'Upravit opakovanou fakturu';

  @override
  String get recurringCreatedSnackbar => 'Opakovaná faktura uložena';

  @override
  String get recurringUpdatedSnackbar => 'Opakovaná faktura aktualizována';

  @override
  String get recurringDeleteTitle => 'Smazat opakovanou fakturu?';

  @override
  String recurringDeleteMessage(String title) {
    return 'Smazat \"$title\"? Stávající faktury nebudou odstraněny.';
  }

  @override
  String get recurringTitleLabel => 'Název';

  @override
  String get recurringTitleHint => 'např. měsíční retainer';

  @override
  String get recurringClientLabel => 'Klient';

  @override
  String get recurringFrequencyLabel => 'Frekvence';

  @override
  String get recurringFrequencyWeekly => 'Týdně';

  @override
  String get recurringFrequencyBiweekly => 'Každé dva týdny';

  @override
  String get recurringFrequencyMonthly => 'Měsíčně';

  @override
  String get recurringFrequencyQuarterly => 'Čtvrtletně';

  @override
  String get recurringFrequencyYearly => 'Ročně';

  @override
  String get recurringNextRun => 'Další spuštění';

  @override
  String get recurringDueDays => 'Splatnost za';

  @override
  String get recurringDays => 'dnů';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aktivních',
      one: '1 aktivní',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'Přehledy';

  @override
  String get reportsSubtitle => 'Analýza podnikání';

  @override
  String get reportsEmpty => 'Vytvořte faktury, abyste viděli přehledy';

  @override
  String get reportsCollected => 'Vybrané';

  @override
  String get reportsOutstanding => 'Neuhrazeno';

  @override
  String get reportsMonthlyRevenue => 'Měsíční příjmy';

  @override
  String get reportsLast6Months => 'Posledních 6 měsíců';

  @override
  String get reportsByStatus => 'Podle stavu';

  @override
  String get reportsTopClients => 'Nejlepší klienti';

  @override
  String get paymentLinkTitle => 'Platební odkaz';

  @override
  String get paymentLinkNotSet =>
      'V Nastavení není nastaven žádný platební odkaz';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'Váš platební odkaz je součástí PDF faktury a lze jej zkopírovat z nabídky faktury.';

  @override
  String get paymentLinkSaved => 'Platební odkaz uložen';

  @override
  String get settingsPaymentLinkNotSet => 'Nenastaveno';

  @override
  String get invoiceDetailCopyPaymentLink => 'Kopírovat platební odkaz';

  @override
  String get paymentLinkCopied => 'Platební odkaz zkopírován';

  @override
  String get pdfPayOnline => 'Zaplatit online';

  @override
  String get exportXml => 'Exportovat XML';

  @override
  String get exportXmlFailed => 'Nepodařilo se exportovat XML';
}
