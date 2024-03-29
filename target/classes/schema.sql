USE [master]

GO
ALTER DATABASE [ProyGestionCambios] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProyGestionCambios] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProyGestionCambios] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProyGestionCambios] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProyGestionCambios] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProyGestionCambios] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ProyGestionCambios] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProyGestionCambios] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProyGestionCambios] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProyGestionCambios] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProyGestionCambios] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProyGestionCambios] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProyGestionCambios] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProyGestionCambios] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProyGestionCambios] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProyGestionCambios] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProyGestionCambios] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProyGestionCambios] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProyGestionCambios] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProyGestionCambios] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProyGestionCambios] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProyGestionCambios] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProyGestionCambios] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProyGestionCambios] SET  MULTI_USER 
GO
ALTER DATABASE [ProyGestionCambios] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProyGestionCambios] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProyGestionCambios] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProyGestionCambios] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProyGestionCambios] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProyGestionCambios] SET QUERY_STORE = OFF
GO
USE [ProyGestionCambios]
GO
/****** Object:  Table [dbo].[Actividad]    Script Date: 03/12/2021 19:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actividad](
	[idActividad] [int] IDENTITY(1,1) NOT NULL,
	[nombreActividad] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idActividad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostosTotales]    Script Date: 03/12/2021 19:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostosTotales](
	[idCostosTotales] [int] IDENTITY(1,1) NOT NULL,
	[totalJornadas] [float] NOT NULL,
	[totalCosto] [float] NOT NULL,
	[costoMedio] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCostosTotales] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estimacion]    Script Date: 03/12/2021 19:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estimacion](
	[idEstimacion] [int] IDENTITY(1,1) NOT NULL,
	[razonSocial] [varchar](100) NOT NULL,
	[fecha] [date] NOT NULL,
	[idCostosTotales] [int] NULL,
	[idUsuarios] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idEstimacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerfilConsultor]    Script Date: 03/12/2021 19:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerfilConsultor](
	[idPerfilConsultor] [int] IDENTITY(1,1) NOT NULL,
	[nombrePerfil] [varchar](50) NOT NULL,
	[costoPerfil] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idPerfilConsultor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistroTarea]    Script Date: 03/12/2021 19:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistroTarea](
	[idRegistroTarea] [int] IDENTITY(1,1) NOT NULL,
	[nroJornadas] [float] NULL,
	[idEstimacion] [int] NULL,
	[idTarea] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idRegistroTarea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarea]    Script Date: 03/12/2021 19:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarea](
	[idTarea] [int] IDENTITY(1,1) NOT NULL,
	[nombreTarea] [varchar](50) NOT NULL,
	[idPerfilConsultor] [int] NULL,
	[idActividad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idTarea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 03/12/2021 19:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[idUsuarios] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](25) NOT NULL,
	[clave] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idUsuarios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Actividad] ON 

INSERT [dbo].[Actividad] ([idActividad], [nombreActividad]) VALUES (1, N'Documento: Valoraciones')
INSERT [dbo].[Actividad] ([idActividad], [nombreActividad]) VALUES (2, N'Análisis')
INSERT [dbo].[Actividad] ([idActividad], [nombreActividad]) VALUES (3, N'Documento: Actualización Diseño Funcional')
INSERT [dbo].[Actividad] ([idActividad], [nombreActividad]) VALUES (4, N'Construcción - Seguimiento (25%)')
INSERT [dbo].[Actividad] ([idActividad], [nombreActividad]) VALUES (5, N'Construcción - Implementación (75%)')
INSERT [dbo].[Actividad] ([idActividad], [nombreActividad]) VALUES (6, N'Pruebas')
INSERT [dbo].[Actividad] ([idActividad], [nombreActividad]) VALUES (7, N'Empaquetado y promoción entre entornos')
INSERT [dbo].[Actividad] ([idActividad], [nombreActividad]) VALUES (8, N'Gestión (3%)')
INSERT [dbo].[Actividad] ([idActividad], [nombreActividad]) VALUES (9, N'Seguimiento (7%)')
INSERT [dbo].[Actividad] ([idActividad], [nombreActividad]) VALUES (10, N'Implementaciones')
SET IDENTITY_INSERT [dbo].[Actividad] OFF
GO
SET IDENTITY_INSERT [dbo].[CostosTotales] ON 

INSERT [dbo].[CostosTotales] ([idCostosTotales], [totalJornadas], [totalCosto], [costoMedio]) VALUES (1, 4.4, 2953.71, 671.3)
INSERT [dbo].[CostosTotales] ([idCostosTotales], [totalJornadas], [totalCosto], [costoMedio]) VALUES (2, 4.5, 2868.36, 637.41333333333341)
INSERT [dbo].[CostosTotales] ([idCostosTotales], [totalJornadas], [totalCosto], [costoMedio]) VALUES (6, 5.3, 5736.72, 1082.4)
INSERT [dbo].[CostosTotales] ([idCostosTotales], [totalJornadas], [totalCosto], [costoMedio]) VALUES (7, 10.5, 17927.25, 1707.3571428571429)
INSERT [dbo].[CostosTotales] ([idCostosTotales], [totalJornadas], [totalCosto], [costoMedio]) VALUES (8, 7.3, 5736.72, 785.85205479452065)
INSERT [dbo].[CostosTotales] ([idCostosTotales], [totalJornadas], [totalCosto], [costoMedio]) VALUES (9, 11.5, 10756.35, 935.33478260869572)
INSERT [dbo].[CostosTotales] ([idCostosTotales], [totalJornadas], [totalCosto], [costoMedio]) VALUES (10, 8.6, 10756.35, 1250.7383720930234)
INSERT [dbo].[CostosTotales] ([idCostosTotales], [totalJornadas], [totalCosto], [costoMedio]) VALUES (11, 9.3, 10039.26, 1079.4903225806452)
INSERT [dbo].[CostosTotales] ([idCostosTotales], [totalJornadas], [totalCosto], [costoMedio]) VALUES (12, 10.3, 17210.16, 1670.8893203883495)
INSERT [dbo].[CostosTotales] ([idCostosTotales], [totalJornadas], [totalCosto], [costoMedio]) VALUES (13, 8.3, 11473.44, 1382.3421686746988)
INSERT [dbo].[CostosTotales] ([idCostosTotales], [totalJornadas], [totalCosto], [costoMedio]) VALUES (14, 8.4, 14341.800000000001, 1707.3571428571429)
INSERT [dbo].[CostosTotales] ([idCostosTotales], [totalJornadas], [totalCosto], [costoMedio]) VALUES (15, 8.2, 14341.800000000001, 1749.0000000000002)
INSERT [dbo].[CostosTotales] ([idCostosTotales], [totalJornadas], [totalCosto], [costoMedio]) VALUES (16, 13.2, 12907.62, 977.85000000000014)
INSERT [dbo].[CostosTotales] ([idCostosTotales], [totalJornadas], [totalCosto], [costoMedio]) VALUES (17, 7.4, 10756.35, 1453.5608108108108)
INSERT [dbo].[CostosTotales] ([idCostosTotales], [totalJornadas], [totalCosto], [costoMedio]) VALUES (18, 9.5, 11473.44, 1207.7305263157896)
INSERT [dbo].[CostosTotales] ([idCostosTotales], [totalJornadas], [totalCosto], [costoMedio]) VALUES (19, 8, 10756.35, 1344.54375)
SET IDENTITY_INSERT [dbo].[CostosTotales] OFF
GO
SET IDENTITY_INSERT [dbo].[Estimacion] ON 

INSERT [dbo].[Estimacion] ([idEstimacion], [razonSocial], [fecha], [idCostosTotales], [idUsuarios]) VALUES (1, N'Telefónica del Perú', CAST(N'2021-11-23' AS Date), 1, 1)
INSERT [dbo].[Estimacion] ([idEstimacion], [razonSocial], [fecha], [idCostosTotales], [idUsuarios]) VALUES (22, N'Americatel Perú', CAST(N'2021-11-27' AS Date), 2, 8)
INSERT [dbo].[Estimacion] ([idEstimacion], [razonSocial], [fecha], [idCostosTotales], [idUsuarios]) VALUES (27, N'Entel Perú S.A.', CAST(N'2021-11-28' AS Date), 6, 9)
INSERT [dbo].[Estimacion] ([idEstimacion], [razonSocial], [fecha], [idCostosTotales], [idUsuarios]) VALUES (28, N'América Moviles S.A.', CAST(N'2021-11-29' AS Date), 7, 1)
INSERT [dbo].[Estimacion] ([idEstimacion], [razonSocial], [fecha], [idCostosTotales], [idUsuarios]) VALUES (29, N'Telefónica del Perú', CAST(N'2021-11-29' AS Date), 8, 1)
INSERT [dbo].[Estimacion] ([idEstimacion], [razonSocial], [fecha], [idCostosTotales], [idUsuarios]) VALUES (30, N'Bitel', CAST(N'2021-11-29' AS Date), 9, 1)
INSERT [dbo].[Estimacion] ([idEstimacion], [razonSocial], [fecha], [idCostosTotales], [idUsuarios]) VALUES (31, N'Telefónica del Perú', CAST(N'2021-11-29' AS Date), 10, 1)
INSERT [dbo].[Estimacion] ([idEstimacion], [razonSocial], [fecha], [idCostosTotales], [idUsuarios]) VALUES (32, N'Entel Perú S.A.', CAST(N'2021-11-29' AS Date), 11, 8)
INSERT [dbo].[Estimacion] ([idEstimacion], [razonSocial], [fecha], [idCostosTotales], [idUsuarios]) VALUES (33, N'Americatel Perú S.A.', CAST(N'2021-11-29' AS Date), 12, 9)
INSERT [dbo].[Estimacion] ([idEstimacion], [razonSocial], [fecha], [idCostosTotales], [idUsuarios]) VALUES (34, N'Entel Perú S.A.', CAST(N'2021-11-29' AS Date), 13, 1)
INSERT [dbo].[Estimacion] ([idEstimacion], [razonSocial], [fecha], [idCostosTotales], [idUsuarios]) VALUES (35, N'Bitel', CAST(N'2021-11-29' AS Date), 14, 1)
INSERT [dbo].[Estimacion] ([idEstimacion], [razonSocial], [fecha], [idCostosTotales], [idUsuarios]) VALUES (36, N'Americatel Perú S.A.', CAST(N'2021-11-29' AS Date), 15, 1)
INSERT [dbo].[Estimacion] ([idEstimacion], [razonSocial], [fecha], [idCostosTotales], [idUsuarios]) VALUES (37, N'Entel Perú S.A.', CAST(N'2021-11-29' AS Date), 16, 1)
INSERT [dbo].[Estimacion] ([idEstimacion], [razonSocial], [fecha], [idCostosTotales], [idUsuarios]) VALUES (39, N'Telefónica del Perú', CAST(N'2021-11-30' AS Date), 17, 1)
INSERT [dbo].[Estimacion] ([idEstimacion], [razonSocial], [fecha], [idCostosTotales], [idUsuarios]) VALUES (40, N'Telefonica del Perú', CAST(N'2021-12-02' AS Date), 18, 1)
INSERT [dbo].[Estimacion] ([idEstimacion], [razonSocial], [fecha], [idCostosTotales], [idUsuarios]) VALUES (41, N'temporal', CAST(N'2021-01-01' AS Date), 1, 1)
INSERT [dbo].[Estimacion] ([idEstimacion], [razonSocial], [fecha], [idCostosTotales], [idUsuarios]) VALUES (42, N'Telefonica', CAST(N'2021-12-03' AS Date), 19, 1)
SET IDENTITY_INSERT [dbo].[Estimacion] OFF
GO
SET IDENTITY_INSERT [dbo].[PerfilConsultor] ON 

INSERT [dbo].[PerfilConsultor] ([idPerfilConsultor], [nombrePerfil], [costoPerfil]) VALUES (1, N'Consultor Estratégico', 1865.46)
INSERT [dbo].[PerfilConsultor] ([idPerfilConsultor], [nombrePerfil], [costoPerfil]) VALUES (2, N'Jefe de Proyecto', 874.86)
INSERT [dbo].[PerfilConsultor] ([idPerfilConsultor], [nombrePerfil], [costoPerfil]) VALUES (3, N'Técnico de Sistemas', 717.09)
INSERT [dbo].[PerfilConsultor] ([idPerfilConsultor], [nombrePerfil], [costoPerfil]) VALUES (4, N'Analista funcional', 563.7)
INSERT [dbo].[PerfilConsultor] ([idPerfilConsultor], [nombrePerfil], [costoPerfil]) VALUES (5, N'Analista Programador', 469.12)
INSERT [dbo].[PerfilConsultor] ([idPerfilConsultor], [nombrePerfil], [costoPerfil]) VALUES (6, N'Técnico Mecánico', 650)
INSERT [dbo].[PerfilConsultor] ([idPerfilConsultor], [nombrePerfil], [costoPerfil]) VALUES (7, N'Ingeniero de Campo', 1500)
SET IDENTITY_INSERT [dbo].[PerfilConsultor] OFF
GO
SET IDENTITY_INSERT [dbo].[RegistroTarea] ON 

INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (9, 0.5, 1, 1)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (10, 0.5, 1, 2)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (11, 0.5, 1, 4)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (12, 1.5, 1, 5)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (13, 0.5, 1, 6)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (14, 0.5, 1, 7)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (15, 0.12, 1, 8)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (16, 0.28, 1, 9)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (41, 0.5, 22, 1)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (42, 1, 22, 6)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (43, 2, 22, 2)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (44, 1, 22, 8)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (57, 1, 27, 1)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (58, 2, 27, 5)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (59, 0.3, 27, 8)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (60, 2, 27, 9)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (61, 1, 28, 1)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (62, 0.5, 28, 5)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (63, 3, 28, 3)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (64, 1, 28, 8)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (65, 5, 28, 9)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (66, 2, 29, 4)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (67, 0.3, 29, 6)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (68, 3, 29, 2)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (69, 2, 29, 9)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (70, 2, 30, 1)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (71, 2, 30, 5)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (72, 4, 30, 8)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (73, 0.5, 30, 8)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (74, 3, 30, 9)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (75, 0.6, 31, 1)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (76, 2, 31, 6)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (77, 1, 31, 2)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (78, 2, 31, 8)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (79, 3, 31, 9)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (80, 2, 32, 1)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (81, 1, 32, 4)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (82, 2, 32, 6)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (83, 0.3, 32, 2)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (84, 1, 32, 3)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (85, 1, 32, 8)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (86, 2, 32, 9)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (87, 1, 33, 1)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (88, 0.3, 33, 4)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (89, 2, 33, 6)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (90, 1, 33, 2)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (91, 2, 33, 8)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (92, 4, 33, 9)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (93, 2, 34, 1)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (94, 0.3, 34, 4)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (95, 2, 34, 6)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (96, 4, 34, 9)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (97, 2, 35, 1)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (98, 0.4, 35, 4)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (99, 1, 35, 2)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (100, 5, 35, 9)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (101, 1, 36, 1)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (102, 0.2, 36, 5)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (103, 1, 36, 2)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (104, 2, 36, 8)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (105, 4, 36, 9)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (106, 1, 37, 1)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (107, 0.2, 37, 4)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (108, 3, 37, 6)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (109, 2, 37, 7)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (110, 4, 37, 3)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (111, 3, 37, 9)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (112, 0.4, 39, 1)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (113, 1, 39, 5)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (114, 2, 39, 3)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (115, 1, 39, 8)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (116, 3, 39, 9)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (117, 4, 40, 1)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (118, 1, 40, 2)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (119, 0.5, 40, 8)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (120, 4, 40, 9)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (121, 2, 42, 12)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (122, 1, 42, 5)
INSERT [dbo].[RegistroTarea] ([idRegistroTarea], [nroJornadas], [idEstimacion], [idTarea]) VALUES (123, 5, 42, 3)
SET IDENTITY_INSERT [dbo].[RegistroTarea] OFF
GO
SET IDENTITY_INSERT [dbo].[Tarea] ON 

INSERT [dbo].[Tarea] ([idTarea], [nombreTarea], [idPerfilConsultor], [idActividad]) VALUES (1, N'Cierre de Requisitos / Valoración', 3, 1)
INSERT [dbo].[Tarea] ([idTarea], [nombreTarea], [idPerfilConsultor], [idActividad]) VALUES (2, N'Diseño Funcional', 3, 2)
INSERT [dbo].[Tarea] ([idTarea], [nombreTarea], [idPerfilConsultor], [idActividad]) VALUES (3, N'Diseño Funcional', 3, 3)
INSERT [dbo].[Tarea] ([idTarea], [nombreTarea], [idPerfilConsultor], [idActividad]) VALUES (4, N'Construcción, Pruebas y Entrega', 3, 4)
INSERT [dbo].[Tarea] ([idTarea], [nombreTarea], [idPerfilConsultor], [idActividad]) VALUES (5, N'Construcción, Pruebas y Entrega', 4, 5)
INSERT [dbo].[Tarea] ([idTarea], [nombreTarea], [idPerfilConsultor], [idActividad]) VALUES (6, N'Construcción, Pruebas y Entrega', 4, 6)
INSERT [dbo].[Tarea] ([idTarea], [nombreTarea], [idPerfilConsultor], [idActividad]) VALUES (7, N'Construcción, Pruebas y Entrega', 4, 7)
INSERT [dbo].[Tarea] ([idTarea], [nombreTarea], [idPerfilConsultor], [idActividad]) VALUES (8, N'Gestión', 1, 8)
INSERT [dbo].[Tarea] ([idTarea], [nombreTarea], [idPerfilConsultor], [idActividad]) VALUES (9, N'Seguimiento', 2, 9)
INSERT [dbo].[Tarea] ([idTarea], [nombreTarea], [idPerfilConsultor], [idActividad]) VALUES (10, N'Gestiones', 3, 8)
INSERT [dbo].[Tarea] ([idTarea], [nombreTarea], [idPerfilConsultor], [idActividad]) VALUES (11, N'Seguimiento', 1, 9)
INSERT [dbo].[Tarea] ([idTarea], [nombreTarea], [idPerfilConsultor], [idActividad]) VALUES (12, N'Cableado Externo', 7, 10)
SET IDENTITY_INSERT [dbo].[Tarea] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([idUsuarios], [usuario], [clave]) VALUES (1, N'PM', N'123456')
INSERT [dbo].[Usuarios] ([idUsuarios], [usuario], [clave]) VALUES (8, N'SM', N'123456')
INSERT [dbo].[Usuarios] ([idUsuarios], [usuario], [clave]) VALUES (9, N'PO', N'123456')
INSERT [dbo].[Usuarios] ([idUsuarios], [usuario], [clave]) VALUES (10, N'admin', N'@dm1n.2021')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
ALTER TABLE [dbo].[Estimacion]  WITH CHECK ADD  CONSTRAINT [FK_CostosTotales] FOREIGN KEY([idCostosTotales])
REFERENCES [dbo].[CostosTotales] ([idCostosTotales])
GO
ALTER TABLE [dbo].[Estimacion] CHECK CONSTRAINT [FK_CostosTotales]
GO
ALTER TABLE [dbo].[Estimacion]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios] FOREIGN KEY([idUsuarios])
REFERENCES [dbo].[Usuarios] ([idUsuarios])
GO
ALTER TABLE [dbo].[Estimacion] CHECK CONSTRAINT [FK_Usuarios]
GO
ALTER TABLE [dbo].[RegistroTarea]  WITH CHECK ADD  CONSTRAINT [FK_Estimacion] FOREIGN KEY([idEstimacion])
REFERENCES [dbo].[Estimacion] ([idEstimacion])
GO
ALTER TABLE [dbo].[RegistroTarea] CHECK CONSTRAINT [FK_Estimacion]
GO
ALTER TABLE [dbo].[RegistroTarea]  WITH CHECK ADD  CONSTRAINT [FK_Tarea] FOREIGN KEY([idTarea])
REFERENCES [dbo].[Tarea] ([idTarea])
GO
ALTER TABLE [dbo].[RegistroTarea] CHECK CONSTRAINT [FK_Tarea]
GO
ALTER TABLE [dbo].[Tarea]  WITH CHECK ADD  CONSTRAINT [FK_Actividad] FOREIGN KEY([idActividad])
REFERENCES [dbo].[Actividad] ([idActividad])
GO
ALTER TABLE [dbo].[Tarea] CHECK CONSTRAINT [FK_Actividad]
GO
ALTER TABLE [dbo].[Tarea]  WITH CHECK ADD  CONSTRAINT [FK_PerfilConsultor] FOREIGN KEY([idPerfilConsultor])
REFERENCES [dbo].[PerfilConsultor] ([idPerfilConsultor])
GO
ALTER TABLE [dbo].[Tarea] CHECK CONSTRAINT [FK_PerfilConsultor]
GO
USE [master]
GO
ALTER DATABASE [ProyGestionCambios] SET  READ_WRITE 
GO
