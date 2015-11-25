Use Avotrace
GO

IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlLote_CtrlOrdenCorteCtrlAcuerdo_Lote') )
BEGIN
   ALTER TABLE CtrlOrdenCorteCtrlAcuerdo  DROP CONSTRAINT FKCtrlLote_CtrlOrdenCorteCtrlAcuerdo_Lote
END
GO

IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlOrdenCorteCtrlAcuerdo_CtrlOrdenCorte') )
BEGIN
   ALTER TABLE CtrlOrdenCorteCtrlAcuerdo  DROP CONSTRAINT FKCtrlOrdenCorteCtrlAcuerdo_CtrlOrdenCorte
END

GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlOrdenCorteCtrlAcuerdo_CtrlAcuerdo') )
BEGIN
   ALTER TABLE CtrlOrdenCorteCtrlAcuerdo  DROP CONSTRAINT FKCtrlOrdenCorteCtrlAcuerdo_CtrlAcuerdo
END

go
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatResponsableCuadrillaCatEmpresaCosechadora') )
BEGIN
   ALTER TABLE CatResponsableCuadrilla  DROP CONSTRAINT FKCatResponsableCuadrillaCatEmpresaCosechadora
END
go
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlOrdenCorteCtrlAcuerdo') )
BEGIN
   ALTER TABLE CtrlOrdenCorte  DROP CONSTRAINT FKCtrlOrdenCorteCtrlAcuerdo
END

go
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlOrdenInvBodegaGenericoCtrlOrdenCorte') )
BEGIN
   ALTER TABLE CtrlOrdenInvBodegaGenerico  DROP CONSTRAINT FKCtrlOrdenInvBodegaGenericoCtrlOrdenCorte
END


GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlInvBodegaGenericoCatCuentaContable') )
BEGIN
   ALTER TABLE CtrlInvBodegaGenerico  DROP CONSTRAINT FKCtrlInvBodegaGenericoCatCuentaContable
END

GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatVehiculoCatEmpresaTransportista') )
BEGIN
   ALTER TABLE CatVehiculo  DROP CONSTRAINT FKCatVehiculoCatEmpresaTransportista
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatEntidadFederativaCatPais') )
BEGIN
   ALTER TABLE CatEntidadFederativa  DROP CONSTRAINT FKCatEntidadFederativaCatPais
END
GO
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatMunicipioCatEntidadFederativa') )
BEGIN
   ALTER TABLE CatMunicipio  DROP CONSTRAINT FKCatMunicipioCatEntidadFederativa
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatMunicipioCatEntidadFederativa') )
BEGIN
   ALTER TABLE CatMunicipio  DROP CONSTRAINT FKCatMunicipioCatEntidadFederativa
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatLocalidadCatMunicipio') )
BEGIN
   ALTER TABLE CatLocalidad  DROP CONSTRAINT FKCatLocalidadCatMunicipio
END

GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlOrdenCorteCatEmpresaCosechadora') )
BEGIN
   ALTER TABLE CtrlOrdenCorte  DROP CONSTRAINT FKCtrlOrdenCorteCatEmpresaCosechadora
END


GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlOrdenCorteCatEmpresaTransportista') )
BEGIN
   ALTER TABLE CtrlOrdenCorte  DROP CONSTRAINT FKCtrlOrdenCorteCatEmpresaTransportista
END
GO
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatDocumentacionProcesoCatDocumentacion') )
BEGIN
   ALTER TABLE CatDocumentacionProceso  DROP CONSTRAINT FKCatDocumentacionProcesoCatDocumentacion
END
GO
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatHuertaCatLocalidad') )
BEGIN
   ALTER TABLE CatHuerta  DROP CONSTRAINT FKCatHuertaCatLocalidad
END
GO
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatFrutaCabeceraCatClaseFruta') )
BEGIN
   ALTER TABLE CatFrutaCabecera  DROP CONSTRAINT FKCatFrutaCabeceraCatClaseFruta
END
GO
GO
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatFrutaCabeceraCatFloracion') )
BEGIN
   ALTER TABLE CatFrutaCabecera  DROP CONSTRAINT FKCatFrutaCabeceraCatFloracion
END

GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatFrutaCabeceraCatTipoCultivo') )
BEGIN
   ALTER TABLE CatFrutaCabecera  DROP CONSTRAINT FKCatFrutaCabeceraCatTipoCultivo
END

GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatFrutaCabeceraCatTipoCultivo') )
BEGIN
   ALTER TABLE CatFrutaCabecera  DROP CONSTRAINT FKCatFrutaCabeceraCatTipoCultivo
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatFrutaCabeceraCatTipoCultivo') )
BEGIN
   ALTER TABLE CtrlProdHuerta  DROP CONSTRAINT FKCtrlProdHuertaCatHuerta
END
go
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlProdHuertaCatProductor') )
BEGIN
   ALTER TABLE CtrlProdHuerta  DROP CONSTRAINT FKCtrlProdHuertaCatProductor
END

GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatDomicilioCatTipoDomicilio') )
BEGIN
   ALTER TABLE CatDomicilio  DROP CONSTRAINT FKCatDomicilioCatTipoDomicilio
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatDomicilioCatLocalidad') )
BEGIN
   ALTER TABLE CatDomicilio  DROP CONSTRAINT FKCatDomicilioCatLocalidad
END
------------------------------------------------------------
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlEntidadDomicilioCatProceso') )
BEGIN
   ALTER TABLE CtrlEntidadDomicilio  DROP CONSTRAINT FKCtrlEntidadDomicilioCatProceso
END
go
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlEntidadDomicilioCatDomicilio') )
BEGIN
   ALTER TABLE CtrlEntidadDomicilio  DROP CONSTRAINT FKCtrlEntidadDomicilioCatDomicilio
END
GO

GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlEntidadDocumentacionCatDocumentacionProceso') )
BEGIN
   ALTER TABLE CtrlEntidadDocumentacion  DROP CONSTRAINT FKCtrlEntidadDocumentacionCatDocumentacionProceso
END
GO

GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlCertificacionesHuertaCtrlCertificacionesHuerta') )
BEGIN
   ALTER TABLE CtrlCertificacionesHuerta  DROP CONSTRAINT FKCtrlCertificacionesHuertaCtrlCertificacionesHuerta
END
GO
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlCertificacionesHuertaCatHuerta') )
BEGIN
   ALTER TABLE CtrlCertificacionesHuerta  DROP CONSTRAINT FKCtrlCertificacionesHuertaCatHuerta
END
GO

GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatCertificacionesRequeridaCatCertificacion') )
BEGIN
   ALTER TABLE CatCertificacionesRequerida  DROP CONSTRAINT FKCatCertificacionesRequeridaCatCertificacion
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatCertificacionesRequeridaCatCertificacion') )
BEGIN
   ALTER TABLE CatCertificacionesRequerida  DROP CONSTRAINT FKCatCertificacionesRequeridaCatCertificacion
END
GO
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatCertificacionesRequerida') )
BEGIN
   ALTER TABLE CatCertificacionesRequerida  DROP CONSTRAINT FKCatCertificacionesRequerida
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatCertificacionesRequeridaCatTipoCultivo') )
BEGIN
   ALTER TABLE CatCertificacionesRequerida  DROP CONSTRAINT FKCatCertificacionesRequeridaCatTipoCultivo
END

GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatCajasCorteCatTipoCultivo') )
BEGIN
   ALTER TABLE CatCajasCorte  DROP CONSTRAINT FKCatCajasCorteCatTipoCultivo
END
GO

GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatCajasCortecatpais') )
BEGIN
   ALTER TABLE CatCajasCorte  DROP CONSTRAINT FKCatCajasCortecatpais
END

GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatConceptoCatProceso') )
BEGIN
   ALTER TABLE CatConcepto  DROP CONSTRAINT FKCatConceptoCatProceso
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlInventarioCajasCorteCatConcepto') )
BEGIN
   ALTER TABLE CtrlInventarioCajasCorte  DROP CONSTRAINT FKCtrlInventarioCajasCorteCatConcepto
