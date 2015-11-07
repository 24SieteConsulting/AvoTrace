
use Avotrace
GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CtrlInventarioSeleccion') 
BEGIN
  DROP TABLE CtrlInventarioSeleccion
END
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


GO
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatMercadoDestino') 
begin
	DROP TABLE CatMercadoDestino
end
GO
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
IF EXISTS (select table_name from INFORMATION_SCHEMA.columns  where table_name = 'CatBodegaSeleccion') 
BEGIN
  DROP TABLE CatBodegaSeleccion
END
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
ALTER TABLE CatVehiculo
ADD FOREIGN KEY (IdEmpresaTransportista)
REFERENCES CatEmpresaTransportista(IdEmpresaTransportista)

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
CREATE TABLE  CatMercadoDestino(
IdMercadoDestino int PRIMARY KEY,
MercadoDestino varchar(500)

)
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
fecha date,
IdEmpresaTransportista int not null,
IdEmpresaCosechadora int not null
)
GO
ALTER TABLE CtrlOrdenCorte
ADD FOREIGN KEY (IdEmpresaCosechadora)
REFERENCES CatEmpresaCosechadora(IdEmpresaCosechadora)


GO
ALTER TABLE CtrlOrdenCorte
ADD FOREIGN KEY (IdEmpresaTransportista)
REFERENCES CatEmpresaTransportista(IdEmpresaTransportista)

GO
CREATE TABLE CatProceso(     /*(Acuerdo,orden,preenvio etc.)*/
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
CREATE TABLE CatPrecioCabecera(
/* Al usuario se le mostrará 3 diferentes pantallas(banda dirigido, parejo), por debajo guardaremos esta info en esta estructura diferenciada por el IdTipoCorte
NOta: se agregó banda y dirigido por que pensamos que al productor le pudieran pagar 100 gr 150 gr a 15 en banda, pero dirigido ese mismo a 16
Las fechas se agregaron para realizar una planeación de precios a lo largo del mes y aprovechas el historial de precios para hacer estimaciones el año siguiente.
*/
IdPrecioCabecera      int PRIMARY KEY,
Codigo varchar(5),
IdMercadoDestino           int   NOT NULL , /*llave foranea a CatMercadoDestino*/
IdSemana           int   NOT NULL , /*llave foranea a Catsemanas*/
IdTipoCorte        int   NOT NULL , /*banda dirigido*/
IdFloracion       int   NOT NULL ,
IdTipoCultivo       int   NOT NULL , /*marseña*/
FechaInicio date,
FechaFin date,
EsBanda decimal(1),
IdClaseFruta   int   NOT NULL ,
IdTipoBeneficiario   int   NOT NULL 
)
GO
ALTER TABLE CatPrecioCabecera
ADD FOREIGN KEY (IdTipoBeneficiario)
REFERENCES CatTipoBeneficiario(IdTipoBeneficiario)
GO
--
ALTER TABLE CatPrecioCabecera
ADD FOREIGN KEY (IdClaseFruta)
REFERENCES CatClaseFruta(IdClaseFruta)


GO
ALTER TABLE CatPrecioCabecera
ADD FOREIGN KEY (IdMercadoDestino)
REFERENCES CatMercadoDestino(IdMercadoDestino)

GO
ALTER TABLE CatPrecioCabecera
ADD FOREIGN KEY (IdSemana)
REFERENCES CatSemana(IdSemana)

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
GramosDesde  decimal,
GramosHasta decimal,
Costo decimal
)


GO
ALTER TABLE CatPrecioDetalle
ADD FOREIGN KEY (IdPrecioCabecera)
REFERENCES CatPrecioCabecera(IdPrecioCabecera)
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
IdDomicilios    int   NOT NULL,
IdProceso    int   NOT NULL /*puede ser que haya varios ids del domicilio del acopiador, productor etc.por eso se puso este campo*/
)
GO
ALTER TABLE CtrlEntidadDomicilio
ADD FOREIGN KEY (IdProceso)
REFERENCES CatProceso(IdProceso)
go

ALTER TABLE CtrlEntidadDomicilio
ADD FOREIGN KEY (IdDomicilios)
REFERENCES CatDomicilio(IdDomicilio)
------------------------------------------------------------


