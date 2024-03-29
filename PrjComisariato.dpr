program PrjComisariato;



uses
  Forms,
  ClientClassesUnit1 in 'ClientClassesUnit1.pas',
  ClientModuleUnit1 in 'ClientModuleUnit1.pas' {ClientModule1: TDataModule},
  UTFrmRecetas in 'UTFrmRecetas.pas' {FrmRecetas},
  UTFrmCatalogo in 'UTFrmCatalogo.pas' {FrmCatalogo},
  UTFrmInsumos in 'UTFrmInsumos.pas' {FrmInsumos},
  ExportaExcel in 'ExportaExcel.pas',
  frm_SelectSheet in 'frm_SelectSheet.pas' {frmSelectSheet},
  UTFrmSelFormato in 'UTFrmSelFormato.pas' {FrmSelFormato},
  UTFrmDatosInsumo in 'UTFrmDatosInsumo.pas' {FrmDatosInsumo},
  UTFrmTiposInsumo in 'UTFrmTiposInsumo.pas' {FrmTiposInsumo},
  UTFrmDatosTiposInsumo in 'UTFrmDatosTiposInsumo.pas' {FrmDatosTiposInsumo},
  UTFrmUnidades in 'UTFrmUnidades.pas' {FrmUnidades},
  UTFrmDatosUnidades in 'UTFrmDatosUnidades.pas' {FrmDatosUnidades},
  UTFrmPrecioInsumo in 'UTFrmPrecioInsumo.pas' {FrmPrecioInsumo},
  UTFrmEmbarcaciones in 'UTFrmEmbarcaciones.pas' {FrmEmbarcaciones},
  UTFrmDatosEmbarcacion in 'UTFrmDatosEmbarcacion.pas' {FrmDatosEmbarcacion},
  UTFrmComisaria in 'UTFrmComisaria.pas' {FrmComisaria},
  UTFrmNuevaComisaria in 'UTFrmNuevaComisaria.pas' {FrmNuevaComisaria},
  UTFrmRecetario in 'UTFrmRecetario.pas' {FrmRecetario},
  UTFrmTiposReceta in 'UTFrmTiposReceta.pas' {FrmTiposReceta},
  UTFrmTiposRecetaDatos in 'UTFrmTiposRecetaDatos.pas' {FrmTiposRecetaDatos},
  UTFrmBuscarRegistroConsumo in 'UTFrmBuscarRegistroConsumo.pas' {FrmBuscarRegistroConsumo},
  UTFrmNuevaReceta in 'UTFrmNuevaReceta.pas' {FrmNuevaReceta},
  UTFrmRecetaInsumo in 'UTFrmRecetaInsumo.pas' {FrmRecetaInsumo},
  UTFrmConversion in 'UTFrmConversion.pas' {FrmConversion},
  UTFrmConversionDatos in 'UTFrmConversionDatos.pas' {FrmConversionDatos},
  frm_ReporteAnalisis in 'frm_ReporteAnalisis.pas' {frmReporteAnalisis},
  UTFrmPeriodosConsumo in 'UTFrmPeriodosConsumo.pas' {FrmPeriodosConsumo},
  UTFrmDatosPeriodoConsumo in 'UTFrmDatosPeriodoConsumo.pas' {FrmDatosPeriodoConsumo},
  UTFrmRegistroPeriodoConsumoDatos in 'UTFrmRegistroPeriodoConsumoDatos.pas' {FrmRegistroPeriodoConsumoDatos},
  UTFrmRegistroPeriodoConsumo in 'UTFrmRegistroPeriodoConsumo.pas' {FrmRegistroPeriodoConsumo},
  UTFrmRegistroPeriodoConsumoRecetas in 'UTFrmRegistroPeriodoConsumoRecetas.pas' {FrmRegistroPeriodoConsumoRecetas},
  UTFrmBuscarReceta in 'UTFrmBuscarReceta.pas' {FrmBuscarReceta},
  UTFrmImprimeRecetas in 'UTFrmImprimeRecetas.pas' {FrmImprimeRecetas},
  UTFrmInsumosPosPeriodo in 'UTFrmInsumosPosPeriodo.pas' {FrmInsumosPorPeriodos},
  UFrame in 'UFrame.pas' {TMSFrame1: TFrame},
  Unit2 in 'Unit2.pas' {Form2},
  UTFrmMarcas in 'UTFrmMarcas.pas' {FrmMarcas},
  UTFrmDatosMarca in 'UTFrmDatosMarca.pas' {FrmDatosMarca},
  UTFrmPresentaciones in 'UTFrmPresentaciones.pas' {FrmPresentaciones},
  UTFrmDatosPresentacion in 'UTFrmDatosPresentacion.pas' {FrmDatosPresentacion},
  UTFrmSelMarcas in 'UTFrmSelMarcas.pas' {FrmSelMarcas},
  UTfrmSelUnidades in 'UTfrmSelUnidades.pas' {FrmSelUnidades},
  UTFrmSelPresentacion in 'UTFrmSelPresentacion.pas' {FrmSelPresentacion},
  UTFrmConsultaPreciosxInsumo in 'UTFrmConsultaPreciosxInsumo.pas' {FrmConsultaPreciosxInsumo},
  frm_BasesDatosServidor in 'GENERALES\frm_BasesDatosServidor.pas' {frmBasesDatosServidor},
  UTFrmArbolAccesos in 'GENERALES\UTFrmArbolAccesos.pas' {FrmArbolAccesos},
  UTFrmDatosOrganigrama in 'GENERALES\UTFrmDatosOrganigrama.pas' {FrmDatosOrganigrama},
  Frm_Conectando in 'GENERALES\Frm_Conectando.pas' {FrmConectando},
  frm_Login in 'GENERALES\frm_Login.pas' {frmLogin},
  Frm_SelDatabase in 'GENERALES\Frm_SelDatabase.pas' {FrmSelDataBase},
  UTFrmEsquema in 'GENERALES\UTFrmEsquema.pas' {FrmEsquema},
  UFrmParamsConfig in 'GENERALES\UFrmParamsConfig.pas' {FrmParamsConfig},
  UTFrmMuestraAccesos in 'GENERALES\UTFrmMuestraAccesos.pas' {FrmMuestraAccesos},
  UfrmAutentic in 'GENERALES\UfrmAutentic.pas' {frmAutentic},
  UInteliDialog in 'GENERALES\UInteliDialog.pas' {InteliDialog},
  URegistro in 'GENERALES\Comunes Intelicode\URegistro.pas',
  UEstructuraDatos in 'GENERALES\UEstructuraDatos.pas',
  InterClases in 'GENERALES\Comunes Intelicode\InterClases.pas',
  UInfoPanel in 'GENERALES\UInfoPanel.pas' {InfoPanel},
  ExBar in 'GENERALES\Comunes Intelicode\ExBar.pas',
  xDatabase in 'GENERALES\xDatabase.pas',
  UControlExcepciones in 'GENERALES\Comunes Intelicode\UControlExcepciones.pas',
  UTFrmSeleccion in 'GENERALES\UTFrmSeleccion.pas' {FrmSeleccion},
  UTFrmDatosNiveles in 'GENERALES\UTFrmDatosNiveles.pas' {FrmDatosNiveles},
  UTFrmCargaImagen in 'GENERALES\UTFrmCargaImagen.pas' {FrmCargaImagen},
  TMSFrame in 'GENERALES\TMSFrame.pas',
  UTFrmRangoConsumos in 'UTFrmRangoConsumos.pas' {FrmRangoConsumos},
  UTFrmBuscarSolicitud in 'UTFrmBuscarSolicitud.pas' {FrmBuscarSolicitud},
  UTFrmSolicitudDatos in 'UTFrmSolicitudDatos.pas' {FrmSolicitudDatos},
  UTFrmCMTConfiguracion in 'GENERALES\UTFrmCMTConfiguracion.pas' {FrmCMTConfiguracion},
  UTFrmMenu in 'UTFrmMenu.pas' {FrmMenu},
  UTFrmBuscarMenu in 'UTFrmBuscarMenu.pas' {FrmBuscarMenu},
  UTFrmMenuDatos in 'UTFrmMenuDatos.pas' {FrmMenuDatos},
  UTFrmSelPeriodoMenu in 'UTFrmSelPeriodoMenu.pas' {FrmSelPeriodoMenu},
  UTFrmCiudad in 'UTFrmCiudad.pas' {FrmCiudad},
  UTFrmEstado in 'UTFrmEstado.pas' {FrmEstado},
  UTFrmPais in 'UTFrmPais.pas' {FrmPais},
  UTFrmDatosCatalogo in 'UTFrmDatosCatalogo.pas' {FrmDatosCatalogo},
  UTFrmDatosCiudad in 'UTFrmDatosCiudad.pas' {FrmDatosCiudad},
  UTFrmDatosEstado in 'UTFrmDatosEstado.pas' {FrmDatosEstado},
  UTFrmDatosPais in 'UTFrmDatosPais.pas' {FrmDatosPais},
  UDatosOrganizacion in 'UDatosOrganizacion.pas' {FrmDatosOrganizacion},
  UFrmOrganizacion in 'UFrmOrganizacion.pas' {FrmOrganizacion},
  UTFrmMenuDX in 'UTFrmMenuDX.pas' {FrmMenuDX},
  UTFrmEstadoMenu in 'UTFrmEstadoMenu.pas' {FrmEstadoMenu},
  UTFrmReportesIngredientes in 'UTFrmReportesIngredientes.pas' {FrmReportesIngredientes},
  UTFrmGraficaConsumos in 'UTFrmGraficaConsumos.pas' {FrmGraficaConsumos},
  UTFrmInsumoPedido in 'UTFrmInsumoPedido.pas' {FrmInsumoPedido},
  UTFrmNuevoConsumible in 'UTFrmNuevoConsumible.pas' {FrmNuevoConsumible},
  UTFrmConsumible in 'UTFrmConsumible.pas' {FrmConsumible},
  UTFrmSolicitudes in 'UTFrmSolicitudes.pas' {FrmSolicitudes},
  UTFrmBuscarConsumo in 'UTFrmBuscarConsumo.pas' {FrmBuscarConsumo},
  UTFrmSeleccionarMenu in 'UTFrmSeleccionarMenu.pas' {FrmSeleccionarMenu},
  UTFrmEntradasAlmacen in 'UTFrmEntradasAlmacen.pas' {FrmEntradasAlmacen},
  UTFrmRegistroExistencia in 'UTFrmRegistroExistencia.pas' {FrmRegistroExistencia},
  UTFrmBuscarExistencia in 'UTFrmBuscarExistencia.pas' {FrmBuscarExistencia},
  UTFrmSeleccionarInsumo in 'UTFrmSeleccionarInsumo.pas' {FrmSeleccionarInsumo},
  UTFrmEntradasAlmacenDX in 'UTFrmEntradasAlmacenDX.pas' {FrmEntradasAlmacenDX},
  UTFrmEstadoInventarios in 'UTFrmEstadoInventarios.pas' {FrmEstadoInventarios},
  UTFrmBuscarMovimiento in 'UTFrmBuscarMovimiento.pas' {FrmBuscarMovimiento},
  UTFrmOrganizacion in 'GENERALES\UTFrmOrganizacion.pas',
  UTFrmConsultarExistencias in 'UTFrmConsultarExistencias.pas' {FrmConsultarExistencias},
  UTFrmConsultaPrecios in 'UTFrmConsultaPrecios.pas' {FrmConsultaPrecios},
  UTFrmPrecioBajo in 'UTFrmPrecioBajo.pas' {FrmPrecioBajo},
  UTFrmEspecificarSolicitud in 'UTFrmEspecificarSolicitud.pas' {FrmEspecificarSolicitud},
  UTFrmContratos in 'UTFrmContratos.pas' {FrmContratos},
  UTFrmDatosContrato in 'UTFrmDatosContrato.pas' {FrmDatosContrato},
  UTFrmErrorIntegracionPrecios in 'UTFrmErrorIntegracionPrecios.pas' {FrmErrorIntegracionPrecios},
  UTFrmStock in 'UTFrmStock.pas' {FrmStock},
  UTFrmUsuarioPermisos in 'UTFrmUsuarioPermisos.pas' {FrmUsuarioPermisos},
  UTFrmUsuario in 'UTFrmUsuario.pas' {FrmUsuario},
  UTFrmRolPermisos in 'UTFrmRolPermisos.pas' {FrmRolPermisos},
  UTFrmRol in 'UTFrmRol.pas' {FrmRol},
  UTFrmComparaPrecios in 'UTFrmComparaPrecios.pas' {FrmComparaPrecios},
  UTFrmAlmacenes in 'UTFrmAlmacenes.pas' {FrmAlmacenes},
  UTFrmDatosAlmacen in 'UTFrmDatosAlmacen.pas' {FrmDatosAlmacen},
  UTFrmIVA in 'UTFrmIVA.pas' {FrmIVA},
  UTFrmDatosIVA in 'UTFrmDatosIVA.pas' {FrmDatosIVA},
  UTFrmTiposImpuesto in 'UTFrmTiposImpuesto.pas' {FrmTiposImpuesto},
  UTFrmDatosTiposImpuesto in 'UTFrmDatosTiposImpuesto.pas' {FrmDatosTiposImpuesto},
  UTFrmImpuestoxInsumo in 'UTFrmImpuestoxInsumo.pas' {FrmImpuestoxInsumo},
  UtFrmAgregarTipoInsumo in 'UtFrmAgregarTipoInsumo.pas' {FrmAgregarTipoInsumo},
  UTFrmCotizacion in 'UTFrmCotizacion.pas' {FrmCotizacion},
  UTFrmBuscarCotizacion in 'UTFrmBuscarCotizacion.pas' {FrmBuscarCotizacion},
  UTFrmCotizacionDatos in 'UTFrmCotizacionDatos.pas' {FrmCotizacionDatos},
  UTFrmSeleccionarCliente in 'UTFrmSeleccionarCliente.pas' {FrmSeleccionarCliente},
  UTFrmEntradaGeneral in 'UTFrmEntradaGeneral.pas' {FrmEntradaGeneral},
  UTFrmBuscarEntradaGeneral in 'UTFrmBuscarEntradaGeneral.pas' {FrmBuscarEntradaGeneral},
  UTFrmEntradaGeneralDatos in 'UTFrmEntradaGeneralDatos.pas' {FrmEntradaGeneralDatos},
  UTFrmEntradaGeneralPartidaDatos in 'UTFrmEntradaGeneralPartidaDatos.pas' {FrmEntradaGeneralPartidaDatos},
  UTFrmSelInsumo in 'UTFrmSelInsumo.pas' {FrmSelInsumo},
  UTFrmEditarCotizacionPartida in 'UTFrmEditarCotizacionPartida.pas' {FrmEditarCotizacionPartida},
  UfrmImpuestosxinsumo in 'UfrmImpuestosxinsumo.pas' {FrmImpuestosxinsumo},
  UFrmDatosImpuestosxInsumos in 'UFrmDatosImpuestosxInsumos.pas' {FrmDatosImpuestosxinsumos},
  UTFrmSalidasAlmacen in 'UTFrmSalidasAlmacen.pas' {FrmSalidasAlmacen},
  UTFrmSalidaGeneralDatos in 'UTFrmSalidaGeneralDatos.pas' {FrmSalidaGeneralDatos},
  UTFrmSalidaGeneral in 'UTFrmSalidaGeneral.pas' {FrmSalidaGeneral},
  UTfrmRequisicionDatos in 'UTfrmRequisicionDatos.pas' {FrmRequisicionDatos},
  UTFrmRequisicion in 'UTFrmRequisicion.pas' {FrmRequisicion},
  UTFrmEditarRequisicionPartida in 'UTFrmEditarRequisicionPartida.pas' {FrmEditarRequisicionPartida},
  UTFrmOrdenCompra in 'UTFrmOrdenCompra.pas' {FrmOrdenCompra},
  UTFrmSolCotizacion in 'UTFrmSolCotizacion.pas' {FrmSolCotizacion},
  UTFrmBuscarSolCotizacion in 'UTFrmBuscarSolCotizacion.pas' {FrmBuscarSolCotizacion},
  UTFrmSolCotizacionDatos in 'UTFrmSolCotizacionDatos.pas' {FrmSolCotizacionDatos},
  UTFrmEditarSolCotizacionPartida in 'UTFrmEditarSolCotizacionPartida.pas' {FrmEditarSolCotizacionPartida},
  UTFrmSolCotizacionxProveedor in 'UTFrmSolCotizacionxProveedor.pas' {FrmSolCotizacionxProveedor};


{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TClientModule1, ClientModule1);
  Application.CreateForm(TInteliDialog, InteliDialog);
  Application.CreateForm(TFrmSalidasAlmacen, FrmSalidasAlmacen);
  Application.CreateForm(TFrmSalidaGeneralDatos, FrmSalidaGeneralDatos);
  Application.CreateForm(TFrmSalidaGeneral, FrmSalidaGeneral);
  Application.CreateForm(TFrmRequisicionDatos, FrmRequisicionDatos);
  Application.CreateForm(TFrmRequisicion, FrmRequisicion);
  Application.Run;
end.