END
GO
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlInventarioCajasCorteOrden_CtrlOrdenCorte') )
BEGIN
   ALTER TABLE CtrlInventarioCajasCorteOrden  DROP CONSTRAINT FKCtrlInventarioCajasCorteOrden_CtrlOrdenCorte
END
GO
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlInventarioCajasCorteOrden_CtrlInventarioCajasCorte') )
BEGIN
   ALTER TABLE CtrlInventarioCajasCorteOrden  DROP CONSTRAINT FKCtrlInventarioCajasCorteOrden_CtrlInventarioCajasCorte
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlPrevioSalidaCorte_CtrlOrdenCorte') )
BEGIN
   ALTER TABLE CtrlPrevioSalidaCorte  DROP CONSTRAINT FKCtrlPrevioSalidaCorte_CtrlOrdenCorte
END
GO
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlPrevioSalidaCorte_CatResponsableCuadrilla') )
BEGIN
   ALTER TABLE CtrlPrevioSalidaCorte  DROP CONSTRAINT FKCtrlPrevioSalidaCorte_CatResponsableCuadrilla
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlPrevioSalidaCorte_CatVehiculo') )
BEGIN
   ALTER TABLE CtrlPrevioSalidaCorte  DROP CONSTRAINT FKCtrlPrevioSalidaCorte_CatVehiculo
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatStatus_CatProceso') )
BEGIN
   ALTER TABLE CatStatus  DROP CONSTRAINT FKCatStatus_CatProceso
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlLote_CatMaquinaSeleccionadora') )
BEGIN
   ALTER TABLE CtrlLote  DROP CONSTRAINT FKCtrlLote_CatMaquinaSeleccionadora
END
GO
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlLoteOrdenCorte_CtrlLote') )
BEGIN
   ALTER TABLE CtrlLoteOrdenCorte  DROP CONSTRAINT FKCtrlLoteOrdenCorte_CtrlLote
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlLoteOrdenCorte_CtrlOrdenCorte') )
BEGIN
   ALTER TABLE CtrlLoteOrdenCorte  DROP CONSTRAINT FKCtrlLoteOrdenCorte_CtrlOrdenCorte
END
GO
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatIngresoEmpaque_CtrlOrdenCorte') )
BEGIN
   ALTER TABLE CatIngresoEmpaque  DROP CONSTRAINT FKCatIngresoEmpaque_CtrlOrdenCorte
END
GO
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatBodegaGenerica_CatTipoBodegaGenerica') )
BEGIN
   ALTER TABLE CatBodegaGenerica  DROP CONSTRAINT FKCatBodegaGenerica_CatTipoBodegaGenerica
END
GO
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlInvBodegaGenerico_CatBodegaGenerica') )
BEGIN
   ALTER TABLE CtrlInvBodegaGenerico  DROP CONSTRAINT FKCtrlInvBodegaGenerico_CatBodegaGenerica
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlInvBodegaGenerico_CatConcepto') )
BEGIN
   ALTER TABLE CtrlInvBodegaGenerico  DROP CONSTRAINT FKCtrlInvBodegaGenerico_CatConcepto
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlOrdenInvBodegaGenerico_CtrlInvBodegaGenerico') )
BEGIN
   ALTER TABLE CtrlOrdenInvBodegaGenerico  DROP CONSTRAINT FKCtrlOrdenInvBodegaGenerico_CtrlInvBodegaGenerico
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatCalibrePais_CatFrutaDetalle') )
BEGIN
   ALTER TABLE CatCalibrePais  DROP CONSTRAINT FKCatCalibrePais_CatFrutaDetalle
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatCalibrePais_catpais') )
BEGIN
   ALTER TABLE CatCalibrePais  DROP CONSTRAINT FKCatCalibrePais_catpais
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatFrutaCabeceraAcuerdo_CatTipoCorte') )
BEGIN
   ALTER TABLE CatFrutaCabeceraAcuerdo  DROP CONSTRAINT FKCatFrutaCabeceraAcuerdo_CatTipoCorte
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatFrutaCabeceraAcuerdo_CatTipoBeneficiario') )
BEGIN
   ALTER TABLE CatFrutaCabeceraAcuerdo  DROP CONSTRAINT FKCatFrutaCabeceraAcuerdo_CatTipoBeneficiario
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatFrutaCabeceraAcuerdo_CatPais') )
BEGIN
   ALTER TABLE CatFrutaCabeceraAcuerdo  DROP CONSTRAINT FKCatFrutaCabeceraAcuerdo_CatPais
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatFrutaCabeceraAcuerdo_CatFrutaCabecera') )
BEGIN
   ALTER TABLE CatFrutaCabeceraAcuerdo  DROP CONSTRAINT FKCatFrutaCabeceraAcuerdo_CatFrutaCabecera
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlAcuerdo_CatCaracteristicasPesoFacturacion') )
BEGIN
   ALTER TABLE CtrlAcuerdo  DROP CONSTRAINT FKCtrlAcuerdo_CatCaracteristicasPesoFacturacion
END

GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlAcuerdo_CatFrutaCabeceraAcuerdo') )
BEGIN
   ALTER TABLE CtrlAcuerdo  DROP CONSTRAINT FKCtrlAcuerdo_CatFrutaCabeceraAcuerdo
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlAcuerdo_CatBeneficiario') )
BEGIN
   ALTER TABLE CtrlAcuerdo  DROP CONSTRAINT FKCtrlAcuerdo_CatBeneficiario
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlAcuerdo_CtrlProdHuerta') )
BEGIN
   ALTER TABLE CtrlAcuerdo  DROP CONSTRAINT FKCtrlAcuerdo_CtrlProdHuerta
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlAcuerdo_CatAcopiador') )
BEGIN
   ALTER TABLE CtrlAcuerdo  DROP CONSTRAINT FKCtrlAcuerdo_CatAcopiador
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlPrecioDirigidoDetalle_CatFrutaDetalle') )
BEGIN
   ALTER TABLE CtrlPrecioDirigidoDetalle  DROP CONSTRAINT FKCtrlPrecioDirigidoDetalle_CatFrutaDetalle
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCtrlPrecioDirigidoDetalle_CtrlAcuerdo') )
BEGIN
   ALTER TABLE CtrlPrecioDirigidoDetalle  DROP CONSTRAINT FKCtrlPrecioDirigidoDetalle_CtrlAcuerdo
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatFrutaCabeceraDetalleSemamanaPrecio_CatFrutaDetalle') )
BEGIN
   ALTER TABLE CatFrutaCabeceraDetalleSemamanaPrecio DROP CONSTRAINT FKCatFrutaCabeceraDetalleSemamanaPrecio_CatFrutaDetalle
END
GO
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatFrutaCabeceraDetalleSemamanaPrecio_CatFrutaCabeceraAcuerdo') )
BEGIN
   ALTER TABLE CatFrutaCabeceraDetalleSemamanaPrecio DROP CONSTRAINT FKCatFrutaCabeceraDetalleSemamanaPrecio_CatFrutaCabeceraAcuerdo
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatFrutaCabeceraDetalleSemamanaPrecio_CatSemana') )
BEGIN
   ALTER TABLE CatFrutaCabeceraDetalleSemamanaPrecio DROP CONSTRAINT FKCatFrutaCabeceraDetalleSemamanaPrecio_CatSemana
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatFrutaCabeceraDetalle_CatFrutaDetalle') )
BEGIN
   ALTER TABLE CatFrutaCabeceraDetalle DROP CONSTRAINT FKCatFrutaCabeceraDetalle_CatFrutaDetalle
END
GO
IF EXISTS(select * from dbo.sysobjects where id = object_id('FKCatFrutaCabeceraDetalle_CatFrutaCabecera') )
BEGIN
   ALTER TABLE CatFrutaCabeceraDetalle DROP CONSTRAINT FKCatFrutaCabeceraDetalle_CatFrutaCabecera
END
GO
/*BORRADO TABLAS */

--CtrlOrdenCorteCtrlAcuerdo
GO


IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CtrlOrdenCorteCtrlAcuerdo') 
BEGIN
  DROP TABLE CtrlOrdenCorteCtrlAcuerdo
END

GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CtrlLote_CtrlOrdenCorteCtrlAcuerdo') 
BEGIN
  DROP TABLE CtrlLote_CtrlOrdenCorteCtrlAcuerdo
END


go
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CtrlOrdenCorteCtrlAcuerdo') 
BEGIN
  DROP TABLE CtrlOrdenCorteCtrlAcuerdo
END

GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatCuentaContable') 
BEGIN
  DROP TABLE CatCuentaContable
END

IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatFrutaCabeceraDetalleSemamanaPrecio') 
BEGIN
  DROP TABLE CatFrutaCabeceraDetalleSemamanaPrecio
END
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatCalibrePais') 
BEGIN
  DROP TABLE CatCalibrePais
END

go
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatFrutaCabeceraDetalle') 
BEGIN
  DROP TABLE CatFrutaCabeceraDetalle
END
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CtrlOrdenInvBodegaGenerico') 
BEGIN
  DROP TABLE CtrlOrdenInvBodegaGenerico
END

GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CtrlInvBodegaGenerico') 
BEGIN
  DROP TABLE CtrlInvBodegaGenerico
END
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatIngresoEmpaque') 
BEGIN
  DROP TABLE CatIngresoEmpaque
END

GO
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CtrlEntidadEstatus') 
BEGIN
  DROP TABLE CtrlEntidadEstatus
END
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CtrlPrevioSalidaCorte') 
BEGIN
  DROP TABLE CtrlPrevioSalidaCorte
END
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CtrlPrecioDirigidoDetalle') 
BEGIN
  DROP TABLE CtrlPrecioDirigidoDetalle
END
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatCertificacionesRequerida') 
begin
	DROP TABLE CatCertificacionesRequerida
end
go

GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CtrlAcuerdo') 
begin
	DROP TABLE CtrlAcuerdo
end
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatFrutaCabeceraAcuerdo') 
BEGIN
  DROP TABLE CatFrutaCabeceraAcuerdo
END

go
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CtrlProdHuerta') 
BEGIN
  DROP TABLE CtrlProdHuerta
END
GO

GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatFrutaDetalle') 
BEGIN
  DROP TABLE CatFrutaDetalle
END
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatFrutaCabecera') 
BEGIN
  DROP TABLE CatFrutaCabecera
END
GO

IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatSemana') 
BEGIN
  DROP TABLE CatSemana
END

GO
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatCajasCorte') 
BEGIN
  DROP TABLE CatCajasCorte
END

GO

IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatTipoCultivo') 
BEGIN
  DROP TABLE CatTipoCultivo
END

GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatFloracion') 
BEGIN
  DROP TABLE CatFloracion
END


GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatTipoCorte') 
BEGIN
  DROP TABLE CatTipoCorte
END
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CtrlCertificacionesHuerta') 
begin
	DROP TABLE CtrlCertificacionesHuerta
end

GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatHuerta') 
BEGIN
  DROP TABLE CatHuerta
END
GO

GO
GO
go
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatProductor') 
begin
	DROP TABLE CatProductor
end
go

GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CtrlEntidadDomicilio') 
BEGIN
  DROP TABLE CtrlEntidadDomicilio
END
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatDomicilio') 
BEGIN
  DROP TABLE CatDomicilio
END
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CtrlEntidadDocumentacion') 
BEGIN
  DROP TABLE CtrlEntidadDocumentacion
END

GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatDocumentacionProceso') 
BEGIN
  DROP TABLE CatDocumentacionProceso
END
GO
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatStatus') 
BEGIN
  DROP TABLE CatStatus
END
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatLocalidad') 
begin
	DROP TABLE CatLocalidad
end
go
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatMunicipio') 
begin
	DROP TABLE CatMunicipio
end
GO
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatEntidadFederativa') 
begin
	DROP TABLE CatEntidadFederativa
end

GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatPais') 
begin
	DROP TABLE CatPais
end
GO
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CtrlInventarioCajasCorteOrden') 
BEGIN
  DROP TABLE CtrlInventarioCajasCorteOrden
END
GO

GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CtrlLoteOrdenCorte') 
BEGIN
  DROP TABLE CtrlLoteOrdenCorte
END

GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CtrlLote') 
BEGIN
  DROP TABLE CtrlLote
END
GO

go
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CtrlOrdenCorte') 
BEGIN
  DROP TABLE CtrlOrdenCorte
END
GO
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatDocumentacion') 
BEGIN
  DROP TABLE CatDocumentacion
END
go
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatTipoDomicilio') 
begin
	DROP TABLE CatTipoDomicilio
end
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatAcopiador') 
begin
	DROP TABLE CatAcopiador
end
GO

IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatCertificacion') 
begin
	DROP TABLE CatCertificacion
end
go
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatBeneficiario') 
begin
	DROP TABLE CatBeneficiario
end
go
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatClaseFruta') 
begin
	DROP TABLE CatClaseFruta
end
GO
go
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatCaracteristicasPesoFacturacion') 
begin
	DROP TABLE CatCaracteristicasPesoFacturacion
end
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatVehiculo') 
begin
	DROP TABLE CatVehiculo
end

GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatEmpresaTransportista') 
begin
	DROP TABLE CatEmpresaTransportista
end
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatEmpresaCosechadora') 
begin
	DROP TABLE CatEmpresaCosechadora
end
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatResponsableCuadrilla') 
begin
	DROP TABLE CatResponsableCuadrilla
end
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatTipoBeneficiario') 
BEGIN
  DROP TABLE CatTipoBeneficiario
END
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CtrlInventarioCajasCorte') 
BEGIN
  DROP TABLE CtrlInventarioCajasCorte
END
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatConcepto') 
BEGIN
  DROP TABLE CatConcepto
END
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatProceso') 
BEGIN
  DROP TABLE CatProceso
END

GO

IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatMaquinaSeleccionadora') 
BEGIN
  DROP TABLE CatMaquinaSeleccionadora
END
GO
GO

IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatBodegaGenerica') 
BEGIN
  DROP TABLE CatBodegaGenerica
END
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatTipoBodegaGenerica') 
BEGIN
  DROP TABLE CatTipoBodegaGenerica
END
GO
/*CREACION TABLAS*/
GO
CREATE TABLE  CtrlLote_CtrlOrdenCorteCtrlAcuerdo(  /*Intermediario,Casa,Normal*/
IdLote_OrdenCorteCtrlAcuerdo  int PRIMARY KEY,
idLote int not null,
IdOrdenCorteCtrlAcuerdo int not null
)


GO
CREATE TABLE  CatTipoBeneficiario(  /*Intermediario,Casa,Normal*/
IdTipoBeneficiario  int PRIMARY KEY,
TipoBeneficiario     VARCHAR(50) 
)

GO
CREATE TABLE  CatEmpresaTransportista(  
/*La empresa que presta el servicio de flete para el corte. tendrá domicilio para ubicarla y varios teléfonos*/
IdEmpresaTransportista  int PRIMARY KEY,
EmpresaTransportista   VARCHAR(200) 
)
GO
CREATE TABLE  CatVehiculo(  
/*La empresa que presta el servicio de flete corte. tendrá domicilio para ubicarla y varios teléfonos*/
IdVehiculo  int PRIMARY KEY,
Placa   VARCHAR(20) not null,
NumeroEconomico   VARCHAR(20) not null,
Descripcion    VARCHAR(20),
IdEmpresaTransportista int not null
)

GO
CREATE TABLE  CatEmpresaCosechadora(  
/*La empresa que presta el servicio de flete corte. tendrá domicilio para ubicarla y varios teléfonos*/
IdEmpresaCosechadora  int PRIMARY KEY,
EmpresaCosechadora   VARCHAR(200) 
)
GO
GO
CREATE TABLE  CatResponsableCuadrilla(  
/*La empresa que presta el servicio de flete corte. tendrá domicilio para ubicarla y varios teléfonos*/
IdResponsableCuadrilla  int PRIMARY KEY,
IdEmpresaCosechadora  int not null,
PrimerNombre   VARCHAR(50) not null ,
SegundoNombre   VARCHAR(50) ,
Paterno   VARCHAR(50)  not null,
Materno   VARCHAR(50)  not null,
)
GO

