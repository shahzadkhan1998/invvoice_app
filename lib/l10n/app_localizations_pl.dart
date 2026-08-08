// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Profesjonalne faktury w 2 minuty';

  @override
  String get bottomNavDashboard => 'Pulpit';

  @override
  String get bottomNavInvoices => 'Faktury';

  @override
  String get bottomNavClients => 'Klienci';

  @override
  String get bottomNavSettings => 'Ustawienia';

  @override
  String get commonCancel => 'Anuluj';

  @override
  String get commonDelete => 'Usuń';

  @override
  String get commonSave => 'Zapisz';

  @override
  String get commonSearch => 'Szukaj';

  @override
  String get commonBack => 'Wstecz';

  @override
  String get commonContinue => 'Kontynuuj';

  @override
  String get commonAdd => 'Dodaj';

  @override
  String get commonEdit => 'Edytuj';

  @override
  String get commonCreate => 'Utwórz';

  @override
  String get commonClear => 'Wyczyść';

  @override
  String get commonView => 'Zobacz';

  @override
  String get commonShare => 'Udostępnij';

  @override
  String get commonExportPdf => 'Eksportuj PDF';

  @override
  String get commonSharePdf => 'Udostępnij PDF';

  @override
  String get commonSaveChanges => 'Zapisz zmiany';

  @override
  String get commonRequired => 'Wymagane';

  @override
  String get commonInvalid => 'Nieprawidłowe';

  @override
  String get commonSendLink => 'Wyślij link';

  @override
  String get commonGeneratingPdf => 'Generowanie PDF...';

  @override
  String get dashboardGreetingMorning => 'Dzień dobry';

  @override
  String get dashboardGreetingAfternoon => 'Dzień dobry';

  @override
  String get dashboardGreetingEvening => 'Dobry wieczór';

  @override
  String get dashboardSubtitle => 'Oto przegląd Twojej firmy';

  @override
  String get dashboardOutstanding => 'Należności';

  @override
  String get dashboardOverdue => 'Zaległe';

  @override
  String get dashboardThisMonth => 'W tym miesiącu';

  @override
  String get dashboardInvoices => 'faktury';

  @override
  String dashboardPaidCount(Object count) {
    return '$count opłacone';
  }

  @override
  String get dashboardRecentInvoices => 'Ostatnie faktury';

  @override
  String get dashboardSeeAll => 'Zobacz wszystkie';

  @override
  String get dashboardNotifications => 'Powiadomienia';

  @override
  String get dashboardNotificationsHint =>
      'Miej kontrolę nad przepływem gotówki, regularnie przeglądając zaległe i oczekujące faktury.';

  @override
  String get dashboardNewInvoice => 'Nowa faktura';

  @override
  String get dashboardNoInvoicesYet => 'Brak faktur';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Utwórz pierwszą profesjonalną fakturę w mniej niż 2 minuty';

  @override
  String get dashboardCreateInvoice => 'Utwórz fakturę';

  @override
  String get dashboardMarkPaid => 'Oznacz jako opłaconą';

  @override
  String get dashboardDuePrefix => 'Termin: ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days dni po terminie';
  }

  @override
  String get deleteInvoiceTitle => 'Usunąć fakturę?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'Usunąć $invoiceNumber? Tej operacji nie można cofnąć.';
  }

  @override
  String get loginHeading => 'Witaj ponownie';

  @override
  String get loginSubtitle => 'Zaloguj się do swojego konta InvoiceFlow';

  @override
  String get loginEmailLabel => 'Adres e-mail';

  @override
  String get loginEmailHint => 'you@example.com';

  @override
  String get loginEmailRequired => 'Adres e-mail jest wymagany';

  @override
  String get loginEmailInvalid => 'Wprowadź prawidłowy adres e-mail';

  @override
  String get loginPasswordLabel => 'Hasło';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'Hasło jest wymagane';

  @override
  String get loginPasswordMinLength => 'Hasło musi mieć co najmniej 6 znaków';

  @override
  String get loginForgotPassword => 'Nie pamiętasz hasła?';

  @override
  String get loginSignIn => 'Zaloguj się';

  @override
  String get loginOrContinueWith => 'lub kontynuuj przez';

  @override
  String get loginContinueWithGoogle => 'Kontynuuj przez Google';

  @override
  String get loginNoAccount => 'Nie masz konta? ';

  @override
  String get loginSignUp => 'Zarejestruj się';

  @override
  String get loginResetPasswordTitle => 'Resetowanie hasła';

  @override
  String get loginResetPasswordMessage =>
      'Wpisz swój adres e-mail, a wyślemy Ci link do zresetowania hasła.';

  @override
  String get loginResetPasswordHint => 'you@example.com';

  @override
  String get loginResetLinkSent =>
      'Link do resetowania wysłany! Sprawdź swoją pocztę.';

  @override
  String get loginResetLinkFailed =>
      'Nie udało się wysłać linku do resetowania.';

  @override
  String get registerHeading => 'Utwórz konto';

  @override
  String get registerSubtitle =>
      'Zacznij wysyłać profesjonalne faktury już dziś';

  @override
  String get registerNameLabel => 'Pełne imię i nazwisko';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => 'Imię jest wymagane';

  @override
  String get registerNameMinLength => 'Imię musi mieć co najmniej 2 znaki';

  @override
  String get registerEmailLabel => 'Adres e-mail';

  @override
  String get registerEmailHint => 'you@example.com';

  @override
  String get registerEmailRequired => 'Adres e-mail jest wymagany';

  @override
  String get registerEmailInvalid => 'Wprowadź prawidłowy adres e-mail';

  @override
  String get registerPasswordLabel => 'Hasło';

  @override
  String get registerPasswordHint => 'Co najmniej 6 znaków';

  @override
  String get registerPasswordRequired => 'Hasło jest wymagane';

  @override
  String get registerPasswordMinLength =>
      'Hasło musi mieć co najmniej 6 znaków';

  @override
  String get registerConfirmPasswordLabel => 'Potwierdź hasło';

  @override
  String get registerConfirmPasswordHint => 'Powtórz hasło';

  @override
  String get registerConfirmPasswordRequired => 'Potwierdź hasło';

  @override
  String get registerPasswordsDoNotMatch => 'Hasła nie są zgodne';

  @override
  String get registerCreateAccount => 'Utwórz konto';

  @override
  String get registerHaveAccount => 'Masz już konto? ';

  @override
  String get registerSignIn => 'Zaloguj się';

  @override
  String get authTermsOfService => 'Warunki korzystania z usługi';

  @override
  String get authPrivacyPolicy => 'Polityka prywatności';

  @override
  String get authAgreeRequired =>
      'Aby kontynuować, zaakceptuj Warunki korzystania z usługi i Politykę prywatności';

  @override
  String get loginAgreePrefix => 'Kontynuując, akceptujesz nasze ';

  @override
  String get registerAgreePrefix => 'Akceptuję ';

  @override
  String get authAgreeAnd => ' oraz ';

  @override
  String get authTermsSheet =>
      'Niniejsze Warunki korzystania z usługi regulują korzystanie z InvoiceFlow. Uzyskując dostęp do aplikacji lub korzystając z niej, akceptujesz związanie tymi warunkami.\n\n1. Odpowiadasz za dokładność faktur, wycen i innych danych, które tworzysz.\n2. Aplikacja jest udostępniana \"tak jak jest\", bez jakichkolwiek gwarancji, wyraźnych lub dorozumianych.\n3. Nie ponosimy odpowiedzialności za straty wynikające z korzystania z usługi.\n4. Nie wolno używać aplikacji do celów niezgodnych z prawem lub zabronionych.\n5. Możemy od czasu do czasu aktualizować te warunki; dalsze korzystanie z aplikacji stanowi akceptację zaktualizowanych warunków.';

  @override
  String get authPrivacySheet =>
      'Twoja prywatność jest dla nas ważna.\n\n1. Przechowywanie danych: Twoje faktury, klienci i ustawienia są przechowywane lokalnie na Twoim urządzeniu.\n2. Synchronizacja w chmurze: jeśli się zalogujesz, Twoje dane zostaną zsynchronizowane z kontem, aby były dostępne na wszystkich Twoich urządzeniach.\n3. Nigdy nie sprzedajemy ani nie udostępniamy Twoich danych osobowych.\n4. Analityka: możemy gromadzić zanonimizowane dane o użytkowaniu, aby ulepszać aplikację.\n5. Kontakt: w razie pytań dotyczących prywatności skontaktuj się z support@invoiceflow.app.';

  @override
  String get authErrorWeakPassword => 'Hasło jest zbyt słabe';

  @override
  String get authErrorEmailAlreadyInUse => 'Konto już istnieje';

  @override
  String get authErrorUserNotFound =>
      'Nie znaleziono użytkownika z tym adresem e-mail';

  @override
  String get authErrorWrongPassword => 'Nieprawidłowe hasło';

  @override
  String get authErrorInvalidEmail => 'Nieprawidłowy adres e-mail';

  @override
  String get authErrorTooManyRequests => 'Zbyt wiele prób. Spróbuj później';

  @override
  String get authErrorDefault =>
      'Uwierzytelnienie nie powiodło się. Spróbuj ponownie.';

  @override
  String get authErrorGoogleSignInFailed =>
      'Logowanie przez Google nie powiodło się.';

  @override
  String get invoiceListTitle => 'Faktury';

  @override
  String get invoiceListSearchHint => 'Szukaj faktur...';

  @override
  String get invoiceListSortDate => 'Sortuj według daty';

  @override
  String get invoiceListSortAmount => 'Sortuj według kwoty';

  @override
  String get invoiceListSortClient => 'Sortuj według klienta';

  @override
  String get invoiceListTabAll => 'Wszystkie';

  @override
  String get invoiceListTabPaid => 'Opłacone';

  @override
  String get invoiceListTabPending => 'Oczekujące';

  @override
  String get invoiceListTabOverdue => 'Zaległe';

  @override
  String get invoiceListTabDraft => 'Wersje robocze';

  @override
  String get invoiceListEmpty => 'Nie znaleziono faktur';

  @override
  String get invoiceCreateTitle => 'Nowa faktura';

  @override
  String get invoiceEditTitle => 'Edytuj fakturę';

  @override
  String get invoiceSaveDraft => 'Zapisz wersję roboczą';

  @override
  String get invoiceStepClient => 'Klient';

  @override
  String get invoiceStepItems => 'Pozycje';

  @override
  String get invoiceStepReview => 'Podsumowanie';

  @override
  String get invoiceSelectClient => 'Wybierz klienta';

  @override
  String get invoiceSelectClientSubtitle => 'Wybierz, dla kogo jest ta faktura';

  @override
  String get invoiceSearchClients => 'Szukaj klientów...';

  @override
  String get invoiceAddNewClient => 'Dodaj nowego klienta';

  @override
  String get invoiceNoClientsFound => 'Nie znaleziono klientów';

  @override
  String get invoiceSelectClientEmptyHint =>
      'Utwórz pierwszego klienta, aby zacząć tworzyć faktury';

  @override
  String get invoiceAddLineItem => 'Dodaj pozycję';

  @override
  String get invoiceItemDescription => 'Opis';

  @override
  String get invoiceItemDescriptionHint => 'np. Tworzenie stron internetowych';

  @override
  String get invoiceItemQuickAdd => 'Szybkie dodawanie:';

  @override
  String get invoiceItemQty => 'Ilość';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Stawka';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Dodaj pozycję';

  @override
  String get invoiceLineItems => 'Pozycje faktury';

  @override
  String get invoiceLineItemsSubtitle => 'Dodaj usługi lub produkty';

  @override
  String get invoiceNoItems => 'Brak pozycji. Dodaj pierwszą pozycję.';

  @override
  String get invoiceTaxRate => 'Stawka podatku (%)';

  @override
  String get invoiceSubtotal => 'Suma częściowa';

  @override
  String invoiceTax(Object taxRate) {
    return 'Podatek ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'RAZEM';

  @override
  String get invoiceReviewHeading => 'Podsumowanie i finalizacja';

  @override
  String get invoiceReviewSubtitle =>
      'Ustaw daty, dodaj notatki, logo i podpis';

  @override
  String get invoiceCompanyLogo => 'Logo firmy';

  @override
  String get invoiceAddLogo => 'Dodaj logo';

  @override
  String get invoiceInvoiceDate => 'Data wystawienia';

  @override
  String get invoiceDueDate => 'Termin płatności';

  @override
  String get invoiceNotesLabel => 'Notatki (opcjonalnie)';

  @override
  String get invoiceNotesHint => 'Dziękujemy za współpracę!';

  @override
  String get invoicePaymentTermsLabel => 'Warunki płatności (opcjonalnie)';

  @override
  String get invoicePaymentTermsHint => 'Płatność w ciągu 30 dni';

  @override
  String get invoiceSignatureLabel => 'Podpis';

  @override
  String get invoiceSignatureOverwrite =>
      'Zapisano istniejący podpis. Rysuj powyżej, aby go zastąpić.';

  @override
  String get invoiceCreatedSnackbar => 'Utworzono fakturę!';

  @override
  String get invoiceUpdatedSnackbar => 'Zaktualizowano fakturę!';

  @override
  String get invoiceDetailTitle => 'FAKTURA';

  @override
  String get invoiceDetailMarkAsPaid => 'Oznacz jako opłaconą';

  @override
  String get invoiceDetailTotalAmount => 'Kwota całkowita';

  @override
  String get invoiceDetailIssued => 'Wystawiono';

  @override
  String get invoiceDetailDue => 'Termin';

  @override
  String get invoiceDetailPaid => 'Opłacono';

  @override
  String get invoiceDetailBillTo => 'Odbiorca';

  @override
  String get invoiceDetailItems => 'Pozycje';

  @override
  String get invoiceDetailNotes => 'Notatki';

  @override
  String get invoiceDetailSignature => 'Podpis';

  @override
  String get invoiceDetailMarkedPaidSnackbar =>
      'Fakturę oznaczono jako opłaconą!';

  @override
  String get invoiceDetailPdfFailed => 'Nie udało się wygenerować PDF';

  @override
  String get clientListTitle => 'Klienci';

  @override
  String get clientListSearchHint => 'Szukaj klientów...';

  @override
  String get clientListTotalClients => 'Łączna liczba klientów';

  @override
  String get clientListTotalBilled => 'Łącznie wystawiono';

  @override
  String get clientListEmptySearch => 'Nie znaleziono klientów';

  @override
  String get clientListEmpty => 'Brak klientów';

  @override
  String get clientListEmptySubtitle =>
      'Dodaj pierwszego klienta, aby zacząć tworzyć faktury';

  @override
  String get clientListAddClient => 'Dodaj klienta';

  @override
  String get clientListTotalBilledLabel => 'łącznie wystawiono';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count faktura';
  }

  @override
  String get clientCreateTitle => 'Nowy klient';

  @override
  String get clientEditTitle => 'Edytuj klienta';

  @override
  String get clientBasicInfo => 'Podstawowe informacje';

  @override
  String get clientNameLabel => 'Pełna nazwa *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'Nazwa jest wymagana';

  @override
  String get clientNameTooShort => 'Nazwa jest za krótka';

  @override
  String get clientEmailLabel => 'Adres e-mail *';

  @override
  String get clientEmailHint => 'billing@company.com';

  @override
  String get clientEmailRequired => 'Adres e-mail jest wymagany';

  @override
  String get clientEmailInvalid => 'Wprowadź prawidłowy adres e-mail';

  @override
  String get clientPhoneLabel => 'Numer telefonu';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'Adres';

  @override
  String get clientAddressLabel => 'Adres';

  @override
  String get clientAddressHint => '123 Business Park, Biuro 45';

  @override
  String get clientCityLabel => 'Miasto / Kraj';

  @override
  String get clientCityHint => 'Dubaj, Zjednoczone Emiraty Arabskie';

  @override
  String get clientBillingDefaults => 'Ustawienia rozliczeń';

  @override
  String get clientDefaultCurrency => 'Domyślna waluta';

  @override
  String get clientDefaultTaxRate => 'Domyślna stawka podatku (VAT/GST)';

  @override
  String get clientVatLabel => 'Numer VAT / podatkowy';

  @override
  String get clientVatHint => '123456789012345 (opcjonalnie)';

  @override
  String get clientUpdateButton => 'Zaktualizuj klienta';

  @override
  String get clientAddButton => 'Dodaj klienta';

  @override
  String get clientUpdatedSnackbar => 'Zaktualizowano klienta!';

  @override
  String get clientAddedSnackbar => 'Dodano klienta!';

  @override
  String get clientDetailInvoices => 'Faktury';

  @override
  String get clientDetailTotalBilled => 'Łącznie wystawiono';

  @override
  String get clientDetailOutstanding => 'Należności';

  @override
  String get clientDetailEdit => 'Edytuj';

  @override
  String get clientDetailNewInvoice => 'Nowa faktura';

  @override
  String get clientDetailEmailClient => 'Wyślij e-mail do klienta';

  @override
  String get clientDetailClientDetails => 'Dane klienta';

  @override
  String get clientDetailEmail => 'E-mail';

  @override
  String get clientDetailPhone => 'Telefon';

  @override
  String get clientDetailAddress => 'Adres';

  @override
  String get clientDetailCity => 'Miasto';

  @override
  String get clientDetailCurrency => 'Waluta';

  @override
  String get clientDetailTaxRate => 'Stawka podatku';

  @override
  String get clientDetailVatNumber => 'Numer VAT';

  @override
  String get clientDetailInvoiceHistory => 'Historia faktur';

  @override
  String get clientDetailNoInvoices => 'Brak faktur dla tego klienta';

  @override
  String get deleteClientTitle => 'Usunąć klienta?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'Usunąć $clientName? Tej operacji nie można cofnąć.';
  }

  @override
  String get settingsTitle => 'Ustawienia';

  @override
  String get settingsYourName => 'Twoje imię';

  @override
  String get settingsBackupTitle => 'Tworzenie kopii zapasowych faktur';

  @override
  String get settingsBackupDescription =>
      'Zaloguj się, aby bezpiecznie synchronizować dane i mieć do nich dostęp z dowolnego miejsca.';

  @override
  String get settingsSignInRegister => 'Zaloguj się lub zarejestruj';

  @override
  String get settingsProUpsell =>
      'Przejdź na Pro, aby uzyskać nieograniczone faktury, synchronizację w chmurze i bez znaków wodnych.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'Osiągnąłeś limit darmowego planu wynoszący $limit faktur. Przejdź na Pro, aby uzyskać nieograniczone faktury i synchronizację w chmurze.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'Osiągnąłeś limit darmowego planu wynoszący $limit klientów. Przejdź na Pro, aby uzyskać nieograniczoną liczbę klientów i synchronizację w chmurze.';
  }

  @override
  String get settingsUpgradePro => 'Ulepsz';

  @override
  String get settingsBusinessSection => 'USTAWIENIA FIRMY';

  @override
  String get settingsBusinessDetails => 'Dane firmy';

  @override
  String get settingsBusinessDetailsSubtitle => 'Ustaw nazwę swojej firmy';

  @override
  String get settingsInvoicePrefix => 'Prefiks faktury';

  @override
  String get settingsDefaultCurrency => 'Domyślna waluta';

  @override
  String get settingsAppSection => 'USTAWIENIA APLIKACJI';

  @override
  String get settingsDarkMode => 'Tryb ciemny';

  @override
  String get settingsDailyNotification => 'Codzienne powiadomienie';

  @override
  String get settingsDailyNotificationNotSet => 'Nie ustawiono';

  @override
  String get settingsLanguage => 'Język';

  @override
  String get settingsLanguageLabel => 'Polski';

  @override
  String get languageEnglish => 'Angielski';

  @override
  String get languageArabic => 'العربية';

  @override
  String get languageFrench => 'Francuski';

  @override
  String get languageSpanish => 'Hiszpański';

  @override
  String get languageUrdu => 'اردو';

  @override
  String get languageChinese => 'Chiński';

  @override
  String get settingsAboutSection => 'O APLIKACJI';

  @override
  String get settingsRateApp => 'Oceń aplikację';

  @override
  String get settingsHelpSupport => 'Pomoc i wsparcie';

  @override
  String get settingsPrivacyPolicy => 'Polityka prywatności';

  @override
  String get settingsHelpSupportSheet =>
      'Potrzebujesz pomocy? Napisz na support@invoiceflow.app, a odpowiemy w ciągu 24 godzin.';

  @override
  String get settingsPrivacySheet =>
      'Twoje dane są przechowywane lokalnie na urządzeniu. Nigdy nie sprzedajemy ani nie udostępniamy Twoich danych osobowych.';

  @override
  String get settingsVersion => 'Wersja';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Wyloguj się';

  @override
  String get settingsEditProfile => 'Edytuj profil';

  @override
  String get settingsProfileNameLabel => 'Pełne imię i nazwisko';

  @override
  String get settingsProfileNameHint => 'Twoje imię';

  @override
  String get settingsBusinessNameLabel => 'Nazwa firmy';

  @override
  String get settingsBusinessNameHint => 'Twoja firma Sp. z o.o.';

  @override
  String get settingsBusinessEmailLabel => 'Służbowy adres e-mail';

  @override
  String get settingsBusinessEmailHint => 'billing@company.com';

  @override
  String get settingsPhoneLabel => 'Telefon';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'Adres';

  @override
  String get settingsAddressHint => 'Dubaj, Zjednoczone Emiraty Arabskie';

  @override
  String get settingsBusinessDetailsSaved => 'Zapisano dane firmy!';

  @override
  String get settingsInvoicePrefixTitle => 'Prefiks numeru faktury';

  @override
  String get settingsInvoicePrefixHint => 'np. INV-, #, Fact-';

  @override
  String get settingsPrefixSaved => 'Zapisano prefiks faktury';

  @override
  String get settingsNotificationScheduled =>
      'Pomyślnie zaplanowano codzienne powiadomienie!';

  @override
  String get settingsSignOutTitle => 'Wylogować się?';

  @override
  String get settingsSignOutMessage =>
      'Czy na pewno chcesz wylogować się z InvoiceFlow?';

  @override
  String get settingsSignedOut => 'Pomyślnie wylogowano.';

  @override
  String get statusPaid => 'Opłacona';

  @override
  String get statusOverdue => 'Zaległa';

  @override
  String get statusPending => 'Oczekująca';

  @override
  String get statusDraft => 'Wersja robocza';

  @override
  String get statusCancelled => 'Anulowana';

  @override
  String get notificationChannelName => 'Codzienne przypomnienia';

  @override
  String get notificationChannelDescription =>
      'Przypomina o codziennym sprawdzaniu faktur';

  @override
  String get notificationTitle => 'Przypomnienie o fakturze';

  @override
  String get notificationBody =>
      'Czas sprawdzić najnowsze faktury i śledzić oczekujące płatności.';

  @override
  String get pdfInvoice => 'FAKTURA';

  @override
  String get pdfInvoiceNumber => 'Faktura nr:';

  @override
  String get pdfDate => 'Data:';

  @override
  String get pdfDueDate => 'Termin płatności:';

  @override
  String get pdfBillTo => 'ODBIORCA:';

  @override
  String get pdfDescription => 'Opis';

  @override
  String get pdfQty => 'Ilość';

  @override
  String get pdfRate => 'Stawka';

  @override
  String get pdfAmount => 'Kwota';

  @override
  String get pdfSubtotal => 'Suma częściowa:';

  @override
  String pdfTax(Object taxRate) {
    return 'Podatek ($taxRate%):';
  }

  @override
  String get pdfTotal => 'RAZEM:';

  @override
  String get pdfSignature => 'Podpis:';

  @override
  String get pdfNotes => 'Notatki:';

  @override
  String get pdfPaymentTerms => 'Warunki płatności:';

  @override
  String get pdfThankYou => 'Dziękujemy za współpracę!';

  @override
  String get quickAddWebDesign => 'Projektowanie stron';

  @override
  String get quickAddDevelopment => 'Programowanie';

  @override
  String get quickAddConsulting => 'Doradztwo';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Tworzenie treści';

  @override
  String get paywallTitle => 'Odblokuj InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'Bez ograniczeń i synchronizacja wszędzie. Anuluj w dowolnym momencie.';

  @override
  String get paywallFeatureUnlimited => 'Nieograniczone faktury i klienci';

  @override
  String get paywallFeatureSync =>
      'Synchronizacja w chmurze między urządzeniami';

  @override
  String get paywallFeatureNoWatermark => 'Bez znaków wodnych, zawsze';

  @override
  String get paywallMonthly => 'Miesięcznie';

  @override
  String get paywallMonthlySub => 'Rozliczane miesięcznie';

  @override
  String get paywallYearly => 'Rocznie';

  @override
  String get paywallYearlySub => 'Najlepsza oferta — 2 miesiące gratis';

  @override
  String get paywallRestore => 'Przywróć zakupy';

  @override
  String get paywallTerms =>
      'Subskrypcje odnawiają się automatycznie. Zarządzaj nimi w ustawieniach sklepu z aplikacjami.';

  @override
  String get purchaseSuccessTitle => 'Masz Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'Odblokowano nieograniczone faktury, synchronizację w chmurze i brak znaków wodnych. Dziękujemy!';

  @override
  String get purchaseSuccessContinue => 'Kontynuuj';

  @override
  String get paywallLoading => 'Wczytywanie planów…';

  @override
  String get paywallLoadError =>
      'Nie udało się wczytać planów. Sprawdź połączenie i spróbuj ponownie.';

  @override
  String get paywallNoOffering => 'Obecnie nie ma dostępnych planów.';

  @override
  String get purchaseRestored => 'Zakupy zostały pomyślnie przywrócone';

  @override
  String get purchaseErrorGeneric => 'Zakup nie powiódł się. Spróbuj ponownie.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro jest aktywne — nielimitowane faktury i klienci bez znaków wodnych';

  @override
  String get settingsFreePlan => 'Plan darmowy';

  @override
  String get settingsFreeHint =>
      'Przejdź na wyższą wersję, aby uzyskać nielimitowane faktury, synchronizację w chmurze i więcej';

  @override
  String get settingsUpgradeToPro => 'Przejdź do Pro';

  @override
  String get settingsManageSubscription => 'Zarządzaj subskrypcją';

  @override
  String get customerCenterFailed =>
      'Nie można otworzyć zarządzania subskrypcją.';

  @override
  String get onboardingSkip => 'Pomiń';

  @override
  String get onboardingNext => 'Dalej';

  @override
  String get onboardingGetStarted => 'Zacznij';

  @override
  String get onboardingWelcomeTitle => 'Faktury w 2 minuty';

  @override
  String get onboardingWelcomeBody =>
      'Twórz profesjonalne faktury PDF dla swoich klientów — szybko i elegancko.';

  @override
  String get onboardingSyncTitle => 'Synchronizuj wszędzie';

  @override
  String get onboardingSyncBody =>
      'Zaloguj się, aby bezpiecznie tworzyć kopie zapasowe danych w chmurze i mieć do nich dostęp z dowolnego urządzenia.';

  @override
  String get onboardingProTitle => 'Bez ograniczeń z Pro';

  @override
  String get onboardingProBody =>
      'Odblokuj nieograniczone faktury, synchronizację w chmurze i usuń znaki wodne dzięki InvoiceFlow Pro.';

  @override
  String get settingsAccentColor => 'Kolor akcentu';

  @override
  String get settingsAccentColorHint =>
      'Spersonalizuj aplikację wybranym kolorem.';

  @override
  String get settingsCountry => 'Kraj';

  @override
  String get settingsTaxId => 'Numer rejestracyjny podatnika';

  @override
  String get settingsTaxIdNotSet => 'Nie ustawiono';

  @override
  String get settingsTaxIdHint => 'np. 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Zapisano numer podatkowy';

  @override
  String get catalogTitle => 'Produkty i usługi';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pozycji',
      one: '$count pozycja',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'Brak produktów';

  @override
  String get catalogEmptySubtitle =>
      'Zapisuj wielokrotnego użytku produkty i usługi, aby szybciej dodawać je do faktur.';

  @override
  String get catalogFromSaved => 'Z Twojego katalogu';

  @override
  String get catalogSaveToCatalog => 'Zapisz do katalogu do ponownego użycia';

  @override
  String get catalogAddSnackbar => 'Dodano do katalogu';

  @override
  String get catalogDeleteTitle => 'Usunąć pozycję?';

  @override
  String catalogDeleteMessage(String description) {
    return 'Usunąć \"$description\"? Tej operacji nie można cofnąć.';
  }

  @override
  String get commonDone => 'Gotowe';

  @override
  String get estimateListTitle => 'Wyceny';

  @override
  String get estimateListSearchHint => 'Szukaj wycen…';

  @override
  String get estimateListEmpty => 'Brak wycen';

  @override
  String get estimateListTabAll => 'Wszystkie';

  @override
  String get estimateListTabDraft => 'Wersje robocze';

  @override
  String get estimateListTabSent => 'Wysłane';

  @override
  String get estimateListTabAccepted => 'Zaakceptowane';

  @override
  String get estimateListTabExpired => 'Wygasłe';

  @override
  String get estimateCreateTitle => 'Nowa wycena';

  @override
  String get estimateEditTitle => 'Edytuj wycenę';

  @override
  String get estimateCreatedSnackbar => 'Zapisano wycenę';

  @override
  String get estimateUpdatedSnackbar => 'Zaktualizowano wycenę';

  @override
  String get estimateIssueDate => 'Data wystawienia';

  @override
  String get estimateExpiryDate => 'Data wygaśnięcia';

  @override
  String get estimateExpiresPrefix => 'Wygasa ';

  @override
  String get estimateConvertToInvoice => 'Konwertuj na fakturę';

  @override
  String get estimateConvertedSnackbar => 'Przekonwertowano wycenę na fakturę';

  @override
  String get estimateConvertFailed => 'Nie udało się przekonwertować wyceny';

  @override
  String get estimateMarkSent => 'Oznacz jako wysłaną';

  @override
  String get estimateMarkAccepted => 'Oznacz jako zaakceptowaną';

  @override
  String get estimateMarkDeclined => 'Oznacz jako odrzuconą';

  @override
  String get estimateConvertedTitle => 'Przekonwertowano';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'Przekonwertowano na fakturę $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'SUMA WYCENY';

  @override
  String get estimateStatusSent => 'Wysłana';

  @override
  String get estimateStatusAccepted => 'Zaakceptowana';

  @override
  String get estimateStatusDeclined => 'Odrzucona';

  @override
  String get estimateStatusExpired => 'Wygasła';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count otwartych',
      one: '1 otwarta',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'Usunąć wycenę?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'Usunąć \"$estimateNumber\"? Tej operacji nie można cofnąć.';
  }

  @override
  String get estimatePdfFailed => 'Nie udało się wygenerować PDF';

  @override
  String get pdfEstimate => 'WYCENA';

  @override
  String get pdfEstimateNumber => 'Wycena nr:';

  @override
  String get pdfValidUntil => 'Ważna do:';

  @override
  String get invoiceDetailPaymentTerms => 'Warunki płatności';

  @override
  String get recurringListTitle => 'Faktury cykliczne';

  @override
  String get recurringListEmpty => 'Brak faktur cyklicznych';

  @override
  String get recurringListEmptySubtitle =>
      'Konfiguruj automatyczne faktury dla stałych klientów i usług.';

  @override
  String get recurringCreateTitle => 'Nowa faktura cykliczna';

  @override
  String get recurringEditTitle => 'Edytuj fakturę cykliczną';

  @override
  String get recurringCreatedSnackbar => 'Zapisano fakturę cykliczną';

  @override
  String get recurringUpdatedSnackbar => 'Zaktualizowano fakturę cykliczną';

  @override
  String get recurringDeleteTitle => 'Usunąć fakturę cykliczną?';

  @override
  String recurringDeleteMessage(String title) {
    return 'Usunąć \"$title\"? Istniejące faktury nie zostaną usunięte.';
  }

  @override
  String get recurringTitleLabel => 'Tytuł';

  @override
  String get recurringTitleHint => 'np. Comiesięczny retainer';

  @override
  String get recurringClientLabel => 'Klient';

  @override
  String get recurringFrequencyLabel => 'Częstotliwość';

  @override
  String get recurringFrequencyWeekly => 'Co tydzień';

  @override
  String get recurringFrequencyBiweekly => 'Co dwa tygodnie';

  @override
  String get recurringFrequencyMonthly => 'Co miesiąc';

  @override
  String get recurringFrequencyQuarterly => 'Co kwartał';

  @override
  String get recurringFrequencyYearly => 'Co rok';

  @override
  String get recurringNextRun => 'Następny cykl';

  @override
  String get recurringDueDays => 'Termin za';

  @override
  String get recurringDays => 'dni';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aktywnych',
      one: '1 aktywna',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'Raporty';

  @override
  String get reportsSubtitle => 'Analiza działalności';

  @override
  String get reportsEmpty => 'Utwórz faktury, aby zobaczyć raporty';

  @override
  String get reportsCollected => 'Zebrane';

  @override
  String get reportsOutstanding => 'Należności';

  @override
  String get reportsMonthlyRevenue => 'Miesięczne przychody';

  @override
  String get reportsLast6Months => 'Ostatnie 6 miesięcy';

  @override
  String get reportsByStatus => 'Według statusu';

  @override
  String get reportsTopClients => 'Najlepsi klienci';

  @override
  String get paymentLinkTitle => 'Link do płatności';

  @override
  String get paymentLinkNotSet =>
      'Nie ustawiono linku do płatności w Ustawieniach';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'Twój link do płatności jest dołączany do PDF faktury i można go skopiować z menu faktury.';

  @override
  String get paymentLinkSaved => 'Zapisano link do płatności';

  @override
  String get settingsPaymentLinkNotSet => 'Nie ustawiono';

  @override
  String get invoiceDetailCopyPaymentLink => 'Kopiuj link do płatności';

  @override
  String get paymentLinkCopied => 'Skopiowano link do płatności';

  @override
  String get pdfPayOnline => 'Zapłać online';

  @override
  String get exportXml => 'Eksportuj XML';

  @override
  String get exportXmlFailed => 'Nie udało się wyeksportować XML';
}
