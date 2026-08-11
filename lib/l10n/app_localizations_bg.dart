// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsBg extends AppLocalizations {
  AppLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Професионални фактури за 2 минути';

  @override
  String get bottomNavDashboard => 'Табло';

  @override
  String get bottomNavInvoices => 'Фактури';

  @override
  String get bottomNavClients => 'Клиенти';

  @override
  String get bottomNavSettings => 'Настройки';

  @override
  String get commonCancel => 'Отказ';

  @override
  String get commonDelete => 'Изтриване';

  @override
  String get commonSave => 'Запазване';

  @override
  String get commonSearch => 'Търсене';

  @override
  String get commonBack => 'Назад';

  @override
  String get commonContinue => 'Продължи';

  @override
  String get commonAdd => 'Добави';

  @override
  String get commonEdit => 'Редактиране';

  @override
  String get commonCreate => 'Създай';

  @override
  String get commonClear => 'Изчисти';

  @override
  String get commonView => 'Преглед';

  @override
  String get commonShare => 'Споделяне';

  @override
  String get commonExportPdf => 'Експорт в PDF';

  @override
  String get commonSharePdf => 'Споделяне на PDF';

  @override
  String get commonSaveChanges => 'Запазване на промените';

  @override
  String get commonRequired => 'Задължително';

  @override
  String get commonInvalid => 'Невалидно';

  @override
  String get commonSendLink => 'Изпрати линк';

  @override
  String get commonGeneratingPdf => 'Генериране на PDF...';

  @override
  String get dashboardGreetingMorning => 'Добро утро';

  @override
  String get dashboardGreetingAfternoon => 'Добър ден';

  @override
  String get dashboardGreetingEvening => 'Добър вечер';

  @override
  String get dashboardSubtitle => 'Ето преглед на вашия бизнес';

  @override
  String get dashboardOutstanding => 'Неизплатени';

  @override
  String get dashboardOverdue => 'Просрочени';

  @override
  String get dashboardThisMonth => 'Този месец';

  @override
  String get dashboardInvoices => 'фактури';

  @override
  String dashboardPaidCount(Object count) {
    return '$count платени';
  }

  @override
  String get dashboardRecentInvoices => 'Последни фактури';

  @override
  String get dashboardSeeAll => 'Виж всички';

  @override
  String get dashboardNotifications => 'Известия';

  @override
  String get dashboardNotificationsHint =>
      'Следете паричния си поток, като редовно проверявате просрочените и чакащите фактури.';

  @override
  String get dashboardNewInvoice => 'Нова фактура';

  @override
  String get dashboardNoInvoicesYet => 'Все още няма фактури';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Създайте първата си професионална фактура за по-малко от 2 минути';

  @override
  String get dashboardCreateInvoice => 'Създай фактура';

  @override
  String get dashboardMarkPaid => 'Маркирай като платена';

  @override
  String get dashboardDuePrefix => 'Краен срок ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days дни просрочени';
  }

  @override
  String get deleteInvoiceTitle => 'Да изтрия фактурата?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'Да изтрия $invoiceNumber? Това действие е необратимо.';
  }

  @override
  String get loginHeading => 'Добре дошли отново';

  @override
  String get loginSubtitle => 'Влезте в акаунта си в InvoiceFlow';

  @override
  String get loginEmailLabel => 'Имейл адрес';

  @override
  String get loginEmailHint => 'ime@example.com';

  @override
  String get loginEmailRequired => 'Имейлът е задължителен';

  @override
  String get loginEmailInvalid => 'Въведете валиден имейл';

  @override
  String get loginPasswordLabel => 'Парола';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'Паролата е задължителна';

  @override
  String get loginPasswordMinLength => 'Паролата трябва да е поне 6 знака';

  @override
  String get loginForgotPassword => 'Забравена парола?';

  @override
  String get loginSignIn => 'Вход';

  @override
  String get loginOrContinueWith => 'или продължете с';

  @override
  String get loginContinueWithGoogle => 'Продължете с Google';

  @override
  String get loginNoAccount => 'Нямате акаунт? ';

  @override
  String get loginSignUp => 'Регистрация';

  @override
  String get loginResetPasswordTitle => 'Нулиране на парола';

  @override
  String get loginResetPasswordMessage =>
      'Въведете имейла си и ще ви изпратим линк за нулиране.';

  @override
  String get loginResetPasswordHint => 'ime@example.com';

  @override
  String get loginResetLinkSent =>
      'Линкът за нулиране е изпратен! Проверете имейла си.';

  @override
  String get loginResetLinkFailed =>
      'Неуспешно изпращане на линка за нулиране.';

  @override
  String get registerHeading => 'Създаване на акаунт';

  @override
  String get registerSubtitle =>
      'Започнете да изпращате професионални фактури още днес';

  @override
  String get registerNameLabel => 'Пълно име';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => 'Името е задължително';

  @override
  String get registerNameMinLength => 'Името трябва да е поне 2 знака';

  @override
  String get registerEmailLabel => 'Имейл адрес';

  @override
  String get registerEmailHint => 'ime@example.com';

  @override
  String get registerEmailRequired => 'Имейлът е задължителен';

  @override
  String get registerEmailInvalid => 'Въведете валиден имейл';

  @override
  String get registerPasswordLabel => 'Парола';

  @override
  String get registerPasswordHint => 'Поне 6 знака';

  @override
  String get registerPasswordRequired => 'Паролата е задължителна';

  @override
  String get registerPasswordMinLength => 'Паролата трябва да е поне 6 знака';

  @override
  String get registerConfirmPasswordLabel => 'Потвърдете паролата';

  @override
  String get registerConfirmPasswordHint => 'Повторете паролата си';

  @override
  String get registerConfirmPasswordRequired => 'Моля, потвърдете паролата си';

  @override
  String get registerPasswordsDoNotMatch => 'Паролите не съвпадат';

  @override
  String get registerCreateAccount => 'Създай акаунт';

  @override
  String get registerHaveAccount => 'Вече имате акаунт? ';

  @override
  String get registerSignIn => 'Вход';

  @override
  String get authTermsOfService => 'Условия за ползване';

  @override
  String get authPrivacyPolicy => 'Политика за поверителност';

  @override
  String get authAgreeRequired =>
      'Моля, приемете Условията за ползване и Политиката за поверителност, за да продължите';

  @override
  String get loginAgreePrefix => 'Продължавайки, вие се съгласявате с нашите ';

  @override
  String get registerAgreePrefix => 'Съгласявам се с ';

  @override
  String get authAgreeAnd => ' и ';

  @override
  String get authTermsSheet =>
      'Тези условия за ползване уреждат използването на InvoiceFlow. С достъпа или използването на приложението вие се съгласявате да спазвате тези условия.\n\n1. Вие носите отговорност за точността на фактурите, офертите и другите данни, които създавате.\n2. Приложението се предоставя \"както е\", без гаранции от какъвто и да е вид, изрични или подразбиращи се.\n3. Ние не носим отговорност за каквито и да е загуби, произтичащи от използването на услугата.\n4. Не трябва да използвате приложението за незаконни или забранени цели.\n5. Може да актуализираме тези условия от време на време; продължаващото използване на приложението представлява приемане на актуализираните условия.';

  @override
  String get authPrivacySheet =>
      'Вашата поверителност е важна за нас.\n\n1. Съхранение на данни: Вашите фактури, клиенти и настройки се съхраняват локално на вашето устройство.\n2. Облачна синхронизация: Ако влезете в профила си, данните ви се синхронизират към акаунта ви, така че да са достъпни на всичките ви устройства.\n3. Ние никога не продаваме или споделяме вашата лична информация.\n4. Анализ: Може да събираме анонимизирани данни за употреба, за да подобряваме приложението.\n5. Контакт: За въпроси относно поверителността се свържете с support@invoiceflow.app.';

  @override
  String get authErrorWeakPassword => 'Паролата е твърде слаба';

  @override
  String get authErrorEmailAlreadyInUse => 'Акаунтът вече съществува';

  @override
  String get authErrorUserNotFound => 'Не е намерен потребител с този имейл';

  @override
  String get authErrorWrongPassword => 'Грешна парола';

  @override
  String get authErrorInvalidEmail => 'Невалиден имейл адрес';

  @override
  String get authErrorTooManyRequests =>
      'Твърде много опити. Опитайте отново по-късно.';

  @override
  String get authErrorDefault => 'Неуспешно удостоверяване. Опитайте отново.';

  @override
  String get authErrorGoogleSignInFailed => 'Неуспешно влизане с Google.';

  @override
  String get invoiceListTitle => 'Фактури';

  @override
  String get invoiceListSearchHint => 'Търсене на фактури...';

  @override
  String get invoiceListSortDate => 'Сортирай по дата';

  @override
  String get invoiceListSortAmount => 'Сортирай по сума';

  @override
  String get invoiceListSortClient => 'Сортирай по клиент';

  @override
  String get invoiceListTabAll => 'Всички';

  @override
  String get invoiceListTabPaid => 'Платени';

  @override
  String get invoiceListTabPending => 'Чакащи';

  @override
  String get invoiceListTabOverdue => 'Просрочени';

  @override
  String get invoiceListTabDraft => 'Чернови';

  @override
  String get invoiceListEmpty => 'Не са намерени фактури';

  @override
  String get invoiceCreateTitle => 'Нова фактура';

  @override
  String get invoiceEditTitle => 'Редактиране на фактура';

  @override
  String get invoiceSaveDraft => 'Запази черновата';

  @override
  String get invoiceStepClient => 'Клиент';

  @override
  String get invoiceStepItems => 'Артикули';

  @override
  String get invoiceStepReview => 'Преглед';

  @override
  String get invoiceSelectClient => 'Изберете клиент';

  @override
  String get invoiceSelectClientSubtitle => 'Изберете за кого е тази фактура';

  @override
  String get invoiceSearchClients => 'Търсене на клиенти...';

  @override
  String get invoiceAddNewClient => 'Добавяне на нов клиент';

  @override
  String get invoiceNoClientsFound => 'Не са намерени клиенти';

  @override
  String get invoiceSelectClientEmptyHint =>
      'Създайте първия си клиент, за да започнете да създавате фактури';

  @override
  String get invoiceAddLineItem => 'Добавяне на ред';

  @override
  String get invoiceItemDescription => 'Описание';

  @override
  String get invoiceItemDescriptionHint => 'напр. Уеб разработка';

  @override
  String get invoiceItemQuickAdd => 'Бързо добавяне:';

  @override
  String get invoiceItemQty => 'Количество';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Цена';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Добавяне на артикул';

  @override
  String get invoiceLineItems => 'Редове';

  @override
  String get invoiceLineItemsSubtitle => 'Добавете услуги или продукти';

  @override
  String get invoiceNoItems =>
      'Все още няма артикули. Добавете първия си артикул.';

  @override
  String get invoiceTaxRate => 'Данъчна ставка (%)';

  @override
  String get invoiceSubtotal => 'Междинна сума';

  @override
  String invoiceTax(Object taxRate) {
    return 'Данък ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'ОБЩО';

  @override
  String get invoiceReviewHeading => 'Преглед и финализиране';

  @override
  String get invoiceReviewSubtitle =>
      'Задайте дати, добавете бележки, лого и подпис';

  @override
  String get invoiceCompanyLogo => 'Лого на фирмата';

  @override
  String get invoiceAddLogo => 'Добавяне на лого';

  @override
  String get invoiceInvoiceDate => 'Дата на фактурата';

  @override
  String get invoiceDueDate => 'Краен срок';

  @override
  String get invoiceNotesLabel => 'Бележки (по избор)';

  @override
  String get invoiceNotesHint => 'Благодарим ви за сътрудничеството!';

  @override
  String get invoicePaymentTermsLabel => 'Условия за плащане (по избор)';

  @override
  String get invoicePaymentTermsHint => 'Плащане в срок до 30 дни';

  @override
  String get invoiceSignatureLabel => 'Подпис';

  @override
  String get invoiceSignatureOverwrite =>
      'Съществуващият подпис е запазен. Нарисувайте отгоре, за да го замените.';

  @override
  String get invoiceCreatedSnackbar => 'Фактурата е създадена!';

  @override
  String get invoiceUpdatedSnackbar => 'Фактурата е обновена!';

  @override
  String get invoiceDetailTitle => 'ФАКТУРА';

  @override
  String get invoiceDetailMarkAsPaid => 'Маркирай като платена';

  @override
  String get invoiceDetailTotalAmount => 'Обща сума';

  @override
  String get invoiceDetailIssued => 'Издадена';

  @override
  String get invoiceDetailDue => 'Краен срок';

  @override
  String get invoiceDetailPaid => 'Платена';

  @override
  String get invoiceDetailBillTo => 'Получател';

  @override
  String get invoiceDetailItems => 'Артикули';

  @override
  String get invoiceDetailNotes => 'Бележки';

  @override
  String get invoiceDetailSignature => 'Подпис';

  @override
  String get invoiceDetailMarkedPaidSnackbar =>
      'Фактурата е маркирана като платена!';

  @override
  String get invoiceDetailPdfFailed => 'Неуспешно генериране на PDF';

  @override
  String get clientListTitle => 'Клиенти';

  @override
  String get clientListSearchHint => 'Търсене на клиенти...';

  @override
  String get clientListTotalClients => 'Общо клиенти';

  @override
  String get clientListTotalBilled => 'Общо фактурирано';

  @override
  String get clientListEmptySearch => 'Не са намерени клиенти';

  @override
  String get clientListEmpty => 'Все още няма клиенти';

  @override
  String get clientListEmptySubtitle =>
      'Добавете първия си клиент, за да започнете да създавате фактури';

  @override
  String get clientListAddClient => 'Добавяне на клиент';

  @override
  String get clientListTotalBilledLabel => 'общо фактурирано';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count фактура';
  }

  @override
  String get clientCreateTitle => 'Нов клиент';

  @override
  String get clientEditTitle => 'Редактиране на клиент';

  @override
  String get clientBasicInfo => 'Основна информация';

  @override
  String get clientNameLabel => 'Пълно име *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'Името е задължително';

  @override
  String get clientNameTooShort => 'Името е твърде кратко';

  @override
  String get clientEmailLabel => 'Имейл адрес *';

  @override
  String get clientEmailHint => 'billing@company.com';

  @override
  String get clientEmailRequired => 'Имейлът е задължителен';

  @override
  String get clientEmailInvalid => 'Въведете валиден имейл';

  @override
  String get clientPhoneLabel => 'Телефонен номер';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'Адрес';

  @override
  String get clientAddressLabel => 'Адрес';

  @override
  String get clientAddressHint => '123 Business Park, офис 45';

  @override
  String get clientCityLabel => 'Град / Държава';

  @override
  String get clientCityHint => 'Дубай, Обединени арабски емирства';

  @override
  String get clientBillingDefaults =>
      'Настройки по подразбиране за фактуриране';

  @override
  String get clientDefaultCurrency => 'Валута по подразбиране';

  @override
  String get clientDefaultTaxRate => 'Данъчна ставка по подразбиране (VAT/GST)';

  @override
  String get clientVatLabel => 'VAT / данъчен регистрационен номер';

  @override
  String get clientVatHint => '123456789012345 (по избор)';

  @override
  String get clientUpdateButton => 'Обнови клиента';

  @override
  String get clientAddButton => 'Добави клиент';

  @override
  String get clientUpdatedSnackbar => 'Клиентът е обновен!';

  @override
  String get clientAddedSnackbar => 'Клиентът е добавен!';

  @override
  String get clientDetailInvoices => 'Фактури';

  @override
  String get clientDetailTotalBilled => 'Общо фактурирано';

  @override
  String get clientDetailOutstanding => 'Неизплатени';

  @override
  String get clientDetailEdit => 'Редактиране';

  @override
  String get clientDetailNewInvoice => 'Нова фактура';

  @override
  String get clientDetailEmailClient => 'Изпрати имейл';

  @override
  String get clientDetailClientDetails => 'Данни за клиента';

  @override
  String get clientDetailEmail => 'Имейл';

  @override
  String get clientDetailPhone => 'Телефон';

  @override
  String get clientDetailAddress => 'Адрес';

  @override
  String get clientDetailCity => 'Град';

  @override
  String get clientDetailCurrency => 'Валута';

  @override
  String get clientDetailTaxRate => 'Данъчна ставка';

  @override
  String get clientDetailVatNumber => 'VAT номер';

  @override
  String get clientDetailInvoiceHistory => 'История на фактурите';

  @override
  String get clientDetailNoInvoices => 'Все още няма фактури за този клиент';

  @override
  String get deleteClientTitle => 'Да изтрия клиента?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'Да изтрия $clientName? Това действие е необратимо.';
  }

  @override
  String get settingsTitle => 'Настройки';

  @override
  String get settingsYourName => 'Вашето име';

  @override
  String get settingsBackupTitle => 'Резервно копие на вашите фактури';

  @override
  String get settingsBackupDescription =>
      'Влезте, за да синхронизирате данните си сигурно и да имате достъп до тях отвсякъде.';

  @override
  String get settingsSignInRegister => 'Вход или регистрация';

  @override
  String get settingsProUpsell =>
      'Преминете към Pro за неограничени фактури, облачна синхронизация и без водни знаци.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'Достигнахте лимита от $limit фактури по безплатния план. Преминете към Pro за неограничени фактури и облачна синхронизация.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'Достигнахте лимита от $limit клиенти по безплатния план. Преминете към Pro за неограничен брой клиенти и облачна синхронизация.';
  }

  @override
  String get settingsUpgradePro => 'Премини към Pro';

  @override
  String get settingsBusinessSection => 'БИЗНЕС НАСТРОЙКИ';

  @override
  String get settingsBusinessDetails => 'Данни за бизнеса';

  @override
  String get settingsBusinessDetailsSubtitle => 'Задайте името на вашия бизнес';

  @override
  String get settingsInvoicePrefix => 'Префикс на фактурата';

  @override
  String get settingsDefaultCurrency => 'Валута по подразбиране';

  @override
  String get settingsAppSection => 'НАСТРОЙКИ НА ПРИЛОЖЕНИЕТО';

  @override
  String get settingsDarkMode => 'Тъмен режим';

  @override
  String get settingsDailyNotification => 'Дневно известие';

  @override
  String get settingsDailyNotificationNotSet => 'Не е зададено';

  @override
  String get settingsLanguage => 'Език';

  @override
  String get settingsLanguageLabel => 'Български';

  @override
  String get languageEnglish => 'Английски';

  @override
  String get languageArabic => 'العربية';

  @override
  String get languageFrench => 'Френски';

  @override
  String get languageSpanish => 'Испански';

  @override
  String get languageUrdu => 'اردو';

  @override
  String get languageChinese => '中文';

  @override
  String get settingsAboutSection => 'ЗА ПРИЛОЖЕНИЕТО';

  @override
  String get settingsRateApp => 'Оценете приложението';

  @override
  String get settingsHelpSupport => 'Помощ и поддръжка';

  @override
  String get settingsPrivacyPolicy => 'Политика за поверителност';

  @override
  String get settingsHelpSupportSheet =>
      'Нуждаете се от помощ? Пишете ни на support@invoiceflow.app и ще ви отговорим в рамките на 24 часа.';

  @override
  String get settingsPrivacySheet =>
      'Данните ви се съхраняват локално на устройството ви. Ние никога не продаваме и не споделяме личната ви информация.';

  @override
  String get settingsVersion => 'Версия';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Изход';

  @override
  String get settingsEditProfile => 'Редактиране на профила';

  @override
  String get settingsProfileNameLabel => 'Пълно име';

  @override
  String get settingsProfileNameHint => 'Вашето име';

  @override
  String get settingsBusinessNameLabel => 'Име на фирмата';

  @override
  String get settingsBusinessNameHint => 'Вашата компания ЕООД';

  @override
  String get settingsBusinessEmailLabel => 'Бизнес имейл';

  @override
  String get settingsBusinessEmailHint => 'billing@company.com';

  @override
  String get settingsPhoneLabel => 'Телефон';

  @override
  String get settingsPhoneHint => '+359 88 123 4567';

  @override
  String get settingsAddressLabel => 'Адрес';

  @override
  String get settingsAddressHint => 'София, България';

  @override
  String get settingsBusinessDetailsSaved => 'Данните за бизнеса са запазени!';

  @override
  String get settingsInvoicePrefixTitle => 'Префикс на номера на фактурата';

  @override
  String get settingsInvoicePrefixHint => 'напр. INV-, #, Ф-';

  @override
  String get settingsPrefixSaved => 'Префиксът на фактурата е запазен';

  @override
  String get settingsNotificationScheduled =>
      'Дневното известие е планирано успешно!';

  @override
  String get settingsSignOutTitle => 'Изход?';

  @override
  String get settingsSignOutMessage =>
      'Сигурни ли сте, че искате да излезете от InvoiceFlow?';

  @override
  String get settingsSignedOut => 'Успешно излязохте.';

  @override
  String get statusPaid => 'Платена';

  @override
  String get statusOverdue => 'Просрочена';

  @override
  String get statusPending => 'Чакаща';

  @override
  String get statusDraft => 'Чернова';

  @override
  String get statusCancelled => 'Анулирана';

  @override
  String get notificationChannelName => 'Дневни напомняния';

  @override
  String get notificationChannelDescription =>
      'Напомня ви ежедневно да проверявате фактурите си';

  @override
  String get notificationTitle => 'Напомняне за фактура';

  @override
  String get notificationBody =>
      'Време е да проверите последните си фактури и да проследите чакащите плащания.';

  @override
  String get pdfInvoice => 'ФАКТУРА';

  @override
  String get pdfInvoiceNumber => '№ на фактура:';

  @override
  String get pdfDate => 'Дата:';

  @override
  String get pdfDueDate => 'Краен срок:';

  @override
  String get pdfBillTo => 'ПОЛУЧАТЕЛ:';

  @override
  String get pdfDescription => 'Описание';

  @override
  String get pdfQty => 'Кол.';

  @override
  String get pdfRate => 'Цена';

  @override
  String get pdfAmount => 'Сума';

  @override
  String get pdfSubtotal => 'Междинна сума:';

  @override
  String pdfTax(Object taxRate) {
    return 'Данък ($taxRate%):';
  }

  @override
  String get pdfTotal => 'ОБЩО:';

  @override
  String get pdfSignature => 'Подпис:';

  @override
  String get pdfNotes => 'Бележки:';

  @override
  String get pdfPaymentTerms => 'Условия за плащане:';

  @override
  String get pdfThankYou => 'Благодарим ви за сътрудничеството!';

  @override
  String get quickAddWebDesign => 'Уеб дизайн';

  @override
  String get quickAddDevelopment => 'Разработка';

  @override
  String get quickAddConsulting => 'Консултации';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Създаване на съдържание';

  @override
  String get paywallTitle => 'Отключете InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'Неограничено и синхронизирано навсякъде. Отказ по всяко време.';

  @override
  String get paywallFeatureUnlimited => 'Неограничени фактури и клиенти';

  @override
  String get paywallFeatureSync => 'Облачна синхронизация между устройства';

  @override
  String get paywallFeatureNoWatermark => 'Без водни знаци, завинаги';

  @override
  String get paywallMonthly => 'Месечен';

  @override
  String get paywallMonthlySub => 'Месечно абонаментно';

  @override
  String get paywallYearly => 'Годишен';

  @override
  String get paywallYearlySub => 'Най-добра цена — 2 месеца безплатно';

  @override
  String get paywallRestore => 'Възстановяване на покупките';

  @override
  String get paywallTerms =>
      'Абонаментите се подновяват автоматично. Управлявайте ги в настройките на магазина си.';

  @override
  String get purchaseSuccessTitle => 'Вече сте Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'Неограничените фактури, облачната синхронизация и премахването на водните знаци са отключени. Благодарим ви!';

  @override
  String get purchaseSuccessContinue => 'Продължи';

  @override
  String get paywallLoading => 'Зареждане на плановете…';

  @override
  String get paywallLoadError =>
      'Не можахме да заредим плановете. Проверете връзката си и опитайте отново.';

  @override
  String get paywallNoOffering => 'В момента няма налични планове.';

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
  String get purchaseRestored => 'Покупките са възстановени успешно';

  @override
  String get purchaseErrorGeneric =>
      'Покупката не бе успешна. Моля, опитайте отново.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro е активен — неограничени фактури и клиенти, без водни знаци';

  @override
  String get settingsFreePlan => 'Безплатен план';

  @override
  String get settingsFreeHint =>
      'Надградете за неограничени фактури, облачна синхронизация и още';

  @override
  String get settingsUpgradeToPro => 'Надстройте до Pro';

  @override
  String get settingsManageSubscription => 'Управление на абонамента';

  @override
  String get customerCenterFailed =>
      'Не може да се отвори управлението на абонамента.';

  @override
  String get onboardingSkip => 'Пропусни';

  @override
  String get onboardingNext => 'Напред';

  @override
  String get onboardingGetStarted => 'Започни';

  @override
  String get onboardingWelcomeTitle => 'Фактури за 2 минути';

  @override
  String get onboardingWelcomeBody =>
      'Създавайте професионални PDF фактури за клиентите си — бързо и красиво.';

  @override
  String get onboardingSyncTitle => 'Синхронизация навсякъде';

  @override
  String get onboardingSyncBody =>
      'Влезте, за да архивирате сигурно данните си в облака и да имате достъп до тях от всяко устройство.';

  @override
  String get onboardingProTitle => 'Преминете към Pro без ограничения';

  @override
  String get onboardingProBody =>
      'Отключете неограничени фактури, облачна синхронизация и премахнете водните знаци с InvoiceFlow Pro.';

  @override
  String get settingsAccentColor => 'Акцентен цвят';

  @override
  String get settingsAccentColorHint =>
      'Персонализирайте приложението с цвят по ваш избор.';

  @override
  String get settingsCountry => 'Държава';

  @override
  String get settingsTaxId => 'Данъчен регистрационен номер';

  @override
  String get settingsTaxIdNotSet => 'Не е зададено';

  @override
  String get settingsTaxIdHint => 'напр. 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Данъчният номер е запазен';

  @override
  String get catalogTitle => 'Продукти и услуги';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count артикула',
      one: '$count артикул',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'Все още няма продукти';

  @override
  String get catalogEmptySubtitle =>
      'Запазвайте повторно използваеми продукти и услуги, за да ги добавяте по-бързо към фактурите си.';

  @override
  String get catalogFromSaved => 'От вашия каталог';

  @override
  String get catalogSaveToCatalog => 'Запази в каталога за повторна употреба';

  @override
  String get catalogAddSnackbar => 'Добавено към каталога';

  @override
  String get catalogDeleteTitle => 'Да изтрия артикула?';

  @override
  String catalogDeleteMessage(String description) {
    return 'Да изтрия „$description“? Това действие е необратимо.';
  }

  @override
  String get commonDone => 'Готово';

  @override
  String get estimateListTitle => 'Оферти';

  @override
  String get estimateListSearchHint => 'Търсене на оферти…';

  @override
  String get estimateListEmpty => 'Все още няма оферти';

  @override
  String get estimateListTabAll => 'Всички';

  @override
  String get estimateListTabDraft => 'Чернови';

  @override
  String get estimateListTabSent => 'Изпратени';

  @override
  String get estimateListTabAccepted => 'Приети';

  @override
  String get estimateListTabExpired => 'Изтекли';

  @override
  String get estimateCreateTitle => 'Нова оферта';

  @override
  String get estimateEditTitle => 'Редактиране на оферта';

  @override
  String get estimateCreatedSnackbar => 'Офертата е запазена';

  @override
  String get estimateUpdatedSnackbar => 'Офертата е обновена';

  @override
  String get estimateIssueDate => 'Дата на издаване';

  @override
  String get estimateExpiryDate => 'Срок на валидност';

  @override
  String get estimateExpiresPrefix => 'Изтича на ';

  @override
  String get estimateConvertToInvoice => 'Преобразувай във фактура';

  @override
  String get estimateConvertedSnackbar =>
      'Офертата е преобразувана във фактура';

  @override
  String get estimateConvertFailed => 'Офертата не можа да бъде преобразувана';

  @override
  String get estimateMarkSent => 'Маркирай като изпратена';

  @override
  String get estimateMarkAccepted => 'Маркирай като приета';

  @override
  String get estimateMarkDeclined => 'Маркирай като отказана';

  @override
  String get estimateConvertedTitle => 'Преобразувана';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'Преобразувана във фактура $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'ОБЩО ЗА ОФЕРТАТА';

  @override
  String get estimateStatusSent => 'Изпратена';

  @override
  String get estimateStatusAccepted => 'Приета';

  @override
  String get estimateStatusDeclined => 'Отказана';

  @override
  String get estimateStatusExpired => 'Изтекла';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count отворени',
      one: '1 отворена',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'Да изтрия офертата?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'Да изтрия „$estimateNumber“? Това действие е необратимо.';
  }

  @override
  String get estimatePdfFailed => 'Неуспешно генериране на PDF';

  @override
  String get pdfEstimate => 'ОФЕРТА';

  @override
  String get pdfEstimateNumber => '№ на оферта:';

  @override
  String get pdfValidUntil => 'Валидна до:';

  @override
  String get invoiceDetailPaymentTerms => 'Условия за плащане';

  @override
  String get recurringListTitle => 'Периодични фактури';

  @override
  String get recurringListEmpty => 'Все още няма периодични фактури';

  @override
  String get recurringListEmptySubtitle =>
      'Настройте автоматични фактури за редовни клиенти и услуги.';

  @override
  String get recurringCreateTitle => 'Нова периодична';

  @override
  String get recurringEditTitle => 'Редактиране на периодична';

  @override
  String get recurringCreatedSnackbar => 'Периодичната фактура е запазена';

  @override
  String get recurringUpdatedSnackbar => 'Периодичната фактура е обновена';

  @override
  String get recurringDeleteTitle => 'Да изтрия периодичната фактура?';

  @override
  String recurringDeleteMessage(String title) {
    return 'Да изтрия „$title“? Съществуващите фактури няма да бъдат премахнати.';
  }

  @override
  String get recurringTitleLabel => 'Заглавие';

  @override
  String get recurringTitleHint => 'напр. Месечен ретайнер';

  @override
  String get recurringClientLabel => 'Клиент';

  @override
  String get recurringFrequencyLabel => 'Честота';

  @override
  String get recurringFrequencyWeekly => 'Седмично';

  @override
  String get recurringFrequencyBiweekly => 'На всеки две седмици';

  @override
  String get recurringFrequencyMonthly => 'Месечно';

  @override
  String get recurringFrequencyQuarterly => 'Тримесечно';

  @override
  String get recurringFrequencyYearly => 'Годишно';

  @override
  String get recurringNextRun => 'Следващо изпълнение';

  @override
  String get recurringDueDays => 'Плащане след';

  @override
  String get recurringDays => 'дни';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count активни',
      one: '1 активна',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'Доклади';

  @override
  String get reportsSubtitle => 'Бизнес анализи';

  @override
  String get reportsEmpty => 'Създавайте фактури, за да виждате доклади';

  @override
  String get reportsCollected => 'Събрани';

  @override
  String get reportsOutstanding => 'Неизплатени';

  @override
  String get reportsMonthlyRevenue => 'Месечни приходи';

  @override
  String get reportsLast6Months => 'Последните 6 месеца';

  @override
  String get reportsByStatus => 'По статус';

  @override
  String get reportsTopClients => 'Топ клиенти';

  @override
  String get paymentLinkTitle => 'Линк за плащане';

  @override
  String get paymentLinkNotSet => 'В настройките не е зададен линк за плащане';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'Линкът ви за плащане е включен в PDF на фактурата и може да бъде копиран от менюто на фактурата.';

  @override
  String get paymentLinkSaved => 'Линкът за плащане е запазен';

  @override
  String get settingsPaymentLinkNotSet => 'Не е зададено';

  @override
  String get invoiceDetailCopyPaymentLink => 'Копирай линка за плащане';

  @override
  String get paymentLinkCopied => 'Линкът за плащане е копиран';

  @override
  String get pdfPayOnline => 'Плати онлайн';

  @override
  String get exportXml => 'Експорт на XML';

  @override
  String get exportXmlFailed => 'XML не можа да бъде експортиран';
}
