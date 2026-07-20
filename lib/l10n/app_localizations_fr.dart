// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Des factures professionnelles en 2 minutes';

  @override
  String get bottomNavDashboard => 'Tableau de bord';

  @override
  String get bottomNavInvoices => 'Factures';

  @override
  String get bottomNavClients => 'Clients';

  @override
  String get bottomNavSettings => 'Paramètres';

  @override
  String get commonCancel => 'Annuler';

  @override
  String get commonDelete => 'Supprimer';

  @override
  String get commonSave => 'Enregistrer';

  @override
  String get commonSearch => 'Rechercher';

  @override
  String get commonBack => 'Retour';

  @override
  String get commonContinue => 'Continuer';

  @override
  String get commonAdd => 'Ajouter';

  @override
  String get commonEdit => 'Modifier';

  @override
  String get commonCreate => 'Créer';

  @override
  String get commonClear => 'Effacer';

  @override
  String get commonView => 'Voir';

  @override
  String get commonShare => 'Partager';

  @override
  String get commonExportPdf => 'Exporter en PDF';

  @override
  String get commonSharePdf => 'Partager le PDF';

  @override
  String get commonSaveChanges => 'Enregistrer les modifications';

  @override
  String get commonRequired => 'Requis';

  @override
  String get commonInvalid => 'Invalide';

  @override
  String get commonSendLink => 'Envoyer le lien';

  @override
  String get commonGeneratingPdf => 'Génération du PDF...';

  @override
  String get dashboardGreetingMorning => 'Bonjour';

  @override
  String get dashboardGreetingAfternoon => 'Bon après-midi';

  @override
  String get dashboardGreetingEvening => 'Bonsoir';

  @override
  String get dashboardSubtitle => 'Aperçu de votre activité';

  @override
  String get dashboardOutstanding => 'Impayé';

  @override
  String get dashboardOverdue => 'En retard';

  @override
  String get dashboardThisMonth => 'Ce mois-ci';

  @override
  String get dashboardInvoices => 'factures';

  @override
  String dashboardPaidCount(Object count) {
    return '$count payée(s)';
  }

  @override
  String get dashboardRecentInvoices => 'Factures récentes';

  @override
  String get dashboardSeeAll => 'Voir tout →';

  @override
  String get dashboardNewInvoice => 'Nouvelle facture';

  @override
  String get dashboardNoInvoicesYet => 'Aucune facture pour l\'instant';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Créez votre première facture professionnelle en moins de 2 minutes';

  @override
  String get dashboardCreateInvoice => 'Créer une facture';

  @override
  String get dashboardMarkPaid => 'Marquer payée';

  @override
  String get dashboardDuePrefix => 'Échéance ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days jours de retard';
  }

  @override
  String get deleteInvoiceTitle => 'Supprimer la facture ?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'Supprimer $invoiceNumber ? Cette action est irréversible.';
  }

  @override
  String get loginHeading => 'Bon retour';

  @override
  String get loginSubtitle => 'Connectez-vous à votre compte InvoiceFlow';

  @override
  String get loginEmailLabel => 'Adresse e-mail';

  @override
  String get loginEmailHint => 'vous@exemple.com';

  @override
  String get loginEmailRequired => 'L\'e-mail est requis';

  @override
  String get loginEmailInvalid => 'Saisissez un e-mail valide';

  @override
  String get loginPasswordLabel => 'Mot de passe';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'Le mot de passe est requis';

  @override
  String get loginPasswordMinLength =>
      'Le mot de passe doit contenir au moins 6 caractères';

  @override
  String get loginForgotPassword => 'Mot de passe oublié ?';

  @override
  String get loginSignIn => 'Se connecter';

  @override
  String get loginOrContinueWith => 'ou continuer avec';

  @override
  String get loginContinueWithGoogle => 'Continuer avec Google';

  @override
  String get loginNoAccount => 'Pas encore de compte ? ';

  @override
  String get loginSignUp => 'S\'inscrire';

  @override
  String get loginResetPasswordTitle => 'Réinitialiser le mot de passe';

  @override
  String get loginResetPasswordMessage =>
      'Saisissez votre e-mail et nous vous enverrons un lien de réinitialisation.';

  @override
  String get loginResetPasswordHint => 'vous@exemple.com';

  @override
  String get loginResetLinkSent =>
      'Lien de réinitialisation envoyé ! Vérifiez vos e-mails.';

  @override
  String get loginResetLinkFailed =>
      'Échec de l\'envoi du lien de réinitialisation.';

  @override
  String get registerHeading => 'Créer un compte';

  @override
  String get registerSubtitle =>
      'Commencez à envoyer des factures professionnelles dès aujourd\'hui';

  @override
  String get registerNameLabel => 'Nom complet';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => 'Le nom est requis';

  @override
  String get registerNameMinLength =>
      'Le nom doit contenir au moins 2 caractères';

  @override
  String get registerEmailLabel => 'Adresse e-mail';

  @override
  String get registerEmailHint => 'vous@exemple.com';

  @override
  String get registerEmailRequired => 'L\'e-mail est requis';

  @override
  String get registerEmailInvalid => 'Saisissez un e-mail valide';

  @override
  String get registerPasswordLabel => 'Mot de passe';

  @override
  String get registerPasswordHint => 'Au moins 6 caractères';

  @override
  String get registerPasswordRequired => 'Le mot de passe est requis';

  @override
  String get registerPasswordMinLength =>
      'Le mot de passe doit contenir au moins 6 caractères';

  @override
  String get registerConfirmPasswordLabel => 'Confirmer le mot de passe';

  @override
  String get registerConfirmPasswordHint => 'Répétez votre mot de passe';

  @override
  String get registerConfirmPasswordRequired =>
      'Veuillez confirmer votre mot de passe';

  @override
  String get registerPasswordsDoNotMatch =>
      'Les mots de passe ne correspondent pas';

  @override
  String get registerCreateAccount => 'Créer un compte';

  @override
  String get registerHaveAccount => 'Déjà un compte ? ';

  @override
  String get registerSignIn => 'Se connecter';

  @override
  String get authErrorWeakPassword => 'Le mot de passe est trop faible';

  @override
  String get authErrorEmailAlreadyInUse => 'Ce compte existe déjà';

  @override
  String get authErrorUserNotFound =>
      'Aucun utilisateur trouvé avec cet e-mail';

  @override
  String get authErrorWrongPassword => 'Mot de passe incorrect';

  @override
  String get authErrorInvalidEmail => 'Adresse e-mail invalide';

  @override
  String get authErrorTooManyRequests =>
      'Trop de tentatives. Réessayez plus tard.';

  @override
  String get authErrorDefault => 'Échec de l\'authentification. Réessayez.';

  @override
  String get authErrorGoogleSignInFailed => 'Échec de la connexion Google.';

  @override
  String get invoiceListTitle => 'Factures';

  @override
  String get invoiceListSearchHint => 'Rechercher des factures...';

  @override
  String get invoiceListSortDate => 'Trier par date';

  @override
  String get invoiceListSortAmount => 'Trier par montant';

  @override
  String get invoiceListSortClient => 'Trier par client';

  @override
  String get invoiceListTabAll => 'Toutes';

  @override
  String get invoiceListTabPaid => 'Payées';

  @override
  String get invoiceListTabPending => 'En attente';

  @override
  String get invoiceListTabOverdue => 'En retard';

  @override
  String get invoiceListTabDraft => 'Brouillons';

  @override
  String get invoiceListEmpty => 'Aucune facture trouvée';

  @override
  String get invoiceCreateTitle => 'Nouvelle facture';

  @override
  String get invoiceEditTitle => 'Modifier la facture';

  @override
  String get invoiceSaveDraft => 'Enregistrer le brouillon';

  @override
  String get invoiceStepClient => 'Client';

  @override
  String get invoiceStepItems => 'Articles';

  @override
  String get invoiceStepReview => 'Révision';

  @override
  String get invoiceSelectClient => 'Sélectionner un client';

  @override
  String get invoiceSelectClientSubtitle =>
      'Choisissez le destinataire de cette facture';

  @override
  String get invoiceSearchClients => 'Rechercher des clients...';

  @override
  String get invoiceAddNewClient => 'Ajouter un client';

  @override
  String get invoiceNoClientsFound => 'Aucun client trouvé';

  @override
  String get invoiceAddLineItem => 'Ajouter une ligne';

  @override
  String get invoiceItemDescription => 'Description';

  @override
  String get invoiceItemDescriptionHint => 'ex. Développement Web';

  @override
  String get invoiceItemQuickAdd => 'Ajout rapide :';

  @override
  String get invoiceItemQty => 'Quantité';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Tarif';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Ajouter l\'article';

  @override
  String get invoiceLineItems => 'Lignes de facture';

  @override
  String get invoiceLineItemsSubtitle => 'Ajoutez des services ou produits';

  @override
  String get invoiceNoItems =>
      'Aucun article pour l\'instant. Ajoutez votre premier article.';

  @override
  String get invoiceTaxRate => 'Taux de taxe (%)';

  @override
  String get invoiceSubtotal => 'Sous-total';

  @override
  String invoiceTax(Object taxRate) {
    return 'Taxe ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'TOTAL';

  @override
  String get invoiceReviewHeading => 'Réviser et finaliser';

  @override
  String get invoiceReviewSubtitle =>
      'Définissez les dates, ajoutez des notes, un logo et une signature';

  @override
  String get invoiceCompanyLogo => 'Logo de l\'entreprise';

  @override
  String get invoiceAddLogo => 'Ajouter un logo';

  @override
  String get invoiceInvoiceDate => 'Date de facture';

  @override
  String get invoiceDueDate => 'Date d\'échéance';

  @override
  String get invoiceNotesLabel => 'Notes (facultatif)';

  @override
  String get invoiceNotesHint => 'Merci pour votre confiance !';

  @override
  String get invoicePaymentTermsLabel => 'Conditions de paiement (facultatif)';

  @override
  String get invoicePaymentTermsHint => 'Paiement sous 30 jours';

  @override
  String get invoiceSignatureLabel => 'Signature';

  @override
  String get invoiceSignatureOverwrite =>
      'Signature existante sauvegardée. Dessinez dessus pour remplacer.';

  @override
  String get invoiceCreatedSnackbar => 'Facture créée !';

  @override
  String get invoiceUpdatedSnackbar => 'Facture mise à jour !';

  @override
  String get invoiceDetailTitle => 'FACTURE';

  @override
  String get invoiceDetailMarkAsPaid => 'Marquer comme payée';

  @override
  String get invoiceDetailTotalAmount => 'Montant total';

  @override
  String get invoiceDetailIssued => 'Émise';

  @override
  String get invoiceDetailDue => 'Échéance';

  @override
  String get invoiceDetailPaid => 'Payée';

  @override
  String get invoiceDetailBillTo => 'Facturer à';

  @override
  String get invoiceDetailItems => 'Articles';

  @override
  String get invoiceDetailNotes => 'Notes';

  @override
  String get invoiceDetailSignature => 'Signature';

  @override
  String get invoiceDetailMarkedPaidSnackbar => 'Facture marquée comme payée !';

  @override
  String get invoiceDetailPdfFailed => 'Échec de la génération du PDF';

  @override
  String get clientListTitle => 'Clients';

  @override
  String get clientListSearchHint => 'Rechercher des clients...';

  @override
  String get clientListTotalClients => 'Total des clients';

  @override
  String get clientListTotalBilled => 'Total facturé';

  @override
  String get clientListEmptySearch => 'Aucun client trouvé';

  @override
  String get clientListEmpty => 'Aucun client pour l\'instant';

  @override
  String get clientListEmptySubtitle =>
      'Ajoutez votre premier client pour commencer à créer des factures';

  @override
  String get clientListAddClient => 'Ajouter un client';

  @override
  String get clientListTotalBilledLabel => 'total facturé';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count facture';
  }

  @override
  String get clientCreateTitle => 'Nouveau client';

  @override
  String get clientEditTitle => 'Modifier le client';

  @override
  String get clientBasicInfo => 'Informations de base';

  @override
  String get clientNameLabel => 'Nom complet *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'Le nom est requis';

  @override
  String get clientNameTooShort => 'Nom trop court';

  @override
  String get clientEmailLabel => 'Adresse e-mail *';

  @override
  String get clientEmailHint => 'facturation@entreprise.com';

  @override
  String get clientEmailRequired => 'L\'e-mail est requis';

  @override
  String get clientEmailInvalid => 'Saisissez un e-mail valide';

  @override
  String get clientPhoneLabel => 'Numéro de téléphone';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'Adresse';

  @override
  String get clientAddressLabel => 'Adresse';

  @override
  String get clientAddressHint => '123 Business Park, Bureau 45';

  @override
  String get clientCityLabel => 'Ville / Pays';

  @override
  String get clientCityHint => 'Dubaï, Émirats Arabes Unis';

  @override
  String get clientBillingDefaults => 'Paramètres de facturation';

  @override
  String get clientDefaultCurrency => 'Devise par défaut';

  @override
  String get clientDefaultTaxRate => 'Taux de taxe par défaut (TVA/TPS)';

  @override
  String get clientVatLabel => 'Numéro de TVA / Taxe';

  @override
  String get clientVatHint => '123456789012345 (facultatif)';

  @override
  String get clientUpdateButton => 'Mettre à jour le client';

  @override
  String get clientAddButton => 'Ajouter le client';

  @override
  String get clientUpdatedSnackbar => 'Client mis à jour !';

  @override
  String get clientAddedSnackbar => 'Client ajouté !';

  @override
  String get clientDetailInvoices => 'Factures';

  @override
  String get clientDetailTotalBilled => 'Total facturé';

  @override
  String get clientDetailOutstanding => 'Impayé';

  @override
  String get clientDetailEdit => 'Modifier';

  @override
  String get clientDetailNewInvoice => 'Nouvelle facture';

  @override
  String get clientDetailEmailClient => 'Envoyer un e-mail';

  @override
  String get clientDetailClientDetails => 'Détails du client';

  @override
  String get clientDetailEmail => 'E-mail';

  @override
  String get clientDetailPhone => 'Téléphone';

  @override
  String get clientDetailAddress => 'Adresse';

  @override
  String get clientDetailCity => 'Ville';

  @override
  String get clientDetailCurrency => 'Devise';

  @override
  String get clientDetailTaxRate => 'Taux de taxe';

  @override
  String get clientDetailVatNumber => 'Numéro de TVA';

  @override
  String get clientDetailInvoiceHistory => 'Historique des factures';

  @override
  String get clientDetailNoInvoices => 'Aucune facture pour ce client';

  @override
  String get deleteClientTitle => 'Supprimer le client ?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'Supprimer $clientName ? Cette action est irréversible.';
  }

  @override
  String get settingsTitle => 'Paramètres';

  @override
  String get settingsYourName => 'Votre nom';

  @override
  String get settingsBackupTitle => 'Sauvegarder vos factures';

  @override
  String get settingsBackupDescription =>
      'Connectez-vous pour synchroniser vos données en toute sécurité et y accéder depuis n\'importe où.';

  @override
  String get settingsSignInRegister => 'Se connecter ou s\'inscrire';

  @override
  String get settingsProUpsell =>
      'Passez à Pro pour des factures illimitées, la synchronisation cloud et sans filigrane.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'Vous avez atteint la limite gratuite de $limit factures. Passez à Pro pour des factures illimitées et la synchronisation cloud.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'Vous avez atteint la limite gratuite de $limit clients. Passez à Pro pour des clients illimités et la synchronisation cloud.';
  }

  @override
  String get settingsUpgradePro => 'Passer à Pro';

  @override
  String get settingsBusinessSection => 'PARAMÈTRES ENTREPRISE';

  @override
  String get settingsBusinessDetails => 'Détails de l\'entreprise';

  @override
  String get settingsBusinessDetailsSubtitle =>
      'Définissez le nom de votre entreprise';

  @override
  String get settingsInvoicePrefix => 'Préfixe de facture';

  @override
  String get settingsDefaultCurrency => 'Devise par défaut';

  @override
  String get settingsAppSection => 'PARAMÈTRES DE L\'APPLICATION';

  @override
  String get settingsDarkMode => 'Mode sombre';

  @override
  String get settingsDailyNotification => 'Notification quotidienne';

  @override
  String get settingsDailyNotificationNotSet => 'Non défini';

  @override
  String get settingsLanguage => 'Langue';

  @override
  String get settingsLanguageLabel => 'Français';

  @override
  String get languageEnglish => 'Anglais';

  @override
  String get languageArabic => 'Arabe';

  @override
  String get languageFrench => 'Français';

  @override
  String get languageSpanish => 'Espagnol';

  @override
  String get languageUrdu => 'Ourdou';

  @override
  String get languageChinese => 'Chinois';

  @override
  String get settingsAboutSection => 'À PROPOS';

  @override
  String get settingsRateApp => 'Noter l\'application';

  @override
  String get settingsHelpSupport => 'Aide et support';

  @override
  String get settingsPrivacyPolicy => 'Politique de confidentialité';

  @override
  String get settingsVersion => 'Version';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Se déconnecter';

  @override
  String get settingsEditProfile => 'Modifier le profil';

  @override
  String get settingsProfileNameLabel => 'Nom complet';

  @override
  String get settingsProfileNameHint => 'Votre nom';

  @override
  String get settingsBusinessNameLabel => 'Nom de l\'entreprise';

  @override
  String get settingsBusinessNameHint => 'Votre Société SARL';

  @override
  String get settingsBusinessEmailLabel => 'E-mail professionnel';

  @override
  String get settingsBusinessEmailHint => 'facturation@entreprise.com';

  @override
  String get settingsPhoneLabel => 'Téléphone';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'Adresse';

  @override
  String get settingsAddressHint => 'Dubaï, Émirats Arabes Unis';

  @override
  String get settingsBusinessDetailsSaved =>
      'Détails de l\'entreprise enregistrés !';

  @override
  String get settingsInvoicePrefixTitle => 'Préfixe du numéro de facture';

  @override
  String get settingsInvoicePrefixHint => 'ex. INV-, #, Fact-';

  @override
  String get settingsNotificationScheduled =>
      'Notification quotidienne programmée avec succès !';

  @override
  String get settingsSignOutTitle => 'Se déconnecter ?';

  @override
  String get settingsSignOutMessage =>
      'Êtes-vous sûr de vouloir vous déconnecter d\'InvoiceFlow ?';

  @override
  String get settingsSignedOut => 'Déconnexion réussie.';

  @override
  String get statusPaid => 'Payée';

  @override
  String get statusOverdue => 'En retard';

  @override
  String get statusPending => 'En attente';

  @override
  String get statusDraft => 'Brouillon';

  @override
  String get statusCancelled => 'Annulée';

  @override
  String get notificationChannelName => 'Rappels quotidiens';

  @override
  String get notificationChannelDescription =>
      'Vous rappelle de vérifier vos factures quotidiennement';

  @override
  String get notificationTitle => 'Rappel de facture';

  @override
  String get notificationBody =>
      'Il est temps de vérifier vos factures récentes et de suivre les paiements en attente.';

  @override
  String get pdfInvoice => 'FACTURE';

  @override
  String get pdfInvoiceNumber => 'Facture n° :';

  @override
  String get pdfDate => 'Date :';

  @override
  String get pdfDueDate => 'Date d\'échéance :';

  @override
  String get pdfBillTo => 'FACTURER À :';

  @override
  String get pdfDescription => 'Description';

  @override
  String get pdfQty => 'Qté';

  @override
  String get pdfRate => 'Tarif';

  @override
  String get pdfAmount => 'Montant';

  @override
  String get pdfSubtotal => 'Sous-total :';

  @override
  String pdfTax(Object taxRate) {
    return 'Taxe ($taxRate%) :';
  }

  @override
  String get pdfTotal => 'TOTAL :';

  @override
  String get pdfSignature => 'Signature :';

  @override
  String get pdfNotes => 'Notes :';

  @override
  String get pdfPaymentTerms => 'Conditions de paiement :';

  @override
  String get pdfThankYou => 'Merci pour votre confiance !';

  @override
  String get quickAddWebDesign => 'Conception Web';

  @override
  String get quickAddDevelopment => 'Développement';

  @override
  String get quickAddConsulting => 'Consulting';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Rédaction de contenu';

  @override
  String get paywallTitle => 'Débloquez InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'Sans limite et synchronisé partout. Résiliable à tout moment.';

  @override
  String get paywallFeatureUnlimited => 'Factures et clients illimités';

  @override
  String get paywallFeatureSync => 'Synchronisation cloud multi-appareils';

  @override
  String get paywallFeatureNoWatermark => 'Sans filigrane, jamais';

  @override
  String get paywallMonthly => 'Mensuel';

  @override
  String get paywallMonthlySub => 'Facturé mensuellement';

  @override
  String get paywallYearly => 'Annuel';

  @override
  String get paywallYearlySub => 'Meilleur rapport — 2 mois offerts';

  @override
  String get paywallRestore => 'Restaurer les achats';

  @override
  String get paywallTerms =>
      'Renouvellement automatique. Gérez dans les paramètres de votre store.';

  @override
  String get purchaseSuccessTitle => 'Vous êtes Pro !';

  @override
  String get purchaseSuccessSubtitle =>
      'Factures illimitées, synchronisation cloud et sans filigrane débloquées. Merci !';

  @override
  String get purchaseSuccessContinue => 'Continuer';

  @override
  String get onboardingSkip => 'Passer';

  @override
  String get onboardingNext => 'Suivant';

  @override
  String get onboardingGetStarted => 'Commencer';

  @override
  String get onboardingWelcomeTitle => 'Des factures en 2 minutes';

  @override
  String get onboardingWelcomeBody =>
      'Créez des factures PDF professionnelles pour vos clients — rapidement et avec style.';

  @override
  String get onboardingSyncTitle => 'Synchronisez partout';

  @override
  String get onboardingSyncBody =>
      'Connectez-vous pour sauvegarder vos données sur le cloud en toute sécurité et y accéder depuis n\'importe quel appareil.';

  @override
  String get onboardingProTitle => 'Passez à Pro sans limite';

  @override
  String get onboardingProBody =>
      'Débloquez les factures illimitées, la synchro cloud et retirez le filigrane avec InvoiceFlow Pro.';

  @override
  String get settingsAccentColor => 'Couleur d\'accent';

  @override
  String get settingsAccentColorHint =>
      'Personnalisez l\'application avec la couleur de votre choix.';

  @override
  String get commonDone => 'Terminé';
}
