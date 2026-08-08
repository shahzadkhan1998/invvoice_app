// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Профессиональные счета за 2 минуты';

  @override
  String get bottomNavDashboard => 'Главная';

  @override
  String get bottomNavInvoices => 'Счета';

  @override
  String get bottomNavClients => 'Клиенты';

  @override
  String get bottomNavSettings => 'Настройки';

  @override
  String get commonCancel => 'Отмена';

  @override
  String get commonDelete => 'Удалить';

  @override
  String get commonSave => 'Сохранить';

  @override
  String get commonSearch => 'Поиск';

  @override
  String get commonBack => 'Назад';

  @override
  String get commonContinue => 'Продолжить';

  @override
  String get commonAdd => 'Добавить';

  @override
  String get commonEdit => 'Изменить';

  @override
  String get commonCreate => 'Создать';

  @override
  String get commonClear => 'Очистить';

  @override
  String get commonView => 'Просмотр';

  @override
  String get commonShare => 'Поделиться';

  @override
  String get commonExportPdf => 'Экспорт в PDF';

  @override
  String get commonSharePdf => 'Поделиться PDF';

  @override
  String get commonSaveChanges => 'Сохранить изменения';

  @override
  String get commonRequired => 'Обязательно';

  @override
  String get commonInvalid => 'Некорректно';

  @override
  String get commonSendLink => 'Отправить ссылку';

  @override
  String get commonGeneratingPdf => 'Создание PDF...';

  @override
  String get dashboardGreetingMorning => 'Доброе утро';

  @override
  String get dashboardGreetingAfternoon => 'Добрый день';

  @override
  String get dashboardGreetingEvening => 'Добрый вечер';

  @override
  String get dashboardSubtitle => 'Обзор вашего бизнеса';

  @override
  String get dashboardOutstanding => 'Не оплачено';

  @override
  String get dashboardOverdue => 'Просрочено';

  @override
  String get dashboardThisMonth => 'В этом месяце';

  @override
  String get dashboardInvoices => 'счетов';

  @override
  String dashboardPaidCount(Object count) {
    return '$count оплачено';
  }

  @override
  String get dashboardRecentInvoices => 'Последние счета';

  @override
  String get dashboardSeeAll => 'Показать все';

  @override
  String get dashboardNotifications => 'Уведомления';

  @override
  String get dashboardNotificationsHint =>
      'Следите за денежными потоками, регулярно проверяя просроченные и ожидающие оплаты счета.';

  @override
  String get dashboardNewInvoice => 'Новый счет';

  @override
  String get dashboardNoInvoicesYet => 'Счетов пока нет';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Создайте первый профессиональный счет менее чем за 2 минуты';

  @override
  String get dashboardCreateInvoice => 'Создать счет';

  @override
  String get dashboardMarkPaid => 'Отметить оплаченным';

  @override
  String get dashboardDuePrefix => 'Срок ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days дн. просрочки';
  }

  @override
  String get deleteInvoiceTitle => 'Удалить счет?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'Удалить $invoiceNumber? Это действие нельзя отменить.';
  }

  @override
  String get loginHeading => 'С возвращением';

  @override
  String get loginSubtitle => 'Войдите в свою учетную запись InvoiceFlow';

  @override
  String get loginEmailLabel => 'Электронная почта';

  @override
  String get loginEmailHint => 'you@example.com';

  @override
  String get loginEmailRequired => 'Введите адрес электронной почты';

  @override
  String get loginEmailInvalid => 'Введите корректный адрес электронной почты';

  @override
  String get loginPasswordLabel => 'Пароль';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'Введите пароль';

  @override
  String get loginPasswordMinLength =>
      'Пароль должен содержать не менее 6 символов';

  @override
  String get loginForgotPassword => 'Забыли пароль?';

  @override
  String get loginSignIn => 'Войти';

  @override
  String get loginOrContinueWith => 'или продолжить с';

  @override
  String get loginContinueWithGoogle => 'Продолжить с Google';

  @override
  String get loginNoAccount => 'Нет учетной записи? ';

  @override
  String get loginSignUp => 'Зарегистрироваться';

  @override
  String get loginResetPasswordTitle => 'Сброс пароля';

  @override
  String get loginResetPasswordMessage =>
      'Введите адрес электронной почты, и мы отправим ссылку для сброса пароля.';

  @override
  String get loginResetPasswordHint => 'you@example.com';

  @override
  String get loginResetLinkSent =>
      'Ссылка для сброса отправлена! Проверьте электронную почту.';

  @override
  String get loginResetLinkFailed =>
      'Не удалось отправить ссылку для сброса пароля.';

  @override
  String get registerHeading => 'Создать учетную запись';

  @override
  String get registerSubtitle =>
      'Начните выставлять профессиональные счета уже сегодня';

  @override
  String get registerNameLabel => 'Полное имя';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => 'Введите имя';

  @override
  String get registerNameMinLength =>
      'Имя должно содержать не менее 2 символов';

  @override
  String get registerEmailLabel => 'Электронная почта';

  @override
  String get registerEmailHint => 'you@example.com';

  @override
  String get registerEmailRequired => 'Введите адрес электронной почты';

  @override
  String get registerEmailInvalid =>
      'Введите корректный адрес электронной почты';

  @override
  String get registerPasswordLabel => 'Пароль';

  @override
  String get registerPasswordHint => 'Не менее 6 символов';

  @override
  String get registerPasswordRequired => 'Введите пароль';

  @override
  String get registerPasswordMinLength =>
      'Пароль должен содержать не менее 6 символов';

  @override
  String get registerConfirmPasswordLabel => 'Подтвердите пароль';

  @override
  String get registerConfirmPasswordHint => 'Повторите пароль';

  @override
  String get registerConfirmPasswordRequired => 'Подтвердите пароль';

  @override
  String get registerPasswordsDoNotMatch => 'Пароли не совпадают';

  @override
  String get registerCreateAccount => 'Создать учетную запись';

  @override
  String get registerHaveAccount => 'Уже есть учетная запись? ';

  @override
  String get registerSignIn => 'Войти';

  @override
  String get authTermsOfService => 'Условия предоставления услуг';

  @override
  String get authPrivacyPolicy => 'Политика конфиденциальности';

  @override
  String get authAgreeRequired =>
      'Чтобы продолжить, примите Условия предоставления услуг и Политику конфиденциальности';

  @override
  String get loginAgreePrefix => 'Продолжая, вы соглашаетесь с нашими ';

  @override
  String get registerAgreePrefix => 'Я соглашаюсь с ';

  @override
  String get authAgreeAnd => ' и ';

  @override
  String get authTermsSheet =>
      'Настоящие Условия предоставления услуг регулируют использование InvoiceFlow. Получая доступ к приложению или используя его, вы соглашаетесь соблюдать эти условия.\n\n1. Вы несёте ответственность за точность счетов, смет и других данных, которые создаёте.\n2. Приложение предоставляется \"как есть\", без каких-либо гарантий, явных или подразумеваемых.\n3. Мы не несём ответственности за убытки, возникшие в результате использования сервиса.\n4. Вы не должны использовать приложение в незаконных или запрещённых целях.\n5. Мы можем время от времени обновлять эти условия; дальнейшее использование приложения означает принятие обновлённых условий.';

  @override
  String get authPrivacySheet =>
      'Ваша конфиденциальность важна для нас.\n\n1. Хранение данных: ваши счета, клиенты и настройки хранятся локально на вашем устройстве.\n2. Облачная синхронизация: если вы войдёте в систему, ваши данные будут синхронизированы с вашей учётной записью и станут доступны на всех ваших устройствах.\n3. Мы никогда не продаём и не передаём вашу личную информацию.\n4. Аналитика: мы можем собирать анонимизированные данные об использовании для улучшения приложения.\n5. Контакты: по вопросам конфиденциальности обращайтесь по адресу support@invoiceflow.app.';

  @override
  String get authErrorWeakPassword => 'Слишком слабый пароль';

  @override
  String get authErrorEmailAlreadyInUse => 'Учетная запись уже существует';

  @override
  String get authErrorUserNotFound => 'Пользователь с таким адресом не найден';

  @override
  String get authErrorWrongPassword => 'Неверный пароль';

  @override
  String get authErrorInvalidEmail => 'Некорректный адрес электронной почты';

  @override
  String get authErrorTooManyRequests =>
      'Слишком много попыток. Попробуйте позже';

  @override
  String get authErrorDefault =>
      'Не удалось выполнить вход. Попробуйте еще раз.';

  @override
  String get authErrorGoogleSignInFailed => 'Не удалось войти через Google.';

  @override
  String get invoiceListTitle => 'Счета';

  @override
  String get invoiceListSearchHint => 'Поиск счетов...';

  @override
  String get invoiceListSortDate => 'Сортировать по дате';

  @override
  String get invoiceListSortAmount => 'Сортировать по сумме';

  @override
  String get invoiceListSortClient => 'Сортировать по клиенту';

  @override
  String get invoiceListTabAll => 'Все';

  @override
  String get invoiceListTabPaid => 'Оплаченные';

  @override
  String get invoiceListTabPending => 'В ожидании';

  @override
  String get invoiceListTabOverdue => 'Просроченные';

  @override
  String get invoiceListTabDraft => 'Черновики';

  @override
  String get invoiceListEmpty => 'Счета не найдены';

  @override
  String get invoiceCreateTitle => 'Новый счет';

  @override
  String get invoiceEditTitle => 'Редактировать счет';

  @override
  String get invoiceSaveDraft => 'Сохранить черновик';

  @override
  String get invoiceStepClient => 'Клиент';

  @override
  String get invoiceStepItems => 'Позиции';

  @override
  String get invoiceStepReview => 'Проверка';

  @override
  String get invoiceSelectClient => 'Выберите клиента';

  @override
  String get invoiceSelectClientSubtitle => 'Укажите, кому адресован этот счет';

  @override
  String get invoiceSearchClients => 'Поиск клиентов...';

  @override
  String get invoiceAddNewClient => 'Добавить нового клиента';

  @override
  String get invoiceNoClientsFound => 'Клиенты не найдены';

  @override
  String get invoiceSelectClientEmptyHint =>
      'Создайте первого клиента, чтобы начать выставлять счета';

  @override
  String get invoiceAddLineItem => 'Добавить позицию';

  @override
  String get invoiceItemDescription => 'Описание';

  @override
  String get invoiceItemDescriptionHint => 'например, разработка сайта';

  @override
  String get invoiceItemQuickAdd => 'Быстрое добавление:';

  @override
  String get invoiceItemQty => 'Количество';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Ставка';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Добавить позицию';

  @override
  String get invoiceLineItems => 'Позиции';

  @override
  String get invoiceLineItemsSubtitle => 'Добавьте услуги или товары';

  @override
  String get invoiceNoItems => 'Позиций пока нет. Добавьте первую позицию.';

  @override
  String get invoiceTaxRate => 'Ставка налога (%)';

  @override
  String get invoiceSubtotal => 'Промежуточный итог';

  @override
  String invoiceTax(Object taxRate) {
    return 'Налог ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'ИТОГО';

  @override
  String get invoiceReviewHeading => 'Проверка и завершение';

  @override
  String get invoiceReviewSubtitle =>
      'Укажите даты, добавьте заметки, логотип и подпись';

  @override
  String get invoiceCompanyLogo => 'Логотип компании';

  @override
  String get invoiceAddLogo => 'Добавить логотип';

  @override
  String get invoiceInvoiceDate => 'Дата счета';

  @override
  String get invoiceDueDate => 'Срок оплаты';

  @override
  String get invoiceNotesLabel => 'Заметки (необязательно)';

  @override
  String get invoiceNotesHint => 'Спасибо за сотрудничество!';

  @override
  String get invoicePaymentTermsLabel => 'Условия оплаты (необязательно)';

  @override
  String get invoicePaymentTermsHint => 'Оплата в течение 30 дней';

  @override
  String get invoiceSignatureLabel => 'Подпись';

  @override
  String get invoiceSignatureOverwrite =>
      'Существующая подпись сохранена. Нарисуйте поверх, чтобы заменить.';

  @override
  String get invoiceCreatedSnackbar => 'Счет создан!';

  @override
  String get invoiceUpdatedSnackbar => 'Счет обновлен!';

  @override
  String get invoiceDetailTitle => 'СЧЕТ';

  @override
  String get invoiceDetailMarkAsPaid => 'Отметить оплаченным';

  @override
  String get invoiceDetailTotalAmount => 'Общая сумма';

  @override
  String get invoiceDetailIssued => 'Выставлен';

  @override
  String get invoiceDetailDue => 'Срок';

  @override
  String get invoiceDetailPaid => 'Оплачено';

  @override
  String get invoiceDetailBillTo => 'Плательщик';

  @override
  String get invoiceDetailItems => 'Позиции';

  @override
  String get invoiceDetailNotes => 'Заметки';

  @override
  String get invoiceDetailSignature => 'Подпись';

  @override
  String get invoiceDetailMarkedPaidSnackbar => 'Счет отмечен оплаченным!';

  @override
  String get invoiceDetailPdfFailed => 'Не удалось создать PDF';

  @override
  String get clientListTitle => 'Клиенты';

  @override
  String get clientListSearchHint => 'Поиск клиентов...';

  @override
  String get clientListTotalClients => 'Всего клиентов';

  @override
  String get clientListTotalBilled => 'Всего выставлено';

  @override
  String get clientListEmptySearch => 'Клиенты не найдены';

  @override
  String get clientListEmpty => 'Клиентов пока нет';

  @override
  String get clientListEmptySubtitle =>
      'Добавьте первого клиента, чтобы начать выставлять счета';

  @override
  String get clientListAddClient => 'Добавить клиента';

  @override
  String get clientListTotalBilledLabel => 'всего выставлено';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count счет';
  }

  @override
  String get clientCreateTitle => 'Новый клиент';

  @override
  String get clientEditTitle => 'Редактировать клиента';

  @override
  String get clientBasicInfo => 'Основная информация';

  @override
  String get clientNameLabel => 'Полное имя *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'Введите имя';

  @override
  String get clientNameTooShort => 'Слишком короткое имя';

  @override
  String get clientEmailLabel => 'Электронная почта *';

  @override
  String get clientEmailHint => 'billing@company.com';

  @override
  String get clientEmailRequired => 'Введите адрес электронной почты';

  @override
  String get clientEmailInvalid => 'Введите корректный адрес электронной почты';

  @override
  String get clientPhoneLabel => 'Номер телефона';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'Адрес';

  @override
  String get clientAddressLabel => 'Улица, дом';

  @override
  String get clientAddressHint => '123 Business Park, Office 45';

  @override
  String get clientCityLabel => 'Город / Страна';

  @override
  String get clientCityHint => 'Дубай, Объединенные Арабские Эмираты';

  @override
  String get clientBillingDefaults => 'Параметры выставления счетов';

  @override
  String get clientDefaultCurrency => 'Валюта по умолчанию';

  @override
  String get clientDefaultTaxRate => 'Ставка налога по умолчанию (VAT/GST)';

  @override
  String get clientVatLabel => 'VAT / Идентификационный налоговый номер';

  @override
  String get clientVatHint => '123456789012345 (необязательно)';

  @override
  String get clientUpdateButton => 'Обновить клиента';

  @override
  String get clientAddButton => 'Добавить клиента';

  @override
  String get clientUpdatedSnackbar => 'Клиент обновлен!';

  @override
  String get clientAddedSnackbar => 'Клиент добавлен!';

  @override
  String get clientDetailInvoices => 'Счета';

  @override
  String get clientDetailTotalBilled => 'Всего выставлено';

  @override
  String get clientDetailOutstanding => 'Не оплачено';

  @override
  String get clientDetailEdit => 'Изменить';

  @override
  String get clientDetailNewInvoice => 'Новый счет';

  @override
  String get clientDetailEmailClient => 'Написать клиенту';

  @override
  String get clientDetailClientDetails => 'Данные клиента';

  @override
  String get clientDetailEmail => 'Электронная почта';

  @override
  String get clientDetailPhone => 'Телефон';

  @override
  String get clientDetailAddress => 'Адрес';

  @override
  String get clientDetailCity => 'Город';

  @override
  String get clientDetailCurrency => 'Валюта';

  @override
  String get clientDetailTaxRate => 'Ставка налога';

  @override
  String get clientDetailVatNumber => 'Номер VAT';

  @override
  String get clientDetailInvoiceHistory => 'История счетов';

  @override
  String get clientDetailNoInvoices => 'У этого клиента пока нет счетов';

  @override
  String get deleteClientTitle => 'Удалить клиента?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'Удалить $clientName? Это действие нельзя отменить.';
  }

  @override
  String get settingsTitle => 'Настройки';

  @override
  String get settingsYourName => 'Ваше имя';

  @override
  String get settingsBackupTitle => 'Резервное копирование счетов';

  @override
  String get settingsBackupDescription =>
      'Войдите, чтобы безопасно синхронизировать данные и получать к ним доступ из любого места.';

  @override
  String get settingsSignInRegister => 'Войти или зарегистрироваться';

  @override
  String get settingsProUpsell =>
      'Перейдите на Pro и получите безлимитные счета, облачную синхронизацию и без водяных знаков.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'Вы достигли лимита бесплатного плана — $limit счетов. Перейдите на Pro для безлимитных счетов и облачной синхронизации.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'Вы достигли лимита бесплатного плана — $limit клиентов. Перейдите на Pro для безлимитных клиентов и облачной синхронизации.';
  }

  @override
  String get settingsUpgradePro => 'Перейти на Pro';

  @override
  String get settingsBusinessSection => 'ПАРАМЕТРЫ БИЗНЕСА';

  @override
  String get settingsBusinessDetails => 'Данные бизнеса';

  @override
  String get settingsBusinessDetailsSubtitle =>
      'Укажите название вашего бизнеса';

  @override
  String get settingsInvoicePrefix => 'Префикс счета';

  @override
  String get settingsDefaultCurrency => 'Валюта по умолчанию';

  @override
  String get settingsAppSection => 'ПАРАМЕТРЫ ПРИЛОЖЕНИЯ';

  @override
  String get settingsDarkMode => 'Темная тема';

  @override
  String get settingsDailyNotification => 'Ежедневное уведомление';

  @override
  String get settingsDailyNotificationNotSet => 'Не задано';

  @override
  String get settingsLanguage => 'Язык';

  @override
  String get settingsLanguageLabel => 'Русский';

  @override
  String get languageEnglish => 'Английский';

  @override
  String get languageArabic => 'العربية';

  @override
  String get languageFrench => 'Французский';

  @override
  String get languageSpanish => 'Испанский';

  @override
  String get languageUrdu => 'اردو';

  @override
  String get languageChinese => 'Китайский';

  @override
  String get settingsAboutSection => 'О ПРИЛОЖЕНИИ';

  @override
  String get settingsRateApp => 'Оценить приложение';

  @override
  String get settingsHelpSupport => 'Помощь и поддержка';

  @override
  String get settingsPrivacyPolicy => 'Политика конфиденциальности';

  @override
  String get settingsHelpSupportSheet =>
      'Нужна помощь? Напишите на support@invoiceflow.app, и мы ответим в течение 24 часов.';

  @override
  String get settingsPrivacySheet =>
      'Ваши данные хранятся локально на вашем устройстве. Мы никогда не продаем и не передаем вашу личную информацию.';

  @override
  String get settingsVersion => 'Версия';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Выйти';

  @override
  String get settingsEditProfile => 'Редактировать профиль';

  @override
  String get settingsProfileNameLabel => 'Полное имя';

  @override
  String get settingsProfileNameHint => 'Ваше имя';

  @override
  String get settingsBusinessNameLabel => 'Название бизнеса';

  @override
  String get settingsBusinessNameHint => 'Ваша Компания ООО';

  @override
  String get settingsBusinessEmailLabel => 'Рабочая электронная почта';

  @override
  String get settingsBusinessEmailHint => 'billing@company.com';

  @override
  String get settingsPhoneLabel => 'Телефон';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'Адрес';

  @override
  String get settingsAddressHint => 'Дубай, Объединенные Арабские Эмираты';

  @override
  String get settingsBusinessDetailsSaved => 'Данные бизнеса сохранены!';

  @override
  String get settingsInvoicePrefixTitle => 'Префикс номера счета';

  @override
  String get settingsInvoicePrefixHint => 'например, INV-, #, Сч-';

  @override
  String get settingsPrefixSaved => 'Префикс счета сохранен';

  @override
  String get settingsNotificationScheduled =>
      'Ежедневное уведомление успешно запланировано!';

  @override
  String get settingsSignOutTitle => 'Выйти?';

  @override
  String get settingsSignOutMessage =>
      'Вы уверены, что хотите выйти из InvoiceFlow?';

  @override
  String get settingsSignedOut => 'Вы успешно вышли.';

  @override
  String get statusPaid => 'Оплачен';

  @override
  String get statusOverdue => 'Просрочен';

  @override
  String get statusPending => 'В ожидании';

  @override
  String get statusDraft => 'Черновик';

  @override
  String get statusCancelled => 'Отменен';

  @override
  String get notificationChannelName => 'Ежедневные напоминания';

  @override
  String get notificationChannelDescription =>
      'Напоминает ежедневно проверять счета';

  @override
  String get notificationTitle => 'Напоминание о счетах';

  @override
  String get notificationBody =>
      'Пора проверить последние счета и отследить ожидающие платежи.';

  @override
  String get pdfInvoice => 'СЧЕТ';

  @override
  String get pdfInvoiceNumber => 'Счет №:';

  @override
  String get pdfDate => 'Дата:';

  @override
  String get pdfDueDate => 'Срок оплаты:';

  @override
  String get pdfBillTo => 'ПЛАТЕЛЬЩИК:';

  @override
  String get pdfDescription => 'Описание';

  @override
  String get pdfQty => 'Кол-во';

  @override
  String get pdfRate => 'Ставка';

  @override
  String get pdfAmount => 'Сумма';

  @override
  String get pdfSubtotal => 'Промежуточный итог:';

  @override
  String pdfTax(Object taxRate) {
    return 'Налог ($taxRate%):';
  }

  @override
  String get pdfTotal => 'ИТОГО:';

  @override
  String get pdfSignature => 'Подпись:';

  @override
  String get pdfNotes => 'Заметки:';

  @override
  String get pdfPaymentTerms => 'Условия оплаты:';

  @override
  String get pdfThankYou => 'Спасибо за сотрудничество!';

  @override
  String get quickAddWebDesign => 'Веб-дизайн';

  @override
  String get quickAddDevelopment => 'Разработка';

  @override
  String get quickAddConsulting => 'Консалтинг';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Написание контента';

  @override
  String get paywallTitle => 'Разблокируйте InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'Без лимитов и синхронизация где угодно. Отмена в любой момент.';

  @override
  String get paywallFeatureUnlimited => 'Безлимитные счета и клиенты';

  @override
  String get paywallFeatureSync => 'Облачная синхронизация между устройствами';

  @override
  String get paywallFeatureNoWatermark => 'Без водяных знаков — навсегда';

  @override
  String get paywallMonthly => 'Ежемесячно';

  @override
  String get paywallMonthlySub => 'Оплата ежемесячно';

  @override
  String get paywallYearly => 'Ежегодно';

  @override
  String get paywallYearlySub => 'Лучшая цена — 2 месяца бесплатно';

  @override
  String get paywallRestore => 'Восстановить покупки';

  @override
  String get paywallTerms =>
      'Подписка продлевается автоматически. Управляйте в настройках магазина приложений.';

  @override
  String get purchaseSuccessTitle => 'Вы — Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'Безлимитные счета, облачная синхронизация и отсутствие водяных знаков теперь разблокированы. Спасибо!';

  @override
  String get purchaseSuccessContinue => 'Продолжить';

  @override
  String get paywallLoading => 'Загрузка тарифов…';

  @override
  String get paywallLoadError =>
      'Не удалось загрузить тарифы. Проверьте подключение и попробуйте снова.';

  @override
  String get paywallNoOffering => 'Сейчас нет доступных тарифов.';

  @override
  String get purchaseRestored => 'Покупки успешно восстановлены';

  @override
  String get purchaseErrorGeneric => 'Покупка не удалась. Попробуйте ещё раз.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro активен — безлимитные счета и клиенты без водяных знаков';

  @override
  String get settingsFreePlan => 'Бесплатный тариф';

  @override
  String get settingsFreeHint =>
      'Обновитесь для безлимитных счетов, облачной синхронизации и многого другого';

  @override
  String get settingsUpgradeToPro => 'Перейти на Pro';

  @override
  String get settingsManageSubscription => 'Управление подпиской';

  @override
  String get customerCenterFailed => 'Не удалось открыть управление подпиской.';

  @override
  String get onboardingSkip => 'Пропустить';

  @override
  String get onboardingNext => 'Далее';

  @override
  String get onboardingGetStarted => 'Начать';

  @override
  String get onboardingWelcomeTitle => 'Счета за 2 минуты';

  @override
  String get onboardingWelcomeBody =>
      'Создавайте профессиональные PDF-счета для своих клиентов — быстро и красиво.';

  @override
  String get onboardingSyncTitle => 'Синхронизация везде';

  @override
  String get onboardingSyncBody =>
      'Войдите, чтобы безопасно сохранять данные в облаке и получать к ним доступ с любого устройства.';

  @override
  String get onboardingProTitle => 'Безлимит с Pro';

  @override
  String get onboardingProBody =>
      'Разблокируйте безлимитные счета, облачную синхронизацию и уберите водяные знаки с InvoiceFlow Pro.';

  @override
  String get settingsAccentColor => 'Акцентный цвет';

  @override
  String get settingsAccentColorHint => 'Настройте приложение под свой цвет.';

  @override
  String get settingsCountry => 'Страна';

  @override
  String get settingsTaxId => 'Идентификационный налоговый номер';

  @override
  String get settingsTaxIdNotSet => 'Не задано';

  @override
  String get settingsTaxIdHint => 'например, 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Налоговый номер сохранен';

  @override
  String get catalogTitle => 'Товары и услуги';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count товаров',
      one: '$count товар',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'Товаров пока нет';

  @override
  String get catalogEmptySubtitle =>
      'Сохраняйте часто используемые товары и услуги, чтобы быстрее добавлять их в счета.';

  @override
  String get catalogFromSaved => 'Из вашего каталога';

  @override
  String get catalogSaveToCatalog =>
      'Сохранить в каталог для повторного использования';

  @override
  String get catalogAddSnackbar => 'Добавлено в каталог';

  @override
  String get catalogDeleteTitle => 'Удалить позицию?';

  @override
  String catalogDeleteMessage(String description) {
    return 'Удалить «$description»? Это действие нельзя отменить.';
  }

  @override
  String get commonDone => 'Готово';

  @override
  String get estimateListTitle => 'Сметы';

  @override
  String get estimateListSearchHint => 'Поиск смет…';

  @override
  String get estimateListEmpty => 'Смет пока нет';

  @override
  String get estimateListTabAll => 'Все';

  @override
  String get estimateListTabDraft => 'Черновик';

  @override
  String get estimateListTabSent => 'Отправлено';

  @override
  String get estimateListTabAccepted => 'Принято';

  @override
  String get estimateListTabExpired => 'Истекло';

  @override
  String get estimateCreateTitle => 'Новая смета';

  @override
  String get estimateEditTitle => 'Редактировать смету';

  @override
  String get estimateCreatedSnackbar => 'Смета сохранена';

  @override
  String get estimateUpdatedSnackbar => 'Смета обновлена';

  @override
  String get estimateIssueDate => 'Дата выставления';

  @override
  String get estimateExpiryDate => 'Дата истечения';

  @override
  String get estimateExpiresPrefix => 'Действует до ';

  @override
  String get estimateConvertToInvoice => 'Преобразовать в счет';

  @override
  String get estimateConvertedSnackbar => 'Смета преобразована в счет';

  @override
  String get estimateConvertFailed => 'Не удалось преобразовать смету';

  @override
  String get estimateMarkSent => 'Отметить как отправленную';

  @override
  String get estimateMarkAccepted => 'Отметить как принятую';

  @override
  String get estimateMarkDeclined => 'Отметить как отклоненную';

  @override
  String get estimateConvertedTitle => 'Преобразована';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'Преобразована в счет $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'ИТОГО ПО СМЕТЕ';

  @override
  String get estimateStatusSent => 'Отправлена';

  @override
  String get estimateStatusAccepted => 'Принята';

  @override
  String get estimateStatusDeclined => 'Отклонена';

  @override
  String get estimateStatusExpired => 'Истекла';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count открытых',
      one: '1 открытая',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'Удалить смету?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'Удалить «$estimateNumber»? Это действие нельзя отменить.';
  }

  @override
  String get estimatePdfFailed => 'Не удалось создать PDF';

  @override
  String get pdfEstimate => 'СМЕТА';

  @override
  String get pdfEstimateNumber => 'Смета №:';

  @override
  String get pdfValidUntil => 'Действует до:';

  @override
  String get invoiceDetailPaymentTerms => 'Условия оплаты';

  @override
  String get recurringListTitle => 'Регулярные счета';

  @override
  String get recurringListEmpty => 'Регулярных счетов пока нет';

  @override
  String get recurringListEmptySubtitle =>
      'Настройте автоматическое выставление счетов для постоянных клиентов и услуг.';

  @override
  String get recurringCreateTitle => 'Новый регулярный';

  @override
  String get recurringEditTitle => 'Редактировать регулярный';

  @override
  String get recurringCreatedSnackbar => 'Регулярный счет сохранен';

  @override
  String get recurringUpdatedSnackbar => 'Регулярный счет обновлен';

  @override
  String get recurringDeleteTitle => 'Удалить регулярный счет?';

  @override
  String recurringDeleteMessage(String title) {
    return 'Удалить «$title»? Существующие счета не будут удалены.';
  }

  @override
  String get recurringTitleLabel => 'Название';

  @override
  String get recurringTitleHint => 'например, ежемесячный гонорар';

  @override
  String get recurringClientLabel => 'Клиент';

  @override
  String get recurringFrequencyLabel => 'Периодичность';

  @override
  String get recurringFrequencyWeekly => 'Еженедельно';

  @override
  String get recurringFrequencyBiweekly => 'Раз в две недели';

  @override
  String get recurringFrequencyMonthly => 'Ежемесячно';

  @override
  String get recurringFrequencyQuarterly => 'Ежеквартально';

  @override
  String get recurringFrequencyYearly => 'Ежегодно';

  @override
  String get recurringNextRun => 'Следующий запуск';

  @override
  String get recurringDueDays => 'Срок через';

  @override
  String get recurringDays => 'дн.';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count активных',
      one: '1 активный',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'Отчеты';

  @override
  String get reportsSubtitle => 'Аналитика бизнеса';

  @override
  String get reportsEmpty => 'Создавайте счета, чтобы видеть отчеты';

  @override
  String get reportsCollected => 'Получено';

  @override
  String get reportsOutstanding => 'Не оплачено';

  @override
  String get reportsMonthlyRevenue => 'Ежемесячная выручка';

  @override
  String get reportsLast6Months => 'Последние 6 месяцев';

  @override
  String get reportsByStatus => 'По статусу';

  @override
  String get reportsTopClients => 'Лучшие клиенты';

  @override
  String get paymentLinkTitle => 'Ссылка на оплату';

  @override
  String get paymentLinkNotSet => 'Ссылка на оплату не задана';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'Ссылка на оплату включается в PDF счета и может быть скопирована из меню счета.';

  @override
  String get paymentLinkSaved => 'Ссылка на оплату сохранена';

  @override
  String get settingsPaymentLinkNotSet => 'Не задано';

  @override
  String get invoiceDetailCopyPaymentLink => 'Копировать ссылку на оплату';

  @override
  String get paymentLinkCopied => 'Ссылка на оплату скопирована';

  @override
  String get pdfPayOnline => 'Оплатить онлайн';

  @override
  String get exportXml => 'Экспорт XML';

  @override
  String get exportXmlFailed => 'Не удалось экспортировать XML';
}
