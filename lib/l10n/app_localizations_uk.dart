// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Професійні рахунки за 2 хвилини';

  @override
  String get bottomNavDashboard => 'Панель';

  @override
  String get bottomNavInvoices => 'Рахунки';

  @override
  String get bottomNavClients => 'Клієнти';

  @override
  String get bottomNavSettings => 'Налаштування';

  @override
  String get commonCancel => 'Скасувати';

  @override
  String get commonDelete => 'Видалити';

  @override
  String get commonSave => 'Зберегти';

  @override
  String get commonSearch => 'Пошук';

  @override
  String get commonBack => 'Назад';

  @override
  String get commonContinue => 'Продовжити';

  @override
  String get commonAdd => 'Додати';

  @override
  String get commonEdit => 'Редагувати';

  @override
  String get commonCreate => 'Створити';

  @override
  String get commonClear => 'Очистити';

  @override
  String get commonView => 'Переглянути';

  @override
  String get commonShare => 'Поділитися';

  @override
  String get commonExportPdf => 'Експортувати PDF';

  @override
  String get commonSharePdf => 'Поділитися PDF';

  @override
  String get commonSaveChanges => 'Зберегти зміни';

  @override
  String get commonRequired => 'Обов\'язково';

  @override
  String get commonInvalid => 'Некоректно';

  @override
  String get commonSendLink => 'Надіслати посилання';

  @override
  String get commonGeneratingPdf => 'Генерування PDF...';

  @override
  String get dashboardGreetingMorning => 'Доброго ранку';

  @override
  String get dashboardGreetingAfternoon => 'Добрий день';

  @override
  String get dashboardGreetingEvening => 'Доброго вечора';

  @override
  String get dashboardSubtitle => 'Ось огляд вашого бізнесу';

  @override
  String get dashboardOutstanding => 'До сплати';

  @override
  String get dashboardOverdue => 'Прострочено';

  @override
  String get dashboardThisMonth => 'Цього місяця';

  @override
  String get dashboardInvoices => 'рахунки';

  @override
  String dashboardPaidCount(Object count) {
    return '$count оплачено';
  }

  @override
  String get dashboardRecentInvoices => 'Останні рахунки';

  @override
  String get dashboardSeeAll => 'Показати всі';

  @override
  String get dashboardNotifications => 'Сповіщення';

  @override
  String get dashboardNotificationsHint =>
      'Слідкуйте за грошовим потоком, регулярно переглядаючи прострочені та очікуючі рахунки.';

  @override
  String get dashboardNewInvoice => 'Новий рахунок';

  @override
  String get dashboardNoInvoicesYet => 'Рахунків ще немає';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Створіть свій перший професійний рахунок менш ніж за 2 хвилини';

  @override
  String get dashboardCreateInvoice => 'Створити рахунок';

  @override
  String get dashboardMarkPaid => 'Позначити як сплачений';

  @override
  String get dashboardDuePrefix => 'Сплатити до ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days днів прострочено';
  }

  @override
  String get deleteInvoiceTitle => 'Видалити рахунок?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'Видалити $invoiceNumber? Цю дію неможливо скасувати.';
  }

  @override
  String get loginHeading => 'З поверненням';

  @override
  String get loginSubtitle => 'Увійдіть у свій обліковий запис InvoiceFlow';

  @override
  String get loginEmailLabel => 'Адреса електронної пошти';

  @override
  String get loginEmailHint => 'you@example.com';

  @override
  String get loginEmailRequired => 'Електронна пошта обов\'язкова';

  @override
  String get loginEmailInvalid => 'Введіть коректну адресу електронної пошти';

  @override
  String get loginPasswordLabel => 'Пароль';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'Пароль обов\'язковий';

  @override
  String get loginPasswordMinLength =>
      'Пароль має містити щонайменше 6 символів';

  @override
  String get loginForgotPassword => 'Забули пароль?';

  @override
  String get loginSignIn => 'Увійти';

  @override
  String get loginOrContinueWith => 'або продовжити через';

  @override
  String get loginContinueWithGoogle => 'Продовжити з Google';

  @override
  String get loginNoAccount => 'Немає облікового запису? ';

  @override
  String get loginSignUp => 'Зареєструватися';

  @override
  String get loginResetPasswordTitle => 'Скинути пароль';

  @override
  String get loginResetPasswordMessage =>
      'Введіть свою електронну пошту, і ми надішлемо посилання для скидання.';

  @override
  String get loginResetPasswordHint => 'you@example.com';

  @override
  String get loginResetLinkSent =>
      'Посилання для скидання надіслано! Перевірте свою електронну пошту.';

  @override
  String get loginResetLinkFailed =>
      'Не вдалося надіслати посилання для скидання.';

  @override
  String get registerHeading => 'Створення облікового запису';

  @override
  String get registerSubtitle =>
      'Почніть надсилати професійні рахунки вже сьогодні';

  @override
  String get registerNameLabel => 'Повне ім\'я';

  @override
  String get registerNameHint => 'Ахмед Мохаммед';

  @override
  String get registerNameRequired => 'Ім\'я обов\'язкове';

  @override
  String get registerNameMinLength => 'Ім\'я має містити щонайменше 2 символи';

  @override
  String get registerEmailLabel => 'Адреса електронної пошти';

  @override
  String get registerEmailHint => 'you@example.com';

  @override
  String get registerEmailRequired => 'Електронна пошта обов\'язкова';

  @override
  String get registerEmailInvalid =>
      'Введіть коректну адресу електронної пошти';

  @override
  String get registerPasswordLabel => 'Пароль';

  @override
  String get registerPasswordHint => 'Щонайменше 6 символів';

  @override
  String get registerPasswordRequired => 'Пароль обов\'язковий';

  @override
  String get registerPasswordMinLength =>
      'Пароль має містити щонайменше 6 символів';

  @override
  String get registerConfirmPasswordLabel => 'Підтвердьте пароль';

  @override
  String get registerConfirmPasswordHint => 'Повторіть пароль';

  @override
  String get registerConfirmPasswordRequired =>
      'Будь ласка, підтвердьте пароль';

  @override
  String get registerPasswordsDoNotMatch => 'Паролі не збігаються';

  @override
  String get registerCreateAccount => 'Створити обліковий запис';

  @override
  String get registerHaveAccount => 'Вже маєте обліковий запис? ';

  @override
  String get registerSignIn => 'Увійти';

  @override
  String get authTermsOfService => 'Умови надання послуг';

  @override
  String get authPrivacyPolicy => 'Політика конфіденційності';

  @override
  String get authAgreeRequired =>
      'Щоб продовжити, прийміть Умови надання послуг та Політику конфіденційності';

  @override
  String get loginAgreePrefix => 'Продовжуючи, ви погоджуєтесь із нашими ';

  @override
  String get registerAgreePrefix => 'Я погоджуюсь із ';

  @override
  String get authAgreeAnd => ' та ';

  @override
  String get authTermsSheet =>
      'Ці Умови надання послуг регулюють ваше використання InvoiceFlow. Отримуючи доступ до застосунку або використовуючи його, ви погоджуєтесь дотримуватися цих умов.\n\n1. Ви несете відповідальність за точність рахунків, кошторисів та інших даних, які створюєте.\n2. Застосунок надається \"як є\", без будь-яких гарантій, явних або прихованих.\n3. Ми не несемо відповідальності за збитки, що виникли внаслідок використання сервісу.\n4. Заборонено використовувати застосунок у незаконних або заборонених цілях.\n5. Ми можемо час від часу оновлювати ці умови; подальше використання застосунку означає прийняття оновлених умов.';

  @override
  String get authPrivacySheet =>
      'Ваша конфіденційність важлива для нас.\n\n1. Зберігання даних: ваші рахунки, клієнти та налаштування зберігаються локально на вашому пристрої.\n2. Хмарна синхронізація: якщо ви ввійдете, ваші дані синхронізуються з вашим обліковим записом, щоб бути доступними на всіх ваших пристроях.\n3. Ми ніколи не продаємо та не передаємо вашу особисту інформацію.\n4. Аналітика: ми можемо збирати анонімізовані дані про використання, щоб покращувати застосунок.\n5. Контакти: з питань конфіденційності звертайтеся на support@invoiceflow.app.';

  @override
  String get authErrorWeakPassword => 'Пароль занадто слабкий';

  @override
  String get authErrorEmailAlreadyInUse => 'Обліковий запис вже існує';

  @override
  String get authErrorUserNotFound =>
      'Користувача з такою електронною поштою не знайдено';

  @override
  String get authErrorWrongPassword => 'Неправильний пароль';

  @override
  String get authErrorInvalidEmail => 'Некоректна адреса електронної пошти';

  @override
  String get authErrorTooManyRequests => 'Забагато спроб. Спробуйте пізніше';

  @override
  String get authErrorDefault =>
      'Не вдалося автентифікувати. Спробуйте ще раз.';

  @override
  String get authErrorGoogleSignInFailed => 'Не вдалося увійти через Google.';

  @override
  String get invoiceListTitle => 'Рахунки';

  @override
  String get invoiceListSearchHint => 'Пошук рахунків...';

  @override
  String get invoiceListSortDate => 'Сортувати за датою';

  @override
  String get invoiceListSortAmount => 'Сортувати за сумою';

  @override
  String get invoiceListSortClient => 'Сортувати за клієнтом';

  @override
  String get invoiceListTabAll => 'Усі';

  @override
  String get invoiceListTabPaid => 'Сплачені';

  @override
  String get invoiceListTabPending => 'В очікуванні';

  @override
  String get invoiceListTabOverdue => 'Прострочені';

  @override
  String get invoiceListTabDraft => 'Чернетки';

  @override
  String get invoiceListEmpty => 'Рахунків не знайдено';

  @override
  String get invoiceCreateTitle => 'Новий рахунок';

  @override
  String get invoiceEditTitle => 'Редагувати рахунок';

  @override
  String get invoiceSaveDraft => 'Зберегти чернетку';

  @override
  String get invoiceStepClient => 'Клієнт';

  @override
  String get invoiceStepItems => 'Позиції';

  @override
  String get invoiceStepReview => 'Перегляд';

  @override
  String get invoiceSelectClient => 'Оберіть клієнта';

  @override
  String get invoiceSelectClientSubtitle => 'Виберіть, для кого цей рахунок';

  @override
  String get invoiceSearchClients => 'Пошук клієнтів...';

  @override
  String get invoiceAddNewClient => 'Додати нового клієнта';

  @override
  String get invoiceNoClientsFound => 'Клієнтів не знайдено';

  @override
  String get invoiceSelectClientEmptyHint =>
      'Створіть свого першого клієнта, щоб почати створювати рахунки';

  @override
  String get invoiceAddLineItem => 'Додати позицію';

  @override
  String get invoiceItemDescription => 'Опис';

  @override
  String get invoiceItemDescriptionHint => 'напр. веб-розробка';

  @override
  String get invoiceItemQuickAdd => 'Швидке додавання:';

  @override
  String get invoiceItemQty => 'Кількість';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Ставка';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Додати позицію';

  @override
  String get invoiceLineItems => 'Позиції рахунку';

  @override
  String get invoiceLineItemsSubtitle => 'Додайте послуги або товари';

  @override
  String get invoiceNoItems => 'Позицій поки немає. Додайте першу позицію.';

  @override
  String get invoiceTaxRate => 'Ставка податку (%)';

  @override
  String get invoiceSubtotal => 'Проміжний підсумок';

  @override
  String invoiceTax(Object taxRate) {
    return 'Податок ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'РАЗОМ';

  @override
  String get invoiceReviewHeading => 'Перегляд і завершення';

  @override
  String get invoiceReviewSubtitle =>
      'Встановіть дати, додайте примітки, логотип і підпис';

  @override
  String get invoiceCompanyLogo => 'Логотип компанії';

  @override
  String get invoiceAddLogo => 'Додати логотип';

  @override
  String get invoiceInvoiceDate => 'Дата рахунку';

  @override
  String get invoiceDueDate => 'Термін оплати';

  @override
  String get invoiceNotesLabel => 'Примітки (необов\'язково)';

  @override
  String get invoiceNotesHint => 'Дякуємо за співпрацю!';

  @override
  String get invoicePaymentTermsLabel => 'Умови оплати (необов\'язково)';

  @override
  String get invoicePaymentTermsHint => 'Оплата протягом 30 днів';

  @override
  String get invoiceSignatureLabel => 'Підпис';

  @override
  String get invoiceSignatureOverwrite =>
      'Наявний підпис збережено. Намалюйте зверху, щоб замінити.';

  @override
  String get invoiceCreatedSnackbar => 'Рахунок створено!';

  @override
  String get invoiceUpdatedSnackbar => 'Рахунок оновлено!';

  @override
  String get invoiceDetailTitle => 'РАХУНОК';

  @override
  String get invoiceDetailMarkAsPaid => 'Позначити як сплачений';

  @override
  String get invoiceDetailTotalAmount => 'Загальна сума';

  @override
  String get invoiceDetailIssued => 'Виставлено';

  @override
  String get invoiceDetailDue => 'Термін оплати';

  @override
  String get invoiceDetailPaid => 'Сплачено';

  @override
  String get invoiceDetailBillTo => 'Платник';

  @override
  String get invoiceDetailItems => 'Позиції';

  @override
  String get invoiceDetailNotes => 'Примітки';

  @override
  String get invoiceDetailSignature => 'Підпис';

  @override
  String get invoiceDetailMarkedPaidSnackbar =>
      'Рахунок позначено як сплачений!';

  @override
  String get invoiceDetailPdfFailed => 'Не вдалося створити PDF';

  @override
  String get clientListTitle => 'Клієнти';

  @override
  String get clientListSearchHint => 'Пошук клієнтів...';

  @override
  String get clientListTotalClients => 'Усього клієнтів';

  @override
  String get clientListTotalBilled => 'Усього виставлено';

  @override
  String get clientListEmptySearch => 'Клієнтів не знайдено';

  @override
  String get clientListEmpty => 'Клієнтів ще немає';

  @override
  String get clientListEmptySubtitle =>
      'Додайте свого першого клієнта, щоб почати створювати рахунки';

  @override
  String get clientListAddClient => 'Додати клієнта';

  @override
  String get clientListTotalBilledLabel => 'усього виставлено';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count рахунок';
  }

  @override
  String get clientCreateTitle => 'Новий клієнт';

  @override
  String get clientEditTitle => 'Редагувати клієнта';

  @override
  String get clientBasicInfo => 'Основна інформація';

  @override
  String get clientNameLabel => 'Повне ім\'я *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'Ім\'я обов\'язкове';

  @override
  String get clientNameTooShort => 'Ім\'я занадто коротке';

  @override
  String get clientEmailLabel => 'Адреса електронної пошти *';

  @override
  String get clientEmailHint => 'billing@company.com';

  @override
  String get clientEmailRequired => 'Електронна пошта обов\'язкова';

  @override
  String get clientEmailInvalid => 'Введіть коректну адресу електронної пошти';

  @override
  String get clientPhoneLabel => 'Номер телефону';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'Адреса';

  @override
  String get clientAddressLabel => 'Вулиця, будинок';

  @override
  String get clientAddressHint => '123 Бізнес-парк, офіс 45';

  @override
  String get clientCityLabel => 'Місто / Країна';

  @override
  String get clientCityHint => 'Дубай, Об\'єднані Арабські Емірати';

  @override
  String get clientBillingDefaults => 'Параметри виставлення рахунків';

  @override
  String get clientDefaultCurrency => 'Валюта за замовчуванням';

  @override
  String get clientDefaultTaxRate =>
      'Ставка податку за замовчуванням (VAT/GST)';

  @override
  String get clientVatLabel => 'VAT / Податковий номер';

  @override
  String get clientVatHint => '123456789012345 (необов\'язково)';

  @override
  String get clientUpdateButton => 'Оновити клієнта';

  @override
  String get clientAddButton => 'Додати клієнта';

  @override
  String get clientUpdatedSnackbar => 'Клієнта оновлено!';

  @override
  String get clientAddedSnackbar => 'Клієнта додано!';

  @override
  String get clientDetailInvoices => 'Рахунки';

  @override
  String get clientDetailTotalBilled => 'Усього виставлено';

  @override
  String get clientDetailOutstanding => 'До сплати';

  @override
  String get clientDetailEdit => 'Редагувати';

  @override
  String get clientDetailNewInvoice => 'Новий рахунок';

  @override
  String get clientDetailEmailClient => 'Надіслати лист клієнту';

  @override
  String get clientDetailClientDetails => 'Дані клієнта';

  @override
  String get clientDetailEmail => 'Електронна пошта';

  @override
  String get clientDetailPhone => 'Телефон';

  @override
  String get clientDetailAddress => 'Адреса';

  @override
  String get clientDetailCity => 'Місто';

  @override
  String get clientDetailCurrency => 'Валюта';

  @override
  String get clientDetailTaxRate => 'Ставка податку';

  @override
  String get clientDetailVatNumber => 'Номер VAT';

  @override
  String get clientDetailInvoiceHistory => 'Історія рахунків';

  @override
  String get clientDetailNoInvoices => 'Для цього клієнта ще немає рахунків';

  @override
  String get deleteClientTitle => 'Видалити клієнта?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'Видалити $clientName? Цю дію неможливо скасувати.';
  }

  @override
  String get settingsTitle => 'Налаштування';

  @override
  String get settingsYourName => 'Ваше ім\'я';

  @override
  String get settingsBackupTitle => 'Резервне копіювання рахунків';

  @override
  String get settingsBackupDescription =>
      'Увійдіть, щоб безпечно синхронізувати свої дані та отримати доступ до них з будь-якого місця.';

  @override
  String get settingsSignInRegister => 'Увійти або зареєструватися';

  @override
  String get settingsProUpsell =>
      'Оновіться до Pro для необмеженої кількості рахунків, хмарної синхронізації та без водяних знаків.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'Ви досягли ліміту безкоштовного плану — $limit рахунків. Оновіться до Pro для необмеженої кількості рахунків і хмарної синхронізації.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'Ви досягли ліміту безкоштовного плану — $limit клієнтів. Оновіться до Pro для необмеженої кількості клієнтів і хмарної синхронізації.';
  }

  @override
  String get settingsUpgradePro => 'Оновитися';

  @override
  String get settingsBusinessSection => 'НАЛАШТУВАННЯ БІЗНЕСУ';

  @override
  String get settingsBusinessDetails => 'Дані бізнесу';

  @override
  String get settingsBusinessDetailsSubtitle => 'Вкажіть назву вашого бізнесу';

  @override
  String get settingsInvoicePrefix => 'Префікс рахунку';

  @override
  String get settingsDefaultCurrency => 'Валюта за замовчуванням';

  @override
  String get settingsAppSection => 'НАЛАШТУВАННЯ ДОДАТКУ';

  @override
  String get settingsDarkMode => 'Темний режим';

  @override
  String get settingsDailyNotification => 'Щоденне сповіщення';

  @override
  String get settingsDailyNotificationNotSet => 'Не встановлено';

  @override
  String get settingsLanguage => 'Мова';

  @override
  String get settingsLanguageLabel => 'Українська';

  @override
  String get languageEnglish => 'Англійська';

  @override
  String get languageArabic => 'العربية';

  @override
  String get languageFrench => 'Французька';

  @override
  String get languageSpanish => 'Іспанська';

  @override
  String get languageUrdu => 'اردو';

  @override
  String get languageChinese => 'Китайська';

  @override
  String get settingsAboutSection => 'ПРО ДОДАТОК';

  @override
  String get settingsRateApp => 'Оцінити додаток';

  @override
  String get settingsHelpSupport => 'Довідка та підтримка';

  @override
  String get settingsPrivacyPolicy => 'Політика конфіденційності';

  @override
  String get settingsHelpSupportSheet =>
      'Потрібна допомога? Напишіть на support@invoiceflow.app, і ми відповімо протягом 24 годин.';

  @override
  String get settingsPrivacySheet =>
      'Ваші дані зберігаються локально на вашому пристрої. Ми ніколи не продаємо та не поширюємо вашу особисту інформацію.';

  @override
  String get settingsVersion => 'Версія';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Вийти';

  @override
  String get settingsEditProfile => 'Редагувати профіль';

  @override
  String get settingsProfileNameLabel => 'Повне ім\'я';

  @override
  String get settingsProfileNameHint => 'Ваше ім\'я';

  @override
  String get settingsBusinessNameLabel => 'Назва бізнесу';

  @override
  String get settingsBusinessNameHint => 'Ваша компанія ТОВ';

  @override
  String get settingsBusinessEmailLabel => 'Робоча електронна пошта';

  @override
  String get settingsBusinessEmailHint => 'billing@company.com';

  @override
  String get settingsPhoneLabel => 'Телефон';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'Адреса';

  @override
  String get settingsAddressHint => 'Дубай, Об\'єднані Арабські Емірати';

  @override
  String get settingsBusinessDetailsSaved => 'Дані бізнесу збережено!';

  @override
  String get settingsInvoicePrefixTitle => 'Префікс номера рахунку';

  @override
  String get settingsInvoicePrefixHint => 'напр. INV-, #, Bill-';

  @override
  String get settingsPrefixSaved => 'Префікс рахунку збережено';

  @override
  String get settingsNotificationScheduled =>
      'Щоденне сповіщення успішно заплановано!';

  @override
  String get settingsSignOutTitle => 'Вийти?';

  @override
  String get settingsSignOutMessage =>
      'Ви впевнені, що хочете вийти з InvoiceFlow?';

  @override
  String get settingsSignedOut => 'Ви успішно вийшли з облікового запису.';

  @override
  String get statusPaid => 'Сплачено';

  @override
  String get statusOverdue => 'Прострочено';

  @override
  String get statusPending => 'В очікуванні';

  @override
  String get statusDraft => 'Чернетка';

  @override
  String get statusCancelled => 'Скасовано';

  @override
  String get notificationChannelName => 'Щоденні нагадування';

  @override
  String get notificationChannelDescription =>
      'Нагадує перевіряти ваші рахунки щодня';

  @override
  String get notificationTitle => 'Нагадування про рахунок';

  @override
  String get notificationBody =>
      'Час перевірити останні рахунки та відстежити платежі, що очікуються.';

  @override
  String get pdfInvoice => 'РАХУНОК';

  @override
  String get pdfInvoiceNumber => 'Рахунок №:';

  @override
  String get pdfDate => 'Дата:';

  @override
  String get pdfDueDate => 'Термін оплати:';

  @override
  String get pdfBillTo => 'ПЛАТНИК:';

  @override
  String get pdfDescription => 'Опис';

  @override
  String get pdfQty => 'Кіл-ть';

  @override
  String get pdfRate => 'Ставка';

  @override
  String get pdfAmount => 'Сума';

  @override
  String get pdfSubtotal => 'Проміжний підсумок:';

  @override
  String pdfTax(Object taxRate) {
    return 'Податок ($taxRate%):';
  }

  @override
  String get pdfTotal => 'РАЗОМ:';

  @override
  String get pdfSignature => 'Підпис:';

  @override
  String get pdfNotes => 'Примітки:';

  @override
  String get pdfPaymentTerms => 'Умови оплати:';

  @override
  String get pdfThankYou => 'Дякуємо за співпрацю!';

  @override
  String get quickAddWebDesign => 'Веб-дизайн';

  @override
  String get quickAddDevelopment => 'Розробка';

  @override
  String get quickAddConsulting => 'Консалтинг';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Написання контенту';

  @override
  String get paywallTitle => 'Розблокуйте InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'Без обмежень і синхронізація всюди. Скасування в будь-який час.';

  @override
  String get paywallFeatureUnlimited => 'Необмежені рахунки та клієнти';

  @override
  String get paywallFeatureSync => 'Хмарна синхронізація між пристроями';

  @override
  String get paywallFeatureNoWatermark => 'Без водяних знаків — завжди';

  @override
  String get paywallMonthly => 'Щомісяця';

  @override
  String get paywallMonthlySub => 'Сплата щомісяця';

  @override
  String get paywallYearly => 'Щороку';

  @override
  String get paywallYearlySub => 'Найкраща ціна — 2 місяці безкоштовно';

  @override
  String get paywallRestore => 'Відновити покупки';

  @override
  String get paywallTerms =>
      'Підписки поновлюються автоматично. Керуйте ними в налаштуваннях магазину застосунків.';

  @override
  String get purchaseSuccessTitle => 'Тепер ви Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'Необмежені рахунки, хмарна синхронізація та відсутність водяних знаків тепер розблоковані. Дякуємо!';

  @override
  String get purchaseSuccessContinue => 'Продовжити';

  @override
  String get paywallLoading => 'Завантаження тарифів…';

  @override
  String get paywallLoadError =>
      'Не вдалося завантажити тарифи. Перевірте з\'єднання та спробуйте ще раз.';

  @override
  String get paywallNoOffering => 'Зараз немає доступних тарифів.';

  @override
  String get purchaseRestored => 'Покупки успішно відновлено';

  @override
  String get purchaseErrorGeneric => 'Покупка не вдалася. Спробуйте ще раз.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro активний — безлімітні рахунки та клієнти без водяних знаків';

  @override
  String get settingsFreePlan => 'Безкоштовний тариф';

  @override
  String get settingsFreeHint =>
      'Оновіться для безлімітних рахунків, хмарної синхронізації та інших переваг';

  @override
  String get settingsUpgradeToPro => 'Оновити до Pro';

  @override
  String get settingsManageSubscription => 'Керування підпискою';

  @override
  String get customerCenterFailed => 'Не вдалося відкрити керування підпискою.';

  @override
  String get onboardingSkip => 'Пропустити';

  @override
  String get onboardingNext => 'Далі';

  @override
  String get onboardingGetStarted => 'Почати';

  @override
  String get onboardingWelcomeTitle => 'Рахунки за 2 хвилини';

  @override
  String get onboardingWelcomeBody =>
      'Створюйте професійні PDF-рахунки для ваших клієнтів — швидко та красиво.';

  @override
  String get onboardingSyncTitle => 'Синхронізація всюди';

  @override
  String get onboardingSyncBody =>
      'Увійдіть, щоб безпечно зберігати дані в хмарі та отримувати до них доступ з будь-якого пристрою.';

  @override
  String get onboardingProTitle => 'Без обмежень з Pro';

  @override
  String get onboardingProBody =>
      'Розблокуйте необмежені рахунки, хмарну синхронізацію та приберіть водяні знаки з InvoiceFlow Pro.';

  @override
  String get settingsAccentColor => 'Акцентний колір';

  @override
  String get settingsAccentColorHint =>
      'Налаштуйте додаток під колір на ваш вибір.';

  @override
  String get settingsCountry => 'Країна';

  @override
  String get settingsTaxId => 'Податковий реєстраційний номер';

  @override
  String get settingsTaxIdNotSet => 'Не встановлено';

  @override
  String get settingsTaxIdHint => 'напр. 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Податковий номер збережено';

  @override
  String get catalogTitle => 'Товари та послуги';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count позиції',
      one: '$count позиція',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'Товарів ще немає';

  @override
  String get catalogEmptySubtitle =>
      'Зберігайте повторно використовувані товари та послуги, щоб швидше додавати їх у рахунки.';

  @override
  String get catalogFromSaved => 'З вашого каталогу';

  @override
  String get catalogSaveToCatalog =>
      'Зберегти в каталог для повторного використання';

  @override
  String get catalogAddSnackbar => 'Додано в каталог';

  @override
  String get catalogDeleteTitle => 'Видалити позицію?';

  @override
  String catalogDeleteMessage(String description) {
    return 'Видалити \"$description\"? Цю дію неможливо скасувати.';
  }

  @override
  String get commonDone => 'Готово';

  @override
  String get estimateListTitle => 'Кошториси';

  @override
  String get estimateListSearchHint => 'Пошук кошторисів…';

  @override
  String get estimateListEmpty => 'Кошторисів ще немає';

  @override
  String get estimateListTabAll => 'Усі';

  @override
  String get estimateListTabDraft => 'Чернетки';

  @override
  String get estimateListTabSent => 'Надіслані';

  @override
  String get estimateListTabAccepted => 'Прийняті';

  @override
  String get estimateListTabExpired => 'Прострочені';

  @override
  String get estimateCreateTitle => 'Новий кошторис';

  @override
  String get estimateEditTitle => 'Редагувати кошторис';

  @override
  String get estimateCreatedSnackbar => 'Кошторис збережено';

  @override
  String get estimateUpdatedSnackbar => 'Кошторис оновлено';

  @override
  String get estimateIssueDate => 'Дата виставлення';

  @override
  String get estimateExpiryDate => 'Дата завершення';

  @override
  String get estimateExpiresPrefix => 'Завершується ';

  @override
  String get estimateConvertToInvoice => 'Перетворити на рахунок';

  @override
  String get estimateConvertedSnackbar => 'Кошторис перетворено на рахунок';

  @override
  String get estimateConvertFailed => 'Не вдалося перетворити кошторис';

  @override
  String get estimateMarkSent => 'Позначити як надісланий';

  @override
  String get estimateMarkAccepted => 'Позначити як прийнятий';

  @override
  String get estimateMarkDeclined => 'Позначити як відхилений';

  @override
  String get estimateConvertedTitle => 'Перетворено';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'Перетворено на рахунок $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'ЗАГАЛЬНА СУМА КОШТОРИСУ';

  @override
  String get estimateStatusSent => 'Надісланий';

  @override
  String get estimateStatusAccepted => 'Прийнятий';

  @override
  String get estimateStatusDeclined => 'Відхилений';

  @override
  String get estimateStatusExpired => 'Прострочений';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count відкритих',
      one: '1 відкритий',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'Видалити кошторис?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'Видалити \"$estimateNumber\"? Цю дію неможливо скасувати.';
  }

  @override
  String get estimatePdfFailed => 'Не вдалося створити PDF';

  @override
  String get pdfEstimate => 'КОШТОРИС';

  @override
  String get pdfEstimateNumber => 'Кошторис №:';

  @override
  String get pdfValidUntil => 'Дійсний до:';

  @override
  String get invoiceDetailPaymentTerms => 'Умови оплати';

  @override
  String get recurringListTitle => 'Регулярні рахунки';

  @override
  String get recurringListEmpty => 'Регулярних рахунків ще немає';

  @override
  String get recurringListEmptySubtitle =>
      'Налаштуйте автоматичні рахунки для постійних клієнтів і послуг.';

  @override
  String get recurringCreateTitle => 'Новий регулярний рахунок';

  @override
  String get recurringEditTitle => 'Редагувати регулярний рахунок';

  @override
  String get recurringCreatedSnackbar => 'Регулярний рахунок збережено';

  @override
  String get recurringUpdatedSnackbar => 'Регулярний рахунок оновлено';

  @override
  String get recurringDeleteTitle => 'Видалити регулярний рахунок?';

  @override
  String recurringDeleteMessage(String title) {
    return 'Видалити \"$title\"? Наявні рахунки не буде видалено.';
  }

  @override
  String get recurringTitleLabel => 'Назва';

  @override
  String get recurringTitleHint => 'напр. щомісячний ретейнер';

  @override
  String get recurringClientLabel => 'Клієнт';

  @override
  String get recurringFrequencyLabel => 'Періодичність';

  @override
  String get recurringFrequencyWeekly => 'Щотижня';

  @override
  String get recurringFrequencyBiweekly => 'Раз на два тижні';

  @override
  String get recurringFrequencyMonthly => 'Щомісяця';

  @override
  String get recurringFrequencyQuarterly => 'Щоквартально';

  @override
  String get recurringFrequencyYearly => 'Щороку';

  @override
  String get recurringNextRun => 'Наступний запуск';

  @override
  String get recurringDueDays => 'Оплата через';

  @override
  String get recurringDays => 'днів';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count активних',
      one: '1 активний',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'Звіти';

  @override
  String get reportsSubtitle => 'Бізнес-аналітика';

  @override
  String get reportsEmpty => 'Створіть рахунки, щоб побачити звіти';

  @override
  String get reportsCollected => 'Отримано';

  @override
  String get reportsOutstanding => 'До сплати';

  @override
  String get reportsMonthlyRevenue => 'Щомісячний дохід';

  @override
  String get reportsLast6Months => 'Останні 6 місяців';

  @override
  String get reportsByStatus => 'За статусом';

  @override
  String get reportsTopClients => 'Найкращі клієнти';

  @override
  String get paymentLinkTitle => 'Платіжне посилання';

  @override
  String get paymentLinkNotSet =>
      'Платіжне посилання не встановлено в налаштуваннях';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'Ваше платіжне посилання включено в PDF-рахунок, і його можна скопіювати з меню рахунку.';

  @override
  String get paymentLinkSaved => 'Платіжне посилання збережено';

  @override
  String get settingsPaymentLinkNotSet => 'Не встановлено';

  @override
  String get invoiceDetailCopyPaymentLink => 'Скопіювати платіжне посилання';

  @override
  String get paymentLinkCopied => 'Платіжне посилання скопійовано';

  @override
  String get pdfPayOnline => 'Сплатити онлайн';

  @override
  String get exportXml => 'Експортувати XML';

  @override
  String get exportXmlFailed => 'Не вдалося експортувати XML';
}
