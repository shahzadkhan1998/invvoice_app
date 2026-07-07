// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'InvoiceFlow';

  @override
  String get splashSubtitle => 'Facturas profesionales en 2 minutos';

  @override
  String get bottomNavDashboard => 'Panel';

  @override
  String get bottomNavInvoices => 'Facturas';

  @override
  String get bottomNavClients => 'Clientes';

  @override
  String get bottomNavSettings => 'Ajustes';

  @override
  String get commonCancel => 'Cancelar';

  @override
  String get commonDelete => 'Eliminar';

  @override
  String get commonSave => 'Guardar';

  @override
  String get commonSearch => 'Buscar';

  @override
  String get commonBack => 'Atrás';

  @override
  String get commonContinue => 'Continuar';

  @override
  String get commonAdd => 'Agregar';

  @override
  String get commonEdit => 'Editar';

  @override
  String get commonCreate => 'Crear';

  @override
  String get commonClear => 'Limpiar';

  @override
  String get commonView => 'Ver';

  @override
  String get commonShare => 'Compartir';

  @override
  String get commonExportPdf => 'Exportar PDF';

  @override
  String get commonSharePdf => 'Compartir PDF';

  @override
  String get commonSaveChanges => 'Guardar cambios';

  @override
  String get commonRequired => 'Obligatorio';

  @override
  String get commonInvalid => 'Inválido';

  @override
  String get commonSendLink => 'Enviar enlace';

  @override
  String get commonGeneratingPdf => 'Generando PDF...';

  @override
  String get dashboardGreetingMorning => 'Buenos días';

  @override
  String get dashboardGreetingAfternoon => 'Buenas tardes';

  @override
  String get dashboardGreetingEvening => 'Buenas noches';

  @override
  String get dashboardSubtitle => 'Resumen de tu negocio';

  @override
  String get dashboardOutstanding => 'Pendiente';

  @override
  String get dashboardOverdue => 'Vencido';

  @override
  String get dashboardThisMonth => 'Este mes';

  @override
  String get dashboardInvoices => 'facturas';

  @override
  String dashboardPaidCount(Object count) {
    return '$count pagada(s)';
  }

  @override
  String get dashboardRecentInvoices => 'Facturas recientes';

  @override
  String get dashboardSeeAll => 'Ver todo →';

  @override
  String get dashboardNewInvoice => 'Nueva factura';

  @override
  String get dashboardNoInvoicesYet => 'Aún no hay facturas';

  @override
  String get dashboardNoInvoicesSubtitle =>
      'Crea tu primera factura profesional en menos de 2 minutos';

  @override
  String get dashboardCreateInvoice => 'Crear factura';

  @override
  String get dashboardMarkPaid => 'Marcar como pagada';

  @override
  String get dashboardDuePrefix => 'Vence ';

  @override
  String dashboardDaysOverdue(Object days) {
    return '$days días vencida';
  }

  @override
  String get deleteInvoiceTitle => '¿Eliminar factura?';

  @override
  String deleteInvoiceMessage(Object invoiceNumber) {
    return '¿Eliminar $invoiceNumber? Esta acción no se puede deshacer.';
  }

  @override
  String get loginHeading => 'Bienvenido de nuevo';

  @override
  String get loginSubtitle => 'Inicia sesión en tu cuenta de InvoiceFlow';

  @override
  String get loginEmailLabel => 'Correo electrónico';

  @override
  String get loginEmailHint => 'tu@ejemplo.com';

  @override
  String get loginEmailRequired => 'El correo es obligatorio';

  @override
  String get loginEmailInvalid => 'Ingresa un correo válido';

  @override
  String get loginPasswordLabel => 'Contraseña';

  @override
  String get loginPasswordHint => '••••••••';

  @override
  String get loginPasswordRequired => 'La contraseña es obligatoria';

  @override
  String get loginPasswordMinLength =>
      'La contraseña debe tener al menos 6 caracteres';

  @override
  String get loginForgotPassword => '¿Olvidaste tu contraseña?';

  @override
  String get loginSignIn => 'Iniciar sesión';

  @override
  String get loginOrContinueWith => 'o continuar con';

  @override
  String get loginContinueWithGoogle => 'Continuar con Google';

  @override
  String get loginNoAccount => '¿No tienes cuenta? ';

  @override
  String get loginSignUp => 'Registrarse';

  @override
  String get loginResetPasswordTitle => 'Restablecer contraseña';

  @override
  String get loginResetPasswordMessage =>
      'Ingresa tu correo y te enviaremos un enlace de restablecimiento.';

  @override
  String get loginResetPasswordHint => 'tu@ejemplo.com';

  @override
  String get loginResetLinkSent =>
      '¡Enlace de restablecimiento enviado! Revisa tu correo.';

  @override
  String get loginResetLinkFailed =>
      'Error al enviar el enlace de restablecimiento.';

  @override
  String get registerHeading => 'Crear cuenta';

  @override
  String get registerSubtitle => 'Comienza a enviar facturas profesionales hoy';

  @override
  String get registerNameLabel => 'Nombre completo';

  @override
  String get registerNameHint => 'Ahmed Mohammed';

  @override
  String get registerNameRequired => 'El nombre es obligatorio';

  @override
  String get registerNameMinLength =>
      'El nombre debe tener al menos 2 caracteres';

  @override
  String get registerEmailLabel => 'Correo electrónico';

  @override
  String get registerEmailHint => 'tu@ejemplo.com';

  @override
  String get registerEmailRequired => 'El correo es obligatorio';

  @override
  String get registerEmailInvalid => 'Ingresa un correo válido';

  @override
  String get registerPasswordLabel => 'Contraseña';

  @override
  String get registerPasswordHint => 'Al menos 6 caracteres';

  @override
  String get registerPasswordRequired => 'La contraseña es obligatoria';

  @override
  String get registerPasswordMinLength =>
      'La contraseña debe tener al menos 6 caracteres';

  @override
  String get registerConfirmPasswordLabel => 'Confirmar contraseña';

  @override
  String get registerConfirmPasswordHint => 'Repite tu contraseña';

  @override
  String get registerConfirmPasswordRequired =>
      'Por favor confirma tu contraseña';

  @override
  String get registerPasswordsDoNotMatch => 'Las contraseñas no coinciden';

  @override
  String get registerCreateAccount => 'Crear cuenta';

  @override
  String get registerHaveAccount => '¿Ya tienes cuenta? ';

  @override
  String get registerSignIn => 'Iniciar sesión';

  @override
  String get authErrorWeakPassword => 'La contraseña es demasiado débil';

  @override
  String get authErrorEmailAlreadyInUse => 'La cuenta ya existe';

  @override
  String get authErrorUserNotFound =>
      'No se encontró ningún usuario con este correo';

  @override
  String get authErrorWrongPassword => 'Contraseña incorrecta';

  @override
  String get authErrorInvalidEmail => 'Correo electrónico inválido';

  @override
  String get authErrorTooManyRequests =>
      'Demasiados intentos. Intenta de nuevo más tarde.';

  @override
  String get authErrorDefault => 'Error de autenticación. Intenta de nuevo.';

  @override
  String get authErrorGoogleSignInFailed =>
      'Error al iniciar sesión con Google.';

  @override
  String get invoiceListTitle => 'Facturas';

  @override
  String get invoiceListSearchHint => 'Buscar facturas...';

  @override
  String get invoiceListSortDate => 'Ordenar por fecha';

  @override
  String get invoiceListSortAmount => 'Ordenar por importe';

  @override
  String get invoiceListSortClient => 'Ordenar por cliente';

  @override
  String get invoiceListTabAll => 'Todas';

  @override
  String get invoiceListTabPaid => 'Pagadas';

  @override
  String get invoiceListTabPending => 'Pendientes';

  @override
  String get invoiceListTabOverdue => 'Vencidas';

  @override
  String get invoiceListTabDraft => 'Borradores';

  @override
  String get invoiceListEmpty => 'No se encontraron facturas';

  @override
  String get invoiceCreateTitle => 'Nueva factura';

  @override
  String get invoiceEditTitle => 'Editar factura';

  @override
  String get invoiceSaveDraft => 'Guardar borrador';

  @override
  String get invoiceStepClient => 'Cliente';

  @override
  String get invoiceStepItems => 'Artículos';

  @override
  String get invoiceStepReview => 'Revisar';

  @override
  String get invoiceSelectClient => 'Seleccionar un cliente';

  @override
  String get invoiceSelectClientSubtitle =>
      'Elige el destinatario de esta factura';

  @override
  String get invoiceSearchClients => 'Buscar clientes...';

  @override
  String get invoiceAddNewClient => 'Agregar nuevo cliente';

  @override
  String get invoiceNoClientsFound => 'No se encontraron clientes';

  @override
  String get invoiceAddLineItem => 'Agregar línea';

  @override
  String get invoiceItemDescription => 'Descripción';

  @override
  String get invoiceItemDescriptionHint => 'ej. Desarrollo Web';

  @override
  String get invoiceItemQuickAdd => 'Añadido rápido:';

  @override
  String get invoiceItemQty => 'Cantidad';

  @override
  String get invoiceItemQtyHint => '1';

  @override
  String get invoiceItemRate => 'Tarifa';

  @override
  String get invoiceItemRateHint => '0.00';

  @override
  String get invoiceAddItem => 'Agregar artículo';

  @override
  String get invoiceLineItems => 'Líneas de factura';

  @override
  String get invoiceLineItemsSubtitle => 'Agrega servicios o productos';

  @override
  String get invoiceNoItems =>
      'Aún no hay artículos. Agrega tu primer artículo.';

  @override
  String get invoiceTaxRate => 'Tasa de impuesto (%)';

  @override
  String get invoiceSubtotal => 'Subtotal';

  @override
  String invoiceTax(Object taxRate) {
    return 'Impuesto ($taxRate%)';
  }

  @override
  String get invoiceTotal => 'TOTAL';

  @override
  String get invoiceReviewHeading => 'Revisar y finalizar';

  @override
  String get invoiceReviewSubtitle =>
      'Define fechas, agrega notas, logotipo y firma';

  @override
  String get invoiceCompanyLogo => 'Logotipo de empresa';

  @override
  String get invoiceAddLogo => 'Agregar logotipo';

  @override
  String get invoiceInvoiceDate => 'Fecha de factura';

  @override
  String get invoiceDueDate => 'Fecha de vencimiento';

  @override
  String get invoiceNotesLabel => 'Notas (opcional)';

  @override
  String get invoiceNotesHint => '¡Gracias por tu confianza!';

  @override
  String get invoicePaymentTermsLabel => 'Términos de pago (opcional)';

  @override
  String get invoicePaymentTermsHint => 'Pago dentro de 30 días';

  @override
  String get invoiceSignatureLabel => 'Firma';

  @override
  String get invoiceSignatureOverwrite =>
      'Firma existente guardada. Dibuja arriba para sobrescribir.';

  @override
  String get invoiceCreatedSnackbar => '¡Factura creada!';

  @override
  String get invoiceUpdatedSnackbar => '¡Factura actualizada!';

  @override
  String get invoiceDetailTitle => 'FACTURA';

  @override
  String get invoiceDetailMarkAsPaid => 'Marcar como pagada';

  @override
  String get invoiceDetailTotalAmount => 'Importe total';

  @override
  String get invoiceDetailIssued => 'Emitida';

  @override
  String get invoiceDetailDue => 'Vence';

  @override
  String get invoiceDetailPaid => 'Pagada';

  @override
  String get invoiceDetailBillTo => 'Facturar a';

  @override
  String get invoiceDetailItems => 'Artículos';

  @override
  String get invoiceDetailNotes => 'Notas';

  @override
  String get invoiceDetailSignature => 'Firma';

  @override
  String get invoiceDetailMarkedPaidSnackbar => '¡Factura marcada como pagada!';

  @override
  String get invoiceDetailPdfFailed => 'Error al generar PDF';

  @override
  String get clientListTitle => 'Clientes';

  @override
  String get clientListSearchHint => 'Buscar clientes...';

  @override
  String get clientListTotalClients => 'Total de clientes';

  @override
  String get clientListTotalBilled => 'Total facturado';

  @override
  String get clientListEmptySearch => 'No se encontraron clientes';

  @override
  String get clientListEmpty => 'Aún no hay clientes';

  @override
  String get clientListEmptySubtitle =>
      'Agrega tu primer cliente para empezar a crear facturas';

  @override
  String get clientListAddClient => 'Agregar cliente';

  @override
  String get clientListTotalBilledLabel => 'total facturado';

  @override
  String clientListInvoiceCount(Object count) {
    return '$count factura';
  }

  @override
  String get clientCreateTitle => 'Nuevo cliente';

  @override
  String get clientEditTitle => 'Editar cliente';

  @override
  String get clientBasicInfo => 'Información básica';

  @override
  String get clientNameLabel => 'Nombre completo *';

  @override
  String get clientNameHint => 'Acme Corporation';

  @override
  String get clientNameRequired => 'El nombre es obligatorio';

  @override
  String get clientNameTooShort => 'Nombre demasiado corto';

  @override
  String get clientEmailLabel => 'Correo electrónico *';

  @override
  String get clientEmailHint => 'facturacion@empresa.com';

  @override
  String get clientEmailRequired => 'El correo es obligatorio';

  @override
  String get clientEmailInvalid => 'Ingresa un correo válido';

  @override
  String get clientPhoneLabel => 'Teléfono';

  @override
  String get clientPhoneHint => '+971 50 123 4567';

  @override
  String get clientAddressSection => 'Dirección';

  @override
  String get clientAddressLabel => 'Dirección';

  @override
  String get clientAddressHint => '123 Business Park, Oficina 45';

  @override
  String get clientCityLabel => 'Ciudad / País';

  @override
  String get clientCityHint => 'Dubái, Emiratos Árabes Unidos';

  @override
  String get clientBillingDefaults => 'Valores de facturación';

  @override
  String get clientDefaultCurrency => 'Moneda predeterminada';

  @override
  String get clientDefaultTaxRate =>
      'Tasa de impuesto predeterminada (IVA/IGIC)';

  @override
  String get clientVatLabel => 'NIF / CIF';

  @override
  String get clientVatHint => '123456789012345 (opcional)';

  @override
  String get clientUpdateButton => 'Actualizar cliente';

  @override
  String get clientAddButton => 'Agregar cliente';

  @override
  String get clientUpdatedSnackbar => '¡Cliente actualizado!';

  @override
  String get clientAddedSnackbar => '¡Cliente agregado!';

  @override
  String get clientDetailInvoices => 'Facturas';

  @override
  String get clientDetailTotalBilled => 'Total facturado';

  @override
  String get clientDetailOutstanding => 'Pendiente';

  @override
  String get clientDetailEdit => 'Editar';

  @override
  String get clientDetailNewInvoice => 'Nueva factura';

  @override
  String get clientDetailEmailClient => 'Enviar correo';

  @override
  String get clientDetailClientDetails => 'Detalles del cliente';

  @override
  String get clientDetailEmail => 'Correo';

  @override
  String get clientDetailPhone => 'Teléfono';

  @override
  String get clientDetailAddress => 'Dirección';

  @override
  String get clientDetailCity => 'Ciudad';

  @override
  String get clientDetailCurrency => 'Moneda';

  @override
  String get clientDetailTaxRate => 'Tasa de impuesto';

  @override
  String get clientDetailVatNumber => 'NIF / CIF';

  @override
  String get clientDetailInvoiceHistory => 'Historial de facturas';

  @override
  String get clientDetailNoInvoices => 'Aún no hay facturas para este cliente';

  @override
  String get deleteClientTitle => '¿Eliminar cliente?';

  @override
  String deleteClientMessage(Object clientName) {
    return '¿Eliminar $clientName? Esta acción no se puede deshacer.';
  }

  @override
  String get settingsTitle => 'Ajustes';

  @override
  String get settingsYourName => 'Tu nombre';

  @override
  String get settingsBackupTitle => 'Respaldar tus facturas';

  @override
  String get settingsBackupDescription =>
      'Inicia sesión para sincronizar tus datos de forma segura y acceder desde cualquier lugar.';

  @override
  String get settingsSignInRegister => 'Iniciar sesión o registrarse';

  @override
  String get settingsBusinessSection => 'CONFIGURACIÓN EMPRESARIAL';

  @override
  String get settingsBusinessDetails => 'Detalles de la empresa';

  @override
  String get settingsBusinessDetailsSubtitle =>
      'Define el nombre de tu empresa';

  @override
  String get settingsInvoicePrefix => 'Prefijo de factura';

  @override
  String get settingsDefaultCurrency => 'Moneda predeterminada';

  @override
  String get settingsAppSection => 'CONFIGURACIÓN DE LA APP';

  @override
  String get settingsDarkMode => 'Modo oscuro';

  @override
  String get settingsDailyNotification => 'Notificación diaria';

  @override
  String get settingsDailyNotificationNotSet => 'No configurado';

  @override
  String get settingsLanguage => 'Idioma';

  @override
  String get settingsLanguageLabel => 'Español';

  @override
  String get settingsAboutSection => 'ACERCA DE';

  @override
  String get settingsRateApp => 'Calificar la app';

  @override
  String get settingsHelpSupport => 'Ayuda y soporte';

  @override
  String get settingsPrivacyPolicy => 'Política de privacidad';

  @override
  String get settingsVersion => 'Versión';

  @override
  String get settingsVersionNumber => '1.0.0';

  @override
  String get settingsSignOut => 'Cerrar sesión';

  @override
  String get settingsEditProfile => 'Editar perfil';

  @override
  String get settingsProfileNameLabel => 'Nombre completo';

  @override
  String get settingsProfileNameHint => 'Tu nombre';

  @override
  String get settingsBusinessNameLabel => 'Nombre de la empresa';

  @override
  String get settingsBusinessNameHint => 'Tu Empresa S.L.';

  @override
  String get settingsBusinessEmailLabel => 'Correo empresarial';

  @override
  String get settingsBusinessEmailHint => 'facturacion@empresa.com';

  @override
  String get settingsPhoneLabel => 'Teléfono';

  @override
  String get settingsPhoneHint => '+971 50 123 4567';

  @override
  String get settingsAddressLabel => 'Dirección';

  @override
  String get settingsAddressHint => 'Dubái, Emiratos Árabes Unidos';

  @override
  String get settingsBusinessDetailsSaved =>
      '¡Detalles de la empresa guardados!';

  @override
  String get settingsInvoicePrefixTitle => 'Prefijo de número de factura';

  @override
  String get settingsInvoicePrefixHint => 'ej. INV-, #, Fact-';

  @override
  String get settingsNotificationScheduled =>
      '¡Notificación diaria programada con éxito!';

  @override
  String get settingsSignOutTitle => '¿Cerrar sesión?';

  @override
  String get settingsSignOutMessage =>
      '¿Estás seguro de que quieres cerrar sesión en InvoiceFlow?';

  @override
  String get settingsSignedOut => 'Sesión cerrada correctamente.';

  @override
  String get statusPaid => 'Pagada';

  @override
  String get statusOverdue => 'Vencida';

  @override
  String get statusPending => 'Pendiente';

  @override
  String get statusDraft => 'Borrador';

  @override
  String get statusCancelled => 'Cancelada';

  @override
  String get notificationChannelName => 'Recordatorios diarios';

  @override
  String get notificationChannelDescription =>
      'Te recuerda revisar tus facturas diariamente';

  @override
  String get notificationTitle => 'Recordatorio de factura';

  @override
  String get notificationBody =>
      'Es hora de revisar tus facturas recientes y dar seguimiento a los pagos pendientes.';

  @override
  String get pdfInvoice => 'FACTURA';

  @override
  String get pdfInvoiceNumber => 'Factura n.º:';

  @override
  String get pdfDate => 'Fecha:';

  @override
  String get pdfDueDate => 'Fecha de vencimiento:';

  @override
  String get pdfBillTo => 'FACTURAR A:';

  @override
  String get pdfDescription => 'Descripción';

  @override
  String get pdfQty => 'Cant.';

  @override
  String get pdfRate => 'Tarifa';

  @override
  String get pdfAmount => 'Importe';

  @override
  String get pdfSubtotal => 'Subtotal:';

  @override
  String pdfTax(Object taxRate) {
    return 'Impuesto ($taxRate%):';
  }

  @override
  String get pdfTotal => 'TOTAL:';

  @override
  String get pdfSignature => 'Firma:';

  @override
  String get pdfNotes => 'Notas:';

  @override
  String get pdfPaymentTerms => 'Términos de pago:';

  @override
  String get pdfThankYou => '¡Gracias por tu confianza!';

  @override
  String get quickAddWebDesign => 'Diseño Web';

  @override
  String get quickAddDevelopment => 'Desarrollo';

  @override
  String get quickAddConsulting => 'Consultoría';

  @override
  String get quickAddSeo => 'SEO';

  @override
  String get quickAddContentWriting => 'Redacción de contenido';
}
