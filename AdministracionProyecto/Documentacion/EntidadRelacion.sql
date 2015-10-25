use Avotrace
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CtrlAcuerdo') 
begin
	DROP TABLE CtrlAcuerdo
end

go
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CtrlProdHuerta') 
BEGIN
  DROP TABLE CtrlProdHuerta
END
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatTipoProductor') 
BEGIN
  DROP TABLE CatTipoProductor
END

GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatPrecioDetalle') 
BEGIN
  DROP TABLE CatPrecioDetalle 
END
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatPrecioCabecera') 
BEGIN
  DROP TABLE CatPrecioCabecera
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
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatHuerta') 
BEGIN
  DROP TABLE CatHuerta
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
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatProceso') 
BEGIN
  DROP TABLE CatProceso
END
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
ALTER TABLE CatEntidadFederativa
ADD FOREIGN KEY (IdPais)
REFERENCES CatPais(IdPais)
GO
CREATE TABLE  CatMunicipio(
IdMunicipio int PRIMARY KEY,
IdEntidadFederativa  int   NOT NULL,
Municipio  VARCHAR(50) 
)
GO
ALTER TABLE CatMunicipio
ADD FOREIGN KEY (IdEntidadFederativa)
REFERENCES CatEntidadFederativa(IdEntidadFederativa)

GO
CREATE TABLE  CatLocalidad(
IdLocalidad int PRIMARY KEY,
IdMunicipio   int   NOT NULL, 
Localidad   VARCHAR(50) 
)
ALTER TABLE CatLocalidad
ADD FOREIGN KEY (IdMunicipio)
REFERENCES CatMunicipio(IdMunicipio)
GO
GO
CREATE TABLE CtrlOrdenCorte (
IdOrdenCorte  int PRIMARY KEY,
IdAcuerdo int   NOT NULL ,
fecha date
)
GO
GO

CREATE TABLE CatProceso(     /*(Acuerdo,orden,preenvio etc.)*/
IdProceso   int PRIMARY KEY,
Proceso VARCHAR(50)
)
GO
GO
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
ALTER TABLE CatDocumentacionProceso
ADD FOREIGN KEY (IdDocumentacion)
REFERENCES CatDocumentacion(IdDocumentacion)
GO
ALTER TABLE CatDocumentacionProceso
ADD FOREIGN KEY (IdDocumentacion)
REFERENCES CatDocumentacion(IdDocumentacion)
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
ALTER TABLE CatHuerta
ADD FOREIGN KEY (idLocalidad)
REFERENCES CatLocalidad(idLocalidad)
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
CREATE TABLE CatPrecioCabecera(
/* Al usuario se le mostrará 3 diferentes pantallas(banda dirigido, parejo), por debajo guardaremos esta info en esta estructura diferenciada por el IdTipoCorte
NOta: se agregó banda y dirigido por que pensamos que al productor le pudieran pagar 100 gr 150 gr a 15 en banda, pero dirigido ese mismo a 16
Las fechas se agregaron para realizar una planeación de precios a lo largo del mes y aprovechas el historial de precios para hacer estimaciones el año siguiente.
*/
IdPrecioCabecera      int PRIMARY KEY,
IdTipoCorte        int   NOT NULL , /*banda dirigido*/
IdFloracion       int   NOT NULL ,
IdTipoCultivo       int   NOT NULL , /*marseña*/
FechaInicio date,
FechaFin date,
EsBanda decimal(1),
IdTipoProductor   int   NOT NULL 
)
GO
ALTER TABLE CatPrecioCabecera
ADD FOREIGN KEY (IdTipoCorte)
REFERENCES CatTipoCorte(IdTipoCorte)
GO
ALTER TABLE CatPrecioCabecera
ADD FOREIGN KEY (IdFloracion)
REFERENCES CatFloracion(IdFloracion)
GO

GO
ALTER TABLE CatPrecioCabecera
ADD FOREIGN KEY (IdTipoCultivo)
REFERENCES CatTipoCultivo(IdTipoCultivo)
GO




CREATE TABLE CatPrecioDetalle (
IdPrecioDetalle     int PRIMARY KEY,
IdPrecioCabecera   int   NOT NULL,
PesoInicio  decimal,
PesoFin decimal,
Costo decimal
)


GO
ALTER TABLE CatPrecioDetalle
ADD FOREIGN KEY (IdPrecioCabecera)
REFERENCES CatPrecioCabecera(IdPrecioCabecera)
GO


CREATE TABLE  CatTipoProductor(  /*Intermediario,Casa,Normal*/
IdTipoProductor  int PRIMARY KEY,
TipoProductor     VARCHAR(50) 
)
GO
CREATE TABLE  CtrlProdHuerta(
IdProdHuerta int PRIMARY KEY,
idHuerta   int   NOT NULL,
IdProductor   int   NOT NULL)

GO
ALTER TABLE CtrlProdHuerta
ADD FOREIGN KEY (idHuerta)
REFERENCES CatHuerta(idHuerta)
GO
GO
ALTER TABLE CtrlProdHuerta
ADD FOREIGN KEY (IdProductor)
REFERENCES CatProductor(IdProductor)
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
ALTER TABLE CatDomicilio
ADD FOREIGN KEY (IdTipoDomicilio)
REFERENCES CatTipoDomicilio(IdTipoDomicilio)
GO
ALTER TABLE CatDomicilio
ADD FOREIGN KEY (IdLocalidad)
REFERENCES CatLocalidad(IdLocalidad)
------------------------------------------------------------
GO
CREATE TABLE  CtrlEntidadDomicilio(
IdEntidadDomicilio int PRIMARY KEY,
idEntidad        int   NOT NULL, /*cliente USA,IdClienteNacional,IdProductor, */
IdDomicilios    int   NOT NULL)
GO
GO
ALTER TABLE CtrlEntidadDomicilio
ADD FOREIGN KEY (IdDomicilios)
REFERENCES CatDomicilio(IdDomicilio)
------------------------------------------------------------


GO
CREATE TABLE CtrlAcuerdo
(
IdAcuerdo int PRIMARY KEY,
IdTipoCultivo   int   NOT NULL ,/*convencional*/
IdProductor    int   NOT NULL ,/*no pones precio ya que el productor ya está vinculado a un tipo(de productor) y ese tipo a un precio nos ayudamos del idTipoCorte y IdtipoCultivo para determinar el precio*/
idTipoCorte    int   NOT NULL ,/*banda,parejo,dirigido*/	
)  
GO
ALTER TABLE CtrlAcuerdo
ADD FOREIGN KEY (IdTipoCultivo)
REFERENCES CatTipoCultivo(IdTipoCultivo)

GO
ALTER TABLE CtrlAcuerdo
ADD FOREIGN KEY (IdProductor)
REFERENCES CatProductor(IdProductor)


GO
ALTER TABLE CtrlAcuerdo
ADD FOREIGN KEY (idTipoCorte)
REFERENCES CatTipoCorte(idTipoCorte)

------------------------------------------------------------

GO
CREATE TABLE CtrlEntidadDocumentacion(
IdEntidadDocumentacion    int PRIMARY KEY,
IdEntidad  int   NOT NULL , /*IdAcuerdo etc.*/
IdDocumentacionProceso int   NOT NULL ,
NombreArchivo VARCHAR(4000)
)
GO
ALTER TABLE CtrlEntidadDocumentacion
ADD FOREIGN KEY (IdDocumentacionProceso)
REFERENCES CatDocumentacionProceso(IdDocumentacionProceso)



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

