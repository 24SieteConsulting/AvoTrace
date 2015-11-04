USE [AvoTrace]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empresa](
	[EmpresaId] [bigint] NOT NULL,
	[EmpresaNombre] [varchar](200) NULL,
	[EmpresaNombreFiscal] [varchar](200) NULL,
	[EmpresaCalle] [varchar](100) NULL,
	[EmpresaNExterior] [varchar](50) NULL,
	[EmpresaNInterior] [varchar](50) NULL,
	[EmpresaColonia] [varchar](100) NULL,
	[EmpresaCP] [varchar](5) NULL,
	[EmpresaCiudad] [varchar](100) NULL,
	[EmpresaRFC] [varchar](13) NULL,
	[EmpresaRegSAGARPA] [varchar](100) NULL,
	[EmpresaRepresentante] [varchar](100) NULL,
	[EmpresaPoblacion] [varchar](100) NULL,
	[EmpresaMunicipio] [varchar](100) NULL,
	[EstadoId] [bigint] NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[EmpresaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estaciones]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estaciones](
	[EstacionesId] [bigint] NOT NULL,
	[SucursalesId] [bigint] NOT NULL,
	[EstacionesNombre] [varchar](50) NOT NULL,
	[EstacionesNumero] [bigint] NOT NULL,
 CONSTRAINT [PK_Cajas] PRIMARY KEY CLUSTERED 
(
	[EstacionesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estado](
	[EstadoId] [bigint] IDENTITY(1,1) NOT NULL,
	[EstadoNombre] [varchar](60) NOT NULL,
	[PaisId] [bigint] NOT NULL,
 CONSTRAINT [PK__Estado__FEF86B00054790FD] PRIMARY KEY CLUSTERED 
(
	[EstadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Localidad]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Localidad](
	[LocalidadId] [bigint] IDENTITY(1,1) NOT NULL,
	[LocalidadNombre] [varchar](60) NOT NULL,
	[LocalidadCP] [varchar](5) NOT NULL,
	[MunicipioId] [bigint] NOT NULL,
 CONSTRAINT [PK__Localida__6E2890A24B45F7BC] PRIMARY KEY CLUSTERED 
(
	[LocalidadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Municipio](
	[MunicipioId] [bigint] IDENTITY(1,1) NOT NULL,
	[MunicipioNombre] [varchar](60) NOT NULL,
	[EstadoId] [bigint] NOT NULL,
 CONSTRAINT [PK__Municipi__1EEFE54E87D8599A] PRIMARY KEY CLUSTERED 
(
	[MunicipioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pais](
	[PaisId] [bigint] IDENTITY(1,1) NOT NULL,
	[PaisNombre] [varchar](60) NOT NULL,
	[PaisCode] [varchar](2) NOT NULL,
	[PaisIsoCode] [varchar](3) NOT NULL,
 CONSTRAINT [PK__Pais__B501E1853BA317F7] PRIMARY KEY CLUSTERED 
(
	[PaisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sucursales]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sucursales](
	[SucursalesId] [bigint] NOT NULL,
	[SucursalesNombre] [varchar](100) NOT NULL,
	[SucursalesCalle] [varchar](100) NOT NULL,
	[SucursalesNExterior] [varchar](50) NOT NULL,
	[SucursalesNInterior] [varchar](50) NOT NULL,
	[SucursalesColonia] [varchar](100) NOT NULL,
	[SucursalesCP] [varchar](5) NOT NULL,
	[SucursalesCiudad] [varchar](100) NOT NULL,
	[EstadoId] [bigint] NOT NULL,
 CONSTRAINT [PK_Sucursales] PRIMARY KEY CLUSTERED 
(
	[SucursalesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Empresa] ([EmpresaId], [EmpresaNombre], [EmpresaNombreFiscal], [EmpresaCalle], [EmpresaNExterior], [EmpresaNInterior], [EmpresaColonia], [EmpresaCP], [EmpresaCiudad], [EmpresaRFC], [EmpresaRegSAGARPA], [EmpresaRepresentante], [EmpresaPoblacion], [EmpresaMunicipio], [EstadoId]) VALUES (1, N'EMPACADORA DE PRUEBA S.A. DE C.V.', N'EMPACADORA DE PRUEBA S.A. DE C.V.', N'NOGAL 3', N'1903', N'SN', N'LOS GIRASOLES', N'60050', N'URUAPAN', N'ERD120515F1A', N'1254-15784', N'ANTONIO JUAREZ ARTEAGA', N'URUAPAN', N'URUAAPN', 16)
INSERT [dbo].[Estaciones] ([EstacionesId], [SucursalesId], [EstacionesNombre], [EstacionesNumero]) VALUES (1, 1, N'ESTACION-01', 1)
SET IDENTITY_INSERT [dbo].[Estado] ON 

INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (1, N'Aguascalientes                                              ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (2, N'Baja California                                             ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (3, N'Baja California Sur                                         ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (4, N'Campeche                                                    ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (5, N'Chiapas                                                     ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (6, N'Chihuahua                                                   ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (7, N'Coahuila de Zaragoza                                        ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (8, N'Colima                                                      ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (9, N'Distrito Federal                                            ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (10, N'Durango                                                     ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (11, N'Guanajuato                                                  ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (12, N'Guerrero                                                    ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (13, N'Hidalgo                                                     ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (14, N'Jalisco                                                     ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (15, N'México                                                      ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (16, N'Michoacán de Ocampo                                         ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (17, N'Morelos                                                     ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (18, N'Nayarit                                                     ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (19, N'Nuevo León                                                  ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (20, N'Oaxaca                                                      ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (21, N'Puebla                                                      ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (22, N'Querétaro                                                   ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (23, N'Quintana Roo                                                ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (24, N'San Luis Potosí                                             ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (25, N'Sinaloa                                                     ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (26, N'Sonora                                                      ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (27, N'Tabasco                                                     ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (28, N'Tamaulipas                                                  ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (29, N'Tlaxcala                                                    ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (30, N'Veracruz de Ignacio de la Llave                             ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (31, N'Yucatán                                                     ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (32, N'Zacatecas                                                   ', 1)
INSERT [dbo].[Estado] ([EstadoId], [EstadoNombre], [PaisId]) VALUES (33, N'TEXAS                                                       ', 2)
SET IDENTITY_INSERT [dbo].[Estado] OFF
SET IDENTITY_INSERT [dbo].[Localidad] ON 

INSERT [dbo].[Localidad] ([LocalidadId], [LocalidadNombre], [LocalidadCP], [MunicipioId]) VALUES (1, N'Elias Perez Avalos                                          ', N'60060', 1)
INSERT [dbo].[Localidad] ([LocalidadId], [LocalidadNombre], [LocalidadCP], [MunicipioId]) VALUES (2, N'Fracc. Valle Real                                           ', N'60157', 1)
SET IDENTITY_INSERT [dbo].[Localidad] OFF
SET IDENTITY_INSERT [dbo].[Municipio] ON 

INSERT [dbo].[Municipio] ([MunicipioId], [MunicipioNombre], [EstadoId]) VALUES (1, N'URUAPAN                                                     ', 16)
SET IDENTITY_INSERT [dbo].[Municipio] OFF
SET IDENTITY_INSERT [dbo].[Pais] ON 

INSERT [dbo].[Pais] ([PaisId], [PaisNombre], [PaisCode], [PaisIsoCode]) VALUES (1, N'MEXICO                                                      ', N'MX', N'MEX')
INSERT [dbo].[Pais] ([PaisId], [PaisNombre], [PaisCode], [PaisIsoCode]) VALUES (2, N'ESTADOS UNIDOS', N'US', N'USA')
SET IDENTITY_INSERT [dbo].[Pais] OFF
INSERT [dbo].[Sucursales] ([SucursalesId], [SucursalesNombre], [SucursalesCalle], [SucursalesNExterior], [SucursalesNInterior], [SucursalesColonia], [SucursalesCP], [SucursalesCiudad], [EstadoId]) VALUES (1, N'Empaque Principal', N'Conocido', N'Conocido', N'Conocido', N'Conocida', N'60000', N'Conocida', 16)
ALTER TABLE [dbo].[Empresa]  WITH CHECK ADD  CONSTRAINT [FK_Empresa_Estado] FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estado] ([EstadoId])
GO
ALTER TABLE [dbo].[Empresa] CHECK CONSTRAINT [FK_Empresa_Estado]
GO
ALTER TABLE [dbo].[Estaciones]  WITH CHECK ADD  CONSTRAINT [FK_Estaciones_Sucursales] FOREIGN KEY([SucursalesId])
REFERENCES [dbo].[Sucursales] ([SucursalesId])
GO
ALTER TABLE [dbo].[Estaciones] CHECK CONSTRAINT [FK_Estaciones_Sucursales]
GO
ALTER TABLE [dbo].[Estado]  WITH CHECK ADD  CONSTRAINT [IESTADOPAIS] FOREIGN KEY([PaisId])
REFERENCES [dbo].[Pais] ([PaisId])
GO
ALTER TABLE [dbo].[Estado] CHECK CONSTRAINT [IESTADOPAIS]
GO
ALTER TABLE [dbo].[Localidad]  WITH CHECK ADD  CONSTRAINT [ILOCALIDAD1] FOREIGN KEY([MunicipioId])
REFERENCES [dbo].[Municipio] ([MunicipioId])
GO
ALTER TABLE [dbo].[Localidad] CHECK CONSTRAINT [ILOCALIDAD1]
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD  CONSTRAINT [IMUNICIPIOESTADO] FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estado] ([EstadoId])
GO
ALTER TABLE [dbo].[Municipio] CHECK CONSTRAINT [IMUNICIPIOESTADO]
GO
ALTER TABLE [dbo].[Sucursales]  WITH CHECK ADD  CONSTRAINT [FK_Sucursales_Estado] FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estado] ([EstadoId])
GO
ALTER TABLE [dbo].[Sucursales] CHECK CONSTRAINT [FK_Sucursales_Estado]
GO
/****** Object:  StoredProcedure [dbo].[Domicilios_EstadoIDSelect]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Domicilios_EstadoIDSelect]
	@EstadoId bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT     TOP (100) Estado.EstadoId, RTRIM(Estado.EstadoNombre) as EstadoNombre, Estado.PaisId, Pais.PaisNombre
FROM         Estado INNER JOIN
                      Pais ON Estado.PaisId = Pais.PaisId
WHERE     (Estado.EstadoId = @EstadoId)
END


GO
/****** Object:  StoredProcedure [dbo].[Domicilios_EstadoInsert]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Domicilios_EstadoInsert]
	
	@EstadoNombre	char(60),
	@PaisId	decimal(11, 0)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Estado
                      (EstadoNombre, PaisId)
VALUES     (@EstadoNombre,@PaisId)
END


GO
/****** Object:  StoredProcedure [dbo].[Domicilios_EstadoNombreSelect]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Domicilios_EstadoNombreSelect]
	@EstadoNombre varchar(60)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT     TOP (100) Estado.EstadoId,RTRIM(Estado.EstadoNombre) as EstadoNombre, Pais.PaisNombre
FROM         Pais INNER JOIN
                      Estado ON Pais.PaisId = Estado.PaisId
WHERE     (Estado.EstadoNombre LIKE @EstadoNombre)
END


GO
/****** Object:  StoredProcedure [dbo].[Domicilios_EstadoPaisIdSelect]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Domicilios_EstadoPaisIdSelect]
	@PaisId bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        TOP (100) Estado.EstadoId, RTRIM(Estado.EstadoNombre) AS EstadoNombre, RTRIM(Pais.PaisNombre) AS PaisNombre
FROM            Pais INNER JOIN
                         Estado ON Pais.PaisId = Estado.PaisId
WHERE        (Estado.PaisId = @PaisId)
END



GO
/****** Object:  StoredProcedure [dbo].[Domicilios_EstadoSelect]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Domicilios_EstadoSelect]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT     TOP (100) Estado.EstadoId,RTRIM(Estado.EstadoNombre) as EstadoNombre,RTRIM( Pais.PaisNombre) as PaisNombre
FROM         Pais INNER JOIN
                    Estado ON Pais.PaisId = Estado.PaisId
END


GO
/****** Object:  StoredProcedure [dbo].[Domicilios_EstadoUpdate]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Domicilios_EstadoUpdate]
	@EstadoId	decimal(11, 0),
	@EstadoNombre	char(60),
	@PaisId	decimal(11, 0)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE    Estado
SET              EstadoNombre = @EstadoNombre, PaisId = @PaisId
WHERE     (EstadoId = @EstadoId)
END


GO
/****** Object:  StoredProcedure [dbo].[Domicilios_LocalidadIDSelect]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Domicilios_LocalidadIDSelect]
	@LocalidadId bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT     TOP (100) Localidad.LocalidadId,rtrim(Localidad.LocalidadNombre)as LocalidadNombre, Localidad.LocalidadCP, Localidad.MunicipioId, Municipio.MunicipioNombre
FROM         Localidad INNER JOIN
                      Municipio ON Localidad.MunicipioId = Municipio.MunicipioId
WHERE     (Localidad.LocalidadId = @LocalidadId)
END


GO
/****** Object:  StoredProcedure [dbo].[Domicilios_LocalidadInsert]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Domicilios_LocalidadInsert]
	
	@LocalidadNombre	char(60),
	@LocalidadCP	char(5),
	@MunicipioId	decimal(11, 0)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Localidad
                      (LocalidadNombre, LocalidadCP, MunicipioId)
VALUES     (@LocalidadNombre,@LocalidadCP,@MunicipioId)
END


GO
/****** Object:  StoredProcedure [dbo].[Domicilios_LocalidadNombreSelect]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Domicilios_LocalidadNombreSelect]
	@LocalidadNombre varchar(60)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  TOP(100)   Localidad.LocalidadId,RTRIM(Localidad.LocalidadNombre)as LocalidadNombre, Localidad.LocalidadCP, Municipio.MunicipioNombre
FROM         Localidad INNER JOIN
                      Municipio ON Municipio.MunicipioId= Localidad.MunicipioId
WHERE     (Localidad.LocalidadNombre like @LocalidadNombre)
END


GO
/****** Object:  StoredProcedure [dbo].[Domicilios_LocalidadSelect]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Domicilios_LocalidadSelect]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  TOP(100)   Localidad.LocalidadId,RTRIM(Localidad.LocalidadNombre)as LocalidadNombre, Localidad.LocalidadCP, Municipio.MunicipioNombre
FROM         Localidad INNER JOIN
                      Municipio ON Municipio.MunicipioId= Localidad.MunicipioId
END


GO
/****** Object:  StoredProcedure [dbo].[Domicilios_LocalidadUpdate]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Domicilios_LocalidadUpdate]
	@LocalidadId	bigint,
	@LocalidadNombre	char(60),
	@LocalidadCP	char(5),
	@MunicipioId	decimal(11, 0)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE    Localidad
SET              LocalidadNombre = @LocalidadNombre, LocalidadCP = @LocalidadCP, MunicipioId = @MunicipioId
WHERE     (LocalidadId = @LocalidadId)
END



GO
/****** Object:  StoredProcedure [dbo].[Domicilios_MunicipioIDSelect]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Domicilios_MunicipioIDSelect]
	@MunicipioId bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT     Municipio.MunicipioId,RTRIM(Municipio.MunicipioNombre)as MunicipioNombre, Municipio.EstadoId, Estado.EstadoNombre
FROM         Municipio INNER JOIN
                      Estado ON Municipio.EstadoId = Estado.EstadoId
WHERE     (Municipio.MunicipioId = @MunicipioId)
END


GO
/****** Object:  StoredProcedure [dbo].[Domicilios_MunicipioNombreSelect]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Domicilios_MunicipioNombreSelect]
	@MunicipioNombre varchar(60)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT     Municipio.MunicipioId,RTRIM(Municipio.MunicipioNombre)as MunicipioNombre, Estado.EstadoNombre
FROM         Municipio INNER JOIN
                      Estado ON Municipio.EstadoId = Estado.EstadoId
    where MunicipioNombre like @MunicipioNombre
END


GO
/****** Object:  StoredProcedure [dbo].[Domicilios_MunicipioSelect]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Domicilios_MunicipioSelect]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT top(100)    Municipio.MunicipioId,RTRIM(Municipio.MunicipioNombre)as MunicipioNombre, Estado.EstadoNombre
FROM         Municipio INNER JOIN
                      Estado ON Municipio.EstadoId = Estado.EstadoId
END


GO
/****** Object:  StoredProcedure [dbo].[Domicilios_MunicipiosInsert]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Domicilios_MunicipiosInsert]
	
	@MunicipioNombre	char(60),
	@EstadoId	decimal(11, 0)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Municipio
                      (MunicipioNombre, EstadoId)
VALUES     (@MunicipioNombre,@EstadoId)
END


GO
/****** Object:  StoredProcedure [dbo].[Domicilios_MunicipioUpdate]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Domicilios_MunicipioUpdate]
	@MunicipioId	decimal(11, 0),
	@MunicipioNombre	char(60),
	@EstadoId	decimal(11, 0)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE    Municipio
SET              MunicipioNombre = @MunicipioNombre, EstadoId = @EstadoId
WHERE     (MunicipioId = @MunicipioId)
END


GO
/****** Object:  StoredProcedure [dbo].[Domicilios_PaisIDSelect]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Domicilios_PaisIDSelect]
	@PaisId bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT     TOP (100) PaisId,RTRIM(PaisNombre)as PaisNombre, PaisCode, PaisIsoCode
FROM         Pais
WHERE     (PaisId = @PaisId)
END


GO
/****** Object:  StoredProcedure [dbo].[Domicilios_PaisInsert]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Domicilios_PaisInsert]
	@PaisNombre	varchar(60),
	@PaisCode	varchar(2),
	@PaisIsoCode	varchar(3)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Pais
                      (PaisNombre, PaisCode, PaisIsoCode)
VALUES     (@PaisNombre,@PaisCode,@PaisIsoCode)
END


GO
/****** Object:  StoredProcedure [dbo].[Domicilios_PaisNombreSelect]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Domicilios_PaisNombreSelect]
	@PaisNombre varchar(60)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT     TOP (100) PaisId,RTRIM(PaisNombre)as PaisNombre, PaisCode, PaisIsoCode
FROM         Pais
WHERE     (PaisNombre LIKE @PaisNombre)
END


GO
/****** Object:  StoredProcedure [dbo].[Domicilios_PaisSelect]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Domicilios_PaisSelect]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT     TOP (100) PaisId,RTRIM(PaisNombre)as PaisNombre, PaisCode, PaisIsoCode
FROM         Pais
END


GO
/****** Object:  StoredProcedure [dbo].[Domicilios_PaisUpdate]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Domicilios_PaisUpdate]
	@PaisId	decimal(11, 0),
	@PaisNombre	char(60),
	@PaisCode	char(2),
	@PaisIsoCode	char(3)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE    Pais
SET              PaisNombre = @PaisNombre, PaisCode = @PaisCode, PaisIsoCode = @PaisIsoCode
WHERE     (PaisId = @PaisId)
END


GO
/****** Object:  StoredProcedure [dbo].[Empresa_Insert]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Empresa_Insert]
	@EmpresaId	bigint,
	@EmpresaNombre	varchar(200),
	@EmpresaNombreFiscal	varchar(200),
	@EmpresaCalle	varchar(100),
	@EmpresaNExterior	varchar(50),
	@EmpresaNInterior	varchar(50),
	@EmpresaColonia	varchar(100),
	@EmpresaCP	varchar(5),
	@EmpresaCiudad	varchar(100),
	@EmpresaRFC	varchar(13),
	@EmpresaRegSAGARPA	varchar(100),
	@EmpresaRepresentante	varchar(100),
	@EmpresaPoblacion	varchar(100),
	@EmpresaMunicipio	varchar(100),
	@EstadosId	int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Empresa
                         (EmpresaId, EmpresaNombre, EmpresaNombreFiscal, EmpresaCalle, EmpresaNExterior, EmpresaNInterior, EmpresaColonia, EmpresaCP, EmpresaCiudad, EmpresaRFC, EmpresaRegSAGARPA, 
                         EmpresaRepresentante, EmpresaPoblacion, EmpresaMunicipio, EstadosId)
VALUES        (@EmpresaId,@EmpresaNombre,@EmpresaNombreFiscal,@EmpresaCalle,@EmpresaNExterior,@EmpresaNInterior,@EmpresaColonia,@EmpresaCP,@EmpresaCiudad,@EmpresaRFC,@EmpresaRegSAGARPA,@EmpresaRepresentante,@EmpresaPoblacion,@EmpresaMunicipio,@EstadosId)
END

GO
/****** Object:  StoredProcedure [dbo].[Empresa_Select]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Empresa_Select]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        EmpresaId, EmpresaNombre, EmpresaNombreFiscal, EmpresaCalle, EmpresaNExterior, EmpresaNInterior, EmpresaColonia, EmpresaCP, EmpresaCiudad, EmpresaRFC, EmpresaRegSAGARPA, 
                         EmpresaRepresentante, EmpresaPoblacion, EmpresaMunicipio, EstadosId
FROM            Empresa
END

GO
/****** Object:  StoredProcedure [dbo].[Empresa_Update]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Empresa_Update]
	@EmpresaId	bigint,
	@EmpresaNombre	varchar(200),
	@EmpresaNombreFiscal	varchar(200),
	@EmpresaCalle	varchar(100),
	@EmpresaNExterior	varchar(50),
	@EmpresaNInterior	varchar(50),
	@EmpresaColonia	varchar(100),
	@EmpresaCP	varchar(5),
	@EmpresaCiudad	varchar(100),
	@EmpresaRFC	varchar(13),
	@EmpresaRegSAGARPA	varchar(100),
	@EmpresaRepresentante	varchar(100),
	@EmpresaPoblacion	varchar(100),
	@EmpresaMunicipio	varchar(100),
	@EstadosId	int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE       Empresa
SET                EmpresaNombre = @EmpresaNombre, EmpresaNombreFiscal = @EmpresaNombreFiscal, EmpresaCalle = @EmpresaCalle, EmpresaNExterior = @EmpresaNExterior, EmpresaNInterior = @EmpresaNInterior, 
                         EmpresaColonia = @EmpresaColonia, EmpresaCP = @EmpresaCP, EmpresaCiudad = @EmpresaCiudad, EmpresaRFC = @EmpresaRFC, EmpresaRegSAGARPA = @EmpresaRegSAGARPA, 
                         EmpresaRepresentante = @EmpresaRepresentante, EmpresaPoblacion = @EmpresaPoblacion, EmpresaMunicipio = @EmpresaMunicipio, EstadosId = @EstadosId
WHERE        (EmpresaId = @EmpresaId)
END

GO
/****** Object:  StoredProcedure [dbo].[EstacionesLogin_Select]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[EstacionesLogin_Select]
	@SucursalesId bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        EstacionesId, EstacionesNombre
FROM            Estaciones
WHERE        (SucursalesId = @SucursalesId)
END

GO
/****** Object:  StoredProcedure [dbo].[Estado_Select]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Estado_Select]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        EstadoId, EstadoNombre
FROM            Estado
ORDER BY EstadoNombre
END

GO
/****** Object:  StoredProcedure [dbo].[Sucursales_Select]    Script Date: 2015/11/04 05:40:52 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sucursales_Select]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        SucursalesId, SucursalesNombre
FROM            Sucursales
END

GO