GO
CREATE TABLE CtrlAcuerdo
(
IdAcuerdo int PRIMARY KEY,
-- IdTipoCultivo se quitó ya que esto lo indica el acerdo    int   NOT NULL ,/*convencional*/
--IdProductor  se remplazó por  CtrlProdHuerta(IdProdHuert, finalmente tenemos que establecer una huerta.  int   NOT NULL ,/*no pones precio ya que el productor ya está vinculado a un tipo(de productor) y ese tipo a un precio nos ayudamos del idTipoCorte y IdtipoCultivo para determinar el precio*/
--idTipoCorte    int   NOT NULL ,/*banda,parejo,dirigido se quitó ya queeste dato lo obtenemos del catalogo de precios*/
	IdAcopiador   int   NOT NULL ,/* hacer un catalogo de acopiadores*/
--	SE QUITO ya qeu en el acuerdo se establece el periodo de vigencia deel acuerdo FechaCorte /* fecha en que se realizará el corte, esto es importante ya que está vinculado al precio*/
IdProdHuerta    int   NOT NULL,
IdBeneficiario    int   NOT NULL,
IdPrecioCabecera    int   NOT NULL,
IdCaracteristicasPesoFacturacion    int   NOT NULL
)  
GO
ALTER TABLE CtrlAcuerdo
ADD FOREIGN KEY (IdCaracteristicasPesoFacturacion)
REFERENCES CatCaracteristicasPesoFacturacion(IdCaracteristicasPesoFacturacion)

GO
ALTER TABLE CtrlAcuerdo
ADD FOREIGN KEY (IdPrecioCabecera)
REFERENCES CatPrecioCabecera(IdPrecioCabecera)
GO
ALTER TABLE CtrlAcuerdo
ADD FOREIGN KEY (IdBeneficiario)
REFERENCES CatBeneficiario(IdBeneficiario)

GO
ALTER TABLE CtrlAcuerdo
ADD FOREIGN KEY (IdProdHuerta)
REFERENCES CtrlProdHuerta(IdProdHuerta)

go
ALTER TABLE CtrlAcuerdo
ADD FOREIGN KEY (IdAcopiador)
REFERENCES CatAcopiador(IdAcopiador)

GO

GO
--ALTER TABLE CtrlAcuerdo
--ADD FOREIGN KEY (idTipoCorte)
--REFERENCES CatTipoCorte(idTipoCorte)
------------------------------------------------------------
GO
CREATE TABLE CtrlEntidadDocumentacion(
IdEntidadDocumentacion    int PRIMARY KEY,
IdEntidad  int   NOT NULL , /*IdAcuerdo etc.*/
IdDocumentacionProceso int   NOT NULL ,
NombreArchivo VARCHAR(4000)
/* Se había pensado en agegar IdTipoEntidad pero esa tabla como viene de CatDocumentacionProceso y luego de CatProceso ya no fué neceesario*/
)
GO
ALTER TABLE CtrlEntidadDocumentacion
ADD FOREIGN KEY (IdDocumentacionProceso)
REFERENCES CatDocumentacionProceso(IdDocumentacionProceso)
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
ALTER TABLE CtrlCertificacionesHuerta
ADD FOREIGN KEY (IdCertificacion)
REFERENCES CatCertificacion(IdCertificacion)

GO
ALTER TABLE CtrlCertificacionesHuerta
ADD FOREIGN KEY (idHuerta)
REFERENCES CatHuerta(idHuerta)

GO
CREATE TABLE CatCertificacionesRequerida(
IdCertificacionesRequerida    int PRIMARY KEY,
IdMercadoDestino int   NOT NULL ,
IdTipoCultivo int   NOT NULL,
IdCertificacion  int   NOT NULL
)
GO
ALTER TABLE CatCertificacionesRequerida
ADD FOREIGN KEY (IdCertificacion)
REFERENCES CatCertificacion(IdCertificacion)

GO
ALTER TABLE CatCertificacionesRequerida
ADD FOREIGN KEY (IdMercadoDestino)
REFERENCES CatMercadoDestino(IdMercadoDestino)


GO
ALTER TABLE CatCertificacionesRequerida
ADD FOREIGN KEY (IdTipoCultivo)
REFERENCES CatTipoCultivo(IdTipoCultivo)

GO
CREATE TABLE CtrlPrecioDirigidoDetalle(
/*almacena la relación de si es dirigido, cuales calibres o rangos(los rengos se 
manejará como un solo elemento que en el catálogo de precios)seleccionaron para ir 
dirigido o si es parejo el elemento "figticio" de 0 a 7 kgs.
*/
IdPrecioDirigidoDetalle    int PRIMARY KEY,
IdPrecioDetalle int   NOT NULL ,
IdAcuerdo int   NOT NULL
)
GO
ALTER TABLE CtrlPrecioDirigidoDetalle
ADD FOREIGN KEY (IdPrecioDetalle)
REFERENCES CatPrecioDetalle(IdPrecioDetalle)
GO
ALTER TABLE CtrlPrecioDirigidoDetalle
ADD FOREIGN KEY (IdAcuerdo)
REFERENCES CtrlAcuerdo(IdAcuerdo)
GO
CREATE TABLE  CatCajasCorte(  
IdCatCajasCorte  int PRIMARY KEY,
Tamanio decimal(5,2) ,/*se indica en kgs*/
IdTipoCultivo int not null,
IdMercadoDestino int not null,
color varchar(20)
)
GO
ALTER TABLE CatCajasCorte
ADD FOREIGN KEY (IdTipoCultivo)
REFERENCES CatTipoCultivo(IdTipoCultivo)
GO
ALTER TABLE CatCajasCorte
ADD FOREIGN KEY (IdMercadoDestino)
REFERENCES CatMercadoDestino(IdMercadoDestino)

GO

CREATE TABLE  CatConcepto(
/*En primera instancia servirá para almacenar los conceptos de inventario,
 es decir, "Entrada por Compra de cajas", "Entrada por reparacion de cajas", "Salida para camión según orden"*/
IdConcepto  int PRIMARY KEY,
IdProceso int   NOT NULL,
Concepto varchar(50) not null
)
GO
ALTER TABLE CatConcepto
ADD FOREIGN KEY (IdProceso)
REFERENCES CatProceso(IdProceso)

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
ALTER TABLE CtrlInventarioCajasCorte
ADD FOREIGN KEY (IdConcepto)
REFERENCES CatConcepto(IdConcepto)
GO

CREATE TABLE CtrlInventarioCajasCorteOrden(
IdInventarioCajasCorteOrden    int PRIMARY KEY,
IdOrdenCorte int not null,
IdInventarioCajasCorte int not null
)
GO
ALTER TABLE CtrlInventarioCajasCorteOrden
ADD FOREIGN KEY (IdOrdenCorte)
REFERENCES CtrlOrdenCorte(IdOrdenCorte)
GO
GO
ALTER TABLE CtrlInventarioCajasCorteOrden
ADD FOREIGN KEY (IdInventarioCajasCorte)
REFERENCES CtrlInventarioCajasCorte(IdInventarioCajasCorte)
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
ALTER TABLE CtrlPrevioSalidaCorte
ADD FOREIGN KEY (IdOrdenCorte)
REFERENCES CtrlOrdenCorte(IdOrdenCorte)
GO
ALTER TABLE CtrlPrevioSalidaCorte
ADD FOREIGN KEY (IdResponsableCuadrilla)
REFERENCES CatResponsableCuadrilla(IdResponsableCuadrilla)
GO
GO
ALTER TABLE CtrlPrevioSalidaCorte
ADD FOREIGN KEY (idVehiculo)
REFERENCES CatVehiculo(idVehiculo)
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
ALTER TABLE CatStatus
ADD FOREIGN KEY (IdProceso)
REFERENCES CatProceso(IdProceso)
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
IdOrdenCorte int   NOT NULL ,
idMaquinaSeleccionadora int   NOT NULL ,
FechaHoraCorridaFijada datetime,
FechaHoraCorridaReal datetime,
/* CtrlEntidadEstatus.IdEntidadEstatus no se pone pero se estará vinculado */
)
go
ALTER TABLE CtrlLote
ADD FOREIGN KEY (IdOrdenCorte)
REFERENCES CtrlOrdenCorte(IdOrdenCorte)
go
ALTER TABLE CtrlLote
ADD FOREIGN KEY (idMaquinaSeleccionadora)
REFERENCES CatMaquinaSeleccionadora(idMaquinaSeleccionadora)
go
CREATE TABLE CatBodegaSeleccion(
/*Cuando terminemos de seleccionar la fruta meteremos la bodega a una bodega*/
idBodegaSeleccion   int PRIMARY KEY,
BodegaSeleccion varchar(50),
CapacidadKgs decimal(15,2)
)
GO
---create table CtrlInventarioSeleccion()
CREATE TABLE CtrlInventarioSeleccion(
IdInventarioSeleccion  int PRIMARY KEY,
idBodegaSeleccion int not null,
KgEntrada  decimal(15,2),
KgSalida  decimal(15,2),
IdLote int /* es posible poner null*/
)



/*
Premisas del diagrama entidad Relacion
--


*/

