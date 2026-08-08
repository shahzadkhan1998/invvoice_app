// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Professzionális számlák 2 perc alatt';

  @override
  String get bottomNavDashboard => 'Irányítópult';

  @override
  String get bottomNavInvoices => 'Számlák';

  @override
  String get bottomNavClients => 'Ügyfelek';

  @override
  String get bottomNavSettings => 'Beállítások';

  @override
  String get commonCancel => 'Mégse';

  @override
  String get commonDelete => 'Törlés';

  @override
  String get commonSave => 'Mentés';

  @override
  String get commonSearch => 'Keresés';

  @override
  String get commonBack => 'Vissza';

  @override
  String get commonContinue => 'Folytatás';

  @override
  String get commonAdd => 'Hozzáadás';

  @override
  String get commonEdit => 'Szerkesztés';

  @override
  String get commonCreate => 'Létrehozás';

  @override
  String get commonClear => 'Ürítés';

  @override
  String get commonView => 'Megtekintés';

  @override
  String get commonShare => 'Megosztás';

  @override
  String get commonExportPdf => 'PDF exportálása';

  @override
  String get commonSharePdf => 'PDF megosztása';

  @override
  String get commonSaveChanges => 'Változások mentése';

  @override
  String get commonRequired => 'Kötelező';

  @override
  String get commonInvalid => 'Érvénytelen';

  @override
  String get commonSendLink => 'Hivatkozás küldése';

  @override
  String get commonGeneratingPdf => 'PDF készítése...';

  @override
  String get dashboardGreetingMorning => 'Jó reggelt';

  @override
  String get dashboardGreetingAfternoon => 'Jó napot';

  @override
  String get dashboardGreetingEvening => 'Jó estét';

  @override
  String get dashboardSubtitle => 'Íme a vállalkozás áttekintése';

  @override
  String get dashboardOutstanding => 'Kintlévőség';

  @override
  String get dashboardOverdue => 'Lejárt';

  @override
  String get dashboardThisMonth => 'Ebben a hónapban';

  @override
  String get dashboardInvoices => 'számla';

  @override
  String dashboardPaidCount(Object count) {
    return '$count kifizetve';
  }

  @override
  String get dashboardRecentInvoices => 'Legutóbbi számlák';

  @override
  String get dashboardSeeAll => 'Összes megtekintése';

  @override
  String get dashboardNotifications => 'Értesítések';

  @override
  String get dashboardNotificationsHint =>
      'Kövesse nyomon a pénzáramlást, és rendszeresen nézze át a lejárt és függőben lévő számlákat.';

  @override
  String get dashboardNewInvoice => 'Új számla';

  @override
  String get dashboardNoInvoicesYet => 'Még nincsenek számlák';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Hozza létre első professzionális számláját 2 perc alatt';

  @override
  String get dashboardCreateInvoice => 'Számla létrehozása';

  @override
  String get dashboardMarkPaid => 'Fizetettként jelölés';

  @override
  String get dashboardDuePrefix => 'Esedékes: ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days napos késés';
  }

  @override
  String get deleteInvoiceTitle => 'Számla törlése?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'Törli a(z) $invoiceNumber számlát? Ez a művelet nem vonható vissza.';
  }

  @override
  String get loginHeading => 'Üdvözöljük újra';

  @override
  String get loginSubtitle => 'Jelentkezzen be InvoiceFlow-fiókjába';

  @override
  String get loginEmailLabel => 'E-mail cím';

  @override
  String get loginEmailHint => 'on@pelda.hu';

  @override
  String get loginEmailRequired => 'Az e-mail megadása kötelező';

  @override
  String get loginEmailInvalid => 'Adjon meg érvényes e-mail címet';

  @override
  String get loginPasswordLabel => 'Jelszó';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'A jelszó megadása kötelező';

  @override
  String get loginPasswordMinLength =>
      'A jelszónak legalább 6 karakter hosszúnak kell lennie';

  @override
  String get loginForgotPassword => 'Elfelejtette a jelszavát?';

  @override
  String get loginSignIn => 'Bejelentkezés';

  @override
  String get loginOrContinueWith => 'vagy folytassa a következővel';

  @override
  String get loginContinueWithGoogle => 'Folytatás Google-lel';

  @override
  String get loginNoAccount => 'Nincs még fiókja? ';

  @override
  String get loginSignUp => 'Regisztráció';

  @override
  String get loginResetPasswordTitle => 'Jelszó visszaállítása';

  @override
  String get loginResetPasswordMessage =>
      'Adja meg e-mail címét, és küldünk egy visszaállítási hivatkozást.';

  @override
  String get loginResetPasswordHint => 'on@pelda.hu';

  @override
  String get loginResetLinkSent =>
      'A visszaállítási hivatkozás elküldve! Ellenőrizze az e-mailjeit.';

  @override
  String get loginResetLinkFailed =>
      'Nem sikerült elküldeni a visszaállítási hivatkozást.';

  @override
  String get registerHeading => 'Fiók létrehozása';

  @override
  String get registerSubtitle =>
      'Kezdje el professzionális számlák küldését még ma';

  @override
  String get registerNameLabel => 'Teljes név';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => 'A név megadása kötelező';

  @override
  String get registerNameMinLength =>
      'A névnek legalább 2 karakter hosszúnak kell lennie';

  @override
  String get registerEmailLabel => 'E-mail cím';

  @override
  String get registerEmailHint => 'on@pelda.hu';

  @override
  String get registerEmailRequired => 'Az e-mail megadása kötelező';

  @override
  String get registerEmailInvalid => 'Adjon meg érvényes e-mail címet';

  @override
  String get registerPasswordLabel => 'Jelszó';

  @override
  String get registerPasswordHint => 'Legalább 6 karakter';

  @override
  String get registerPasswordRequired => 'A jelszó megadása kötelező';

  @override
  String get registerPasswordMinLength =>
      'A jelszónak legalább 6 karakter hosszúnak kell lennie';

  @override
  String get registerConfirmPasswordLabel => 'Jelszó megerősítése';

  @override
  String get registerConfirmPasswordHint => 'Ismételje meg a jelszavát';

  @override
  String get registerConfirmPasswordRequired => 'Erősítse meg a jelszavát';

  @override
  String get registerPasswordsDoNotMatch => 'A jelszavak nem egyeznek';

  @override
  String get registerCreateAccount => 'Fiók létrehozása';

  @override
  String get registerHaveAccount => 'Már van fiókja? ';

  @override
  String get registerSignIn => 'Bejelentkezés';

  @override
  String get authTermsOfService => 'Szolgáltatási feltételek';

  @override
  String get authPrivacyPolicy => 'Adatvédelmi irányelvek';

  @override
  String get authAgreeRequired =>
      'A folytatáshoz fogadja el a szolgáltatási feltételeket és az adatvédelmi irányelveket';

  @override
  String get loginAgreePrefix => 'A folytatással elfogadja ';

  @override
  String get registerAgreePrefix => 'Elfogadom a ';

  @override
  String get authAgreeAnd => ' és a ';

  @override
  String get authTermsSheet =>
      'Ezek a szolgáltatási feltételek szabályozzák az InvoiceFlow használatát. Az alkalmazáshoz való hozzáféréssel vagy használatával elfogadja, hogy kötelezettséget vállal ezekre a feltételekre.\n\n1. Ön felelős az Ön által létrehozott számlák, árajánlatok és egyéb adatok pontosságáért.\n2. Az alkalmazás \"úgy, ahogy van\" módon kerül biztosításra, mindenféle garancia nélkül, kifejezett vagy vélelmezett formában.\n3. Nem vállalunk felelősséget a szolgáltatás használatából eredő veszteségekért.\n4. Az alkalmazást nem szabad jogellenes vagy tiltott célra használni.\n5. Időről időre frissíthetjük ezeket a feltételeket; az alkalmazás további használata a frissített feltételek elfogadását jelenti.';

  @override
  String get authPrivacySheet =>
      'Az Ön személyes adatainak védelme fontos számunkra.\n\n1. Adattárolás: számláit, ügyfeleit és beállításait helyileg, az eszközén tároljuk.\n2. Felhőszinkronizálás: ha bejelentkezik, adatai szinkronizálódnak a fiókjába, így minden eszközén elérhetőek lesznek.\n3. Személyes adatait soha nem adjuk el és nem osztjuk meg.\n4. Analitika: névtelen használati adatokat gyűjthetünk az alkalmazás fejlesztéséhez.\n5. Kapcsolat: bármilyen adatvédelmi kérdés esetén forduljon a support@invoiceflow.app címre.';

  @override
  String get authErrorWeakPassword => 'A jelszó túl gyenge';

  @override
  String get authErrorEmailAlreadyInUse => 'A fiók már létezik';

  @override
  String get authErrorUserNotFound =>
      'Nem található felhasználó ezzel az e-mail címmel';

  @override
  String get authErrorWrongPassword => 'Hibás jelszó';

  @override
  String get authErrorInvalidEmail => 'Érvénytelen e-mail cím';

  @override
  String get authErrorTooManyRequests =>
      'Túl sok próbálkozás. Próbálja újra később.';

  @override
  String get authErrorDefault => 'Sikertelen hitelesítés. Próbálja újra.';

  @override
  String get authErrorGoogleSignInFailed =>
      'A Google-bejelentkezés sikertelen.';

  @override
  String get invoiceListTitle => 'Számlák';

  @override
  String get invoiceListSearchHint => 'Számlák keresése...';

  @override
  String get invoiceListSortDate => 'Rendezés dátum szerint';

  @override
  String get invoiceListSortAmount => 'Rendezés összeg szerint';

  @override
  String get invoiceListSortClient => 'Rendezés ügyfél szerint';

  @override
  String get invoiceListTabAll => 'Összes';

  @override
  String get invoiceListTabPaid => 'Fizetett';

  @override
  String get invoiceListTabPending => 'Függőben';

  @override
  String get invoiceListTabOverdue => 'Lejárt';

  @override
  String get invoiceListTabDraft => 'Piszkozat';

  @override
  String get invoiceListEmpty => 'Nem találhatók számlák';

  @override
  String get invoiceCreateTitle => 'Új számla';

  @override
  String get invoiceEditTitle => 'Számla szerkesztése';

  @override
  String get invoiceSaveDraft => 'Piszkozat mentése';

  @override
  String get invoiceStepClient => 'Ügyfél';

  @override
  String get invoiceStepItems => 'Tételek';

  @override
  String get invoiceStepReview => 'Áttekintés';

  @override
  String get invoiceSelectClient => 'Válasszon ügyfelet';

  @override
  String get invoiceSelectClientSubtitle =>
      'Válassza ki, kinek szól ez a számla';

  @override
  String get invoiceSearchClients => 'Ügyfelek keresése...';

  @override
  String get invoiceAddNewClient => 'Új ügyfél hozzáadása';

  @override
  String get invoiceNoClientsFound => 'Nem található ügyfél';

  @override
  String get invoiceSelectClientEmptyHint =>
      'Hozza létre első ügyfelét a számlák elkészítéséhez';

  @override
  String get invoiceAddLineItem => 'Sor hozzáadása';

  @override
  String get invoiceItemDescription => 'Leírás';

  @override
  String get invoiceItemDescriptionHint => 'pl. webfejlesztés';

  @override
  String get invoiceItemQuickAdd => 'Gyors hozzáadás:';

  @override
  String get invoiceItemQty => 'Mennyiség';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Díj';

  @override
  String get invoiceItemRateHint => '0,00';

  @override
  String get invoiceAddItem => 'Tétel hozzáadása';

  @override
  String get invoiceLineItems => 'Számlatételek';

  @override
  String get invoiceLineItemsSubtitle =>
      'Adjon hozzá szolgáltatásokat vagy termékeket';

  @override
  String get invoiceNoItems =>
      'Még nincsenek tételek. Adja hozzá az első tételt.';

  @override
  String get invoiceTaxRate => 'Adókulcs (%)';

  @override
  String get invoiceSubtotal => 'Részösszeg';

  @override
  String invoiceTax(Object taxRate) {
    return 'Adó ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'ÖSSZESEN';

  @override
  String get invoiceReviewHeading => 'Áttekintés és véglegesítés';

  @override
  String get invoiceReviewSubtitle =>
      'Állítsa be a dátumokat, adjon hozzá megjegyzéseket, logót és aláírást';

  @override
  String get invoiceCompanyLogo => 'Céges logó';

  @override
  String get invoiceAddLogo => 'Logó hozzáadása';

  @override
  String get invoiceInvoiceDate => 'Számla kelte';

  @override
  String get invoiceDueDate => 'Fizetési határidő';

  @override
  String get invoiceNotesLabel => 'Megjegyzések (opcionális)';

  @override
  String get invoiceNotesHint => 'Köszönjük az üzletet!';

  @override
  String get invoicePaymentTermsLabel => 'Fizetési feltételek (opcionális)';

  @override
  String get invoicePaymentTermsHint => 'Fizetés 30 napon belül';

  @override
  String get invoiceSignatureLabel => 'Aláírás';

  @override
  String get invoiceSignatureOverwrite =>
      'A meglévő aláírás elmentve. Rajzoljon fölé az új aláíráshoz.';

  @override
  String get invoiceCreatedSnackbar => 'A számla elkészült!';

  @override
  String get invoiceUpdatedSnackbar => 'A számla frissítve!';

  @override
  String get invoiceDetailTitle => 'SZÁMLA';

  @override
  String get invoiceDetailMarkAsPaid => 'Fizetettként jelölés';

  @override
  String get invoiceDetailTotalAmount => 'Teljes összeg';

  @override
  String get invoiceDetailIssued => 'Kiállítás';

  @override
  String get invoiceDetailDue => 'Esedékesség';

  @override
  String get invoiceDetailPaid => 'Fizetve';

  @override
  String get invoiceDetailBillTo => 'Számlázva';

  @override
  String get invoiceDetailItems => 'Tételek';

  @override
  String get invoiceDetailNotes => 'Megjegyzések';

  @override
  String get invoiceDetailSignature => 'Aláírás';

  @override
  String get invoiceDetailMarkedPaidSnackbar =>
      'A számla fizetettként megjelölve!';

  @override
  String get invoiceDetailPdfFailed => 'Nem sikerült a PDF létrehozása';

  @override
  String get clientListTitle => 'Ügyfelek';

  @override
  String get clientListSearchHint => 'Ügyfelek keresése...';

  @override
  String get clientListTotalClients => 'Ügyfelek száma';

  @override
  String get clientListTotalBilled => 'Összesen kiszámlázva';

  @override
  String get clientListEmptySearch => 'Nem található ügyfél';

  @override
  String get clientListEmpty => 'Még nincsenek ügyfelek';

  @override
  String get clientListEmptySubtitle =>
      'Adja hozzá első ügyfelét a számlák készítéséhez';

  @override
  String get clientListAddClient => 'Ügyfél hozzáadása';

  @override
  String get clientListTotalBilledLabel => 'összesen kiszámlázva';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count számla';
  }

  @override
  String get clientCreateTitle => 'Új ügyfél';

  @override
  String get clientEditTitle => 'Ügyfél szerkesztése';

  @override
  String get clientBasicInfo => 'Alapadatok';

  @override
  String get clientNameLabel => 'Teljes név *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'A név megadása kötelező';

  @override
  String get clientNameTooShort => 'Túl rövid név';

  @override
  String get clientEmailLabel => 'E-mail cím *';

  @override
  String get clientEmailHint => 'szamla@ceg.hu';

  @override
  String get clientEmailRequired => 'Az e-mail megadása kötelező';

  @override
  String get clientEmailInvalid => 'Adjon meg érvényes e-mail címet';

  @override
  String get clientPhoneLabel => 'Telefonszám';

  @override
  String get clientPhoneHint => '+36 30 123 4567';

  @override
  String get clientAddressSection => 'Cím';

  @override
  String get clientAddressLabel => 'Utca, házszám';

  @override
  String get clientAddressHint => '123 Business Park, 45. iroda';

  @override
  String get clientCityLabel => 'Város / Ország';

  @override
  String get clientCityHint => 'Dubai, Egyesült Arab Emírségek';

  @override
  String get clientBillingDefaults => 'Számlázási alapértelmezések';

  @override
  String get clientDefaultCurrency => 'Alapértelmezett pénznem';

  @override
  String get clientDefaultTaxRate => 'Alapértelmezett adókulcs (VAT/GST)';

  @override
  String get clientVatLabel => 'VAT / adószám';

  @override
  String get clientVatHint => '123456789012345 (opcionális)';

  @override
  String get clientUpdateButton => 'Ügyfél frissítése';

  @override
  String get clientAddButton => 'Ügyfél hozzáadása';

  @override
  String get clientUpdatedSnackbar => 'Az ügyfél frissítve!';

  @override
  String get clientAddedSnackbar => 'Az ügyfél hozzáadva!';

  @override
  String get clientDetailInvoices => 'Számlák';

  @override
  String get clientDetailTotalBilled => 'Összesen kiszámlázva';

  @override
  String get clientDetailOutstanding => 'Kintlévőség';

  @override
  String get clientDetailEdit => 'Szerkesztés';

  @override
  String get clientDetailNewInvoice => 'Új számla';

  @override
  String get clientDetailEmailClient => 'E-mail küldése az ügyfélnek';

  @override
  String get clientDetailClientDetails => 'Ügyfél adatai';

  @override
  String get clientDetailEmail => 'E-mail';

  @override
  String get clientDetailPhone => 'Telefon';

  @override
  String get clientDetailAddress => 'Cím';

  @override
  String get clientDetailCity => 'Város';

  @override
  String get clientDetailCurrency => 'Pénznem';

  @override
  String get clientDetailTaxRate => 'Adókulcs';

  @override
  String get clientDetailVatNumber => 'VAT-szám';

  @override
  String get clientDetailInvoiceHistory => 'Számlatörténet';

  @override
  String get clientDetailNoInvoices => 'Még nincs számla ehhez az ügyfélhez';

  @override
  String get deleteClientTitle => 'Ügyfél törlése?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'Törli a(z) $clientName ügyfelet? Ez a művelet nem vonható vissza.';
  }

  @override
  String get settingsTitle => 'Beállítások';

  @override
  String get settingsYourName => 'Az Ön neve';

  @override
  String get settingsBackupTitle => 'Számlák biztonsági mentése';

  @override
  String get settingsBackupDescription =>
      'Jelentkezzen be, hogy biztonságosan szinkronizálja adatait, és bárhonnan elérhesse azokat.';

  @override
  String get settingsSignInRegister => 'Bejelentkezés vagy regisztráció';

  @override
  String get settingsProUpsell =>
      'Térjen át Pro verzióra korlátlan számlákért, felhőszinkronizálásért és vízjel nélkül.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'Elérte az ingyenes csomag $limit számlás korlátját. Térjen át Pro verzióra korlátlan számlákért és felhőszinkronizálásért.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'Elérte az ingyenes csomag $limit ügyfeles korlátját. Térjen át Pro verzióra korlátlan ügyfelekért és felhőszinkronizálásért.';
  }

  @override
  String get settingsUpgradePro => 'Frissítés';

  @override
  String get settingsBusinessSection => 'CÉGBEÁLLÍTÁSOK';

  @override
  String get settingsBusinessDetails => 'Cégadatok';

  @override
  String get settingsBusinessDetailsSubtitle => 'Állítsa be cége nevét';

  @override
  String get settingsInvoicePrefix => 'Számlaelőtag';

  @override
  String get settingsDefaultCurrency => 'Alapértelmezett pénznem';

  @override
  String get settingsAppSection => 'ALKALMAZÁSBEÁLLÍTÁSOK';

  @override
  String get settingsDarkMode => 'Sötét mód';

  @override
  String get settingsDailyNotification => 'Napi értesítés';

  @override
  String get settingsDailyNotificationNotSet => 'Nincs beállítva';

  @override
  String get settingsLanguage => 'Nyelv';

  @override
  String get settingsLanguageLabel => 'Magyar';

  @override
  String get languageEnglish => 'Angol';

  @override
  String get languageArabic => 'Arab';

  @override
  String get languageFrench => 'Francia';

  @override
  String get languageSpanish => 'Spanyol';

  @override
  String get languageUrdu => 'Urdu';

  @override
  String get languageChinese => 'Kínai';

  @override
  String get settingsAboutSection => 'NÉVJEGY';

  @override
  String get settingsRateApp => 'Értékelje az alkalmazást';

  @override
  String get settingsHelpSupport => 'Súgó és támogatás';

  @override
  String get settingsPrivacyPolicy => 'Adatvédelmi irányelvek';

  @override
  String get settingsHelpSupportSheet =>
      'Segítségre van szüksége? Írjon a support@invoiceflow.app címre, és 24 órán belül válaszolunk.';

  @override
  String get settingsPrivacySheet =>
      'Adatait a készülékén tároljuk. Személyes adatait soha nem adjuk el és nem osztjuk meg.';

  @override
  String get settingsVersion => 'Verzió';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Kijelentkezés';

  @override
  String get settingsEditProfile => 'Profil szerkesztése';

  @override
  String get settingsProfileNameLabel => 'Teljes név';

  @override
  String get settingsProfileNameHint => 'Az Ön neve';

  @override
  String get settingsBusinessNameLabel => 'Cégnév';

  @override
  String get settingsBusinessNameHint => 'Az Ön Kft.-je';

  @override
  String get settingsBusinessEmailLabel => 'Céges e-mail';

  @override
  String get settingsBusinessEmailHint => 'szamla@ceg.hu';

  @override
  String get settingsPhoneLabel => 'Telefon';

  @override
  String get settingsPhoneHint => '+36 30 123 4567';

  @override
  String get settingsAddressLabel => 'Cím';

  @override
  String get settingsAddressHint => 'Dubai, Egyesült Arab Emírségek';

  @override
  String get settingsBusinessDetailsSaved => 'A cégadatok elmentve!';

  @override
  String get settingsInvoicePrefixTitle => 'Számlaszám-előtag';

  @override
  String get settingsInvoicePrefixHint => 'pl. SZL-, #, Számla-';

  @override
  String get settingsPrefixSaved => 'A számlaelőtag elmentve';

  @override
  String get settingsNotificationScheduled =>
      'A napi értesítés sikeresen beállítva!';

  @override
  String get settingsSignOutTitle => 'Kijelentkezés?';

  @override
  String get settingsSignOutMessage =>
      'Biztosan ki szeretne jelentkezni az InvoiceFlow-ból?';

  @override
  String get settingsSignedOut => 'Sikeres kijelentkezés.';

  @override
  String get statusPaid => 'Fizetve';

  @override
  String get statusOverdue => 'Lejárt';

  @override
  String get statusPending => 'Függőben';

  @override
  String get statusDraft => 'Piszkozat';

  @override
  String get statusCancelled => 'Törölve';

  @override
  String get notificationChannelName => 'Napi emlékeztetők';

  @override
  String get notificationChannelDescription =>
      'Naponta emlékezteti a számlák ellenőrzésére';

  @override
  String get notificationTitle => 'Számla-emlékeztető';

  @override
  String get notificationBody =>
      'Itt az ideje, hogy átnézze a közelmúltbeli számlákat, és nyomon kövesse a függőben lévő kifizetéseket.';

  @override
  String get pdfInvoice => 'SZÁMLA';

  @override
  String get pdfInvoiceNumber => 'Számlaszám:';

  @override
  String get pdfDate => 'Dátum:';

  @override
  String get pdfDueDate => 'Fizetési határidő:';

  @override
  String get pdfBillTo => 'SZÁMLÁZVA:';

  @override
  String get pdfDescription => 'Leírás';

  @override
  String get pdfQty => 'Menny.';

  @override
  String get pdfRate => 'Díj';

  @override
  String get pdfAmount => 'Összeg';

  @override
  String get pdfSubtotal => 'Részösszeg:';

  @override
  String pdfTax(Object taxRate) {
    return 'Adó ($taxRate%):';
  }

  @override
  String get pdfTotal => 'ÖSSZESEN:';

  @override
  String get pdfSignature => 'Aláírás:';

  @override
  String get pdfNotes => 'Megjegyzések:';

  @override
  String get pdfPaymentTerms => 'Fizetési feltételek:';

  @override
  String get pdfThankYou => 'Köszönjük az üzletet!';

  @override
  String get quickAddWebDesign => 'Webdesign';

  @override
  String get quickAddDevelopment => 'Fejlesztés';

  @override
  String get quickAddConsulting => 'Tanácsadás';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Tartalomírás';

  @override
  String get paywallTitle => 'Az InvoiceFlow Pro feloldása';

  @override
  String get paywallSubtitle =>
      'Korlátlan használat és szinkronizálás mindenhol. Bármikor lemondható.';

  @override
  String get paywallFeatureUnlimited => 'Korlátlan számlák és ügyfelek';

  @override
  String get paywallFeatureSync => 'Felhőszinkronizálás eszközök között';

  @override
  String get paywallFeatureNoWatermark => 'Vízjel nélkül, örökre';

  @override
  String get paywallMonthly => 'Havi';

  @override
  String get paywallMonthlySub => 'Havi elszámolás';

  @override
  String get paywallYearly => 'Éves';

  @override
  String get paywallYearlySub => 'Legjobb ajánlat — 2 hónap ingyen';

  @override
  String get paywallRestore => 'Vásárlások visszaállítása';

  @override
  String get paywallTerms =>
      'Az előfizetések automatikusan megújulnak. Kezelje az alkalmazásbolt beállításaiban.';

  @override
  String get purchaseSuccessTitle => 'Ön Pro felhasználó!';

  @override
  String get purchaseSuccessSubtitle =>
      'A korlátlan számlák, a felhőszinkronizálás és a vízjelmentes használat elérhetővé vált. Köszönjük!';

  @override
  String get purchaseSuccessContinue => 'Folytatás';

  @override
  String get paywallLoading => 'Csomagok betöltése…';

  @override
  String get paywallLoadError =>
      'A csomagok betöltése nem sikerült. Ellenőrizze a kapcsolatot, és próbálja újra.';

  @override
  String get paywallNoOffering => 'Jelenleg nincs elérhető csomag.';

  @override
  String get purchaseRestored => 'A vásárlások sikeresen visszaállítva';

  @override
  String get purchaseErrorGeneric =>
      'A vásárlás sikertelen volt. Kérjük, próbálja újra.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'A Pro aktív — korlátlan számlák és ügyfelek vízjel nélkül';

  @override
  String get settingsFreePlan => 'Ingyenes csomag';

  @override
  String get settingsFreeHint =>
      'Frissítsen a korlátlan számlákért, felhőszinkronizálásért és további előnyökért';

  @override
  String get settingsUpgradeToPro => 'Frissítés Pro-ra';

  @override
  String get settingsManageSubscription => 'Előfizetés kezelése';

  @override
  String get customerCenterFailed => 'Az előfizetés kezelése nem nyitható meg.';

  @override
  String get onboardingSkip => 'Kihagyás';

  @override
  String get onboardingNext => 'Tovább';

  @override
  String get onboardingGetStarted => 'Kezdés';

  @override
  String get onboardingWelcomeTitle => 'Számlák 2 perc alatt';

  @override
  String get onboardingWelcomeBody =>
      'Készítsen professzionális PDF-számlákat ügyfeleinek — gyorsan és igényesen.';

  @override
  String get onboardingSyncTitle => 'Szinkronizálás mindenhol';

  @override
  String get onboardingSyncBody =>
      'Jelentkezzen be, hogy biztonságosan mentse adatait a felhőbe, és bármilyen eszközről elérje azokat.';

  @override
  String get onboardingProTitle => 'Korlátlan használat a Pro-val';

  @override
  String get onboardingProBody =>
      'Oldja fel a korlátlan számlákat, a felhőszinkronizálást és a vízjel eltávolítását az InvoiceFlow Pro-val.';

  @override
  String get settingsAccentColor => 'Kiemelőszín';

  @override
  String get settingsAccentColorHint =>
      'Személyre szabhatja az alkalmazást a kiválasztott színnel.';

  @override
  String get settingsCountry => 'Ország';

  @override
  String get settingsTaxId => 'Adószám';

  @override
  String get settingsTaxIdNotSet => 'Nincs beállítva';

  @override
  String get settingsTaxIdHint => 'pl. 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Az adószám elmentve';

  @override
  String get catalogTitle => 'Termékek és szolgáltatások';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tétel',
      one: '$count tétel',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'Még nincsenek termékek';

  @override
  String get catalogEmptySubtitle =>
      'Mentse el az újrahasznosítható termékeket és szolgáltatásokat, hogy gyorsabban adhassa őket a számlákhoz.';

  @override
  String get catalogFromSaved => 'A katalógusából';

  @override
  String get catalogSaveToCatalog => 'Mentés a katalógusba újrafelhasználáshoz';

  @override
  String get catalogAddSnackbar => 'Hozzáadva a katalógushoz';

  @override
  String get catalogDeleteTitle => 'Tétel törlése?';

  @override
  String catalogDeleteMessage(String description) {
    return 'Törli a következőt: \"$description\"? Ez a művelet nem vonható vissza.';
  }

  @override
  String get commonDone => 'Kész';

  @override
  String get estimateListTitle => 'Árajánlatok';

  @override
  String get estimateListSearchHint => 'Árajánlatok keresése…';

  @override
  String get estimateListEmpty => 'Még nincsenek árajánlatok';

  @override
  String get estimateListTabAll => 'Összes';

  @override
  String get estimateListTabDraft => 'Piszkozat';

  @override
  String get estimateListTabSent => 'Elküldve';

  @override
  String get estimateListTabAccepted => 'Elfogadva';

  @override
  String get estimateListTabExpired => 'Lejárt';

  @override
  String get estimateCreateTitle => 'Új árajánlat';

  @override
  String get estimateEditTitle => 'Árajánlat szerkesztése';

  @override
  String get estimateCreatedSnackbar => 'Az árajánlat elmentve';

  @override
  String get estimateUpdatedSnackbar => 'Az árajánlat frissítve';

  @override
  String get estimateIssueDate => 'Kiadás dátuma';

  @override
  String get estimateExpiryDate => 'Lejárat dátuma';

  @override
  String get estimateExpiresPrefix => 'Lejár: ';

  @override
  String get estimateConvertToInvoice => 'Átalakítás számlává';

  @override
  String get estimateConvertedSnackbar => 'Az árajánlat számlává alakítva';

  @override
  String get estimateConvertFailed => 'Az árajánlat nem alakítható át';

  @override
  String get estimateMarkSent => 'Elküldöttként jelölés';

  @override
  String get estimateMarkAccepted => 'Elfogadottként jelölés';

  @override
  String get estimateMarkDeclined => 'Elutasítottként jelölés';

  @override
  String get estimateConvertedTitle => 'Átalakítva';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'Számlává alakítva: $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'ÁRAJÁNLAT ÖSSZESEN';

  @override
  String get estimateStatusSent => 'Elküldve';

  @override
  String get estimateStatusAccepted => 'Elfogadva';

  @override
  String get estimateStatusDeclined => 'Elutasítva';

  @override
  String get estimateStatusExpired => 'Lejárt';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nyitva',
      one: '1 nyitva',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'Árajánlat törlése?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'Törli a következőt: \"$estimateNumber\"? Ez a művelet nem vonható vissza.';
  }

  @override
  String get estimatePdfFailed => 'Nem sikerült a PDF létrehozása';

  @override
  String get pdfEstimate => 'ÁRAJÁNLAT';

  @override
  String get pdfEstimateNumber => 'Árajánlatszám:';

  @override
  String get pdfValidUntil => 'Érvényes eddig:';

  @override
  String get invoiceDetailPaymentTerms => 'Fizetési feltételek';

  @override
  String get recurringListTitle => 'Ismétlődő számlák';

  @override
  String get recurringListEmpty => 'Még nincsenek ismétlődő számlák';

  @override
  String get recurringListEmptySubtitle =>
      'Állítson be automatikus számlákat rendszeres ügyfelei és szolgáltatásai számára.';

  @override
  String get recurringCreateTitle => 'Új ismétlődő';

  @override
  String get recurringEditTitle => 'Ismétlődő szerkesztése';

  @override
  String get recurringCreatedSnackbar => 'Az ismétlődő számla elmentve';

  @override
  String get recurringUpdatedSnackbar => 'Az ismétlődő számla frissítve';

  @override
  String get recurringDeleteTitle => 'Ismétlődő számla törlése?';

  @override
  String recurringDeleteMessage(String title) {
    return 'Törli a következőt: \"$title\"? A meglévő számlák nem törlődnek.';
  }

  @override
  String get recurringTitleLabel => 'Cím';

  @override
  String get recurringTitleHint => 'pl. havi megbízási díj';

  @override
  String get recurringClientLabel => 'Ügyfél';

  @override
  String get recurringFrequencyLabel => 'Gyakoriság';

  @override
  String get recurringFrequencyWeekly => 'Heti';

  @override
  String get recurringFrequencyBiweekly => 'Kétheti';

  @override
  String get recurringFrequencyMonthly => 'Havi';

  @override
  String get recurringFrequencyQuarterly => 'Negyedéves';

  @override
  String get recurringFrequencyYearly => 'Éves';

  @override
  String get recurringNextRun => 'Következő futás';

  @override
  String get recurringDueDays => 'Esedékes:';

  @override
  String get recurringDays => 'nap';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aktív',
      one: '1 aktív',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'Jelentések';

  @override
  String get reportsSubtitle => 'Üzleti elemzések';

  @override
  String get reportsEmpty =>
      'Hozzon létre számlákat a jelentések megtekintéséhez';

  @override
  String get reportsCollected => 'Befolyt';

  @override
  String get reportsOutstanding => 'Kintlévőség';

  @override
  String get reportsMonthlyRevenue => 'Havi bevétel';

  @override
  String get reportsLast6Months => 'Utolsó 6 hónap';

  @override
  String get reportsByStatus => 'Státusz szerint';

  @override
  String get reportsTopClients => 'Legjobb ügyfelek';

  @override
  String get paymentLinkTitle => 'Fizetési hivatkozás';

  @override
  String get paymentLinkNotSet =>
      'Nincs fizetési hivatkozás beállítva a Beállításokban';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'A fizetési hivatkozás szerepel a számla PDF-jén, és a számlamenüből másolható.';

  @override
  String get paymentLinkSaved => 'A fizetési hivatkozás elmentve';

  @override
  String get settingsPaymentLinkNotSet => 'Nincs beállítva';

  @override
  String get invoiceDetailCopyPaymentLink => 'Fizetési hivatkozás másolása';

  @override
  String get paymentLinkCopied => 'A fizetési hivatkozás kimásolva';

  @override
  String get pdfPayOnline => 'Fizetés online';

  @override
  String get exportXml => 'XML exportálása';

  @override
  String get exportXmlFailed => 'Nem sikerült az XML exportálása';
}
