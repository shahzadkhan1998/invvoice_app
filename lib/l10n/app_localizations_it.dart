// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Fatture professionali in 2 minuti';

  @override
  String get bottomNavDashboard => 'Dashboard';

  @override
  String get bottomNavInvoices => 'Fatture';

  @override
  String get bottomNavClients => 'Clienti';

  @override
  String get bottomNavSettings => 'Impostazioni';

  @override
  String get commonCancel => 'Annulla';

  @override
  String get commonDelete => 'Elimina';

  @override
  String get commonSave => 'Salva';

  @override
  String get commonSearch => 'Cerca';

  @override
  String get commonBack => 'Indietro';

  @override
  String get commonContinue => 'Continua';

  @override
  String get commonAdd => 'Aggiungi';

  @override
  String get commonEdit => 'Modifica';

  @override
  String get commonCreate => 'Crea';

  @override
  String get commonClear => 'Cancella';

  @override
  String get commonView => 'Visualizza';

  @override
  String get commonShare => 'Condividi';

  @override
  String get commonExportPdf => 'Esporta PDF';

  @override
  String get commonSharePdf => 'Condividi PDF';

  @override
  String get commonSaveChanges => 'Salva modifiche';

  @override
  String get commonRequired => 'Obbligatorio';

  @override
  String get commonInvalid => 'Non valido';

  @override
  String get commonSendLink => 'Invia link';

  @override
  String get commonGeneratingPdf => 'Generazione del PDF in corso...';

  @override
  String get dashboardGreetingMorning => 'Buongiorno';

  @override
  String get dashboardGreetingAfternoon => 'Buon pomeriggio';

  @override
  String get dashboardGreetingEvening => 'Buonasera';

  @override
  String get dashboardSubtitle => 'Ecco la panoramica della tua attività';

  @override
  String get dashboardOutstanding => 'Da incassare';

  @override
  String get dashboardOverdue => 'Scadute';

  @override
  String get dashboardThisMonth => 'Questo mese';

  @override
  String get dashboardInvoices => 'fatture';

  @override
  String dashboardPaidCount(Object count) {
    return '$count pagate';
  }

  @override
  String get dashboardRecentInvoices => 'Fatture recenti';

  @override
  String get dashboardSeeAll => 'Vedi tutto';

  @override
  String get dashboardNotifications => 'Notifiche';

  @override
  String get dashboardNotificationsHint =>
      'Tieni sotto controllo il flusso di cassa controllando regolarmente le fatture scadute e in attesa.';

  @override
  String get dashboardNewInvoice => 'Nuova fattura';

  @override
  String get dashboardNoInvoicesYet => 'Nessuna fattura ancora';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Crea la tua prima fattura professionale in meno di 2 minuti';

  @override
  String get dashboardCreateInvoice => 'Crea fattura';

  @override
  String get dashboardMarkPaid => 'Segna come pagata';

  @override
  String get dashboardDuePrefix => 'Scadenza ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days giorni di ritardo';
  }

  @override
  String get deleteInvoiceTitle => 'Eliminare la fattura?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'Eliminare $invoiceNumber? Questa azione non può essere annullata.';
  }

  @override
  String get loginHeading => 'Bentornato';

  @override
  String get loginSubtitle => 'Accedi al tuo account InvoiceFlow';

  @override
  String get loginEmailLabel => 'Indirizzo email';

  @override
  String get loginEmailHint => 'tu@esempio.com';

  @override
  String get loginEmailRequired => 'L\'email è obbligatoria';

  @override
  String get loginEmailInvalid => 'Inserisci un\'email valida';

  @override
  String get loginPasswordLabel => 'Password';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'La password è obbligatoria';

  @override
  String get loginPasswordMinLength =>
      'La password deve contenere almeno 6 caratteri';

  @override
  String get loginForgotPassword => 'Password dimenticata?';

  @override
  String get loginSignIn => 'Accedi';

  @override
  String get loginOrContinueWith => 'oppure continua con';

  @override
  String get loginContinueWithGoogle => 'Continua con Google';

  @override
  String get loginNoAccount => 'Non hai un account? ';

  @override
  String get loginSignUp => 'Registrati';

  @override
  String get loginResetPasswordTitle => 'Reimposta password';

  @override
  String get loginResetPasswordMessage =>
      'Inserisci la tua email e ti invieremo un link di reimpostazione.';

  @override
  String get loginResetPasswordHint => 'tu@esempio.com';

  @override
  String get loginResetLinkSent =>
      'Link di reimpostazione inviato! Controlla la tua email.';

  @override
  String get loginResetLinkFailed =>
      'Invio del link di reimpostazione non riuscito.';

  @override
  String get registerHeading => 'Crea account';

  @override
  String get registerSubtitle =>
      'Inizia oggi stesso a inviare fatture professionali';

  @override
  String get registerNameLabel => 'Nome completo';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => 'Il nome è obbligatorio';

  @override
  String get registerNameMinLength =>
      'Il nome deve contenere almeno 2 caratteri';

  @override
  String get registerEmailLabel => 'Indirizzo email';

  @override
  String get registerEmailHint => 'tu@esempio.com';

  @override
  String get registerEmailRequired => 'L\'email è obbligatoria';

  @override
  String get registerEmailInvalid => 'Inserisci un\'email valida';

  @override
  String get registerPasswordLabel => 'Password';

  @override
  String get registerPasswordHint => 'Almeno 6 caratteri';

  @override
  String get registerPasswordRequired => 'La password è obbligatoria';

  @override
  String get registerPasswordMinLength =>
      'La password deve contenere almeno 6 caratteri';

  @override
  String get registerConfirmPasswordLabel => 'Conferma password';

  @override
  String get registerConfirmPasswordHint => 'Ripeti la tua password';

  @override
  String get registerConfirmPasswordRequired => 'Conferma la tua password';

  @override
  String get registerPasswordsDoNotMatch => 'Le password non coincidono';

  @override
  String get registerCreateAccount => 'Crea account';

  @override
  String get registerHaveAccount => 'Hai già un account? ';

  @override
  String get registerSignIn => 'Accedi';

  @override
  String get authTermsOfService => 'Termini di servizio';

  @override
  String get authPrivacyPolicy => 'Informativa sulla privacy';

  @override
  String get authAgreeRequired =>
      'Per continuare, accetta i Termini di servizio e l\'Informativa sulla privacy';

  @override
  String get loginAgreePrefix => 'Continuando, accetti i nostri ';

  @override
  String get registerAgreePrefix => 'Accetto i ';

  @override
  String get authAgreeAnd => ' e l\'';

  @override
  String get authTermsSheet =>
      'I presenti Termini di servizio regolano l\'uso di InvoiceFlow. Accedendo o utilizzando l\'app accetti di essere vincolato da questi termini.\n\n1. Sei responsabile dell\'accuratezza delle fatture, dei preventivi e degli altri dati che crei.\n2. L\'app è fornita \"così com\'è\", senza garanzie di alcun tipo, esplicite o implicite.\n3. Non siamo responsabili per eventuali perdite derivanti dall\'uso del servizio.\n4. Non devi utilizzare l\'app per scopi illegali o vietati.\n5. Possiamo aggiornare periodicamente questi termini; l\'uso continuato dell\'app costituisce accettazione dei termini aggiornati.';

  @override
  String get authPrivacySheet =>
      'La tua privacy è importante per noi.\n\n1. Archiviazione dei dati: fatture, clienti e impostazioni vengono memorizzati localmente sul tuo dispositivo.\n2. Sincronizzazione cloud: se accedi, i tuoi dati vengono sincronizzati con il tuo account per essere disponibili su tutti i tuoi dispositivi.\n3. Non vendiamo né condividiamo mai le tue informazioni personali.\n4. Analisi: potremmo raccogliere dati di utilizzo anonimizzati per migliorare l\'app.\n5. Contatti: per qualsiasi domanda sulla privacy, scrivi a support@invoiceflow.app.';

  @override
  String get authErrorWeakPassword => 'La password è troppo debole';

  @override
  String get authErrorEmailAlreadyInUse => 'L\'account esiste già';

  @override
  String get authErrorUserNotFound => 'Nessun utente trovato con questa email';

  @override
  String get authErrorWrongPassword => 'Password errata';

  @override
  String get authErrorInvalidEmail => 'Indirizzo email non valido';

  @override
  String get authErrorTooManyRequests => 'Troppi tentativi. Riprova più tardi';

  @override
  String get authErrorDefault => 'Autenticazione non riuscita. Riprova.';

  @override
  String get authErrorGoogleSignInFailed => 'Accesso con Google non riuscito.';

  @override
  String get invoiceListTitle => 'Fatture';

  @override
  String get invoiceListSearchHint => 'Cerca fatture...';

  @override
  String get invoiceListSortDate => 'Ordina per data';

  @override
  String get invoiceListSortAmount => 'Ordina per importo';

  @override
  String get invoiceListSortClient => 'Ordina per cliente';

  @override
  String get invoiceListTabAll => 'Tutte';

  @override
  String get invoiceListTabPaid => 'Pagate';

  @override
  String get invoiceListTabPending => 'In attesa';

  @override
  String get invoiceListTabOverdue => 'Scadute';

  @override
  String get invoiceListTabDraft => 'Bozze';

  @override
  String get invoiceListEmpty => 'Nessuna fattura trovata';

  @override
  String get invoiceCreateTitle => 'Nuova fattura';

  @override
  String get invoiceEditTitle => 'Modifica fattura';

  @override
  String get invoiceSaveDraft => 'Salva bozza';

  @override
  String get invoiceStepClient => 'Cliente';

  @override
  String get invoiceStepItems => 'Articoli';

  @override
  String get invoiceStepReview => 'Riepilogo';

  @override
  String get invoiceSelectClient => 'Seleziona un cliente';

  @override
  String get invoiceSelectClientSubtitle =>
      'Scegli a chi è destinata questa fattura';

  @override
  String get invoiceSearchClients => 'Cerca clienti...';

  @override
  String get invoiceAddNewClient => 'Aggiungi nuovo cliente';

  @override
  String get invoiceNoClientsFound => 'Nessun cliente trovato';

  @override
  String get invoiceSelectClientEmptyHint =>
      'Crea il tuo primo cliente per iniziare a creare fatture';

  @override
  String get invoiceAddLineItem => 'Aggiungi voce';

  @override
  String get invoiceItemDescription => 'Descrizione';

  @override
  String get invoiceItemDescriptionHint => 'es. Sviluppo Web';

  @override
  String get invoiceItemQuickAdd => 'Aggiunta rapida:';

  @override
  String get invoiceItemQty => 'Quantità';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Tariffa';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Aggiungi articolo';

  @override
  String get invoiceLineItems => 'Voci di fattura';

  @override
  String get invoiceLineItemsSubtitle => 'Aggiungi servizi o prodotti';

  @override
  String get invoiceNoItems =>
      'Nessun articolo ancora. Aggiungi il tuo primo articolo.';

  @override
  String get invoiceTaxRate => 'Aliquota fiscale (%)';

  @override
  String get invoiceSubtotal => 'Subtotale';

  @override
  String invoiceTax(Object taxRate) {
    return 'Imposta ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'TOTALE';

  @override
  String get invoiceReviewHeading => 'Riepiloga e finalizza';

  @override
  String get invoiceReviewSubtitle =>
      'Imposta date, aggiungi note, logo e firma';

  @override
  String get invoiceCompanyLogo => 'Logo aziendale';

  @override
  String get invoiceAddLogo => 'Aggiungi logo';

  @override
  String get invoiceInvoiceDate => 'Data fattura';

  @override
  String get invoiceDueDate => 'Data di scadenza';

  @override
  String get invoiceNotesLabel => 'Note (facoltative)';

  @override
  String get invoiceNotesHint => 'Grazie per la tua fiducia!';

  @override
  String get invoicePaymentTermsLabel =>
      'Condizioni di pagamento (facoltative)';

  @override
  String get invoicePaymentTermsHint => 'Pagamento entro 30 giorni';

  @override
  String get invoiceSignatureLabel => 'Firma';

  @override
  String get invoiceSignatureOverwrite =>
      'Firma esistente salvata. Disegna sopra per sostituirla.';

  @override
  String get invoiceCreatedSnackbar => 'Fattura creata!';

  @override
  String get invoiceUpdatedSnackbar => 'Fattura aggiornata!';

  @override
  String get invoiceDetailTitle => 'FATTURA';

  @override
  String get invoiceDetailMarkAsPaid => 'Segna come pagata';

  @override
  String get invoiceDetailTotalAmount => 'Importo totale';

  @override
  String get invoiceDetailIssued => 'Emessa';

  @override
  String get invoiceDetailDue => 'Scadenza';

  @override
  String get invoiceDetailPaid => 'Pagata';

  @override
  String get invoiceDetailBillTo => 'Fatturare a';

  @override
  String get invoiceDetailItems => 'Articoli';

  @override
  String get invoiceDetailNotes => 'Note';

  @override
  String get invoiceDetailSignature => 'Firma';

  @override
  String get invoiceDetailMarkedPaidSnackbar => 'Fattura segnata come pagata!';

  @override
  String get invoiceDetailPdfFailed => 'Generazione del PDF non riuscita';

  @override
  String get clientListTitle => 'Clienti';

  @override
  String get clientListSearchHint => 'Cerca clienti...';

  @override
  String get clientListTotalClients => 'Totale clienti';

  @override
  String get clientListTotalBilled => 'Totale fatturato';

  @override
  String get clientListEmptySearch => 'Nessun cliente trovato';

  @override
  String get clientListEmpty => 'Nessun cliente ancora';

  @override
  String get clientListEmptySubtitle =>
      'Aggiungi il tuo primo cliente per iniziare a creare fatture';

  @override
  String get clientListAddClient => 'Aggiungi cliente';

  @override
  String get clientListTotalBilledLabel => 'totale fatturato';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count fattura';
  }

  @override
  String get clientCreateTitle => 'Nuovo cliente';

  @override
  String get clientEditTitle => 'Modifica cliente';

  @override
  String get clientBasicInfo => 'Informazioni di base';

  @override
  String get clientNameLabel => 'Nome completo *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'Il nome è obbligatorio';

  @override
  String get clientNameTooShort => 'Nome troppo corto';

  @override
  String get clientEmailLabel => 'Indirizzo email *';

  @override
  String get clientEmailHint => 'fatturazione@azienda.com';

  @override
  String get clientEmailRequired => 'L\'email è obbligatoria';

  @override
  String get clientEmailInvalid => 'Inserisci un\'email valida';

  @override
  String get clientPhoneLabel => 'Numero di telefono';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'Indirizzo';

  @override
  String get clientAddressLabel => 'Indirizzo';

  @override
  String get clientAddressHint => '123 Business Park, Ufficio 45';

  @override
  String get clientCityLabel => 'Città / Paese';

  @override
  String get clientCityHint => 'Dubai, Emirati Arabi Uniti';

  @override
  String get clientBillingDefaults => 'Impostazioni di fatturazione';

  @override
  String get clientDefaultCurrency => 'Valuta predefinita';

  @override
  String get clientDefaultTaxRate => 'Aliquota fiscale predefinita (VAT/GST)';

  @override
  String get clientVatLabel => 'Numero di registrazione VAT / Fiscale';

  @override
  String get clientVatHint => '123456789012345 (facoltativo)';

  @override
  String get clientUpdateButton => 'Aggiorna cliente';

  @override
  String get clientAddButton => 'Aggiungi cliente';

  @override
  String get clientUpdatedSnackbar => 'Cliente aggiornato!';

  @override
  String get clientAddedSnackbar => 'Cliente aggiunto!';

  @override
  String get clientDetailInvoices => 'Fatture';

  @override
  String get clientDetailTotalBilled => 'Totale fatturato';

  @override
  String get clientDetailOutstanding => 'Da incassare';

  @override
  String get clientDetailEdit => 'Modifica';

  @override
  String get clientDetailNewInvoice => 'Nuova fattura';

  @override
  String get clientDetailEmailClient => 'Invia email al cliente';

  @override
  String get clientDetailClientDetails => 'Dettagli del cliente';

  @override
  String get clientDetailEmail => 'Email';

  @override
  String get clientDetailPhone => 'Telefono';

  @override
  String get clientDetailAddress => 'Indirizzo';

  @override
  String get clientDetailCity => 'Città';

  @override
  String get clientDetailCurrency => 'Valuta';

  @override
  String get clientDetailTaxRate => 'Aliquota fiscale';

  @override
  String get clientDetailVatNumber => 'Numero VAT';

  @override
  String get clientDetailInvoiceHistory => 'Cronologia fatture';

  @override
  String get clientDetailNoInvoices => 'Nessuna fattura per questo cliente';

  @override
  String get deleteClientTitle => 'Eliminare il cliente?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'Eliminare $clientName? Questa azione non può essere annullata.';
  }

  @override
  String get settingsTitle => 'Impostazioni';

  @override
  String get settingsYourName => 'Il tuo nome';

  @override
  String get settingsBackupTitle => 'Esegui il backup delle tue fatture';

  @override
  String get settingsBackupDescription =>
      'Accedi per sincronizzare i tuoi dati in modo sicuro e accedervi da qualsiasi luogo.';

  @override
  String get settingsSignInRegister => 'Accedi o registrati';

  @override
  String get settingsProUpsell =>
      'Passa a Pro per fatture illimitate, sincronizzazione cloud e senza filigrane.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'Hai raggiunto il limite del piano gratuito di $limit fatture. Passa a Pro per fatture illimitate e sincronizzazione cloud.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'Hai raggiunto il limite del piano gratuito di $limit clienti. Passa a Pro per clienti illimitati e sincronizzazione cloud.';
  }

  @override
  String get settingsUpgradePro => 'Aggiorna';

  @override
  String get settingsBusinessSection => 'IMPOSTAZIONI AZIENDALI';

  @override
  String get settingsBusinessDetails => 'Dettagli dell\'attività';

  @override
  String get settingsBusinessDetailsSubtitle =>
      'Imposta il nome della tua attività';

  @override
  String get settingsInvoicePrefix => 'Prefisso fattura';

  @override
  String get settingsDefaultCurrency => 'Valuta predefinita';

  @override
  String get settingsAppSection => 'IMPOSTAZIONI APP';

  @override
  String get settingsDarkMode => 'Modalità scura';

  @override
  String get settingsDailyNotification => 'Notifica quotidiana';

  @override
  String get settingsDailyNotificationNotSet => 'Non impostata';

  @override
  String get settingsLanguage => 'Lingua';

  @override
  String get settingsLanguageLabel => 'Italiano';

  @override
  String get languageEnglish => 'Inglese';

  @override
  String get languageArabic => 'Arabo';

  @override
  String get languageFrench => 'Francese';

  @override
  String get languageSpanish => 'Spagnolo';

  @override
  String get languageUrdu => 'Urdu';

  @override
  String get languageChinese => 'Cinese';

  @override
  String get settingsAboutSection => 'INFORMAZIONI';

  @override
  String get settingsRateApp => 'Valuta l\'app';

  @override
  String get settingsHelpSupport => 'Aiuto e supporto';

  @override
  String get settingsPrivacyPolicy => 'Informativa sulla privacy';

  @override
  String get settingsHelpSupportSheet =>
      'Serve aiuto? Contatta support@invoiceflow.app e ti risponderemo entro 24 ore.';

  @override
  String get settingsPrivacySheet =>
      'I tuoi dati sono archiviati localmente sul tuo dispositivo. Non vendiamo né condividiamo mai le tue informazioni personali.';

  @override
  String get settingsVersion => 'Versione';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Esci';

  @override
  String get settingsEditProfile => 'Modifica profilo';

  @override
  String get settingsProfileNameLabel => 'Nome completo';

  @override
  String get settingsProfileNameHint => 'Il tuo nome';

  @override
  String get settingsBusinessNameLabel => 'Nome dell\'attività';

  @override
  String get settingsBusinessNameHint => 'La tua azienda S.r.l.';

  @override
  String get settingsBusinessEmailLabel => 'Email dell\'attività';

  @override
  String get settingsBusinessEmailHint => 'fatturazione@azienda.com';

  @override
  String get settingsPhoneLabel => 'Telefono';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'Indirizzo';

  @override
  String get settingsAddressHint => 'Dubai, Emirati Arabi Uniti';

  @override
  String get settingsBusinessDetailsSaved => 'Dettagli dell\'attività salvati!';

  @override
  String get settingsInvoicePrefixTitle => 'Prefisso numero fattura';

  @override
  String get settingsInvoicePrefixHint => 'es. INV-, #, Fatt-';

  @override
  String get settingsPrefixSaved => 'Prefisso fattura salvato';

  @override
  String get settingsNotificationScheduled =>
      'Notifica quotidiana pianificata con successo!';

  @override
  String get settingsSignOutTitle => 'Uscire?';

  @override
  String get settingsSignOutMessage => 'Vuoi davvero uscire da InvoiceFlow?';

  @override
  String get settingsSignedOut => 'Uscita effettuata correttamente.';

  @override
  String get statusPaid => 'Pagata';

  @override
  String get statusOverdue => 'Scaduta';

  @override
  String get statusPending => 'In attesa';

  @override
  String get statusDraft => 'Bozza';

  @override
  String get statusCancelled => 'Annullata';

  @override
  String get notificationChannelName => 'Promemoria giornalieri';

  @override
  String get notificationChannelDescription =>
      'Ti ricorda di controllare le tue fatture ogni giorno';

  @override
  String get notificationTitle => 'Promemoria fattura';

  @override
  String get notificationBody =>
      'È il momento di controllare le fatture recenti e monitorare i pagamenti in attesa.';

  @override
  String get pdfInvoice => 'FATTURA';

  @override
  String get pdfInvoiceNumber => 'Fattura n.:';

  @override
  String get pdfDate => 'Data:';

  @override
  String get pdfDueDate => 'Data di scadenza:';

  @override
  String get pdfBillTo => 'FATTURARE A:';

  @override
  String get pdfDescription => 'Descrizione';

  @override
  String get pdfQty => 'Qtà';

  @override
  String get pdfRate => 'Tariffa';

  @override
  String get pdfAmount => 'Importo';

  @override
  String get pdfSubtotal => 'Subtotale:';

  @override
  String pdfTax(Object taxRate) {
    return 'Imposta ($taxRate%):';
  }

  @override
  String get pdfTotal => 'TOTALE:';

  @override
  String get pdfSignature => 'Firma:';

  @override
  String get pdfNotes => 'Note:';

  @override
  String get pdfPaymentTerms => 'Condizioni di pagamento:';

  @override
  String get pdfThankYou => 'Grazie per la tua fiducia!';

  @override
  String get quickAddWebDesign => 'Web Design';

  @override
  String get quickAddDevelopment => 'Sviluppo';

  @override
  String get quickAddConsulting => 'Consulenza';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Scrittura di contenuti';

  @override
  String get paywallTitle => 'Sblocca InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'Vai oltre i limiti e sincronizza ovunque. Annulla quando vuoi.';

  @override
  String get paywallFeatureUnlimited => 'Fatture e clienti illimitati';

  @override
  String get paywallFeatureSync => 'Sincronizzazione cloud tra dispositivi';

  @override
  String get paywallFeatureNoWatermark => 'Mai filigrane';

  @override
  String get paywallMonthly => 'Mensile';

  @override
  String get paywallMonthlySub => 'Addebito mensile';

  @override
  String get paywallYearly => 'Annuale';

  @override
  String get paywallYearlySub =>
      'Miglior rapporto qualità-prezzo — 2 mesi gratis';

  @override
  String get paywallRestore => 'Ripristina acquisti';

  @override
  String get paywallTerms =>
      'Gli abbonamenti si rinnovano automaticamente. Gestiscili nelle impostazioni del tuo store.';

  @override
  String get purchaseSuccessTitle => 'Sei Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'Fatture illimitate, sincronizzazione cloud e niente filigrane sono ora sbloccati. Grazie!';

  @override
  String get purchaseSuccessContinue => 'Continua';

  @override
  String get paywallLoading => 'Caricamento piani…';

  @override
  String get paywallLoadError =>
      'Impossibile caricare i piani. Controlla la connessione e riprova.';

  @override
  String get paywallNoOffering => 'Al momento non ci sono piani disponibili.';

  @override
  String get purchaseRestored => 'Acquisti ripristinati con successo';

  @override
  String get purchaseErrorGeneric => 'Acquisto non riuscito. Riprova.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro è attivo: fatture e clienti illimitati senza filigrane';

  @override
  String get settingsFreePlan => 'Piano gratuito';

  @override
  String get settingsFreeHint =>
      'Passa a Pro per fatture illimitate, sincronizzazione cloud e altro';

  @override
  String get settingsUpgradeToPro => 'Passa a Pro';

  @override
  String get settingsManageSubscription => 'Gestisci abbonamento';

  @override
  String get customerCenterFailed =>
      'Impossibile aprire la gestione dell\'abbonamento.';

  @override
  String get onboardingSkip => 'Salta';

  @override
  String get onboardingNext => 'Avanti';

  @override
  String get onboardingGetStarted => 'Inizia';

  @override
  String get onboardingWelcomeTitle => 'Fatture in 2 minuti';

  @override
  String get onboardingWelcomeBody =>
      'Crea fatture PDF professionali per i tuoi clienti: veloci ed eleganti.';

  @override
  String get onboardingSyncTitle => 'Sincronizza ovunque';

  @override
  String get onboardingSyncBody =>
      'Accedi per eseguire il backup sicuro dei tuoi dati nel cloud e accedervi da qualsiasi dispositivo.';

  @override
  String get onboardingProTitle => 'Vai oltre i limiti con Pro';

  @override
  String get onboardingProBody =>
      'Sblocca fatture illimitate, sincronizzazione cloud e rimuovi le filigrane con InvoiceFlow Pro.';

  @override
  String get settingsAccentColor => 'Colore di accento';

  @override
  String get settingsAccentColorHint =>
      'Personalizza l\'app con un colore a tua scelta.';

  @override
  String get settingsCountry => 'Paese';

  @override
  String get settingsTaxId => 'Numero di registrazione fiscale';

  @override
  String get settingsTaxIdNotSet => 'Non impostato';

  @override
  String get settingsTaxIdHint => 'es. 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Numero fiscale salvato';

  @override
  String get catalogTitle => 'Prodotti e servizi';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count articoli',
      one: '$count articolo',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'Nessun prodotto ancora';

  @override
  String get catalogEmptySubtitle =>
      'Salva prodotti e servizi riutilizzabili per aggiungerli più velocemente alle fatture.';

  @override
  String get catalogFromSaved => 'Dal tuo catalogo';

  @override
  String get catalogSaveToCatalog => 'Salva nel catalogo per riutilizzarlo';

  @override
  String get catalogAddSnackbar => 'Aggiunto al catalogo';

  @override
  String get catalogDeleteTitle => 'Eliminare l\'elemento?';

  @override
  String catalogDeleteMessage(String description) {
    return 'Eliminare \"$description\"? Questa azione non può essere annullata.';
  }

  @override
  String get commonDone => 'Fatto';

  @override
  String get estimateListTitle => 'Preventivi';

  @override
  String get estimateListSearchHint => 'Cerca preventivi…';

  @override
  String get estimateListEmpty => 'Nessun preventivo ancora';

  @override
  String get estimateListTabAll => 'Tutti';

  @override
  String get estimateListTabDraft => 'Bozza';

  @override
  String get estimateListTabSent => 'Inviato';

  @override
  String get estimateListTabAccepted => 'Accettato';

  @override
  String get estimateListTabExpired => 'Scaduto';

  @override
  String get estimateCreateTitle => 'Nuovo preventivo';

  @override
  String get estimateEditTitle => 'Modifica preventivo';

  @override
  String get estimateCreatedSnackbar => 'Preventivo salvato';

  @override
  String get estimateUpdatedSnackbar => 'Preventivo aggiornato';

  @override
  String get estimateIssueDate => 'Data di emissione';

  @override
  String get estimateExpiryDate => 'Data di scadenza';

  @override
  String get estimateExpiresPrefix => 'Scade il ';

  @override
  String get estimateConvertToInvoice => 'Converti in fattura';

  @override
  String get estimateConvertedSnackbar => 'Preventivo convertito in fattura';

  @override
  String get estimateConvertFailed => 'Impossibile convertire il preventivo';

  @override
  String get estimateMarkSent => 'Segna come inviato';

  @override
  String get estimateMarkAccepted => 'Segna come accettato';

  @override
  String get estimateMarkDeclined => 'Segna come rifiutato';

  @override
  String get estimateConvertedTitle => 'Convertito';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'Convertito in fattura $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'TOTALE PREVENTIVO';

  @override
  String get estimateStatusSent => 'Inviato';

  @override
  String get estimateStatusAccepted => 'Accettato';

  @override
  String get estimateStatusDeclined => 'Rifiutato';

  @override
  String get estimateStatusExpired => 'Scaduto';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aperti',
      one: '1 aperto',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'Eliminare il preventivo?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'Eliminare \"$estimateNumber\"? Questa azione non può essere annullata.';
  }

  @override
  String get estimatePdfFailed => 'Impossibile generare il PDF';

  @override
  String get pdfEstimate => 'PREVENTIVO';

  @override
  String get pdfEstimateNumber => 'Preventivo n.:';

  @override
  String get pdfValidUntil => 'Valido fino al:';

  @override
  String get invoiceDetailPaymentTerms => 'Condizioni di pagamento';

  @override
  String get recurringListTitle => 'Fatture ricorrenti';

  @override
  String get recurringListEmpty => 'Nessuna fattura ricorrente ancora';

  @override
  String get recurringListEmptySubtitle =>
      'Imposta fatture automatiche per clienti e servizi regolari.';

  @override
  String get recurringCreateTitle => 'Nuova ricorrente';

  @override
  String get recurringEditTitle => 'Modifica ricorrente';

  @override
  String get recurringCreatedSnackbar => 'Fattura ricorrente salvata';

  @override
  String get recurringUpdatedSnackbar => 'Fattura ricorrente aggiornata';

  @override
  String get recurringDeleteTitle => 'Eliminare la fattura ricorrente?';

  @override
  String recurringDeleteMessage(String title) {
    return 'Eliminare \"$title\"? Le fatture esistenti non verranno rimosse.';
  }

  @override
  String get recurringTitleLabel => 'Titolo';

  @override
  String get recurringTitleHint => 'es. Compenso mensile';

  @override
  String get recurringClientLabel => 'Cliente';

  @override
  String get recurringFrequencyLabel => 'Frequenza';

  @override
  String get recurringFrequencyWeekly => 'Settimanale';

  @override
  String get recurringFrequencyBiweekly => 'Quindicinale';

  @override
  String get recurringFrequencyMonthly => 'Mensile';

  @override
  String get recurringFrequencyQuarterly => 'Trimestrale';

  @override
  String get recurringFrequencyYearly => 'Annuale';

  @override
  String get recurringNextRun => 'Prossima emissione';

  @override
  String get recurringDueDays => 'Scadenza tra';

  @override
  String get recurringDays => 'giorni';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count attive',
      one: '1 attiva',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'Report';

  @override
  String get reportsSubtitle => 'Analisi dell\'attività';

  @override
  String get reportsEmpty => 'Crea fatture per visualizzare i report';

  @override
  String get reportsCollected => 'Incassato';

  @override
  String get reportsOutstanding => 'Da incassare';

  @override
  String get reportsMonthlyRevenue => 'Ricavi mensili';

  @override
  String get reportsLast6Months => 'Ultimi 6 mesi';

  @override
  String get reportsByStatus => 'Per stato';

  @override
  String get reportsTopClients => 'Clienti principali';

  @override
  String get paymentLinkTitle => 'Link di pagamento';

  @override
  String get paymentLinkNotSet => 'Nessun link di pagamento impostato';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'Il tuo link di pagamento è incluso nel PDF della fattura e può essere copiato dal menu della fattura.';

  @override
  String get paymentLinkSaved => 'Link di pagamento salvato';

  @override
  String get settingsPaymentLinkNotSet => 'Non impostato';

  @override
  String get invoiceDetailCopyPaymentLink => 'Copia link di pagamento';

  @override
  String get paymentLinkCopied => 'Link di pagamento copiato';

  @override
  String get pdfPayOnline => 'Paga online';

  @override
  String get exportXml => 'Esporta XML';

  @override
  String get exportXmlFailed => 'Esportazione XML non riuscita';
}
