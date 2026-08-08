// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Facturi profesionale în 2 minute';

  @override
  String get bottomNavDashboard => 'Panou';

  @override
  String get bottomNavInvoices => 'Facturi';

  @override
  String get bottomNavClients => 'Clienți';

  @override
  String get bottomNavSettings => 'Setări';

  @override
  String get commonCancel => 'Anulează';

  @override
  String get commonDelete => 'Șterge';

  @override
  String get commonSave => 'Salvează';

  @override
  String get commonSearch => 'Caută';

  @override
  String get commonBack => 'Înapoi';

  @override
  String get commonContinue => 'Continuă';

  @override
  String get commonAdd => 'Adaugă';

  @override
  String get commonEdit => 'Editează';

  @override
  String get commonCreate => 'Creează';

  @override
  String get commonClear => 'Golește';

  @override
  String get commonView => 'Vezi';

  @override
  String get commonShare => 'Partajează';

  @override
  String get commonExportPdf => 'Exportă PDF';

  @override
  String get commonSharePdf => 'Partajează PDF';

  @override
  String get commonSaveChanges => 'Salvează modificările';

  @override
  String get commonRequired => 'Obligatoriu';

  @override
  String get commonInvalid => 'Invalid';

  @override
  String get commonSendLink => 'Trimite link';

  @override
  String get commonGeneratingPdf => 'Se generează PDF...';

  @override
  String get dashboardGreetingMorning => 'Bună dimineața';

  @override
  String get dashboardGreetingAfternoon => 'Bună ziua';

  @override
  String get dashboardGreetingEvening => 'Bună seara';

  @override
  String get dashboardSubtitle =>
      'Iată imaginea de ansamblu a afacerii dumneavoastră';

  @override
  String get dashboardOutstanding => 'Necasate';

  @override
  String get dashboardOverdue => 'Restante';

  @override
  String get dashboardThisMonth => 'Luna aceasta';

  @override
  String get dashboardInvoices => 'facturi';

  @override
  String dashboardPaidCount(Object count) {
    return '$count plătite';
  }

  @override
  String get dashboardRecentInvoices => 'Facturi recente';

  @override
  String get dashboardSeeAll => 'Vezi toate';

  @override
  String get dashboardNotifications => 'Notificări';

  @override
  String get dashboardNotificationsHint =>
      'Țineți evidența fluxului de numerar verificând în mod regulat facturile restante și în așteptare.';

  @override
  String get dashboardNewInvoice => 'Factură nouă';

  @override
  String get dashboardNoInvoicesYet => 'Încă nu există facturi';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Creați prima factură profesională în mai puțin de 2 minute';

  @override
  String get dashboardCreateInvoice => 'Creează factura';

  @override
  String get dashboardMarkPaid => 'Marchează ca plătită';

  @override
  String get dashboardDuePrefix => 'Scadență ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days zile restante';
  }

  @override
  String get deleteInvoiceTitle => 'Ștergeți factura?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'Ștergeți $invoiceNumber? Această acțiune nu poate fi anulată.';
  }

  @override
  String get loginHeading => 'Bine ați revenit';

  @override
  String get loginSubtitle =>
      'Conectați-vă la contul dumneavoastră InvoiceFlow';

  @override
  String get loginEmailLabel => 'Adresă de email';

  @override
  String get loginEmailHint => 'dumneavoastra@exemplu.com';

  @override
  String get loginEmailRequired => 'Emailul este obligatoriu';

  @override
  String get loginEmailInvalid => 'Introduceți un email valid';

  @override
  String get loginPasswordLabel => 'Parolă';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'Parola este obligatorie';

  @override
  String get loginPasswordMinLength =>
      'Parola trebuie să aibă cel puțin 6 caractere';

  @override
  String get loginForgotPassword => 'Ați uitat parola?';

  @override
  String get loginSignIn => 'Autentificare';

  @override
  String get loginOrContinueWith => 'sau continuați cu';

  @override
  String get loginContinueWithGoogle => 'Continuați cu Google';

  @override
  String get loginNoAccount => 'Nu aveți un cont? ';

  @override
  String get loginSignUp => 'Înregistrați-vă';

  @override
  String get loginResetPasswordTitle => 'Resetați parola';

  @override
  String get loginResetPasswordMessage =>
      'Introduceți emailul și vă vom trimite un link de resetare.';

  @override
  String get loginResetPasswordHint => 'dumneavoastra@exemplu.com';

  @override
  String get loginResetLinkSent =>
      'Link de resetare trimis! Verificați-vă emailul.';

  @override
  String get loginResetLinkFailed => 'Trimiterea linkului de resetare a eșuat.';

  @override
  String get registerHeading => 'Creați cont';

  @override
  String get registerSubtitle =>
      'Începeți să trimiteți facturi profesionale chiar de azi';

  @override
  String get registerNameLabel => 'Nume complet';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => 'Numele este obligatoriu';

  @override
  String get registerNameMinLength =>
      'Numele trebuie să aibă cel puțin 2 caractere';

  @override
  String get registerEmailLabel => 'Adresă de email';

  @override
  String get registerEmailHint => 'dumneavoastra@exemplu.com';

  @override
  String get registerEmailRequired => 'Emailul este obligatoriu';

  @override
  String get registerEmailInvalid => 'Introduceți un email valid';

  @override
  String get registerPasswordLabel => 'Parolă';

  @override
  String get registerPasswordHint => 'Cel puțin 6 caractere';

  @override
  String get registerPasswordRequired => 'Parola este obligatorie';

  @override
  String get registerPasswordMinLength =>
      'Parola trebuie să aibă cel puțin 6 caractere';

  @override
  String get registerConfirmPasswordLabel => 'Confirmă parola';

  @override
  String get registerConfirmPasswordHint => 'Repetați parola';

  @override
  String get registerConfirmPasswordRequired => 'Vă rugăm să confirmați parola';

  @override
  String get registerPasswordsDoNotMatch => 'Parolele nu coincid';

  @override
  String get registerCreateAccount => 'Creează cont';

  @override
  String get registerHaveAccount => 'Aveți deja un cont? ';

  @override
  String get registerSignIn => 'Autentificare';

  @override
  String get authTermsOfService => 'Termeni și condiții';

  @override
  String get authPrivacyPolicy => 'Politica de confidențialitate';

  @override
  String get authAgreeRequired =>
      'Acceptați Termenii și condițiile și Politica de confidențialitate pentru a continua';

  @override
  String get loginAgreePrefix => 'Continuând, sunteți de acord cu ';

  @override
  String get registerAgreePrefix => 'Sunt de acord cu ';

  @override
  String get authAgreeAnd => ' și cu ';

  @override
  String get authTermsSheet =>
      'Acești Termeni și condiții reglementează utilizarea InvoiceFlow de către dumneavoastră. Prin accesarea sau utilizarea aplicației, sunteți de acord să respectați acești termeni.\n\n1. Sunteți responsabil pentru exactitatea facturilor, devizelor și a altor date pe care le creați.\n2. Aplicația este furnizată \"ca atare\", fără garanții de niciun fel, explicite sau implicite.\n3. Nu suntem răspunzători pentru pierderile rezultate din utilizarea serviciului.\n4. Nu trebuie să utilizați aplicația în scopuri ilegale sau interzise.\n5. Putem actualiza acești termeni din când în când; utilizarea continuă a aplicației constituie acceptarea termenilor actualizați.';

  @override
  String get authPrivacySheet =>
      'Confidențialitatea dumneavoastră este importantă pentru noi.\n\n1. Stocarea datelor: facturile, clienții și setările dumneavoastră sunt stocate local pe dispozitiv.\n2. Sincronizarea în cloud: dacă vă conectați, datele dumneavoastră sunt sincronizate cu contul, astfel încât să fie accesibile pe toate dispozitivele.\n3. Nu vândăm și nu partajăm niciodată informațiile dumneavoastră personale.\n4. Analize: putem colecta date de utilizare anonimizate pentru a îmbunătăți aplicația.\n5. Contact: pentru orice întrebare legată de confidențialitate, scrieți la support@invoiceflow.app.';

  @override
  String get authErrorWeakPassword => 'Parola este prea slabă';

  @override
  String get authErrorEmailAlreadyInUse => 'Contul există deja';

  @override
  String get authErrorUserNotFound =>
      'Nu a fost găsit niciun utilizator cu acest email';

  @override
  String get authErrorWrongPassword => 'Parolă incorectă';

  @override
  String get authErrorInvalidEmail => 'Adresă de email invalidă';

  @override
  String get authErrorTooManyRequests =>
      'Prea multe încercări. Încercați din nou mai târziu';

  @override
  String get authErrorDefault => 'Autentificarea a eșuat. Încercați din nou.';

  @override
  String get authErrorGoogleSignInFailed => 'Autentificarea cu Google a eșuat.';

  @override
  String get invoiceListTitle => 'Facturi';

  @override
  String get invoiceListSearchHint => 'Căutați facturi...';

  @override
  String get invoiceListSortDate => 'Sortează după dată';

  @override
  String get invoiceListSortAmount => 'Sortează după valoare';

  @override
  String get invoiceListSortClient => 'Sortează după client';

  @override
  String get invoiceListTabAll => 'Toate';

  @override
  String get invoiceListTabPaid => 'Plătite';

  @override
  String get invoiceListTabPending => 'În așteptare';

  @override
  String get invoiceListTabOverdue => 'Restante';

  @override
  String get invoiceListTabDraft => 'Ciorne';

  @override
  String get invoiceListEmpty => 'Nu au fost găsite facturi';

  @override
  String get invoiceCreateTitle => 'Factură nouă';

  @override
  String get invoiceEditTitle => 'Editează factura';

  @override
  String get invoiceSaveDraft => 'Salvează ciorna';

  @override
  String get invoiceStepClient => 'Client';

  @override
  String get invoiceStepItems => 'Articole';

  @override
  String get invoiceStepReview => 'Revizuire';

  @override
  String get invoiceSelectClient => 'Selectați un client';

  @override
  String get invoiceSelectClientSubtitle =>
      'Alegeți destinatarul acestei facturi';

  @override
  String get invoiceSearchClients => 'Căutați clienți...';

  @override
  String get invoiceAddNewClient => 'Adaugă client nou';

  @override
  String get invoiceNoClientsFound => 'Nu au fost găsiți clienți';

  @override
  String get invoiceSelectClientEmptyHint =>
      'Creați primul client pentru a începe să creați facturi';

  @override
  String get invoiceAddLineItem => 'Adaugă articol';

  @override
  String get invoiceItemDescription => 'Descriere';

  @override
  String get invoiceItemDescriptionHint => 'ex.: Dezvoltare Web';

  @override
  String get invoiceItemQuickAdd => 'Adăugare rapidă:';

  @override
  String get invoiceItemQty => 'Cantitate';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Tarif';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Adaugă articol';

  @override
  String get invoiceLineItems => 'Articole factură';

  @override
  String get invoiceLineItemsSubtitle => 'Adăugați servicii sau produse';

  @override
  String get invoiceNoItems =>
      'Încă nu există articole. Adăugați primul articol.';

  @override
  String get invoiceTaxRate => 'Cota de taxă (%)';

  @override
  String get invoiceSubtotal => 'Subtotal';

  @override
  String invoiceTax(Object taxRate) {
    return 'Taxă ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'TOTAL';

  @override
  String get invoiceReviewHeading => 'Revizuiește și finalizează';

  @override
  String get invoiceReviewSubtitle =>
      'Setați datele, adăugați note, siglă și semnătură';

  @override
  String get invoiceCompanyLogo => 'Siglă companie';

  @override
  String get invoiceAddLogo => 'Adaugă siglă';

  @override
  String get invoiceInvoiceDate => 'Data facturii';

  @override
  String get invoiceDueDate => 'Data scadenței';

  @override
  String get invoiceNotesLabel => 'Note (opționale)';

  @override
  String get invoiceNotesHint => 'Vă mulțumim pentru colaborare!';

  @override
  String get invoicePaymentTermsLabel => 'Condiții de plată (opționale)';

  @override
  String get invoicePaymentTermsHint => 'Plata în termen de 30 de zile';

  @override
  String get invoiceSignatureLabel => 'Semnătură';

  @override
  String get invoiceSignatureOverwrite =>
      'Semnătura existentă a fost salvată. Desenați deasupra pentru a o înlocui.';

  @override
  String get invoiceCreatedSnackbar => 'Factura a fost creată!';

  @override
  String get invoiceUpdatedSnackbar => 'Factura a fost actualizată!';

  @override
  String get invoiceDetailTitle => 'FACTURĂ';

  @override
  String get invoiceDetailMarkAsPaid => 'Marchează ca plătită';

  @override
  String get invoiceDetailTotalAmount => 'Valoare totală';

  @override
  String get invoiceDetailIssued => 'Emitere';

  @override
  String get invoiceDetailDue => 'Scadență';

  @override
  String get invoiceDetailPaid => 'Plătită';

  @override
  String get invoiceDetailBillTo => 'Facturat către';

  @override
  String get invoiceDetailItems => 'Articole';

  @override
  String get invoiceDetailNotes => 'Note';

  @override
  String get invoiceDetailSignature => 'Semnătură';

  @override
  String get invoiceDetailMarkedPaidSnackbar =>
      'Factura a fost marcată ca plătită!';

  @override
  String get invoiceDetailPdfFailed => 'Generarea PDF a eșuat';

  @override
  String get clientListTitle => 'Clienți';

  @override
  String get clientListSearchHint => 'Căutați clienți...';

  @override
  String get clientListTotalClients => 'Total clienți';

  @override
  String get clientListTotalBilled => 'Total facturat';

  @override
  String get clientListEmptySearch => 'Nu au fost găsiți clienți';

  @override
  String get clientListEmpty => 'Încă nu există clienți';

  @override
  String get clientListEmptySubtitle =>
      'Adăugați primul client pentru a începe să creați facturi';

  @override
  String get clientListAddClient => 'Adaugă client';

  @override
  String get clientListTotalBilledLabel => 'total facturat';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count factură';
  }

  @override
  String get clientCreateTitle => 'Client nou';

  @override
  String get clientEditTitle => 'Editează clientul';

  @override
  String get clientBasicInfo => 'Informații de bază';

  @override
  String get clientNameLabel => 'Nume complet *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'Numele este obligatoriu';

  @override
  String get clientNameTooShort => 'Nume prea scurt';

  @override
  String get clientEmailLabel => 'Adresă de email *';

  @override
  String get clientEmailHint => 'facturare@companie.com';

  @override
  String get clientEmailRequired => 'Emailul este obligatoriu';

  @override
  String get clientEmailInvalid => 'Introduceți un email valid';

  @override
  String get clientPhoneLabel => 'Număr de telefon';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'Adresă';

  @override
  String get clientAddressLabel => 'Adresă';

  @override
  String get clientAddressHint => '123 Business Park, Biroul 45';

  @override
  String get clientCityLabel => 'Oraș / Țară';

  @override
  String get clientCityHint => 'Dubai, Emiratele Arabe Unite';

  @override
  String get clientBillingDefaults => 'Setări implicite de facturare';

  @override
  String get clientDefaultCurrency => 'Monedă implicită';

  @override
  String get clientDefaultTaxRate => 'Cotă de taxă implicită (VAT/GST)';

  @override
  String get clientVatLabel => 'Număr de înregistrare VAT / Fiscal';

  @override
  String get clientVatHint => '123456789012345 (opțional)';

  @override
  String get clientUpdateButton => 'Actualizează clientul';

  @override
  String get clientAddButton => 'Adaugă clientul';

  @override
  String get clientUpdatedSnackbar => 'Clientul a fost actualizat!';

  @override
  String get clientAddedSnackbar => 'Clientul a fost adăugat!';

  @override
  String get clientDetailInvoices => 'Facturi';

  @override
  String get clientDetailTotalBilled => 'Total facturat';

  @override
  String get clientDetailOutstanding => 'Necasate';

  @override
  String get clientDetailEdit => 'Editează';

  @override
  String get clientDetailNewInvoice => 'Factură nouă';

  @override
  String get clientDetailEmailClient => 'Trimite email clientului';

  @override
  String get clientDetailClientDetails => 'Detalii client';

  @override
  String get clientDetailEmail => 'Email';

  @override
  String get clientDetailPhone => 'Telefon';

  @override
  String get clientDetailAddress => 'Adresă';

  @override
  String get clientDetailCity => 'Oraș';

  @override
  String get clientDetailCurrency => 'Monedă';

  @override
  String get clientDetailTaxRate => 'Cotă de taxă';

  @override
  String get clientDetailVatNumber => 'Număr VAT';

  @override
  String get clientDetailInvoiceHistory => 'Istoric facturi';

  @override
  String get clientDetailNoInvoices =>
      'Încă nu există facturi pentru acest client';

  @override
  String get deleteClientTitle => 'Ștergeți clientul?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'Ștergeți $clientName? Această acțiune nu poate fi anulată.';
  }

  @override
  String get settingsTitle => 'Setări';

  @override
  String get settingsYourName => 'Numele dumneavoastră';

  @override
  String get settingsBackupTitle => 'Faceți backup la facturile dumneavoastră';

  @override
  String get settingsBackupDescription =>
      'Autentificați-vă pentru a vă sincroniza datele în siguranță și a le accesa de oriunde.';

  @override
  String get settingsSignInRegister => 'Autentificare sau înregistrare';

  @override
  String get settingsProUpsell =>
      'Treceți la Pro pentru facturi nelimitate, sincronizare în cloud și fără filigrane.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'Ați atins limita planului gratuit de $limit facturi. Treceți la Pro pentru facturi nelimitate și sincronizare în cloud.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'Ați atins limita planului gratuit de $limit clienți. Treceți la Pro pentru clienți nelimitați și sincronizare în cloud.';
  }

  @override
  String get settingsUpgradePro => 'Fă upgrade';

  @override
  String get settingsBusinessSection => 'SETĂRILE AFACERII';

  @override
  String get settingsBusinessDetails => 'Detalii afacere';

  @override
  String get settingsBusinessDetailsSubtitle =>
      'Setați numele afacerii dumneavoastră';

  @override
  String get settingsInvoicePrefix => 'Prefix factură';

  @override
  String get settingsDefaultCurrency => 'Monedă implicită';

  @override
  String get settingsAppSection => 'SETĂRILE APLICAȚIEI';

  @override
  String get settingsDarkMode => 'Mod întunecat';

  @override
  String get settingsDailyNotification => 'Notificare zilnică';

  @override
  String get settingsDailyNotificationNotSet => 'Nesetat';

  @override
  String get settingsLanguage => 'Limbă';

  @override
  String get settingsLanguageLabel => 'Română';

  @override
  String get languageEnglish => 'Engleză';

  @override
  String get languageArabic => 'Arabă';

  @override
  String get languageFrench => 'Franceză';

  @override
  String get languageSpanish => 'Spaniolă';

  @override
  String get languageUrdu => 'Urdu';

  @override
  String get languageChinese => 'Chineză';

  @override
  String get settingsAboutSection => 'DESPRE';

  @override
  String get settingsRateApp => 'Evaluați aplicația';

  @override
  String get settingsHelpSupport => 'Ajutor și suport';

  @override
  String get settingsPrivacyPolicy => 'Politica de confidențialitate';

  @override
  String get settingsHelpSupportSheet =>
      'Aveți nevoie de ajutor? Contactați support@invoiceflow.app și vă vom răspunde în termen de 24 de ore.';

  @override
  String get settingsPrivacySheet =>
      'Datele dumneavoastră sunt stocate local pe dispozitiv. Nu vindem și nu partajăm niciodată informațiile dumneavoastră personale.';

  @override
  String get settingsVersion => 'Versiune';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Deconectare';

  @override
  String get settingsEditProfile => 'Editează profilul';

  @override
  String get settingsProfileNameLabel => 'Nume complet';

  @override
  String get settingsProfileNameHint => 'Numele dumneavoastră';

  @override
  String get settingsBusinessNameLabel => 'Numele afacerii';

  @override
  String get settingsBusinessNameHint => 'Compania Dumneavoastră S.R.L.';

  @override
  String get settingsBusinessEmailLabel => 'Email de afaceri';

  @override
  String get settingsBusinessEmailHint => 'facturare@companie.com';

  @override
  String get settingsPhoneLabel => 'Telefon';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'Adresă';

  @override
  String get settingsAddressHint => 'Dubai, Emiratele Arabe Unite';

  @override
  String get settingsBusinessDetailsSaved =>
      'Detaliile afacerii au fost salvate!';

  @override
  String get settingsInvoicePrefixTitle => 'Prefix număr factură';

  @override
  String get settingsInvoicePrefixHint => 'ex.: INV-, #, Fact-';

  @override
  String get settingsPrefixSaved => 'Prefixul facturii a fost salvat';

  @override
  String get settingsNotificationScheduled =>
      'Notificarea zilnică a fost programată cu succes!';

  @override
  String get settingsSignOutTitle => 'Deconectare?';

  @override
  String get settingsSignOutMessage =>
      'Sigur doriți să vă deconectați de la InvoiceFlow?';

  @override
  String get settingsSignedOut => 'V-ați deconectat cu succes.';

  @override
  String get statusPaid => 'Plătită';

  @override
  String get statusOverdue => 'Restantă';

  @override
  String get statusPending => 'În așteptare';

  @override
  String get statusDraft => 'Ciornă';

  @override
  String get statusCancelled => 'Anulată';

  @override
  String get notificationChannelName => 'Memento zilnice';

  @override
  String get notificationChannelDescription =>
      'Vă reamintește să verificați facturile zilnic';

  @override
  String get notificationTitle => 'Memento factură';

  @override
  String get notificationBody =>
      'Este timpul să verificați facturile recente și să urmăriți plățile în așteptare.';

  @override
  String get pdfInvoice => 'FACTURĂ';

  @override
  String get pdfInvoiceNumber => 'Factura nr.:';

  @override
  String get pdfDate => 'Data:';

  @override
  String get pdfDueDate => 'Data scadenței:';

  @override
  String get pdfBillTo => 'FACTURAT CĂTRE:';

  @override
  String get pdfDescription => 'Descriere';

  @override
  String get pdfQty => 'Cant.';

  @override
  String get pdfRate => 'Tarif';

  @override
  String get pdfAmount => 'Valoare';

  @override
  String get pdfSubtotal => 'Subtotal:';

  @override
  String pdfTax(Object taxRate) {
    return 'Taxă ($taxRate%):';
  }

  @override
  String get pdfTotal => 'TOTAL:';

  @override
  String get pdfSignature => 'Semnătură:';

  @override
  String get pdfNotes => 'Note:';

  @override
  String get pdfPaymentTerms => 'Condiții de plată:';

  @override
  String get pdfThankYou => 'Vă mulțumim pentru colaborare!';

  @override
  String get quickAddWebDesign => 'Web Design';

  @override
  String get quickAddDevelopment => 'Dezvoltare';

  @override
  String get quickAddConsulting => 'Consultanță';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Redactare conținut';

  @override
  String get paywallTitle => 'Deblocați InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'Fără limite și sincronizare oriunde. Anulați oricând.';

  @override
  String get paywallFeatureUnlimited => 'Facturi și clienți nelimitați';

  @override
  String get paywallFeatureSync =>
      'Sincronizare în cloud pe mai multe dispozitive';

  @override
  String get paywallFeatureNoWatermark => 'Fără filigrane, niciodată';

  @override
  String get paywallMonthly => 'Lunar';

  @override
  String get paywallMonthlySub => 'Facturat lunar';

  @override
  String get paywallYearly => 'Anual';

  @override
  String get paywallYearlySub => 'Cea mai bună valoare — 2 luni gratuite';

  @override
  String get paywallRestore => 'Restaurați achizițiile';

  @override
  String get paywallTerms =>
      'Abonamentele se reînnoiesc automat. Gestionați-le în setările magazinului de aplicații.';

  @override
  String get purchaseSuccessTitle => 'Sunteți Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'Facturile nelimitate, sincronizarea în cloud și fără filigrane sunt acum deblocate. Vă mulțumim!';

  @override
  String get purchaseSuccessContinue => 'Continuă';

  @override
  String get paywallLoading => 'Se încarcă planurile…';

  @override
  String get paywallLoadError =>
      'Planurile nu au putut fi încărcate. Verificați conexiunea și încercați din nou.';

  @override
  String get paywallNoOffering =>
      'Nu sunt disponibile planuri în acest moment.';

  @override
  String get purchaseRestored => 'Cumpărăturile au fost restaurate cu succes';

  @override
  String get purchaseErrorGeneric => 'Cumpărarea a eșuat. Încercați din nou.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro este activ — facturi și clienți nelimitați fără filigrane';

  @override
  String get settingsFreePlan => 'Plan gratuit';

  @override
  String get settingsFreeHint =>
      'Faceți upgrade pentru facturi nelimitate, sincronizare în cloud și multe altele';

  @override
  String get settingsUpgradeToPro => 'Treceți la Pro';

  @override
  String get settingsManageSubscription => 'Gestionează abonamentul';

  @override
  String get customerCenterFailed =>
      'Nu s-a putut deschide gestionarea abonamentului.';

  @override
  String get onboardingSkip => 'Sari peste';

  @override
  String get onboardingNext => 'Înainte';

  @override
  String get onboardingGetStarted => 'Începeți';

  @override
  String get onboardingWelcomeTitle => 'Facturi în 2 minute';

  @override
  String get onboardingWelcomeBody =>
      'Creați facturi PDF profesionale pentru clienții dumneavoastră — rapide și elegante.';

  @override
  String get onboardingSyncTitle => 'Sincronizați oriunde';

  @override
  String get onboardingSyncBody =>
      'Autentificați-vă pentru a face backup în siguranță la datele dumneavoastră în cloud și a le accesa de pe orice dispozitiv.';

  @override
  String get onboardingProTitle => 'Fără limite cu Pro';

  @override
  String get onboardingProBody =>
      'Deblocați facturi nelimitate, sincronizare în cloud și eliminați filigranele cu InvoiceFlow Pro.';

  @override
  String get settingsAccentColor => 'Culoare de accent';

  @override
  String get settingsAccentColorHint =>
      'Personalizați aplicația cu o culoare la alegerea dumneavoastră.';

  @override
  String get settingsCountry => 'Țară';

  @override
  String get settingsTaxId => 'Număr de înregistrare fiscală';

  @override
  String get settingsTaxIdNotSet => 'Nesetat';

  @override
  String get settingsTaxIdHint => 'ex.: 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Numărul fiscal a fost salvat';

  @override
  String get catalogTitle => 'Produse și servicii';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count articole',
      one: '$count articol',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'Încă nu există produse';

  @override
  String get catalogEmptySubtitle =>
      'Salvați produse și servicii reutilizabile pentru a le adăuga mai rapid la facturi.';

  @override
  String get catalogFromSaved => 'Din catalogul dumneavoastră';

  @override
  String get catalogSaveToCatalog => 'Salvați în catalog pentru reutilizare';

  @override
  String get catalogAddSnackbar => 'Adăugat în catalog';

  @override
  String get catalogDeleteTitle => 'Ștergeți articolul?';

  @override
  String catalogDeleteMessage(String description) {
    return 'Ștergeți \"$description\"? Această acțiune nu poate fi anulată.';
  }

  @override
  String get commonDone => 'Gata';

  @override
  String get estimateListTitle => 'Estimări';

  @override
  String get estimateListSearchHint => 'Căutați estimări…';

  @override
  String get estimateListEmpty => 'Încă nu există estimări';

  @override
  String get estimateListTabAll => 'Toate';

  @override
  String get estimateListTabDraft => 'Ciornă';

  @override
  String get estimateListTabSent => 'Trimisă';

  @override
  String get estimateListTabAccepted => 'Acceptată';

  @override
  String get estimateListTabExpired => 'Expirată';

  @override
  String get estimateCreateTitle => 'Estimare nouă';

  @override
  String get estimateEditTitle => 'Editează estimarea';

  @override
  String get estimateCreatedSnackbar => 'Estimarea a fost salvată';

  @override
  String get estimateUpdatedSnackbar => 'Estimarea a fost actualizată';

  @override
  String get estimateIssueDate => 'Data emiterii';

  @override
  String get estimateExpiryDate => 'Data expirării';

  @override
  String get estimateExpiresPrefix => 'Expiră la ';

  @override
  String get estimateConvertToInvoice => 'Convertește în factură';

  @override
  String get estimateConvertedSnackbar =>
      'Estimarea a fost convertită în factură';

  @override
  String get estimateConvertFailed => 'Nu s-a putut converti estimarea';

  @override
  String get estimateMarkSent => 'Marchează ca trimisă';

  @override
  String get estimateMarkAccepted => 'Marchează ca acceptată';

  @override
  String get estimateMarkDeclined => 'Marchează ca refuzată';

  @override
  String get estimateConvertedTitle => 'Convertită';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'Convertită în factura $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'TOTAL ESTIMARE';

  @override
  String get estimateStatusSent => 'Trimisă';

  @override
  String get estimateStatusAccepted => 'Acceptată';

  @override
  String get estimateStatusDeclined => 'Refuzată';

  @override
  String get estimateStatusExpired => 'Expirată';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count deschise',
      one: '1 deschisă',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'Ștergeți estimarea?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'Ștergeți \"$estimateNumber\"? Această acțiune nu poate fi anulată.';
  }

  @override
  String get estimatePdfFailed => 'Nu s-a putut genera PDF-ul';

  @override
  String get pdfEstimate => 'ESTIMARE';

  @override
  String get pdfEstimateNumber => 'Estimare nr.:';

  @override
  String get pdfValidUntil => 'Valabilă până la:';

  @override
  String get invoiceDetailPaymentTerms => 'Condiții de plată';

  @override
  String get recurringListTitle => 'Facturi recurente';

  @override
  String get recurringListEmpty => 'Încă nu există facturi recurente';

  @override
  String get recurringListEmptySubtitle =>
      'Configurați facturi automate pentru clienți și servicii regulate.';

  @override
  String get recurringCreateTitle => 'Nouă recurentă';

  @override
  String get recurringEditTitle => 'Editează recurenta';

  @override
  String get recurringCreatedSnackbar => 'Factura recurentă a fost salvată';

  @override
  String get recurringUpdatedSnackbar => 'Factura recurentă a fost actualizată';

  @override
  String get recurringDeleteTitle => 'Ștergeți factura recurentă?';

  @override
  String recurringDeleteMessage(String title) {
    return 'Ștergeți \"$title\"? Facturile existente nu vor fi eliminate.';
  }

  @override
  String get recurringTitleLabel => 'Titlu';

  @override
  String get recurringTitleHint => 'ex.: Onorariu lunar';

  @override
  String get recurringClientLabel => 'Client';

  @override
  String get recurringFrequencyLabel => 'Frecvență';

  @override
  String get recurringFrequencyWeekly => 'Săptămânal';

  @override
  String get recurringFrequencyBiweekly => 'La două săptămâni';

  @override
  String get recurringFrequencyMonthly => 'Lunar';

  @override
  String get recurringFrequencyQuarterly => 'Trimestrial';

  @override
  String get recurringFrequencyYearly => 'Anual';

  @override
  String get recurringNextRun => 'Următoarea rulare';

  @override
  String get recurringDueDays => 'Scade în';

  @override
  String get recurringDays => 'zile';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count active',
      one: '1 activă',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'Rapoarte';

  @override
  String get reportsSubtitle => 'Analiza afacerii';

  @override
  String get reportsEmpty => 'Creați facturi pentru a vedea rapoartele';

  @override
  String get reportsCollected => 'Încasat';

  @override
  String get reportsOutstanding => 'Necasate';

  @override
  String get reportsMonthlyRevenue => 'Venit lunar';

  @override
  String get reportsLast6Months => 'Ultimele 6 luni';

  @override
  String get reportsByStatus => 'După stare';

  @override
  String get reportsTopClients => 'Clienți principali';

  @override
  String get paymentLinkTitle => 'Link de plată';

  @override
  String get paymentLinkNotSet => 'Niciun link de plată setat';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'Linkul dumneavoastră de plată este inclus în PDF-ul facturii și poate fi copiat din meniul facturii.';

  @override
  String get paymentLinkSaved => 'Linkul de plată a fost salvat';

  @override
  String get settingsPaymentLinkNotSet => 'Nesetat';

  @override
  String get invoiceDetailCopyPaymentLink => 'Copiază linkul de plată';

  @override
  String get paymentLinkCopied => 'Linkul de plată a fost copiat';

  @override
  String get pdfPayOnline => 'Plătiți online';

  @override
  String get exportXml => 'Exportă XML';

  @override
  String get exportXmlFailed => 'Exportul XML a eșuat';
}
