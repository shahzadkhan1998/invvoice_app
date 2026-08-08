// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Professionelle Rechnungen in 2 Minuten';

  @override
  String get bottomNavDashboard => 'Dashboard';

  @override
  String get bottomNavInvoices => 'Rechnungen';

  @override
  String get bottomNavClients => 'Kunden';

  @override
  String get bottomNavSettings => 'Einstellungen';

  @override
  String get commonCancel => 'Abbrechen';

  @override
  String get commonDelete => 'Löschen';

  @override
  String get commonSave => 'Speichern';

  @override
  String get commonSearch => 'Suchen';

  @override
  String get commonBack => 'Zurück';

  @override
  String get commonContinue => 'Weiter';

  @override
  String get commonAdd => 'Hinzufügen';

  @override
  String get commonEdit => 'Bearbeiten';

  @override
  String get commonCreate => 'Erstellen';

  @override
  String get commonClear => 'Leeren';

  @override
  String get commonView => 'Anzeigen';

  @override
  String get commonShare => 'Teilen';

  @override
  String get commonExportPdf => 'PDF exportieren';

  @override
  String get commonSharePdf => 'PDF teilen';

  @override
  String get commonSaveChanges => 'Änderungen speichern';

  @override
  String get commonRequired => 'Erforderlich';

  @override
  String get commonInvalid => 'Ungültig';

  @override
  String get commonSendLink => 'Link senden';

  @override
  String get commonGeneratingPdf => 'PDF wird erstellt...';

  @override
  String get dashboardGreetingMorning => 'Guten Morgen';

  @override
  String get dashboardGreetingAfternoon => 'Guten Tag';

  @override
  String get dashboardGreetingEvening => 'Guten Abend';

  @override
  String get dashboardSubtitle => 'Hier ist Ihre Geschäftsübersicht';

  @override
  String get dashboardOutstanding => 'Ausstehend';

  @override
  String get dashboardOverdue => 'Überfällig';

  @override
  String get dashboardThisMonth => 'Dieser Monat';

  @override
  String get dashboardInvoices => 'Rechnungen';

  @override
  String dashboardPaidCount(Object count) {
    return '$count bezahlt';
  }

  @override
  String get dashboardRecentInvoices => 'Letzte Rechnungen';

  @override
  String get dashboardSeeAll => 'Alle anzeigen';

  @override
  String get dashboardNotifications => 'Benachrichtigungen';

  @override
  String get dashboardNotificationsHint =>
      'Behalten Sie Ihren Cashflow im Blick, indem Sie überfällige und offene Rechnungen regelmäßig prüfen.';

  @override
  String get dashboardNewInvoice => 'Neue Rechnung';

  @override
  String get dashboardNoInvoicesYet => 'Noch keine Rechnungen';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Erstellen Sie Ihre erste professionelle Rechnung in weniger als 2 Minuten';

  @override
  String get dashboardCreateInvoice => 'Rechnung erstellen';

  @override
  String get dashboardMarkPaid => 'Als bezahlt markieren';

  @override
  String get dashboardDuePrefix => 'Fällig ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days Tage überfällig';
  }

  @override
  String get deleteInvoiceTitle => 'Rechnung löschen?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return '$invoiceNumber löschen? Dies kann nicht rückgängig gemacht werden.';
  }

  @override
  String get loginHeading => 'Willkommen zurück';

  @override
  String get loginSubtitle => 'Melden Sie sich bei Ihrem InvoiceFlow-Konto an';

  @override
  String get loginEmailLabel => 'E-Mail-Adresse';

  @override
  String get loginEmailHint => 'name@beispiel.de';

  @override
  String get loginEmailRequired => 'E-Mail ist erforderlich';

  @override
  String get loginEmailInvalid => 'Geben Sie eine gültige E-Mail ein';

  @override
  String get loginPasswordLabel => 'Passwort';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'Passwort ist erforderlich';

  @override
  String get loginPasswordMinLength =>
      'Das Passwort muss mindestens 6 Zeichen lang sein';

  @override
  String get loginForgotPassword => 'Passwort vergessen?';

  @override
  String get loginSignIn => 'Anmelden';

  @override
  String get loginOrContinueWith => 'oder weiter mit';

  @override
  String get loginContinueWithGoogle => 'Weiter mit Google';

  @override
  String get loginNoAccount => 'Noch kein Konto? ';

  @override
  String get loginSignUp => 'Registrieren';

  @override
  String get loginResetPasswordTitle => 'Passwort zurücksetzen';

  @override
  String get loginResetPasswordMessage =>
      'Geben Sie Ihre E-Mail ein und wir senden Ihnen einen Link zum Zurücksetzen.';

  @override
  String get loginResetPasswordHint => 'name@beispiel.de';

  @override
  String get loginResetLinkSent =>
      'Link zum Zurücksetzen gesendet! Prüfen Sie Ihre E-Mails.';

  @override
  String get loginResetLinkFailed => 'Senden des Links fehlgeschlagen.';

  @override
  String get registerHeading => 'Konto erstellen';

  @override
  String get registerSubtitle =>
      'Starten Sie noch heute mit professionellen Rechnungen';

  @override
  String get registerNameLabel => 'Vollständiger Name';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => 'Name ist erforderlich';

  @override
  String get registerNameMinLength =>
      'Der Name muss mindestens 2 Zeichen lang sein';

  @override
  String get registerEmailLabel => 'E-Mail-Adresse';

  @override
  String get registerEmailHint => 'name@beispiel.de';

  @override
  String get registerEmailRequired => 'E-Mail ist erforderlich';

  @override
  String get registerEmailInvalid => 'Geben Sie eine gültige E-Mail ein';

  @override
  String get registerPasswordLabel => 'Passwort';

  @override
  String get registerPasswordHint => 'Mindestens 6 Zeichen';

  @override
  String get registerPasswordRequired => 'Passwort ist erforderlich';

  @override
  String get registerPasswordMinLength =>
      'Das Passwort muss mindestens 6 Zeichen lang sein';

  @override
  String get registerConfirmPasswordLabel => 'Passwort bestätigen';

  @override
  String get registerConfirmPasswordHint => 'Wiederholen Sie Ihr Passwort';

  @override
  String get registerConfirmPasswordRequired =>
      'Bitte bestätigen Sie Ihr Passwort';

  @override
  String get registerPasswordsDoNotMatch =>
      'Die Passwörter stimmen nicht überein';

  @override
  String get registerCreateAccount => 'Konto erstellen';

  @override
  String get registerHaveAccount => 'Bereits ein Konto? ';

  @override
  String get registerSignIn => 'Anmelden';

  @override
  String get authTermsOfService => 'Nutzungsbedingungen';

  @override
  String get authPrivacyPolicy => 'Datenschutzerklärung';

  @override
  String get authAgreeRequired =>
      'Bitte stimme den Nutzungsbedingungen und der Datenschutzerklärung zu, um fortzufahren';

  @override
  String get loginAgreePrefix => 'Wenn du fortfährst, stimmst du unseren ';

  @override
  String get registerAgreePrefix => 'Ich stimme den ';

  @override
  String get authAgreeAnd => ' und ';

  @override
  String get authTermsSheet =>
      'Diese Nutzungsbedingungen regeln deine Nutzung von InvoiceFlow. Durch den Zugriff auf oder die Nutzung der App erklärst du dich bereit, an diese Bedingungen gebunden zu sein.\n\n1. Du bist für die Richtigkeit der Rechnungen, Angebote und sonstigen Daten verantwortlich, die du erstellst.\n2. Die App wird \"wie sie ist\" ohne jegliche ausdrückliche oder stillschweigende Gewährleistung bereitgestellt.\n3. Wir haften nicht für Verluste, die aus deiner Nutzung des Dienstes entstehen.\n4. Du darfst die App nicht für rechtswidrige oder verbotene Zwecke verwenden.\n5. Wir können diese Bedingungen von Zeit zu Zeit aktualisieren; die fortgesetzte Nutzung der App stellt die Annahme der aktualisierten Bedingungen dar.';

  @override
  String get authPrivacySheet =>
      'Deine Privatsphäre ist uns wichtig.\n\n1. Datenspeicherung: Deine Rechnungen, Kunden und Einstellungen werden lokal auf deinem Gerät gespeichert.\n2. Cloud-Synchronisierung: Wenn du dich anmeldest, werden deine Daten mit deinem Konto synchronisiert, damit sie auf all deinen Geräten verfügbar sind.\n3. Wir verkaufen oder teilen deine persönlichen Daten niemals.\n4. Analysen: Wir können anonymisierte Nutzungsdaten sammeln, um die App zu verbessern.\n5. Kontakt: Bei Fragen zum Datenschutz wende dich bitte an support@invoiceflow.app.';

  @override
  String get authErrorWeakPassword => 'Das Passwort ist zu schwach';

  @override
  String get authErrorEmailAlreadyInUse => 'Konto existiert bereits';

  @override
  String get authErrorUserNotFound =>
      'Kein Benutzer mit dieser E-Mail gefunden';

  @override
  String get authErrorWrongPassword => 'Falsches Passwort';

  @override
  String get authErrorInvalidEmail => 'Ungültige E-Mail-Adresse';

  @override
  String get authErrorTooManyRequests =>
      'Zu viele Versuche. Versuchen Sie es später erneut.';

  @override
  String get authErrorDefault =>
      'Authentifizierung fehlgeschlagen. Versuchen Sie es erneut.';

  @override
  String get authErrorGoogleSignInFailed => 'Google-Anmeldung fehlgeschlagen.';

  @override
  String get invoiceListTitle => 'Rechnungen';

  @override
  String get invoiceListSearchHint => 'Rechnungen suchen...';

  @override
  String get invoiceListSortDate => 'Nach Datum sortieren';

  @override
  String get invoiceListSortAmount => 'Nach Betrag sortieren';

  @override
  String get invoiceListSortClient => 'Nach Kunde sortieren';

  @override
  String get invoiceListTabAll => 'Alle';

  @override
  String get invoiceListTabPaid => 'Bezahlt';

  @override
  String get invoiceListTabPending => 'Ausstehend';

  @override
  String get invoiceListTabOverdue => 'Überfällig';

  @override
  String get invoiceListTabDraft => 'Entwurf';

  @override
  String get invoiceListEmpty => 'Keine Rechnungen gefunden';

  @override
  String get invoiceCreateTitle => 'Neue Rechnung';

  @override
  String get invoiceEditTitle => 'Rechnung bearbeiten';

  @override
  String get invoiceSaveDraft => 'Entwurf speichern';

  @override
  String get invoiceStepClient => 'Kunde';

  @override
  String get invoiceStepItems => 'Positionen';

  @override
  String get invoiceStepReview => 'Überprüfung';

  @override
  String get invoiceSelectClient => 'Kunden auswählen';

  @override
  String get invoiceSelectClientSubtitle =>
      'Wählen Sie, für wen diese Rechnung ist';

  @override
  String get invoiceSearchClients => 'Kunden suchen...';

  @override
  String get invoiceAddNewClient => 'Neuen Kunden hinzufügen';

  @override
  String get invoiceNoClientsFound => 'Keine Kunden gefunden';

  @override
  String get invoiceSelectClientEmptyHint =>
      'Erstellen Sie Ihren ersten Kunden, um mit der Erstellung von Rechnungen zu beginnen';

  @override
  String get invoiceAddLineItem => 'Position hinzufügen';

  @override
  String get invoiceItemDescription => 'Beschreibung';

  @override
  String get invoiceItemDescriptionHint => 'z. B. Webentwicklung';

  @override
  String get invoiceItemQuickAdd => 'Schnell hinzufügen:';

  @override
  String get invoiceItemQty => 'Menge';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Satz';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Artikel hinzufügen';

  @override
  String get invoiceLineItems => 'Positionen';

  @override
  String get invoiceLineItemsSubtitle =>
      'Fügen Sie Dienstleistungen oder Produkte hinzu';

  @override
  String get invoiceNoItems =>
      'Noch keine Positionen. Fügen Sie Ihre erste Position hinzu.';

  @override
  String get invoiceTaxRate => 'Steuersatz (%)';

  @override
  String get invoiceSubtotal => 'Zwischensumme';

  @override
  String invoiceTax(Object taxRate) {
    return 'Steuer ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'GESAMT';

  @override
  String get invoiceReviewHeading => 'Überprüfen und abschließen';

  @override
  String get invoiceReviewSubtitle =>
      'Legen Sie Daten fest und fügen Sie Notizen, Logo und Unterschrift hinzu';

  @override
  String get invoiceCompanyLogo => 'Firmenlogo';

  @override
  String get invoiceAddLogo => 'Logo hinzufügen';

  @override
  String get invoiceInvoiceDate => 'Rechnungsdatum';

  @override
  String get invoiceDueDate => 'Fälligkeitsdatum';

  @override
  String get invoiceNotesLabel => 'Notizen (optional)';

  @override
  String get invoiceNotesHint => 'Vielen Dank für Ihr Vertrauen!';

  @override
  String get invoicePaymentTermsLabel => 'Zahlungsbedingungen (optional)';

  @override
  String get invoicePaymentTermsHint => 'Zahlung fällig innerhalb von 30 Tagen';

  @override
  String get invoiceSignatureLabel => 'Unterschrift';

  @override
  String get invoiceSignatureOverwrite =>
      'Vorhandene Unterschrift gespeichert. Zeichnen Sie oben, um sie zu überschreiben.';

  @override
  String get invoiceCreatedSnackbar => 'Rechnung erstellt!';

  @override
  String get invoiceUpdatedSnackbar => 'Rechnung aktualisiert!';

  @override
  String get invoiceDetailTitle => 'RECHNUNG';

  @override
  String get invoiceDetailMarkAsPaid => 'Als bezahlt markieren';

  @override
  String get invoiceDetailTotalAmount => 'Gesamtbetrag';

  @override
  String get invoiceDetailIssued => 'Ausgestellt';

  @override
  String get invoiceDetailDue => 'Fällig';

  @override
  String get invoiceDetailPaid => 'Bezahlt';

  @override
  String get invoiceDetailBillTo => 'Rechnung an';

  @override
  String get invoiceDetailItems => 'Positionen';

  @override
  String get invoiceDetailNotes => 'Notizen';

  @override
  String get invoiceDetailSignature => 'Unterschrift';

  @override
  String get invoiceDetailMarkedPaidSnackbar =>
      'Rechnung als bezahlt markiert!';

  @override
  String get invoiceDetailPdfFailed => 'PDF konnte nicht erstellt werden';

  @override
  String get clientListTitle => 'Kunden';

  @override
  String get clientListSearchHint => 'Kunden suchen...';

  @override
  String get clientListTotalClients => 'Kunden gesamt';

  @override
  String get clientListTotalBilled => 'Gesamtbetrag';

  @override
  String get clientListEmptySearch => 'Keine Kunden gefunden';

  @override
  String get clientListEmpty => 'Noch keine Kunden';

  @override
  String get clientListEmptySubtitle =>
      'Fügen Sie Ihren ersten Kunden hinzu, um mit der Erstellung von Rechnungen zu beginnen';

  @override
  String get clientListAddClient => 'Kunden hinzufügen';

  @override
  String get clientListTotalBilledLabel => 'gesamt abgerechnet';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count Rechnung';
  }

  @override
  String get clientCreateTitle => 'Neuer Kunde';

  @override
  String get clientEditTitle => 'Kunden bearbeiten';

  @override
  String get clientBasicInfo => 'Basisinformationen';

  @override
  String get clientNameLabel => 'Vollständiger Name *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'Name ist erforderlich';

  @override
  String get clientNameTooShort => 'Name zu kurz';

  @override
  String get clientEmailLabel => 'E-Mail-Adresse *';

  @override
  String get clientEmailHint => 'zahlung@firma.de';

  @override
  String get clientEmailRequired => 'E-Mail ist erforderlich';

  @override
  String get clientEmailInvalid => 'Geben Sie eine gültige E-Mail ein';

  @override
  String get clientPhoneLabel => 'Telefonnummer';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'Adresse';

  @override
  String get clientAddressLabel => 'Straße';

  @override
  String get clientAddressHint => '123 Business Park, Büro 45';

  @override
  String get clientCityLabel => 'Stadt / Land';

  @override
  String get clientCityHint => 'Dubai, Vereinigte Arabische Emirate';

  @override
  String get clientBillingDefaults => 'Abrechnungsstandards';

  @override
  String get clientDefaultCurrency => 'Standardwährung';

  @override
  String get clientDefaultTaxRate => 'Standardsteuersatz (VAT/GST)';

  @override
  String get clientVatLabel => 'VAT / Steuernummer';

  @override
  String get clientVatHint => '123456789012345 (optional)';

  @override
  String get clientUpdateButton => 'Kunden aktualisieren';

  @override
  String get clientAddButton => 'Kunden hinzufügen';

  @override
  String get clientUpdatedSnackbar => 'Kunde aktualisiert!';

  @override
  String get clientAddedSnackbar => 'Kunde hinzugefügt!';

  @override
  String get clientDetailInvoices => 'Rechnungen';

  @override
  String get clientDetailTotalBilled => 'Gesamtbetrag';

  @override
  String get clientDetailOutstanding => 'Ausstehend';

  @override
  String get clientDetailEdit => 'Bearbeiten';

  @override
  String get clientDetailNewInvoice => 'Neue Rechnung';

  @override
  String get clientDetailEmailClient => 'Kunden per E-Mail kontaktieren';

  @override
  String get clientDetailClientDetails => 'Kundendetails';

  @override
  String get clientDetailEmail => 'E-Mail';

  @override
  String get clientDetailPhone => 'Telefon';

  @override
  String get clientDetailAddress => 'Adresse';

  @override
  String get clientDetailCity => 'Stadt';

  @override
  String get clientDetailCurrency => 'Währung';

  @override
  String get clientDetailTaxRate => 'Steuersatz';

  @override
  String get clientDetailVatNumber => 'VAT-Nummer';

  @override
  String get clientDetailInvoiceHistory => 'Rechnungshistorie';

  @override
  String get clientDetailNoInvoices =>
      'Noch keine Rechnungen für diesen Kunden';

  @override
  String get deleteClientTitle => 'Kunden löschen?';

  @override
  String deleteClientMessage(Object clientName) {
    return '$clientName löschen? Dies kann nicht rückgängig gemacht werden.';
  }

  @override
  String get settingsTitle => 'Einstellungen';

  @override
  String get settingsYourName => 'Ihr Name';

  @override
  String get settingsBackupTitle => 'Sichern Sie Ihre Rechnungen';

  @override
  String get settingsBackupDescription =>
      'Melden Sie sich an, um Ihre Daten sicher zu synchronisieren und von überall darauf zuzugreifen.';

  @override
  String get settingsSignInRegister => 'Anmelden oder registrieren';

  @override
  String get settingsProUpsell =>
      'Upgraden Sie auf Pro für unbegrenzte Rechnungen, Cloud-Sync und ohne Wasserzeichen.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'Sie haben das Limit des kostenlosen Tarifs von $limit Rechnungen erreicht. Upgraden Sie auf Pro für unbegrenzte Rechnungen und Cloud-Sync.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'Sie haben das Limit des kostenlosen Tarifs von $limit Kunden erreicht. Upgraden Sie auf Pro für unbegrenzte Kunden und Cloud-Sync.';
  }

  @override
  String get settingsUpgradePro => 'Upgraden';

  @override
  String get settingsBusinessSection => 'GESCHÄFTSEINSTELLUNGEN';

  @override
  String get settingsBusinessDetails => 'Geschäftsdaten';

  @override
  String get settingsBusinessDetailsSubtitle =>
      'Legen Sie Ihren Firmennamen fest';

  @override
  String get settingsInvoicePrefix => 'Rechnungspräfix';

  @override
  String get settingsDefaultCurrency => 'Standardwährung';

  @override
  String get settingsAppSection => 'APP-EINSTELLUNGEN';

  @override
  String get settingsDarkMode => 'Dunkelmodus';

  @override
  String get settingsDailyNotification => 'Tägliche Benachrichtigung';

  @override
  String get settingsDailyNotificationNotSet => 'Nicht festgelegt';

  @override
  String get settingsLanguage => 'Sprache';

  @override
  String get settingsLanguageLabel => 'Deutsch';

  @override
  String get languageEnglish => 'Englisch';

  @override
  String get languageArabic => 'Arabisch';

  @override
  String get languageFrench => 'Französisch';

  @override
  String get languageSpanish => 'Spanisch';

  @override
  String get languageUrdu => 'Urdu';

  @override
  String get languageChinese => 'Chinesisch';

  @override
  String get settingsAboutSection => 'ÜBER';

  @override
  String get settingsRateApp => 'App bewerten';

  @override
  String get settingsHelpSupport => 'Hilfe & Support';

  @override
  String get settingsPrivacyPolicy => 'Datenschutzrichtlinie';

  @override
  String get settingsHelpSupportSheet =>
      'Brauchen Sie Hilfe? Wenden Sie sich an support@invoiceflow.app und wir melden uns innerhalb von 24 Stunden bei Ihnen.';

  @override
  String get settingsPrivacySheet =>
      'Ihre Daten werden lokal auf Ihrem Gerät gespeichert. Wir verkaufen oder teilen Ihre persönlichen Daten niemals.';

  @override
  String get settingsVersion => 'Version';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Abmelden';

  @override
  String get settingsEditProfile => 'Profil bearbeiten';

  @override
  String get settingsProfileNameLabel => 'Vollständiger Name';

  @override
  String get settingsProfileNameHint => 'Ihr Name';

  @override
  String get settingsBusinessNameLabel => 'Firmenname';

  @override
  String get settingsBusinessNameHint => 'Ihre Firma GmbH';

  @override
  String get settingsBusinessEmailLabel => 'Geschäftliche E-Mail';

  @override
  String get settingsBusinessEmailHint => 'zahlung@firma.de';

  @override
  String get settingsPhoneLabel => 'Telefon';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'Adresse';

  @override
  String get settingsAddressHint => 'Dubai, Vereinigte Arabische Emirate';

  @override
  String get settingsBusinessDetailsSaved => 'Geschäftsdaten gespeichert!';

  @override
  String get settingsInvoicePrefixTitle => 'Präfix der Rechnungsnummer';

  @override
  String get settingsInvoicePrefixHint => 'z. B. INV-, #, RG-';

  @override
  String get settingsPrefixSaved => 'Rechnungspräfix gespeichert';

  @override
  String get settingsNotificationScheduled =>
      'Tägliche Benachrichtigung erfolgreich geplant!';

  @override
  String get settingsSignOutTitle => 'Abmelden?';

  @override
  String get settingsSignOutMessage =>
      'Möchten Sie sich wirklich von InvoiceFlow abmelden?';

  @override
  String get settingsSignedOut => 'Erfolgreich abgemeldet.';

  @override
  String get statusPaid => 'Bezahlt';

  @override
  String get statusOverdue => 'Überfällig';

  @override
  String get statusPending => 'Ausstehend';

  @override
  String get statusDraft => 'Entwurf';

  @override
  String get statusCancelled => 'Storniert';

  @override
  String get notificationChannelName => 'Tägliche Erinnerungen';

  @override
  String get notificationChannelDescription =>
      'Erinnert Sie daran, Ihre Rechnungen täglich zu prüfen';

  @override
  String get notificationTitle => 'Rechnungserinnerung';

  @override
  String get notificationBody =>
      'Zeit, Ihre letzten Rechnungen zu prüfen und offene Zahlungen zu verfolgen.';

  @override
  String get pdfInvoice => 'RECHNUNG';

  @override
  String get pdfInvoiceNumber => 'Rechnungsnr.:';

  @override
  String get pdfDate => 'Datum:';

  @override
  String get pdfDueDate => 'Fälligkeitsdatum:';

  @override
  String get pdfBillTo => 'RECHNUNG AN:';

  @override
  String get pdfDescription => 'Beschreibung';

  @override
  String get pdfQty => 'Menge';

  @override
  String get pdfRate => 'Satz';

  @override
  String get pdfAmount => 'Betrag';

  @override
  String get pdfSubtotal => 'Zwischensumme:';

  @override
  String pdfTax(Object taxRate) {
    return 'Steuer ($taxRate%):';
  }

  @override
  String get pdfTotal => 'GESAMT:';

  @override
  String get pdfSignature => 'Unterschrift:';

  @override
  String get pdfNotes => 'Notizen:';

  @override
  String get pdfPaymentTerms => 'Zahlungsbedingungen:';

  @override
  String get pdfThankYou => 'Vielen Dank für Ihr Vertrauen!';

  @override
  String get quickAddWebDesign => 'Webdesign';

  @override
  String get quickAddDevelopment => 'Entwicklung';

  @override
  String get quickAddConsulting => 'Beratung';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Content-Erstellung';

  @override
  String get paywallTitle => 'Entsperren Sie InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'Unbegrenzt nutzen und überall synchronisieren. Jederzeit kündbar.';

  @override
  String get paywallFeatureUnlimited => 'Unbegrenzte Rechnungen und Kunden';

  @override
  String get paywallFeatureSync => 'Cloud-Sync über alle Geräte';

  @override
  String get paywallFeatureNoWatermark => 'Niemals Wasserzeichen';

  @override
  String get paywallMonthly => 'Monatlich';

  @override
  String get paywallMonthlySub => 'Monatlich abgerechnet';

  @override
  String get paywallYearly => 'Jährlich';

  @override
  String get paywallYearlySub =>
      'Bestes Preis-Leistungs-Verhältnis — 2 Monate gratis';

  @override
  String get paywallRestore => 'Käufe wiederherstellen';

  @override
  String get paywallTerms =>
      'Abonnements verlängern sich automatisch. Verwalten Sie sie in den Einstellungen Ihres App Stores.';

  @override
  String get purchaseSuccessTitle => 'Sie sind Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'Unbegrenzte Rechnungen, Cloud-Sync und keine Wasserzeichen sind jetzt freigeschaltet. Vielen Dank!';

  @override
  String get purchaseSuccessContinue => 'Weiter';

  @override
  String get paywallLoading => 'Pläne werden geladen…';

  @override
  String get paywallLoadError =>
      'Pläne konnten nicht geladen werden. Prüfe deine Verbindung und versuche es erneut.';

  @override
  String get paywallNoOffering => 'Derzeit sind keine Pläne verfügbar.';

  @override
  String get purchaseRestored => 'Käufe erfolgreich wiederhergestellt';

  @override
  String get purchaseErrorGeneric =>
      'Der Kauf ist fehlgeschlagen. Bitte versuche es erneut.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro ist aktiv — unbegrenzte Rechnungen und Kunden ohne Wasserzeichen';

  @override
  String get settingsFreePlan => 'Kostenloser Plan';

  @override
  String get settingsFreeHint =>
      'Upgrade für unbegrenzte Rechnungen, Cloud-Synchronisierung und mehr';

  @override
  String get settingsUpgradeToPro => 'Auf Pro upgraden';

  @override
  String get settingsManageSubscription => 'Abonnement verwalten';

  @override
  String get customerCenterFailed =>
      'Die Abonnementverwaltung konnte nicht geöffnet werden.';

  @override
  String get onboardingSkip => 'Überspringen';

  @override
  String get onboardingNext => 'Weiter';

  @override
  String get onboardingGetStarted => 'Loslegen';

  @override
  String get onboardingWelcomeTitle => 'Rechnungen in 2 Minuten';

  @override
  String get onboardingWelcomeBody =>
      'Erstellen Sie professionelle PDF-Rechnungen für Ihre Kunden — schnell und ansprechend.';

  @override
  String get onboardingSyncTitle => 'Überall synchronisieren';

  @override
  String get onboardingSyncBody =>
      'Melden Sie sich an, um Ihre Daten sicher in der Cloud zu sichern und von jedem Gerät darauf zuzugreifen.';

  @override
  String get onboardingProTitle => 'Mit Pro unbegrenzt nutzen';

  @override
  String get onboardingProBody =>
      'Schalten Sie unbegrenzte Rechnungen, Cloud-Sync und das Entfernen von Wasserzeichen mit InvoiceFlow Pro frei.';

  @override
  String get settingsAccentColor => 'Akzentfarbe';

  @override
  String get settingsAccentColorHint =>
      'Personalisieren Sie die App mit einer Farbe Ihrer Wahl.';

  @override
  String get settingsCountry => 'Land';

  @override
  String get settingsTaxId => 'Steuernummer';

  @override
  String get settingsTaxIdNotSet => 'Nicht festgelegt';

  @override
  String get settingsTaxIdHint => 'z. B. 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Steuernummer gespeichert';

  @override
  String get catalogTitle => 'Produkte & Dienstleistungen';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Artikel',
      one: '$count Artikel',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'Noch keine Produkte';

  @override
  String get catalogEmptySubtitle =>
      'Speichern Sie wiederverwendbare Produkte und Dienstleistungen, um sie schneller zu Rechnungen hinzuzufügen.';

  @override
  String get catalogFromSaved => 'Aus Ihrem Katalog';

  @override
  String get catalogSaveToCatalog =>
      'Für die Wiederverwendung im Katalog speichern';

  @override
  String get catalogAddSnackbar => 'Zum Katalog hinzugefügt';

  @override
  String get catalogDeleteTitle => 'Element löschen?';

  @override
  String catalogDeleteMessage(String description) {
    return '„$description\" löschen? Dies kann nicht rückgängig gemacht werden.';
  }

  @override
  String get commonDone => 'Fertig';

  @override
  String get estimateListTitle => 'Angebote';

  @override
  String get estimateListSearchHint => 'Angebote suchen…';

  @override
  String get estimateListEmpty => 'Noch keine Angebote';

  @override
  String get estimateListTabAll => 'Alle';

  @override
  String get estimateListTabDraft => 'Entwurf';

  @override
  String get estimateListTabSent => 'Gesendet';

  @override
  String get estimateListTabAccepted => 'Akzeptiert';

  @override
  String get estimateListTabExpired => 'Abgelaufen';

  @override
  String get estimateCreateTitle => 'Neues Angebot';

  @override
  String get estimateEditTitle => 'Angebot bearbeiten';

  @override
  String get estimateCreatedSnackbar => 'Angebot gespeichert';

  @override
  String get estimateUpdatedSnackbar => 'Angebot aktualisiert';

  @override
  String get estimateIssueDate => 'Ausstellungsdatum';

  @override
  String get estimateExpiryDate => 'Ablaufdatum';

  @override
  String get estimateExpiresPrefix => 'Läuft ab am ';

  @override
  String get estimateConvertToInvoice => 'In Rechnung umwandeln';

  @override
  String get estimateConvertedSnackbar => 'Angebot in Rechnung umgewandelt';

  @override
  String get estimateConvertFailed => 'Angebot konnte nicht umgewandelt werden';

  @override
  String get estimateMarkSent => 'Als gesendet markieren';

  @override
  String get estimateMarkAccepted => 'Als akzeptiert markieren';

  @override
  String get estimateMarkDeclined => 'Als abgelehnt markieren';

  @override
  String get estimateConvertedTitle => 'Umgewandelt';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'In Rechnung $invoiceId umgewandelt';
  }

  @override
  String get estimateDetailTotal => 'ANGEBOT GESAMT';

  @override
  String get estimateStatusSent => 'Gesendet';

  @override
  String get estimateStatusAccepted => 'Akzeptiert';

  @override
  String get estimateStatusDeclined => 'Abgelehnt';

  @override
  String get estimateStatusExpired => 'Abgelaufen';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count offen',
      one: '1 offen',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'Angebot löschen?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return '„$estimateNumber\" löschen? Dies kann nicht rückgängig gemacht werden.';
  }

  @override
  String get estimatePdfFailed => 'PDF konnte nicht erstellt werden';

  @override
  String get pdfEstimate => 'ANGEBOT';

  @override
  String get pdfEstimateNumber => 'Angebotsnr.:';

  @override
  String get pdfValidUntil => 'Gültig bis:';

  @override
  String get invoiceDetailPaymentTerms => 'Zahlungsbedingungen';

  @override
  String get recurringListTitle => 'Wiederkehrende Rechnungen';

  @override
  String get recurringListEmpty => 'Noch keine wiederkehrenden Rechnungen';

  @override
  String get recurringListEmptySubtitle =>
      'Richten Sie automatische Rechnungen für regelmäßige Kunden und Dienstleistungen ein.';

  @override
  String get recurringCreateTitle => 'Neu wiederkehrend';

  @override
  String get recurringEditTitle => 'Wiederkehrend bearbeiten';

  @override
  String get recurringCreatedSnackbar => 'Wiederkehrende Rechnung gespeichert';

  @override
  String get recurringUpdatedSnackbar => 'Wiederkehrende Rechnung aktualisiert';

  @override
  String get recurringDeleteTitle => 'Wiederkehrende Rechnung löschen?';

  @override
  String recurringDeleteMessage(String title) {
    return '„$title\" löschen? Vorhandene Rechnungen werden nicht entfernt.';
  }

  @override
  String get recurringTitleLabel => 'Titel';

  @override
  String get recurringTitleHint => 'z. B. Monatliche Pauschale';

  @override
  String get recurringClientLabel => 'Kunde';

  @override
  String get recurringFrequencyLabel => 'Häufigkeit';

  @override
  String get recurringFrequencyWeekly => 'Wöchentlich';

  @override
  String get recurringFrequencyBiweekly => 'Alle zwei Wochen';

  @override
  String get recurringFrequencyMonthly => 'Monatlich';

  @override
  String get recurringFrequencyQuarterly => 'Vierteljährlich';

  @override
  String get recurringFrequencyYearly => 'Jährlich';

  @override
  String get recurringNextRun => 'Nächster Lauf';

  @override
  String get recurringDueDays => 'Fällig in';

  @override
  String get recurringDays => 'Tagen';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aktiv',
      one: '1 aktiv',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'Berichte';

  @override
  String get reportsSubtitle => 'Geschäftsanalysen';

  @override
  String get reportsEmpty => 'Erstellen Sie Rechnungen, um Berichte zu sehen';

  @override
  String get reportsCollected => 'Eingezogen';

  @override
  String get reportsOutstanding => 'Ausstehend';

  @override
  String get reportsMonthlyRevenue => 'Monatlicher Umsatz';

  @override
  String get reportsLast6Months => 'Letzte 6 Monate';

  @override
  String get reportsByStatus => 'Nach Status';

  @override
  String get reportsTopClients => 'Top-Kunden';

  @override
  String get paymentLinkTitle => 'Zahlungslink';

  @override
  String get paymentLinkNotSet =>
      'Kein Zahlungslink in den Einstellungen festgelegt';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'Ihr Zahlungslink ist im PDF der Rechnung enthalten und kann über das Rechnungsmenü kopiert werden.';

  @override
  String get paymentLinkSaved => 'Zahlungslink gespeichert';

  @override
  String get settingsPaymentLinkNotSet => 'Nicht festgelegt';

  @override
  String get invoiceDetailCopyPaymentLink => 'Zahlungslink kopieren';

  @override
  String get paymentLinkCopied => 'Zahlungslink kopiert';

  @override
  String get pdfPayOnline => 'Online bezahlen';

  @override
  String get exportXml => 'XML exportieren';

  @override
  String get exportXmlFailed => 'XML konnte nicht exportiert werden';
}
