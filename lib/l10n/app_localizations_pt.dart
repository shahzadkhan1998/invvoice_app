// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Faturas profissionais em 2 minutos';

  @override
  String get bottomNavDashboard => 'Painel';

  @override
  String get bottomNavInvoices => 'Faturas';

  @override
  String get bottomNavClients => 'Clientes';

  @override
  String get bottomNavSettings => 'Definições';

  @override
  String get commonCancel => 'Cancelar';

  @override
  String get commonDelete => 'Eliminar';

  @override
  String get commonSave => 'Guardar';

  @override
  String get commonSearch => 'Pesquisar';

  @override
  String get commonBack => 'Voltar';

  @override
  String get commonContinue => 'Continuar';

  @override
  String get commonAdd => 'Adicionar';

  @override
  String get commonEdit => 'Editar';

  @override
  String get commonCreate => 'Criar';

  @override
  String get commonClear => 'Limpar';

  @override
  String get commonView => 'Ver';

  @override
  String get commonShare => 'Partilhar';

  @override
  String get commonExportPdf => 'Exportar PDF';

  @override
  String get commonSharePdf => 'Partilhar PDF';

  @override
  String get commonSaveChanges => 'Guardar alterações';

  @override
  String get commonRequired => 'Obrigatório';

  @override
  String get commonInvalid => 'Inválido';

  @override
  String get commonSendLink => 'Enviar link';

  @override
  String get commonGeneratingPdf => 'A gerar PDF...';

  @override
  String get dashboardGreetingMorning => 'Bom dia';

  @override
  String get dashboardGreetingAfternoon => 'Boa tarde';

  @override
  String get dashboardGreetingEvening => 'Boa noite';

  @override
  String get dashboardSubtitle => 'Aqui está a visão geral do seu negócio';

  @override
  String get dashboardOutstanding => 'Em dívida';

  @override
  String get dashboardOverdue => 'Em atraso';

  @override
  String get dashboardThisMonth => 'Este mês';

  @override
  String get dashboardInvoices => 'faturas';

  @override
  String dashboardPaidCount(Object count) {
    return '$count pagas';
  }

  @override
  String get dashboardRecentInvoices => 'Faturas recentes';

  @override
  String get dashboardSeeAll => 'Ver tudo';

  @override
  String get dashboardNotifications => 'Notificações';

  @override
  String get dashboardNotificationsHint =>
      'Mantenha-se a par do fluxo de caixa revendo regularmente as faturas em atraso e pendentes.';

  @override
  String get dashboardNewInvoice => 'Nova fatura';

  @override
  String get dashboardNoInvoicesYet => 'Ainda não há faturas';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Crie a sua primeira fatura profissional em menos de 2 minutos';

  @override
  String get dashboardCreateInvoice => 'Criar fatura';

  @override
  String get dashboardMarkPaid => 'Marcar como paga';

  @override
  String get dashboardDuePrefix => 'Vencimento ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days dias em atraso';
  }

  @override
  String get deleteInvoiceTitle => 'Eliminar fatura?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return 'Eliminar $invoiceNumber? Esta ação não pode ser anulada.';
  }

  @override
  String get loginHeading => 'Bem-vindo de volta';

  @override
  String get loginSubtitle => 'Inicie sessão na sua conta InvoiceFlow';

  @override
  String get loginEmailLabel => 'Endereço de email';

  @override
  String get loginEmailHint => 'voce@exemplo.com';

  @override
  String get loginEmailRequired => 'O email é obrigatório';

  @override
  String get loginEmailInvalid => 'Introduza um email válido';

  @override
  String get loginPasswordLabel => 'Palavra-passe';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'A palavra-passe é obrigatória';

  @override
  String get loginPasswordMinLength =>
      'A palavra-passe deve ter pelo menos 6 caracteres';

  @override
  String get loginForgotPassword => 'Esqueceu-se da palavra-passe?';

  @override
  String get loginSignIn => 'Iniciar sessão';

  @override
  String get loginOrContinueWith => 'ou continuar com';

  @override
  String get loginContinueWithGoogle => 'Continuar com Google';

  @override
  String get loginNoAccount => 'Não tem uma conta? ';

  @override
  String get loginSignUp => 'Criar conta';

  @override
  String get loginResetPasswordTitle => 'Repor palavra-passe';

  @override
  String get loginResetPasswordMessage =>
      'Introduza o seu email e enviaremos um link de reposição.';

  @override
  String get loginResetPasswordHint => 'voce@exemplo.com';

  @override
  String get loginResetLinkSent =>
      'Link de reposição enviado! Verifique o seu email.';

  @override
  String get loginResetLinkFailed =>
      'Não foi possível enviar o link de reposição.';

  @override
  String get registerHeading => 'Criar conta';

  @override
  String get registerSubtitle =>
      'Comece a enviar faturas profissionais ainda hoje';

  @override
  String get registerNameLabel => 'Nome completo';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => 'O nome é obrigatório';

  @override
  String get registerNameMinLength => 'O nome deve ter pelo menos 2 caracteres';

  @override
  String get registerEmailLabel => 'Endereço de email';

  @override
  String get registerEmailHint => 'voce@exemplo.com';

  @override
  String get registerEmailRequired => 'O email é obrigatório';

  @override
  String get registerEmailInvalid => 'Introduza um email válido';

  @override
  String get registerPasswordLabel => 'Palavra-passe';

  @override
  String get registerPasswordHint => 'Pelo menos 6 caracteres';

  @override
  String get registerPasswordRequired => 'A palavra-passe é obrigatória';

  @override
  String get registerPasswordMinLength =>
      'A palavra-passe deve ter pelo menos 6 caracteres';

  @override
  String get registerConfirmPasswordLabel => 'Confirmar palavra-passe';

  @override
  String get registerConfirmPasswordHint => 'Repita a sua palavra-passe';

  @override
  String get registerConfirmPasswordRequired => 'Confirme a sua palavra-passe';

  @override
  String get registerPasswordsDoNotMatch => 'As palavras-passe não coincidem';

  @override
  String get registerCreateAccount => 'Criar conta';

  @override
  String get registerHaveAccount => 'Já tem uma conta? ';

  @override
  String get registerSignIn => 'Iniciar sessão';

  @override
  String get authTermsOfService => 'Termos de Serviço';

  @override
  String get authPrivacyPolicy => 'Política de Privacidade';

  @override
  String get authAgreeRequired =>
      'Aceite os Termos de Serviço e a Política de Privacidade para continuar';

  @override
  String get loginAgreePrefix => 'Ao continuar, você concorda com os nossos ';

  @override
  String get registerAgreePrefix => 'Concordo com os ';

  @override
  String get authAgreeAnd => ' e com a ';

  @override
  String get authTermsSheet =>
      'Estes Termos de Serviço regem o seu uso do InvoiceFlow. Ao acessar ou usar o aplicativo, você concorda em ficar vinculado a estes termos.\n\n1. Você é responsável pela exatidão das faturas, orçamentos e outros dados que criar.\n2. O aplicativo é fornecido \"como está\", sem garantias de qualquer tipo, expressas ou implícitas.\n3. Não somos responsáveis por perdas decorrentes do seu uso do serviço.\n4. Você não deve usar o aplicativo para qualquer finalidade ilegal ou proibida.\n5. Podemos atualizar estes termos periodicamente; o uso contínuo do aplicativo constitui aceitação dos termos atualizados.';

  @override
  String get authPrivacySheet =>
      'A sua privacidade é importante para nós.\n\n1. Armazenamento de dados: suas faturas, clientes e configurações são armazenados localmente no seu dispositivo.\n2. Sincronização na nuvem: se você entrar, seus dados serão sincronizados com a sua conta para ficarem acessíveis em todos os seus dispositivos.\n3. Nunca vendemos nem compartilhamos as suas informações pessoais.\n4. Análises: podemos coletar dados de uso anonimizados para ajudar a melhorar o aplicativo.\n5. Contato: para qualquer dúvida sobre privacidade, entre em contato pelo support@invoiceflow.app.';

  @override
  String get authErrorWeakPassword => 'A palavra-passe é demasiado fraca';

  @override
  String get authErrorEmailAlreadyInUse => 'Já existe uma conta';

  @override
  String get authErrorUserNotFound =>
      'Não foi encontrado nenhum utilizador com este email';

  @override
  String get authErrorWrongPassword => 'Palavra-passe incorreta';

  @override
  String get authErrorInvalidEmail => 'Endereço de email inválido';

  @override
  String get authErrorTooManyRequests =>
      'Demasiadas tentativas. Tente novamente mais tarde';

  @override
  String get authErrorDefault => 'A autenticação falhou. Tente novamente.';

  @override
  String get authErrorGoogleSignInFailed =>
      'O início de sessão com Google falhou.';

  @override
  String get invoiceListTitle => 'Faturas';

  @override
  String get invoiceListSearchHint => 'Pesquisar faturas...';

  @override
  String get invoiceListSortDate => 'Ordenar por data';

  @override
  String get invoiceListSortAmount => 'Ordenar por valor';

  @override
  String get invoiceListSortClient => 'Ordenar por cliente';

  @override
  String get invoiceListTabAll => 'Todas';

  @override
  String get invoiceListTabPaid => 'Pagas';

  @override
  String get invoiceListTabPending => 'Pendentes';

  @override
  String get invoiceListTabOverdue => 'Em atraso';

  @override
  String get invoiceListTabDraft => 'Rascunhos';

  @override
  String get invoiceListEmpty => 'Não foram encontradas faturas';

  @override
  String get invoiceCreateTitle => 'Nova fatura';

  @override
  String get invoiceEditTitle => 'Editar fatura';

  @override
  String get invoiceSaveDraft => 'Guardar rascunho';

  @override
  String get invoiceStepClient => 'Cliente';

  @override
  String get invoiceStepItems => 'Itens';

  @override
  String get invoiceStepReview => 'Revisão';

  @override
  String get invoiceSelectClient => 'Selecione um cliente';

  @override
  String get invoiceSelectClientSubtitle =>
      'Escolha a quem se destina esta fatura';

  @override
  String get invoiceSearchClients => 'Pesquisar clientes...';

  @override
  String get invoiceAddNewClient => 'Adicionar novo cliente';

  @override
  String get invoiceNoClientsFound => 'Não foram encontrados clientes';

  @override
  String get invoiceSelectClientEmptyHint =>
      'Crie o seu primeiro cliente para começar a criar faturas';

  @override
  String get invoiceAddLineItem => 'Adicionar linha';

  @override
  String get invoiceItemDescription => 'Descrição';

  @override
  String get invoiceItemDescriptionHint => 'ex.: Desenvolvimento Web';

  @override
  String get invoiceItemQuickAdd => 'Adição rápida:';

  @override
  String get invoiceItemQty => 'Quantidade';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Tarifa';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Adicionar item';

  @override
  String get invoiceLineItems => 'Linhas de fatura';

  @override
  String get invoiceLineItemsSubtitle => 'Adicione serviços ou produtos';

  @override
  String get invoiceNoItems =>
      'Ainda não há itens. Adicione o seu primeiro item.';

  @override
  String get invoiceTaxRate => 'Taxa de imposto (%)';

  @override
  String get invoiceSubtotal => 'Subtotal';

  @override
  String invoiceTax(Object taxRate) {
    return 'Imposto ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'TOTAL';

  @override
  String get invoiceReviewHeading => 'Rever e finalizar';

  @override
  String get invoiceReviewSubtitle =>
      'Defina datas, adicione notas, logótipo e assinatura';

  @override
  String get invoiceCompanyLogo => 'Logótipo da empresa';

  @override
  String get invoiceAddLogo => 'Adicionar logótipo';

  @override
  String get invoiceInvoiceDate => 'Data da fatura';

  @override
  String get invoiceDueDate => 'Data de vencimento';

  @override
  String get invoiceNotesLabel => 'Notas (opcionais)';

  @override
  String get invoiceNotesHint => 'Obrigado pelo seu negócio!';

  @override
  String get invoicePaymentTermsLabel => 'Condições de pagamento (opcionais)';

  @override
  String get invoicePaymentTermsHint => 'Pagamento no prazo de 30 dias';

  @override
  String get invoiceSignatureLabel => 'Assinatura';

  @override
  String get invoiceSignatureOverwrite =>
      'Assinatura existente guardada. Desenhe por cima para substituir.';

  @override
  String get invoiceCreatedSnackbar => 'Fatura criada!';

  @override
  String get invoiceUpdatedSnackbar => 'Fatura atualizada!';

  @override
  String get invoiceDetailTitle => 'FATURA';

  @override
  String get invoiceDetailMarkAsPaid => 'Marcar como paga';

  @override
  String get invoiceDetailTotalAmount => 'Valor total';

  @override
  String get invoiceDetailIssued => 'Emitida';

  @override
  String get invoiceDetailDue => 'Vencimento';

  @override
  String get invoiceDetailPaid => 'Paga';

  @override
  String get invoiceDetailBillTo => 'Faturar a';

  @override
  String get invoiceDetailItems => 'Itens';

  @override
  String get invoiceDetailNotes => 'Notas';

  @override
  String get invoiceDetailSignature => 'Assinatura';

  @override
  String get invoiceDetailMarkedPaidSnackbar => 'Fatura marcada como paga!';

  @override
  String get invoiceDetailPdfFailed => 'Não foi possível gerar o PDF';

  @override
  String get clientListTitle => 'Clientes';

  @override
  String get clientListSearchHint => 'Pesquisar clientes...';

  @override
  String get clientListTotalClients => 'Total de clientes';

  @override
  String get clientListTotalBilled => 'Total faturado';

  @override
  String get clientListEmptySearch => 'Não foram encontrados clientes';

  @override
  String get clientListEmpty => 'Ainda não há clientes';

  @override
  String get clientListEmptySubtitle =>
      'Adicione o seu primeiro cliente para começar a criar faturas';

  @override
  String get clientListAddClient => 'Adicionar cliente';

  @override
  String get clientListTotalBilledLabel => 'total faturado';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count fatura';
  }

  @override
  String get clientCreateTitle => 'Novo cliente';

  @override
  String get clientEditTitle => 'Editar cliente';

  @override
  String get clientBasicInfo => 'Informações básicas';

  @override
  String get clientNameLabel => 'Nome completo *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'O nome é obrigatório';

  @override
  String get clientNameTooShort => 'Nome demasiado curto';

  @override
  String get clientEmailLabel => 'Endereço de email *';

  @override
  String get clientEmailHint => 'faturacao@empresa.com';

  @override
  String get clientEmailRequired => 'O email é obrigatório';

  @override
  String get clientEmailInvalid => 'Introduza um email válido';

  @override
  String get clientPhoneLabel => 'Número de telefone';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'Morada';

  @override
  String get clientAddressLabel => 'Morada';

  @override
  String get clientAddressHint => '123 Business Park, Escritório 45';

  @override
  String get clientCityLabel => 'Cidade / País';

  @override
  String get clientCityHint => 'Dubai, Emirados Árabes Unidos';

  @override
  String get clientBillingDefaults => 'Predefinições de faturação';

  @override
  String get clientDefaultCurrency => 'Moeda predefinida';

  @override
  String get clientDefaultTaxRate => 'Taxa de imposto predefinida (VAT/GST)';

  @override
  String get clientVatLabel => 'Número de registo VAT / Fiscal';

  @override
  String get clientVatHint => '123456789012345 (opcional)';

  @override
  String get clientUpdateButton => 'Atualizar cliente';

  @override
  String get clientAddButton => 'Adicionar cliente';

  @override
  String get clientUpdatedSnackbar => 'Cliente atualizado!';

  @override
  String get clientAddedSnackbar => 'Cliente adicionado!';

  @override
  String get clientDetailInvoices => 'Faturas';

  @override
  String get clientDetailTotalBilled => 'Total faturado';

  @override
  String get clientDetailOutstanding => 'Em dívida';

  @override
  String get clientDetailEdit => 'Editar';

  @override
  String get clientDetailNewInvoice => 'Nova fatura';

  @override
  String get clientDetailEmailClient => 'Enviar email ao cliente';

  @override
  String get clientDetailClientDetails => 'Detalhes do cliente';

  @override
  String get clientDetailEmail => 'Email';

  @override
  String get clientDetailPhone => 'Telefone';

  @override
  String get clientDetailAddress => 'Morada';

  @override
  String get clientDetailCity => 'Cidade';

  @override
  String get clientDetailCurrency => 'Moeda';

  @override
  String get clientDetailTaxRate => 'Taxa de imposto';

  @override
  String get clientDetailVatNumber => 'Número VAT';

  @override
  String get clientDetailInvoiceHistory => 'Histórico de faturas';

  @override
  String get clientDetailNoInvoices => 'Ainda não há faturas para este cliente';

  @override
  String get deleteClientTitle => 'Eliminar cliente?';

  @override
  String deleteClientMessage(Object clientName) {
    return 'Eliminar $clientName? Esta ação não pode ser anulada.';
  }

  @override
  String get settingsTitle => 'Definições';

  @override
  String get settingsYourName => 'O seu nome';

  @override
  String get settingsBackupTitle => 'Faça o backup das suas faturas';

  @override
  String get settingsBackupDescription =>
      'Inicie sessão para sincronizar os seus dados com segurança e aceder-lhes a partir de qualquer lugar.';

  @override
  String get settingsSignInRegister => 'Iniciar sessão ou registar-se';

  @override
  String get settingsProUpsell =>
      'Atualize para Pro para faturas ilimitadas, sincronização na nuvem e sem marcas de água.';

  @override
  String subscriptionInvoiceLimit(Object limit) {
    return 'Atingiu o limite do plano gratuito de $limit faturas. Atualize para Pro para faturas ilimitadas e sincronização na nuvem.';
  }

  @override
  String subscriptionClientLimit(Object limit) {
    return 'Atingiu o limite do plano gratuito de $limit clientes. Atualize para Pro para clientes ilimitados e sincronização na nuvem.';
  }

  @override
  String get settingsUpgradePro => 'Atualizar';

  @override
  String get settingsBusinessSection => 'DEFINIÇÕES DO NEGÓCIO';

  @override
  String get settingsBusinessDetails => 'Detalhes do negócio';

  @override
  String get settingsBusinessDetailsSubtitle => 'Defina o nome do seu negócio';

  @override
  String get settingsInvoicePrefix => 'Prefixo da fatura';

  @override
  String get settingsDefaultCurrency => 'Moeda predefinida';

  @override
  String get settingsAppSection => 'DEFINIÇÕES DA APP';

  @override
  String get settingsDarkMode => 'Modo escuro';

  @override
  String get settingsDailyNotification => 'Notificação diária';

  @override
  String get settingsDailyNotificationNotSet => 'Não definida';

  @override
  String get settingsLanguage => 'Idioma';

  @override
  String get settingsLanguageLabel => 'Português';

  @override
  String get languageEnglish => 'Inglês';

  @override
  String get languageArabic => 'Árabe';

  @override
  String get languageFrench => 'Francês';

  @override
  String get languageSpanish => 'Espanhol';

  @override
  String get languageUrdu => 'Urdu';

  @override
  String get languageChinese => 'Chinês';

  @override
  String get settingsAboutSection => 'SOBRE';

  @override
  String get settingsRateApp => 'Avalie a app';

  @override
  String get settingsHelpSupport => 'Ajuda e suporte';

  @override
  String get settingsPrivacyPolicy => 'Política de privacidade';

  @override
  String get settingsHelpSupportSheet =>
      'Precisa de ajuda? Contacte support@invoiceflow.app e responderemos no prazo de 24 horas.';

  @override
  String get settingsPrivacySheet =>
      'Os seus dados são armazenados localmente no seu dispositivo. Nunca vendemos nem partilhamos as suas informações pessoais.';

  @override
  String get settingsVersion => 'Versão';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Terminar sessão';

  @override
  String get settingsEditProfile => 'Editar perfil';

  @override
  String get settingsProfileNameLabel => 'Nome completo';

  @override
  String get settingsProfileNameHint => 'O seu nome';

  @override
  String get settingsBusinessNameLabel => 'Nome do negócio';

  @override
  String get settingsBusinessNameHint => 'A sua Empresa, Lda.';

  @override
  String get settingsBusinessEmailLabel => 'Email do negócio';

  @override
  String get settingsBusinessEmailHint => 'faturacao@empresa.com';

  @override
  String get settingsPhoneLabel => 'Telefone';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'Morada';

  @override
  String get settingsAddressHint => 'Dubai, Emirados Árabes Unidos';

  @override
  String get settingsBusinessDetailsSaved => 'Detalhes do negócio guardados!';

  @override
  String get settingsInvoicePrefixTitle => 'Prefixo do número da fatura';

  @override
  String get settingsInvoicePrefixHint => 'ex.: INV-, #, Fatura-';

  @override
  String get settingsPrefixSaved => 'Prefixo da fatura guardado';

  @override
  String get settingsNotificationScheduled =>
      'Notificação diária agendada com sucesso!';

  @override
  String get settingsSignOutTitle => 'Terminar sessão?';

  @override
  String get settingsSignOutMessage =>
      'Tem a certeza de que pretende terminar sessão do InvoiceFlow?';

  @override
  String get settingsSignedOut => 'Sessão terminada com sucesso.';

  @override
  String get statusPaid => 'Paga';

  @override
  String get statusOverdue => 'Em atraso';

  @override
  String get statusPending => 'Pendente';

  @override
  String get statusDraft => 'Rascunho';

  @override
  String get statusCancelled => 'Cancelada';

  @override
  String get notificationChannelName => 'Lembretes diários';

  @override
  String get notificationChannelDescription =>
      'Lembra-lhe de verificar as suas faturas diariamente';

  @override
  String get notificationTitle => 'Lembrete de fatura';

  @override
  String get notificationBody =>
      'Está na hora de verificar as suas faturas recentes e acompanhar os pagamentos pendentes.';

  @override
  String get pdfInvoice => 'FATURA';

  @override
  String get pdfInvoiceNumber => 'Fatura n.º:';

  @override
  String get pdfDate => 'Data:';

  @override
  String get pdfDueDate => 'Data de vencimento:';

  @override
  String get pdfBillTo => 'FATURAR A:';

  @override
  String get pdfDescription => 'Descrição';

  @override
  String get pdfQty => 'Qtd';

  @override
  String get pdfRate => 'Tarifa';

  @override
  String get pdfAmount => 'Valor';

  @override
  String get pdfSubtotal => 'Subtotal:';

  @override
  String pdfTax(Object taxRate) {
    return 'Imposto ($taxRate%):';
  }

  @override
  String get pdfTotal => 'TOTAL:';

  @override
  String get pdfSignature => 'Assinatura:';

  @override
  String get pdfNotes => 'Notas:';

  @override
  String get pdfPaymentTerms => 'Condições de pagamento:';

  @override
  String get pdfThankYou => 'Obrigado pelo seu negócio!';

  @override
  String get quickAddWebDesign => 'Web Design';

  @override
  String get quickAddDevelopment => 'Desenvolvimento';

  @override
  String get quickAddConsulting => 'Consultoria';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Redação de conteúdos';

  @override
  String get paywallTitle => 'Desbloqueie o InvoiceFlow Pro';

  @override
  String get paywallSubtitle =>
      'Sem limites e sincronize em todo o lado. Cancele quando quiser.';

  @override
  String get paywallFeatureUnlimited => 'Faturas e clientes ilimitados';

  @override
  String get paywallFeatureSync => 'Sincronização na nuvem entre dispositivos';

  @override
  String get paywallFeatureNoWatermark => 'Sem marcas de água, nunca';

  @override
  String get paywallMonthly => 'Mensal';

  @override
  String get paywallMonthlySub => 'Cobrado mensalmente';

  @override
  String get paywallYearly => 'Anual';

  @override
  String get paywallYearlySub => 'Melhor valor — 2 meses grátis';

  @override
  String get paywallRestore => 'Restaurar compras';

  @override
  String get paywallTerms =>
      'As subscrições renovam-se automaticamente. Gerenciar nas definições da sua loja de aplicações.';

  @override
  String get purchaseSuccessTitle => 'É Pro!';

  @override
  String get purchaseSuccessSubtitle =>
      'Faturas ilimitadas, sincronização na nuvem e sem marcas de água estão agora desbloqueadas. Obrigado!';

  @override
  String get purchaseSuccessContinue => 'Continuar';

  @override
  String get paywallLoading => 'Carregando planos…';

  @override
  String get paywallLoadError =>
      'Não foi possível carregar os planos. Verifique sua conexão e tente novamente.';

  @override
  String get paywallNoOffering => 'Nenhum plano disponível no momento.';

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
  String get purchaseRestored => 'Compras restauradas com sucesso';

  @override
  String get purchaseErrorGeneric => 'A compra falhou. Tente novamente.';

  @override
  String get settingsProTitle => 'InvoiceFlow Pro';

  @override
  String get settingsProActive =>
      'Pro ativo — faturas e clientes ilimitados sem marcas d\'água';

  @override
  String get settingsFreePlan => 'Plano gratuito';

  @override
  String get settingsFreeHint =>
      'Atualize para faturas ilimitadas, sincronização na nuvem e muito mais';

  @override
  String get settingsUpgradeToPro => 'Atualizar para Pro';

  @override
  String get settingsManageSubscription => 'Gerenciar assinatura';

  @override
  String get customerCenterFailed =>
      'Não foi possível abrir o gerenciamento da assinatura.';

  @override
  String get onboardingSkip => 'Saltar';

  @override
  String get onboardingNext => 'Seguinte';

  @override
  String get onboardingGetStarted => 'Começar';

  @override
  String get onboardingWelcomeTitle => 'Faturas em 2 minutos';

  @override
  String get onboardingWelcomeBody =>
      'Crie faturas PDF profissionais para os seus clientes — rápidas e elegantes.';

  @override
  String get onboardingSyncTitle => 'Sincronize em todo o lado';

  @override
  String get onboardingSyncBody =>
      'Inicie sessão para fazer o backup seguro dos seus dados na nuvem e aceder-lhes a partir de qualquer dispositivo.';

  @override
  String get onboardingProTitle => 'Sem limites com o Pro';

  @override
  String get onboardingProBody =>
      'Desbloqueie faturas ilimitadas, sincronização na nuvem e remova as marcas de água com o InvoiceFlow Pro.';

  @override
  String get settingsAccentColor => 'Cor de destaque';

  @override
  String get settingsAccentColorHint =>
      'Personalize a app com uma cor à sua escolha.';

  @override
  String get settingsCountry => 'País';

  @override
  String get settingsTaxId => 'Número de registo fiscal';

  @override
  String get settingsTaxIdNotSet => 'Não definido';

  @override
  String get settingsTaxIdHint => 'ex.: 123456789012345';

  @override
  String get settingsTaxIdSaved => 'Número fiscal guardado';

  @override
  String get catalogTitle => 'Produtos e serviços';

  @override
  String catalogItemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count itens',
      one: '$count item',
    );
    return '$_temp0';
  }

  @override
  String get catalogEmpty => 'Ainda não há produtos';

  @override
  String get catalogEmptySubtitle =>
      'Guarde produtos e serviços reutilizáveis para os adicionar às faturas mais rapidamente.';

  @override
  String get catalogFromSaved => 'Do seu catálogo';

  @override
  String get catalogSaveToCatalog => 'Guardar no catálogo para reutilização';

  @override
  String get catalogAddSnackbar => 'Adicionado ao catálogo';

  @override
  String get catalogDeleteTitle => 'Eliminar item?';

  @override
  String catalogDeleteMessage(String description) {
    return 'Eliminar \"$description\"? Esta ação não pode ser anulada.';
  }

  @override
  String get commonDone => 'Concluído';

  @override
  String get estimateListTitle => 'Orçamentos';

  @override
  String get estimateListSearchHint => 'Pesquisar orçamentos…';

  @override
  String get estimateListEmpty => 'Ainda não há orçamentos';

  @override
  String get estimateListTabAll => 'Todos';

  @override
  String get estimateListTabDraft => 'Rascunho';

  @override
  String get estimateListTabSent => 'Enviado';

  @override
  String get estimateListTabAccepted => 'Aceite';

  @override
  String get estimateListTabExpired => 'Expirado';

  @override
  String get estimateCreateTitle => 'Novo orçamento';

  @override
  String get estimateEditTitle => 'Editar orçamento';

  @override
  String get estimateCreatedSnackbar => 'Orçamento guardado';

  @override
  String get estimateUpdatedSnackbar => 'Orçamento atualizado';

  @override
  String get estimateIssueDate => 'Data de emissão';

  @override
  String get estimateExpiryDate => 'Data de validade';

  @override
  String get estimateExpiresPrefix => 'Expira a ';

  @override
  String get estimateConvertToInvoice => 'Converter em fatura';

  @override
  String get estimateConvertedSnackbar => 'Orçamento convertido em fatura';

  @override
  String get estimateConvertFailed => 'Não foi possível converter o orçamento';

  @override
  String get estimateMarkSent => 'Marcar como enviado';

  @override
  String get estimateMarkAccepted => 'Marcar como aceite';

  @override
  String get estimateMarkDeclined => 'Marcar como recusado';

  @override
  String get estimateConvertedTitle => 'Convertido';

  @override
  String estimateConvertedMessage(String invoiceId) {
    return 'Convertido em fatura $invoiceId';
  }

  @override
  String get estimateDetailTotal => 'TOTAL DO ORÇAMENTO';

  @override
  String get estimateStatusSent => 'Enviado';

  @override
  String get estimateStatusAccepted => 'Aceite';

  @override
  String get estimateStatusDeclined => 'Recusado';

  @override
  String get estimateStatusExpired => 'Expirado';

  @override
  String estimateOpenCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count abertos',
      one: '1 aberto',
    );
    return '$_temp0';
  }

  @override
  String get deleteEstimateTitle => 'Eliminar orçamento?';

  @override
  String deleteEstimateMessage(String estimateNumber) {
    return 'Eliminar \"$estimateNumber\"? Esta ação não pode ser anulada.';
  }

  @override
  String get estimatePdfFailed => 'Não foi possível gerar o PDF';

  @override
  String get pdfEstimate => 'ORÇAMENTO';

  @override
  String get pdfEstimateNumber => 'Orçamento n.º:';

  @override
  String get pdfValidUntil => 'Válido até:';

  @override
  String get invoiceDetailPaymentTerms => 'Condições de pagamento';

  @override
  String get recurringListTitle => 'Faturas recorrentes';

  @override
  String get recurringListEmpty => 'Ainda não há faturas recorrentes';

  @override
  String get recurringListEmptySubtitle =>
      'Configure faturas automáticas para clientes e serviços regulares.';

  @override
  String get recurringCreateTitle => 'Nova recorrente';

  @override
  String get recurringEditTitle => 'Editar recorrente';

  @override
  String get recurringCreatedSnackbar => 'Fatura recorrente guardada';

  @override
  String get recurringUpdatedSnackbar => 'Fatura recorrente atualizada';

  @override
  String get recurringDeleteTitle => 'Eliminar fatura recorrente?';

  @override
  String recurringDeleteMessage(String title) {
    return 'Eliminar \"$title\"? As faturas existentes não serão removidas.';
  }

  @override
  String get recurringTitleLabel => 'Título';

  @override
  String get recurringTitleHint => 'ex.: Honorários mensais';

  @override
  String get recurringClientLabel => 'Cliente';

  @override
  String get recurringFrequencyLabel => 'Frequência';

  @override
  String get recurringFrequencyWeekly => 'Semanal';

  @override
  String get recurringFrequencyBiweekly => 'Quinzenal';

  @override
  String get recurringFrequencyMonthly => 'Mensal';

  @override
  String get recurringFrequencyQuarterly => 'Trimestral';

  @override
  String get recurringFrequencyYearly => 'Anual';

  @override
  String get recurringNextRun => 'Próxima execução';

  @override
  String get recurringDueDays => 'Vence em';

  @override
  String get recurringDays => 'dias';

  @override
  String recurringActiveCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ativas',
      one: '1 ativa',
    );
    return '$_temp0';
  }

  @override
  String get reportsTitle => 'Relatórios';

  @override
  String get reportsSubtitle => 'Análises do negócio';

  @override
  String get reportsEmpty => 'Crie faturas para ver os relatórios';

  @override
  String get reportsCollected => 'Recebido';

  @override
  String get reportsOutstanding => 'Em dívida';

  @override
  String get reportsMonthlyRevenue => 'Receita mensal';

  @override
  String get reportsLast6Months => 'Últimos 6 meses';

  @override
  String get reportsByStatus => 'Por estado';

  @override
  String get reportsTopClients => 'Principais clientes';

  @override
  String get paymentLinkTitle => 'Link de pagamento';

  @override
  String get paymentLinkNotSet => 'Nenhum link de pagamento definido';

  @override
  String get paymentLinkHint => 'https://buy.stripe.com/...';

  @override
  String get paymentLinkHelp =>
      'O seu link de pagamento é incluído no PDF da fatura e pode ser copiado a partir do menu da fatura.';

  @override
  String get paymentLinkSaved => 'Link de pagamento guardado';

  @override
  String get settingsPaymentLinkNotSet => 'Não definido';

  @override
  String get invoiceDetailCopyPaymentLink => 'Copiar link de pagamento';

  @override
  String get paymentLinkCopied => 'Link de pagamento copiado';

  @override
  String get pdfPayOnline => 'Pagar online';

  @override
  String get exportXml => 'Exportar XML';

  @override
  String get exportXmlFailed => 'Não foi possível exportar o XML';
}