CREATE TABLE CatCaracteristicasPesoFacturacion(
/*Habrá por default un registro(No editarble: PesoEnBascula=0 Es decir, este tipo 
de acuerdo será facturado despues deLaSelección, si el campo PesoEnBascula=0 todos los demás campos serán cero, es decir, como se
pesará en banda no tendrá que seleccionar las otras características, además los controles serán radios.*/
IdCaracteristicasPesoFacturacion    int PRIMARY KEY,
PesoEnBascula decimal(1) not null, 
/*se determina si se pesará en bascula(previo) al ingreso al empaque,el cero indica en banda posterior a la selección*/
Promediar decimal(1) not null,
CargarAlMayor decimal(1) not null,
CargarAlMenos decimal(1) not null,
CapturarCajasXCalibreEnBascula decimal(1) not null,
)
GO
CREATE TABLE  CatBeneficiario(  /*es el que va a cobrar el cheque.*/
IdBeneficiario  int PRIMARY KEY,
PrimerNombre   VARCHAR(50) ,
SegundoNombre   VARCHAR(50) ,
Paterno   VARCHAR(50) ,
Materno   VARCHAR(50) ,
RFC   VARCHAR(50) ,
Homoclave   VARCHAR(50) 
)
GO
GO
CREATE TABLE  CatAcopiador(
IdAcopiador int PRIMARY KEY,
IdTipoProductor int   NOT NULL,
PrimerNombre   VARCHAR(50) ,
SegundoNombre   VARCHAR(50) ,
Paterno   VARCHAR(50) ,
Materno   VARCHAR(50) ,
RFC   VARCHAR(50) ,
Homoclave   VARCHAR(50) 
)

GO

GO
CREATE TABLE  CatProductor(
IdProductor int PRIMARY KEY,
IdTipoProductor int   NOT NULL,
PrimerNombre   VARCHAR(50) ,
SegundoNombre   VARCHAR(50) ,
Paterno   VARCHAR(50) ,
Materno   VARCHAR(50) ,
RFC   VARCHAR(50) ,
Homoclave   VARCHAR(50) 
)

GO

CREATE TABLE  CatPais(
IdPais int PRIMARY KEY,
Pais VARCHAR(50) )
GO
CREATE TABLE  CatEntidadFederativa(
IdEntidadFederativa int PRIMARY KEY,
IdPais  int   NOT NULL,
EntidadFederativa  VARCHAR(50) 
)
GO


GO
CREATE TABLE  CatMunicipio(
IdMunicipio int PRIMARY KEY,
IdEntidadFederativa  int   NOT NULL,
Municipio  VARCHAR(50) 
)
GO

GO
CREATE TABLE  CatLocalidad(
IdLocalidad int PRIMARY KEY,
IdMunicipio   int   NOT NULL, 
Localidad   VARCHAR(50) 
)
GO

CREATE TABLE CtrlOrdenCorte (
IdOrdenCorte  int PRIMARY KEY,
fecha date,
IdEmpresaTransportista int not null,
IdEmpresaCosechadora int not null
)
GO
CREATE TABLE CtrlOrdenCorteCtrlAcuerdo(
/*ESTA TABLA SE CREO YA QUE EN UNA ORDEN DE CORTE, PUEDE  HABER VARIOS HUERTOS, ES DECIR, VARIOS ACUERDOS.*/
IdOrdenCorteCtrlAcuerdo  int PRIMARY KEY,
IdOrdenCorte  int  NOT NULL,
IdAcuerdo  int  NOT NULL
)


GO
CREATE TABLE CatProceso(     /*(Acuerdo,orden,preenvio etc,IdgresoEmpaque.)*/
IdProceso   int PRIMARY KEY,
Proceso VARCHAR(50)
)
GO
CREATE TABLE CatDocumentacion (/* (Certificado de organico,cfi,bico etc)*/
IdDocumentacion   int PRIMARY KEY,
Documentacion  VARCHAR(50)
)
GO
CREATE TABLE CatDocumentacionProceso(
IdDocumentacionProceso   int PRIMARY KEY,
IdDocumentacion  int   NOT NULL ,
IdProceso  int   NOT NULL 
)
GO
GO
CREATE TABLE CatHuerta(
idHuerta      int PRIMARY KEY,
SAGARPA varchar(14),
Latitud decimal,
Longitd decimal,
idLocalidad      int   NOT NULL ,
SuperficieMetros  decimal,
ASNM  decimal
)
GO


CREATE TABLE  CatTipoCorte( /*banda,parejo,dirigido*/
IdTipoCorte     int PRIMARY KEY,
TipoCorte   VARCHAR(50) 
)
GO
CREATE TABLE CatFloracion( /*Loca,normal,aventa*/
IdFloracion      int PRIMARY KEY,
Floracion   VARCHAR(50) 
)
GO

CREATE TABLE CatTipoCultivo( /*Solo dos elementos*/
IdTipoCultivo     int PRIMARY KEY,
TipoCultivo    VARCHAR(50) )
GO
CREATE TABLE  CatSemana(
/*se llama semana aunque en realidad son solo periodos, por los precios se quieren establecer de lunes a miércoles y jueves a viernes otro o se quiere tilizar para otra cosa*/
IdSemana     int PRIMARY KEY,
FechaInicio date   NOT NULL ,
FechaFin date   NOT NULL 

)

CREATE TABLE  CatClaseFruta(
/*Primer segunda,Canica casi, casi es para nacional*/
IdClaseFruta     int PRIMARY KEY,
ClaseFruta varchar(50)
)

GO
CREATE TABLE CatFrutaCabecera(
/*  Almacena las caracteristica de la fruta agrupadas por un codigo, antes agrupaba un monton de cosas mas y se elimnaron*/
IdFrutaCabecera      int PRIMARY KEY,
Codigo varchar(5)      not null,
IdFloracion       int   NOT NULL , /*loca,aventa,marce*/
IdTipoCultivo       int   NOT NULL , /*Organico,conve*/
IdClaseFruta   int   NOT NULL , /*primer seg. etc.*/
)
GO
CREATE TABLE CatFrutaDetalle (
/*esto es el gramaje por cada tiempo de fruta, el precio se realiza con una estructura mas compleja*/
IdFrutaDetalle     int PRIMARY KEY,
Codigo varchar(5) not null,
GramosDesde  decimal,
GramosHasta decimal,
)

GO
CREATE TABLE  CtrlProdHuerta(
IdProdHuerta int PRIMARY KEY,
idHuerta   int   NOT NULL,
IdProductor   int   NOT NULL)

GO
CREATE TABLE   CatTipoDomicilio ( /*Fiscal, de localización 1,Oficina,casa*/
IdTipoDomicilio int PRIMARY KEY,
TipoDomicilio  VARCHAR(50) 
)
GO
go
------------------------------------------------------------
CREATE TABLE  CatDomicilio(
IdDomicilio int PRIMARY KEY,
IdTipoDomicilio  int   NOT NULL, 
Calle   VARCHAR(50) ,
NumeroInterior   VARCHAR(5) ,
NumeroExterior   VARCHAR(5) ,
Colonia    VARCHAR(50) ,
CodigoPostal   VARCHAR(50) ,
IdLocalidad  int   NOT NULL)
GO
GO
CREATE TABLE  CtrlEntidadDomicilio(
IdEntidadDomicilio int PRIMARY KEY,
idEntidad        int   NOT NULL, /*cliente USA,IdClienteNacional,IdProductor, */
IdDomicilios    int   NOT NULL,
IdProceso    int   NOT NULL /*puede ser que haya varios ids del domicilio del acopiador, productor etc.por eso se puso este campo*/
)
GO
GO
CREATE TABLE CtrlEntidadDocumentacion(
IdEntidadDocumentacion    int PRIMARY KEY,
IdEntidad  int   NOT NULL , /*IdAcuerdo etc.*/
IdDocumentacionProceso int   NOT NULL ,
NombreArchivo VARCHAR(4000)
/* Se había pensado en agegar IdTipoEntidad pero esa tabla como viene de CatDocumentacionProceso y luego de CatProceso ya no fué neceesario*/
)
GO
go
CREATE TABLE CatCertificacion(
IdCertificacion    int PRIMARY KEY,
Certificacion    varchar(500) not null
)

GO
CREATE TABLE CtrlCertificacionesHuerta(
/*se almacenanlos ids de las certificaioens*/
IdCertificacionesHuerta    int PRIMARY KEY,
FechaRealizacion date   NOT NULL,
FechaTerminoVigencia date   NOT NULL,
IdHuerta int not null,
IdCertificacion int not null
)
GO

GO
CREATE TABLE CatCertificacionesRequerida(
IdCertificacionesRequerida    int PRIMARY KEY,
Idpais int   NOT NULL ,
IdTipoCultivo int   NOT NULL,
IdCertificacion  int   NOT NULL
)
GO
GO
CREATE TABLE  CatCajasCorte(  
IdCatCajasCorte  int PRIMARY KEY,
Tamanio decimal(5,2) ,/*se indica en kgs*/
IdTipoCultivo int not null,
idpais int not null,
color varchar(20)
)
GO

CREATE TABLE  CatConcepto(
/*En primera instancia servirá para almacenar los conceptos de inventario,
 es decir, "Entrada por Compra de cajas", "Entrada por reparacion de cajas", "Salida para camión según orden"*/
IdConcepto  int PRIMARY KEY,
IdProceso int   NOT NULL,
Concepto varchar(50) not null
)
go
CREATE TABLE CtrlInventarioCajasCorte(
IdInventarioCajasCorte    int PRIMARY KEY,
IdCatCajasCorte int   NOT NULL ,
CantidadEntrada int   NOT NULL,
CantidadSalida  int   NOT NULL,
fecha           datetime not null,
IdConcepto  int   NOT NULL
)
GO

CREATE TABLE CtrlInventarioCajasCorteOrden(
IdInventarioCajasCorteOrden    int PRIMARY KEY,
IdOrdenCorte int not null,
IdInventarioCajasCorte int not null
)
GO
CREATE TABLE CtrlPrevioSalidaCorte (
IdPrevioSalidaCorte  int PRIMARY KEY,
IdOrdenCorte int   NOT NULL ,
FechaHoraSalidaFijada datetime,
FechaHoraSalidaReal datetime,
idVehiculo int not null,
IdResponsableCuadrilla  int not null,
PesoVacio decimal(10,2), /* en kgs*/
Observaciones varchar(max)

)
GO
CREATE TABLE CatStatus(
/*Servirá de status general y genérico, por ejempll
entro al empaque, están descargando, están en reciba, están realizando hueso y m.seca etc*/
idEstatus int PRIMARY KEY,
Estatus varchar(20) not null,
IdProceso int not null,
ConsecutivoCronologico int, /*aceptar nulos ya que en ocasiones se puede que no sea necesario*/
PermiteRetroceso decimal(1) ,/*es decir en base a la parte cronologica se puede tener retrocesos de status*/
EsEstatusFinal  decimal(1)  /*solo un elmeneto por proceso podrá ser estatus final =1*/
)
GO
CREATE TABLE CtrlEntidadEstatus(
IdEntidadEstatus    int PRIMARY KEY,
IdEntidad  int   NOT NULL , /*IdAcuerdo IdLote etc,*/
idEstatus  int   NOT NULL ,
FechaInicioEstatus datetime not null,
FechaFinEstatus datetime not null /*Será el 01/01/2200 en vez de null null*/
)
GO

CREATE TABLE CatMaquinaSeleccionadora(
idMaquinaSeleccionadora   int PRIMARY KEY,
MaquinaSeleccionadora varchar(50))
GO
CREATE TABLE CtrlLote(
IdLote  int PRIMARY KEY,
idMaquinaSeleccionadora int   NOT NULL ,
FechaHoraCorridaFijada datetime,
FechaHoraCorridaReal datetime,
BandaEmpaquetado decimal(1) not null /*si se va a empaquetar o solo se pasará a bodega.*/
/* CtrlEntidadEstatus.IdEntidadEstatus no se pone pero se estará vinculado */
)
GO
--CREATE TABLE CtrlLoteOrdenCorte(
--/*Como n ordenes se pueden correr en un solo lote, aquí es donde se dice esta y esta y esta orden se correrán en este lote*/
--IdLoteOrdenCorte  int PRIMARY KEY,
--IdLote int not null,
--IdOrdenCorte int not null
--)

GO

GO
CREATE TABLE CatIngresoEmpaque(
IdgresoEmpaque   int PRIMARY KEY,
idOrdenCorte int not null,
--PesoFruta decimal(15,2) not null,
HoraIngreso datetime  not null,
Observaciones varchar(2000)
/*Llevará status conel esquema global*/
)
GO
CREATE TABLE CatTipoBodegaGenerica(
/*3 tipo de bodega cuarentena, de selección y de envío*/
idTipoBodegaGenerica   int PRIMARY KEY,
TipoBodegaGenerica varchar(50),
)
go
CREATE TABLE CatBodegaGenerica(
/*existen 3 tipo de bodega cuarentena, de selección y de envío, se llevará un mecanismo genérico de inventario por n bodegas*/
idBodegaGenerica   int PRIMARY KEY,
idTipoBodegaGenerica int not null,
BodegaGenerica varchar(50),
CapacidadKgs decimal(15,2)
)
GO
CREATE TABLE CtrlInvBodegaGenerico(
IdInvBodegaGenerico  int PRIMARY KEY,
idBodegaGenerica int not null,
KgEntrada  decimal(15,2),
KgSalida  decimal(15,2),
IdConcepto int not null,
IdCuentaContable int not null,
Fecha datetime not null,
EntraDineroEmpaque decimal(15,2) not null,
SaleDineroEmpaque decimal(15,2) not null,
IdPrecioDetalle  int null /*Este elemento es el que indica el tipo de fruta.*/
/*
Manejo de inventario:
Pago en báscula:
     Inventario en bodegaCuarentenaria:
	     MarcadoPago en Bascula    
			 Parejo:
			   Entrada:
			    se inserta en CtrlOrdenInvBodegaGenerico su correspondiente
			     En base al peso de la fruta se inserta el idPrecioDetalle y en concepto EntraDineroEmpaque se pone la cantidad total de dinero que
				 "Entró"(qeu se pagará al beneficiario), se agregan los kilos en KgEntrada idConcepto (Compras crédito)/Compras Contado
			   Salida:
			      Se establece la misma cantidad de entrada el idPrecioDetalle y idConcepto(Paso a Maquina seleccionadora)
			 Dirigido
			    Entrada
			    se inserta en CtrlOrdenInvBodegaGenerico su correspondiente
				Como el rango dirigido se formó en base a varios detalles(gramos) se considera que toda la fruta está en este rango(para pagar establecer la cantidad de pago de inmediato)
				idBodegaGenerica=bodega de cuarentena KgEntrada=(El total del peso del camión) idconcepto= (Compras crédito)/Compras Contado, 
				de la tabla CatCaracteristicasPesoFacturacion se determina si el total se promedia entre los diferentes calibres que conforman el ranto o todo se carga al calibre mas alto o al mas bajo
				o defitivamente se captura
			 EnBanda
			   Entrada
			    se inserta en CtrlOrdenInvBodegaGenerico su correspondiente
				Debió estar marcado en  CatCaracteristicasPesoFacturacion que en banda y se determina que 
				tabla CatCaracteristicasPesoFacturacion se determina si el total se promedia entre los diferentes calibres que conforman el ranto o todo se carga al calibre mas alto o al mas bajo
				o defitivamente se captura


	     MarcadoPago en banda
		   Parejo,Dirigido,EnBanda: todo se mete como un solo concepto, esto solo para tener un número, finalmente como se especifica en PrecioCabecera el peso que vale es en banda y no en 
		   bascula


     Inventario en bodegaSelección:
	     MarcadoPago en Bascula    (Se seleccionó esta opción, pero también todos pasan por la misma cantidad de bodegas.)
			 Parejo:
			   Entrada:
			      A la cantidad de la bodega de cuarentena se realiza una salida del idPrecioDetalle con la totalidad
				  se realiza una entrada ala bodega de selección con la cantidad que se recopiló en la banda
			 Dirigido
			    Entrada
			    se inserta en CtrlOrdenInvBodegaGenerico su correspondiente
			      A la cantidad de la bodega de cuarentena se realiza una salida del idPrecioDetalle con la totalidad de cada idPrecioDetalle capturado
				  se realiza una entrada ala bodega de selección con la cantidad que se recopiló en la banda

			 EnBanda
			   Entrada
			    se inserta en CtrlOrdenInvBodegaGenerico su correspondiente
			      A la cantidad de la bodega de cuarentena se realiza una salida del idPrecioDetalle con la totalidad de cada idPrecioDetalle capturado
				  se realiza una entrada ala bodega de selección con la cantidad que se recopiló en la banda

	     MarcadoPago en BAnda
			 Parejo: 
			      A la cantidad de la bodega de cuarentena se realiza una salida del idPrecioDetalle con la totalidad
				  se realiza una entrada ala bodega de selección con la cantidad que se recopiló en la banda
			 Dirigido
			      A la cantidad de la bodega de cuarentena se realiza una salida del idPrecioDetalle con la totalidad
			      como se selecciona un rango(compuesto por varios pesos y calibres, donde todos ellos tienen el mismo precio) se inserta el peso que le corresponde a cada calibre
				  de acuerdo con la selección de la banda y el resto de los calibres se reliza un concepto ajuste, es decir según se capturó en banda, solo que se establece un concepto de ajuste
				  contable aumento o disminución de dinero para que se pague idéntico
			Banda
			      A la cantidad de la bodega de cuarentena se realiza una salida del idPrecioDetalle con la totalidad
			     Sin problema alguno

*/

)
GO
CREATE TABLE CtrlOrdenInvBodegaGenerico( 
IdOrdenInvBodegaGenerico  int PRIMARY KEY,
IdInvBodegaGenerico int not null,

IdOrdenCorte int not null
)

GO
CREATE TABLE CatCalibrePais(
/* Un mismo gramaje se considera diferente calibre según el país, se vinculará a la tabla de CatFrutaDetalle*/
IdCalibrePais  int PRIMARY KEY,
IdFrutaDetalle     int  not null,
NumeroCalibre  varchar(50) not null,
idPais     int  not null
)
GO


CREATE TABLE CatFrutaCabeceraAcuerdo(
/* Se me hace mucha división, pero al final es mas conveniente*/
IdFrutaCabeceraAcuerdo  int PRIMARY KEY,
Codigo varchar(5)      not null,
IdFrutaCabecera      int not null,
IdTipoBeneficiario      int not null,
IdTipoCorte      int not null,
Idpais   int not null /*este es el país predeterminado para el cual se compra la fruta*/
)
GO
CREATE TABLE CtrlAcuerdo
(
IdAcuerdo int PRIMARY KEY,
IdAcopiador   int   NOT NULL ,/* hacer un catalogo de acopiadores*/
IdProdHuerta    int   NOT NULL,/*tabla huerta productor*/
IdBeneficiario    int   NOT NULL,
IdFrutaCabeceraAcuerdo    int   NOT NULL,
IdCaracteristicasPesoFacturacion    int   NOT NULL
-- IdTipoCultivo se quitó ya que esto lo indica el acerdo    int   NOT NULL ,/*convencional*/
--IdProductor  se remplazó por  CtrlProdHuerta(IdProdHuert, finalmente tenemos que establecer una huerta.  int   NOT NULL ,/*no pones precio ya que el productor ya está vinculado a un tipo(de productor) y ese tipo a un precio nos ayudamos del idTipoCorte y IdtipoCultivo para determinar el precio*/
--idTipoCorte    int   NOT NULL ,/*banda,parejo,dirigido se quitó ya queeste dato lo obtenemos del catalogo de precios*/
--	SE QUITO ya qeu en el acuerdo se establece el periodo de vigencia deel acuerdo FechaCorte /* fecha en que se realizará el corte, esto es importante ya que está vinculado al precio*/

)  

GO
CREATE TABLE CtrlPrecioDirigidoDetalle(
/*almacena la relación de si es dirigido, cuales calibres o rangos(los rengos se 
manejará como un solo elemento que en el catálogo de precios)seleccionaron para ir 
dirigido o si es parejo el elemento "figticio" de 0 a 7 kgs.

!! Importante, despues de leer este texto desechalo de tu cabeza el corte dirigido aún cuando es por rango se seleccionará un grupo de n elementos de gramos para formar el 
rango deseado, esto por que tiene que haber una correspondencia entre los calibres comerciales finales. y para no tener un quebradero de cabeza cuando se conviertan a los calibres
que mencionan para los diferentes países.
*/
IdPrecioDirigidoDetalle    int PRIMARY KEY,
IdFrutaDetalle int   NOT NULL ,
IdAcuerdo int   NOT NULL
)
GO

GO
CREATE TABLE CatFrutaCabeceraDetalleSemamanaPrecio(
IdCatFrutaCabeceraDetalleSemamanaPrecio  int PRIMARY KEY,
IdFrutaDetalle      int not null,
IdSemana          int not null,
IdFrutaCabeceraAcuerdo       int not null,
Costo money
)
GO
GO
CREATE TABLE CatFrutaCabeceraDetalle(
/* Unión de la cabecera
*/
IdFrutaCabeceraDetalle  int PRIMARY KEY,
IdFrutaCabecera     int not null, 
IdFrutaDetalle      int not null, 

)
GO

CREATE TABLE CatCuentaContable(
IdCuentaContable  int PRIMARY KEY,
Idcuenta int not null,
IdSubCuenta int not null,
IdSubSubCuent int not null,
Concepto varchar(200)
)

/*LLAVES FORANEAS*/

GO
ALTER TABLE CtrlOrdenCorteCtrlAcuerdo
ADD CONSTRAINT  FKCtrlOrdenCorteCtrlAcuerdo_CtrlOrdenCorte
FOREIGN KEY (IdOrdenCorte  )
REFERENCES CtrlOrdenCorte (IdOrdenCorte)


GO
ALTER TABLE CtrlOrdenCorteCtrlAcuerdo
ADD CONSTRAINT  FKCtrlOrdenCorteCtrlAcuerdo_CtrlAcuerdo
FOREIGN KEY (IdAcuerdo)
REFERENCES CtrlAcuerdo(IdAcuerdo)
GO
ALTER TABLE CatResponsableCuadrilla
ADD CONSTRAINT  FKCatResponsableCuadrillaCatEmpresaCosechadora
FOREIGN KEY (IdEmpresaCosechadora)
REFERENCES CatEmpresaCosechadora(IdEmpresaCosechadora)
go
  
ALTER TABLE CatVehiculo
ADD CONSTRAINT  FKCatVehiculoCatEmpresaTransportista
FOREIGN KEY (IdEmpresaTransportista)
REFERENCES CatEmpresaTransportista(IdEmpresaTransportista)
GO
ALTER TABLE CatEntidadFederativa
ADD CONSTRAINT  FKCatEntidadFederativaCatPais
FOREIGN KEY (IdPais)
REFERENCES CatPais(IdPais)

GO
ALTER TABLE CatMunicipio
ADD CONSTRAINT  FKCatMunicipioCatEntidadFederativa
FOREIGN KEY (IdEntidadFederativa)
REFERENCES CatEntidadFederativa(IdEntidadFederativa)
GO
ALTER TABLE CatLocalidad
ADD CONSTRAINT  FKCatLocalidadCatMunicipio
FOREIGN KEY (IdMunicipio)
REFERENCES CatMunicipio(IdMunicipio)
GO
--ALTER TABLE CtrlOrdenCorte
--ADD CONSTRAINT  FKCtrlOrdenCorteCtrlAcuerdo
--FOREIGN KEY (IdAcuerdo)
--REFERENCES CtrlAcuerdo(IdAcuerdo)

GO
ALTER TABLE CtrlOrdenCorte
ADD CONSTRAINT  FKCtrlOrdenCorteCatEmpresaCosechadora
FOREIGN KEY (IdEmpresaCosechadora)
REFERENCES CatEmpresaCosechadora(IdEmpresaCosechadora)
GO


GO
ALTER TABLE CtrlOrdenCorte
ADD CONSTRAINT  FKCtrlOrdenCorteCatEmpresaTransportista
FOREIGN KEY (IdEmpresaTransportista)
REFERENCES CatEmpresaTransportista(IdEmpresaTransportista)

GO
ALTER TABLE CatDocumentacionProceso
ADD CONSTRAINT  FKCatDocumentacionProcesoCatDocumentacion
FOREIGN KEY (IdDocumentacion)
REFERENCES CatDocumentacion(IdDocumentacion)
GO
ALTER TABLE CatHuerta
ADD CONSTRAINT  FKCatHuertaCatLocalidad
FOREIGN KEY (idLocalidad)
REFERENCES CatLocalidad(idLocalidad)
GO
ALTER TABLE CatFrutaCabecera
ADD CONSTRAINT  FKCatFrutaCabeceraCatClaseFruta
FOREIGN KEY (IdClaseFruta)
REFERENCES CatClaseFruta(IdClaseFruta)
GO
ALTER TABLE CatFrutaCabecera
ADD CONSTRAINT  FKCatFrutaCabeceraCatFloracion
FOREIGN KEY (IdFloracion)
REFERENCES CatFloracion(IdFloracion)
GO
ALTER TABLE CatFrutaCabecera
ADD CONSTRAINT  FKCatFrutaCabeceraCatTipoCultivo
FOREIGN KEY (IdTipoCultivo)
REFERENCES CatTipoCultivo(IdTipoCultivo)
GO

ALTER TABLE CtrlProdHuerta
ADD CONSTRAINT  FKCtrlProdHuertaCatHuerta
FOREIGN KEY (idHuerta)
REFERENCES CatHuerta(idHuerta)
GO
ALTER TABLE CtrlProdHuerta
ADD CONSTRAINT  FKCtrlProdHuertaCatProductor
FOREIGN KEY (IdProductor)
REFERENCES CatProductor(IdProductor)
GO

ALTER TABLE CatDomicilio
ADD CONSTRAINT  FKCatDomicilioCatTipoDomicilio
FOREIGN KEY (IdTipoDomicilio)
REFERENCES CatTipoDomicilio(IdTipoDomicilio)
GO
ALTER TABLE CatDomicilio
ADD CONSTRAINT  FKCatDomicilioCatLocalidad
FOREIGN KEY (IdLocalidad)
REFERENCES CatLocalidad(IdLocalidad)
------------------------------------------------------------
GO
ALTER TABLE CtrlEntidadDomicilio
ADD CONSTRAINT  FKCtrlEntidadDomicilioCatProceso
FOREIGN KEY (IdProceso)
REFERENCES CatProceso(IdProceso)
go
ALTER TABLE CtrlEntidadDomicilio
ADD CONSTRAINT  FKCtrlEntidadDomicilioCatDomicilio
FOREIGN KEY (IdDomicilios)
REFERENCES CatDomicilio(IdDomicilio)
------------------------------------------------------------
GO
ALTER TABLE CtrlEntidadDocumentacion
ADD CONSTRAINT  FKCtrlEntidadDocumentacionCatDocumentacionProceso
FOREIGN KEY (IdDocumentacionProceso)
REFERENCES CatDocumentacionProceso(IdDocumentacionProceso)

GO

ALTER TABLE CtrlCertificacionesHuerta
ADD CONSTRAINT  FKCtrlCertificacionesHuertaCtrlCertificacionesHuerta
FOREIGN KEY (IdCertificacion)
REFERENCES CatCertificacion(IdCertificacion)

GO
ALTER TABLE CtrlCertificacionesHuerta
ADD CONSTRAINT  FKCtrlCertificacionesHuertaCatHuerta
FOREIGN KEY (idHuerta)
REFERENCES CatHuerta(idHuerta)

GO
ALTER TABLE CatCertificacionesRequerida
ADD CONSTRAINT  FKCatCertificacionesRequeridaCatCertificacion
FOREIGN KEY (IdCertificacion)
REFERENCES CatCertificacion(IdCertificacion)

GO
ALTER TABLE CatCertificacionesRequerida
ADD CONSTRAINT  FKCatCertificacionesRequerida
FOREIGN KEY (Idpais)
REFERENCES  catpais(Idpais)
GO
ALTER TABLE CatCertificacionesRequerida
ADD CONSTRAINT  FKCatCertificacionesRequeridaCatTipoCultivo
FOREIGN KEY (IdTipoCultivo)
REFERENCES CatTipoCultivo(IdTipoCultivo)

GO

GO
ALTER TABLE CatCajasCorte
ADD CONSTRAINT  FKCatCajasCorteCatTipoCultivo
FOREIGN KEY (IdTipoCultivo)
REFERENCES CatTipoCultivo(IdTipoCultivo)
GO
ALTER TABLE CatCajasCorte
ADD CONSTRAINT  FKCatCajasCortecatpais
FOREIGN KEY (idpais)
REFERENCES catpais(idpais)

GO
GO
ALTER TABLE CatConcepto
ADD CONSTRAINT  FKCatConceptoCatProceso
FOREIGN KEY (IdProceso)
REFERENCES CatProceso(IdProceso)

GO
GO
ALTER TABLE CtrlInventarioCajasCorte
ADD CONSTRAINT  FKCtrlInventarioCajasCorteCatConcepto
FOREIGN KEY (IdConcepto)
REFERENCES CatConcepto(IdConcepto)
GO
GO

ALTER TABLE CtrlInventarioCajasCorteOrden
ADD CONSTRAINT  FKCtrlInventarioCajasCorteOrden_CtrlOrdenCorte
FOREIGN KEY (IdOrdenCorte)
REFERENCES CtrlOrdenCorte(IdOrdenCorte)
GO
GO
ALTER TABLE CtrlInventarioCajasCorteOrden
ADD CONSTRAINT  FKCtrlInventarioCajasCorteOrden_CtrlInventarioCajasCorte
FOREIGN KEY (IdInventarioCajasCorte)
REFERENCES CtrlInventarioCajasCorte(IdInventarioCajasCorte)
GO
GO


ALTER TABLE CtrlPrevioSalidaCorte
ADD CONSTRAINT  FKCtrlPrevioSalidaCorte_CtrlOrdenCorte
FOREIGN KEY (IdOrdenCorte)
REFERENCES CtrlOrdenCorte(IdOrdenCorte)
GO
ALTER TABLE CtrlPrevioSalidaCorte
ADD CONSTRAINT  FKCtrlPrevioSalidaCorte_CatResponsableCuadrilla
FOREIGN KEY (IdResponsableCuadrilla)
REFERENCES CatResponsableCuadrilla(IdResponsableCuadrilla)
GO
GO
ALTER TABLE CtrlPrevioSalidaCorte
ADD CONSTRAINT  FKCtrlPrevioSalidaCorte_CatVehiculo
FOREIGN KEY (idVehiculo)
REFERENCES CatVehiculo(idVehiculo)
GO
ALTER TABLE CatStatus
ADD CONSTRAINT  FKCatStatus_CatProceso
FOREIGN KEY (IdProceso)
REFERENCES CatProceso(IdProceso)
GO
go
ALTER TABLE CtrlLote
ADD CONSTRAINT  FKCtrlLote_CatMaquinaSeleccionadora
FOREIGN KEY (idMaquinaSeleccionadora)
REFERENCES CatMaquinaSeleccionadora(idMaquinaSeleccionadora)
GO
go
--ALTER TABLE CtrlLoteOrdenCorte
--ADD CONSTRAINT  FKCtrlLoteOrdenCorte_CtrlLote
--FOREIGN KEY (IdLote)
--REFERENCES CtrlLote(IdLote)
--go
--ALTER TABLE CtrlLoteOrdenCorte
--ADD CONSTRAINT  FKCtrlLoteOrdenCorte_CtrlOrdenCorte
--FOREIGN KEY (IdOrdenCorte)
--REFERENCES CtrlOrdenCorte(IdOrdenCorte)
GO
GO
ALTER TABLE CatIngresoEmpaque
ADD CONSTRAINT  FKCatIngresoEmpaque_CtrlOrdenCorte
FOREIGN KEY (idOrdenCorte)
REFERENCES CtrlOrdenCorte(idOrdenCorte)
GO
GO
ALTER TABLE CatBodegaGenerica
ADD CONSTRAINT  FKCatBodegaGenerica_CatTipoBodegaGenerica
FOREIGN KEY (idTipoBodegaGenerica)
REFERENCES CatTipoBodegaGenerica(idTipoBodegaGenerica)
GO

GO
ALTER TABLE CtrlInvBodegaGenerico
ADD CONSTRAINT  FKCtrlInvBodegaGenerico_CatBodegaGenerica
FOREIGN KEY (idBodegaGenerica)
REFERENCES CatBodegaGenerica(idBodegaGenerica)
GO
ALTER TABLE CtrlInvBodegaGenerico
ADD CONSTRAINT  FKCtrlInvBodegaGenericoCatCuentaContable
FOREIGN KEY (IdCuentaContable)
REFERENCES CatCuentaContable(IdCuentaContable)


GO
ALTER TABLE CtrlInvBodegaGenerico
ADD CONSTRAINT  FKCtrlInvBodegaGenerico_CatConcepto
FOREIGN KEY (IdConcepto)
REFERENCES CatConcepto(IdConcepto)
GO
GO

ALTER TABLE CtrlOrdenInvBodegaGenerico
ADD CONSTRAINT  FKCtrlOrdenInvBodegaGenericoCtrlOrdenCorte
FOREIGn KEY (IdOrdenCorte)
REFERENCES CtrlOrdenCorte (IdOrdenCorte)
GO



ALTER TABLE CtrlOrdenInvBodegaGenerico
ADD CONSTRAINT  FKCtrlOrdenInvBodegaGenerico_CtrlInvBodegaGenerico
FOREIGn KEY (IdInvBodegaGenerico)
REFERENCES CtrlInvBodegaGenerico (IdInvBodegaGenerico)
GO
            


GO
go
ALTER TABLE CatCalibrePais
ADD CONSTRAINT  FKCatCalibrePais_CatFrutaDetalle
FOREIGN KEY (IdFrutaDetalle     )
REFERENCES CatFrutaDetalle(IdFrutaDetalle     )
go
ALTER TABLE CatCalibrePais
ADD CONSTRAINT  FKCatCalibrePais_catpais
FOREIGN KEY (idPais     )
REFERENCES catpais(idPais     )
go
ALTER TABLE CatFrutaCabeceraAcuerdo
ADD CONSTRAINT  FKCatFrutaCabeceraAcuerdo_CatTipoCorte
FOREIGN KEY (IdTipoCorte)
REFERENCES CatTipoCorte(IdTipoCorte)
GO
ALTER TABLE CatFrutaCabeceraAcuerdo
ADD CONSTRAINT  FKCatFrutaCabeceraAcuerdo_CatTipoBeneficiario
FOREIGN KEY (IdTipoBeneficiario)
REFERENCES CatTipoBeneficiario(IdTipoBeneficiario)

GO
ALTER TABLE CatFrutaCabeceraAcuerdo
ADD CONSTRAINT  FKCatFrutaCabeceraAcuerdo_CatPais
FOREIGN KEY (Idpais)
REFERENCES CatPais(Idpais)
GO
GO
ALTER TABLE CatFrutaCabeceraAcuerdo
ADD CONSTRAINT  FKCatFrutaCabeceraAcuerdo_CatFrutaCabecera
FOREIGN KEY (IdFrutaCabecera)
REFERENCES CatFrutaCabecera(IdFrutaCabecera     )
GO
GO
ALTER TABLE CtrlAcuerdo
ADD CONSTRAINT  FKCtrlAcuerdo_CatCaracteristicasPesoFacturacion
FOREIGN KEY (IdCaracteristicasPesoFacturacion)
REFERENCES CatCaracteristicasPesoFacturacion(IdCaracteristicasPesoFacturacion)

GO
ALTER TABLE CtrlAcuerdo
ADD CONSTRAINT  FKCtrlAcuerdo_CatFrutaCabeceraAcuerdo
FOREIGN KEY (IdFrutaCabeceraAcuerdo)
REFERENCES CatFrutaCabeceraAcuerdo(IdFrutaCabeceraAcuerdo)
GO
ALTER TABLE CtrlAcuerdo
ADD CONSTRAINT  FKCtrlAcuerdo_CatBeneficiario
FOREIGN KEY (IdBeneficiario)
REFERENCES CatBeneficiario(IdBeneficiario)

GO
ALTER TABLE CtrlAcuerdo
ADD CONSTRAINT  FKCtrlAcuerdo_CtrlProdHuerta
FOREIGN KEY (IdProdHuerta)
REFERENCES CtrlProdHuerta(IdProdHuerta)

go
ALTER TABLE CtrlAcuerdo
ADD CONSTRAINT  FKCtrlAcuerdo_CatAcopiador
FOREIGN KEY (IdAcopiador)
REFERENCES CatAcopiador(IdAcopiador)


ALTER TABLE CtrlPrecioDirigidoDetalle
ADD CONSTRAINT  FKCtrlPrecioDirigidoDetalle_CatFrutaDetalle
FOREIGN KEY (IdFrutaDetalle)
REFERENCES CatFrutaDetalle(IdFrutaDetalle)
GO
ALTER TABLE CtrlPrecioDirigidoDetalle
ADD CONSTRAINT  FKCtrlPrecioDirigidoDetalle_CtrlAcuerdo
FOREIGN KEY (IdAcuerdo)
REFERENCES CtrlAcuerdo(IdAcuerdo)
GO
ALTER TABLE CatFrutaCabeceraDetalleSemamanaPrecio
ADD CONSTRAINT  FKCatFrutaCabeceraDetalleSemamanaPrecio_CatFrutaDetalle
FOREIGN KEY (IdFrutaDetalle)
REFERENCES CatFrutaDetalle(IdFrutaDetalle     )
GO
GO
ALTER TABLE CatFrutaCabeceraDetalleSemamanaPrecio
ADD CONSTRAINT  FKCatFrutaCabeceraDetalleSemamanaPrecio_CatFrutaCabeceraAcuerdo
FOREIGN KEY (IdFrutaCabeceraAcuerdo)
REFERENCES CatFrutaCabeceraAcuerdo(IdFrutaCabeceraAcuerdo     )
GO
ALTER TABLE CatFrutaCabeceraDetalleSemamanaPrecio
ADD CONSTRAINT  FKCatFrutaCabeceraDetalleSemamanaPrecio_CatSemana
FOREIGN KEY (IdSemana)
REFERENCES CatSemana(IdSemana     )

GO

GO
ALTER TABLE CatFrutaCabeceraDetalle
ADD CONSTRAINT  FKCatFrutaCabeceraDetalle_CatFrutaDetalle
FOREIGN KEY (IdFrutaDetalle)
REFERENCES CatFrutaDetalle(IdFrutaDetalle)
GO
ALTER TABLE CatFrutaCabeceraDetalle
ADD CONSTRAINT  FKCatFrutaCabeceraDetalle_CatFrutaCabecera
FOREIGN KEY (IdFrutaCabecera)
REFERENCES CatFrutaCabecera(IdFrutaCabecera)
