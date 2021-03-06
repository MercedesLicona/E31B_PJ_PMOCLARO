USE [master]
GO
/****** Object:  Database [PMO_CLARO]    Script Date: 9/07/2022 08:43:52 ******/
CREATE DATABASE [PMO_CLARO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PMO_CLARO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PMO_CLARO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PMO_CLARO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PMO_CLARO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PMO_CLARO] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PMO_CLARO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PMO_CLARO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PMO_CLARO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PMO_CLARO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PMO_CLARO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PMO_CLARO] SET ARITHABORT OFF 
GO
ALTER DATABASE [PMO_CLARO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PMO_CLARO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PMO_CLARO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PMO_CLARO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PMO_CLARO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PMO_CLARO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PMO_CLARO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PMO_CLARO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PMO_CLARO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PMO_CLARO] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PMO_CLARO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PMO_CLARO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PMO_CLARO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PMO_CLARO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PMO_CLARO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PMO_CLARO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PMO_CLARO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PMO_CLARO] SET RECOVERY FULL 
GO
ALTER DATABASE [PMO_CLARO] SET  MULTI_USER 
GO
ALTER DATABASE [PMO_CLARO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PMO_CLARO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PMO_CLARO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PMO_CLARO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PMO_CLARO] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PMO_CLARO] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PMO_CLARO', N'ON'
GO
ALTER DATABASE [PMO_CLARO] SET QUERY_STORE = OFF
GO
USE [PMO_CLARO]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 9/07/2022 08:43:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IdCliente] [varchar](3) NOT NULL,
	[Ruc] [varchar](11) NULL,
	[RazonSocial] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proyecto]    Script Date: 9/07/2022 08:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proyecto](
	[IdProyecto] [varchar](3) NOT NULL,
	[Descripcion] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sede]    Script Date: 9/07/2022 08:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sede](
	[IdSede] [varchar](3) NOT NULL,
	[Descripcion] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSede] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicio]    Script Date: 9/07/2022 08:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicio](
	[SOT] [varchar](8) NOT NULL,
	[FechaRegistro] [datetime] NULL,
	[IdTipoServicio] [varchar](3) NULL,
	[IdAnalista] [varchar](3) NULL,
	[IdCliente] [varchar](3) NULL,
	[IdSede] [varchar](3) NULL,
	[IdProyecto] [varchar](3) NULL,
	[Estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[SOT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoServicio]    Script Date: 9/07/2022 08:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoServicio](
	[IdTipoServicio] [varchar](3) NOT NULL,
	[Descripcion] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipoServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trabajador]    Script Date: 9/07/2022 08:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trabajador](
	[IdTrabajador] [varchar](3) NOT NULL,
	[Nombre] [varchar](60) NULL,
	[Email] [varchar](60) NULL,
	[Contrasena] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTrabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cliente] ([IdCliente], [Ruc], [RazonSocial]) VALUES (N'001', N'20000000001', N'SCOTIABANK')
INSERT [dbo].[Cliente] ([IdCliente], [Ruc], [RazonSocial]) VALUES (N'002', N'20000000002', N'BBVA')
INSERT [dbo].[Cliente] ([IdCliente], [Ruc], [RazonSocial]) VALUES (N'003', N'20000000002', N'BANCO DE LA NACION')
INSERT [dbo].[Cliente] ([IdCliente], [Ruc], [RazonSocial]) VALUES (N'004', N'20000000003', N'BCP')
INSERT [dbo].[Cliente] ([IdCliente], [Ruc], [RazonSocial]) VALUES (N'005', N'20000000003', N'BANCO PICHINCHA')
GO
INSERT [dbo].[Proyecto] ([IdProyecto], [Descripcion]) VALUES (N'001', N'FIREWALL')
INSERT [dbo].[Proyecto] ([IdProyecto], [Descripcion]) VALUES (N'002', N'SHELL')
INSERT [dbo].[Proyecto] ([IdProyecto], [Descripcion]) VALUES (N'003', N'SCOTIABANK')
INSERT [dbo].[Proyecto] ([IdProyecto], [Descripcion]) VALUES (N'004', N'GPON')
INSERT [dbo].[Proyecto] ([IdProyecto], [Descripcion]) VALUES (N'005', N'BBVA')
INSERT [dbo].[Proyecto] ([IdProyecto], [Descripcion]) VALUES (N'006', N'BANCO DE LA NACION')
INSERT [dbo].[Proyecto] ([IdProyecto], [Descripcion]) VALUES (N'007', N'BCP')
GO
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'001', N'ATM ISLAS REAL PLAZA')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'002', N'ATM TOTTUS HUACHO')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'003', N'AYACUCHO')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'004', N'BANCO DE CREDITO DEL PERU')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'005', N'BELLAVISTA (EX CARMEN DE LA LEGUA)')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'006', N'BIENESTAR DE LA MARINA')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'007', N'C.C. CANTA CALLAO')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'008', N'C.C. MEGA PLAZA')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'009', N'C.C. REAL PLAZA HUANCAYO')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'010', N'C.C. SAN ISIDRO')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'011', N'CALLAO')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'012', N'CAMACHO')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'013', N'CAMANÁ AREQUIPA')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'014', N'CAMINO REAL')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'015', N'CANADA-LA ROSA TORO')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'016', N'CANTO GRANDE (SE MUDO LOCAL SAN HILARION)')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'017', N'CAVENECIA')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'018', N'CC REAL PLAZA SANTA CLARA')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'019', N'CLUB REGATAS')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'020', N'CORPAC')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'021', N'EL PINO')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'022', N'GRUPO 8')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'023', N'HUANCAYO')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'024', N'INGENIERÍA')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'025', N'JESÚS MARÍA')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'026', N'JORGE BASADRE')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'027', N'LA OROYA')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'028', N'LA PERLA')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'029', N'LA ROTONDA')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'030', N'LURIN')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'031', N'MALL AVENTURA PLAZA AQP-arequipa')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'032', N'MALL AVENTURA PLAZA CALLAO')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'033', N'MALL AVENTURA PLAZA SANTA ANITA')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'034', N'MALL DEL SUR')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'035', N'METRO MÉXICO')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'036', N'METRO PLAZA LA LUNA')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'037', N'MINISTERIO DE ENERGIA Y MINAS')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'038', N'MONTEGRANDE')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'039', N'MOYOBAMBA')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'040', N'OFICINA REAL PLAZA HUANUCO')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'041', N'OPEN PLAZA ANGAMOS')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'042', N'OVALO 200 MILLAS')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'043', N'PARURO')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'044', N'PISCO')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'045', N'PLAZA CENTER')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'046', N'PLAZA DE ARMAS HUANUCO (ex-Huanuco)')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'047', N'PLAZA LIMA SUR')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'048', N'PLAZA UNIÓN')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'049', N'PREMIUM 2 (PARDO Y ALIAGA)')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'050', N'REAL PLAZA CUSCO')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'051', N'REAL PLAZA SALAVERRY')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'052', N'REAL PLAZA TRUJILLO')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'053', N'SAN ANTONIO')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'054', N'SAN BORJA SUR')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'055', N'SAN CAMILO')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'056', N'SAN FELIPE')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'057', N'SAN FELIPE COMAS')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'058', N'SAN LUIS')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'059', N'SANTA ANITA (confusión no es Nestlé)')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'060', N'SATIPO')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'061', N'SEDAPAL (CONTENEDOR SEDAPAL)')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'062', N'SEDE AMERIKA FINANCIERA')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'063', N'SEPARADORA INDUSTRIAL')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'064', N'SICUANI')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'065', N'SUPE')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'066', N'TINGO MARIA')
INSERT [dbo].[Sede] ([IdSede], [Descripcion]) VALUES (N'067', N'VENTANILLA')
GO
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'34133730', CAST(N'2021-12-29T00:00:00.000' AS DateTime), N'006', N'001', N'001', N'036', N'003', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'34201542', CAST(N'2021-11-05T00:00:00.000' AS DateTime), N'010', N'005', N'001', N'002', N'003', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'34201762', CAST(N'2021-09-30T00:00:00.000' AS DateTime), N'010', N'005', N'001', N'037', N'003', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'34201852', CAST(N'2021-10-06T00:00:00.000' AS DateTime), N'010', N'005', N'001', N'035', N'003', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065091', CAST(N'2021-10-01T00:00:00.000' AS DateTime), N'009', N'001', N'002', N'005', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065093', CAST(N'2021-09-27T00:00:00.000' AS DateTime), N'008', N'002', N'002', N'023', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065094', CAST(N'2021-10-07T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'021', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065099', CAST(N'2021-09-28T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'025', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065102', CAST(N'2021-10-18T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'055', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065105', CAST(N'2021-10-02T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'039', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065117', CAST(N'2021-09-30T00:00:00.000' AS DateTime), N'009', N'001', N'002', N'054', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065121', CAST(N'2021-11-10T00:00:00.000' AS DateTime), N'009', N'001', N'002', N'017', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065124', CAST(N'2021-10-01T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'043', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065126', CAST(N'2021-12-15T00:00:00.000' AS DateTime), N'009', N'001', N'002', N'006', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065150', CAST(N'2021-10-09T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'024', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065151', CAST(N'2021-09-30T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'038', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065169', CAST(N'2021-11-11T00:00:00.000' AS DateTime), N'009', N'001', N'002', N'066', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065175', CAST(N'2021-10-07T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'012', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065177', CAST(N'2021-10-07T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'060', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065181', CAST(N'2021-12-15T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'046', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065190', CAST(N'2021-09-28T00:00:00.000' AS DateTime), N'009', N'001', N'002', N'026', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065209', CAST(N'2021-12-27T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'050', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065213', CAST(N'2021-10-13T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'028', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065217', CAST(N'2021-10-01T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'048', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065218', CAST(N'2021-12-01T00:00:00.000' AS DateTime), N'009', N'001', N'002', N'061', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065225', CAST(N'2021-09-28T00:00:00.000' AS DateTime), N'009', N'001', N'002', N'014', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065258', CAST(N'2021-09-29T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'018', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065261', CAST(N'2021-09-27T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'033', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065264', CAST(N'2021-10-04T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'042', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065265', CAST(N'2021-10-02T00:00:00.000' AS DateTime), N'009', N'001', N'002', N'016', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065273', CAST(N'2021-09-30T00:00:00.000' AS DateTime), N'009', N'001', N'002', N'056', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065294', CAST(N'2021-10-03T00:00:00.000' AS DateTime), N'009', N'001', N'002', N'053', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065296', CAST(N'2021-10-09T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'067', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065302', CAST(N'2021-09-27T00:00:00.000' AS DateTime), N'009', N'001', N'002', N'052', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065312', CAST(N'2021-10-01T00:00:00.000' AS DateTime), N'009', N'001', N'002', N'011', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065314', CAST(N'2021-11-10T00:00:00.000' AS DateTime), N'009', N'001', N'002', N'057', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065325', CAST(N'2021-10-05T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'059', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065326', CAST(N'2021-10-14T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'032', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065335', CAST(N'2021-12-11T00:00:00.000' AS DateTime), N'005', N'002', N'002', N'009', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065339', CAST(N'2021-10-05T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'015', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065343', CAST(N'2021-09-28T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'051', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065345', CAST(N'2021-11-13T00:00:00.000' AS DateTime), N'009', N'001', N'002', N'027', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065352', CAST(N'2021-11-11T00:00:00.000' AS DateTime), N'009', N'001', N'002', N'031', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065362', CAST(N'2021-09-28T00:00:00.000' AS DateTime), N'009', N'001', N'002', N'044', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065375', CAST(N'2021-12-02T00:00:00.000' AS DateTime), N'005', N'002', N'002', N'040', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065377', CAST(N'2021-09-30T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'013', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065396', CAST(N'2021-11-11T00:00:00.000' AS DateTime), N'009', N'001', N'002', N'003', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065403', CAST(N'2021-11-26T00:00:00.000' AS DateTime), N'009', N'001', N'002', N'010', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065404', CAST(N'2021-10-07T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'008', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065434', CAST(N'2021-11-10T00:00:00.000' AS DateTime), N'009', N'001', N'002', N'029', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065441', CAST(N'2021-12-30T00:00:00.000' AS DateTime), N'005', N'002', N'002', N'019', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065456', CAST(N'2021-10-01T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'063', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065459', CAST(N'2021-10-07T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'020', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065463', CAST(N'2021-09-28T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'049', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065469', CAST(N'2021-09-30T00:00:00.000' AS DateTime), N'009', N'002', N'002', N'041', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065478', CAST(N'2021-10-01T00:00:00.000' AS DateTime), N'009', N'001', N'002', N'030', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'44065490', CAST(N'2021-12-10T00:00:00.000' AS DateTime), N'009', N'001', N'002', N'058', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'48400480', CAST(N'2021-10-11T00:00:00.000' AS DateTime), N'007', N'002', N'005', N'062', N'004', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'51501486', CAST(N'2021-10-07T00:00:00.000' AS DateTime), N'012', N'005', N'001', N'022', N'003', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'51698878', CAST(N'2021-09-10T00:00:00.000' AS DateTime), N'003', N'004', N'003', N'065', N'006', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'52147080', CAST(N'2021-10-22T00:00:00.000' AS DateTime), N'003', N'004', N'004', N'064', N'007', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'52351123', CAST(N'2021-10-29T00:00:00.000' AS DateTime), N'003', N'004', N'003', N'045', N'006', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'52351124', CAST(N'2021-10-29T00:00:00.000' AS DateTime), N'003', N'004', N'003', N'001', N'006', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'52351154', CAST(N'2021-11-05T00:00:00.000' AS DateTime), N'003', N'004', N'003', N'045', N'006', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'52552145', CAST(N'2021-11-24T00:00:00.000' AS DateTime), N'004', N'004', N'004', N'004', N'007', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'52552169', CAST(N'2021-12-06T00:00:00.000' AS DateTime), N'011', N'004', N'004', N'004', N'007', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'53199292', CAST(N'2021-12-22T00:00:00.000' AS DateTime), N'012', N'002', N'002', N'007', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'53199351', CAST(N'2021-12-22T00:00:00.000' AS DateTime), N'012', N'002', N'002', N'047', N'005', N'A')
INSERT [dbo].[Servicio] ([SOT], [FechaRegistro], [IdTipoServicio], [IdAnalista], [IdCliente], [IdSede], [IdProyecto], [Estado]) VALUES (N'53204280', CAST(N'2021-12-29T00:00:00.000' AS DateTime), N'012', N'002', N'002', N'034', N'005', N'A')
GO
INSERT [dbo].[TipoServicio] ([IdTipoServicio], [Descripcion]) VALUES (N'001', N'Migración - Servicios Gestionados')
INSERT [dbo].[TipoServicio] ([IdTipoServicio], [Descripcion]) VALUES (N'002', N'Migración de Acceso a GPON')
INSERT [dbo].[TipoServicio] ([IdTipoServicio], [Descripcion]) VALUES (N'003', N'N/A')
INSERT [dbo].[TipoServicio] ([IdTipoServicio], [Descripcion]) VALUES (N'004', N'DATACENTER-HUAYLAS (CHORRILLOS)')
INSERT [dbo].[TipoServicio] ([IdTipoServicio], [Descripcion]) VALUES (N'005', N'INSTALACIÓN INTERNET')
INSERT [dbo].[TipoServicio] ([IdTipoServicio], [Descripcion]) VALUES (N'006', N'MIGRACIÓN - SERVICIOS RPV')
INSERT [dbo].[TipoServicio] ([IdTipoServicio], [Descripcion]) VALUES (N'007', N'Migración de Acceso a GPON')
INSERT [dbo].[TipoServicio] ([IdTipoServicio], [Descripcion]) VALUES (N'008', N'MIGRACION DE RPV A INTERNET')
INSERT [dbo].[TipoServicio] ([IdTipoServicio], [Descripcion]) VALUES (N'009', N'MIGRACION DE RPV A INTERNET')
INSERT [dbo].[TipoServicio] ([IdTipoServicio], [Descripcion]) VALUES (N'010', N'RPV FULL MESH ACCESO 256 KBPS')
INSERT [dbo].[TipoServicio] ([IdTipoServicio], [Descripcion]) VALUES (N'011', N'SEDE CENTRAL (LA MOLINA)')
INSERT [dbo].[TipoServicio] ([IdTipoServicio], [Descripcion]) VALUES (N'012', N'TRASLADO EXTERNO')
GO
INSERT [dbo].[Trabajador] ([IdTrabajador], [Nombre], [Email], [Contrasena]) VALUES (N'001', N'MERCEDES', N'mercedeslq@claro.com.pe', N'123456')
INSERT [dbo].[Trabajador] ([IdTrabajador], [Nombre], [Email], [Contrasena]) VALUES (N'002', N'DANIEL', N'DANIEL@mail.com', N'123456')
INSERT [dbo].[Trabajador] ([IdTrabajador], [Nombre], [Email], [Contrasena]) VALUES (N'003', N'BRYAN', N'bryanr@claro.com.pe', N'123456')
INSERT [dbo].[Trabajador] ([IdTrabajador], [Nombre], [Email], [Contrasena]) VALUES (N'004', N'WIKLER', N'WIKLER@mail.com', N'123456')
INSERT [dbo].[Trabajador] ([IdTrabajador], [Nombre], [Email], [Contrasena]) VALUES (N'005', N'GERSON', N'gerson@claro.com.pe', N'123456')
GO
ALTER TABLE [dbo].[Servicio]  WITH CHECK ADD FOREIGN KEY([IdAnalista])
REFERENCES [dbo].[Trabajador] ([IdTrabajador])
GO
ALTER TABLE [dbo].[Servicio]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Servicio]  WITH CHECK ADD FOREIGN KEY([IdProyecto])
REFERENCES [dbo].[Proyecto] ([IdProyecto])
GO
ALTER TABLE [dbo].[Servicio]  WITH CHECK ADD FOREIGN KEY([IdSede])
REFERENCES [dbo].[Sede] ([IdSede])
GO
ALTER TABLE [dbo].[Servicio]  WITH CHECK ADD FOREIGN KEY([IdTipoServicio])
REFERENCES [dbo].[TipoServicio] ([IdTipoServicio])
GO
/****** Object:  StoredProcedure [dbo].[Usp_ConsultaVariosServicios]    Script Date: 9/07/2022 08:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Usp_ConsultaVariosServicios](
	@opcion INT
)AS BEGIN
	-- Opciónes:0: Tipo de Servicio, 1:Cliente, 2:Sede, 3:Proyecto
	IF(@opcion=0)
	BEGIN
		select IdTipoServicio as Id, Descripcion from TipoServicio
	END
	IF(@opcion=1)
	BEGIN
		select IdCliente as Id, RazonSocial AS Descripcion from Cliente
	END
	IF(@opcion=2)
	BEGIN
		select IdSede as Id, Descripcion from Sede
	END
	IF(@opcion=3)
	BEGIN
		select IdProyecto as Id, Descripcion from Proyecto
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_ListadoDeServicios]    Script Date: 9/07/2022 08:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usp_ListadoDeServicios]
AS BEGIN

	select s.SOT,
		CONVERT(DATE,s.FechaRegistro) as Fecha,
		pr.Descripcion as Proyecto,
		ts.Descripcion as Servicio,
		tr.Nombre as Analista,
		cl.RazonSocial as Cliente,
		se.Descripcion as Sede,
		s.Estado
	from Servicio s
	inner join TipoServicio ts on ts.IdTipoServicio=s.IdTipoServicio
	inner join Trabajador tr on tr.IdTrabajador=s.IdAnalista
	inner join Cliente cl on cl.IdCliente=s.IdCliente
	inner join Sede se on se.IdSede=s.IdSede
	inner join Proyecto pr on pr.IdProyecto=s.IdProyecto
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_ListadoDeServiciosPorProyecto]    Script Date: 9/07/2022 08:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Usp_ListadoDeServiciosPorProyecto](
	@Proyecto VARCHAR(100)
)AS BEGIN

	select s.SOT,
		CONVERT(DATE,s.FechaRegistro) as Fecha,
		pr.Descripcion as Proyecto,
		ts.Descripcion as Servicio,
		tr.Nombre as Analista,
		cl.RazonSocial as Cliente,
		se.Descripcion as Sede,
		s.Estado
	from Servicio s
	inner join TipoServicio ts on ts.IdTipoServicio=s.IdTipoServicio
	inner join Trabajador tr on tr.IdTrabajador=s.IdAnalista
	inner join Cliente cl on cl.IdCliente=s.IdCliente
	inner join Sede se on se.IdSede=s.IdSede
	inner join Proyecto pr on pr.IdProyecto=s.IdProyecto
	where pr.Descripcion=@Proyecto
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_ServicioInsertar]    Script Date: 9/07/2022 08:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- 53204280
-- 53204281

CREATE PROCEDURE [dbo].[Usp_ServicioInsertar](
	@IdTipoServicio varchar(3),
	@IdAnalista varchar(3),
	@IdCliente varchar(3),
	@IdSede varchar(3),
	@IdProyecto varchar(3)
) AS BEGIN

	declare @sot varchar(8);
	set @sot=(
		select FORMAT(ISNULL(MAX(SOT),0)+1,'00000000') from Servicio
	);

	insert into Servicio 
	(SOT,FechaRegistro,IdTipoServicio,IdAnalista,IdCliente,IdSede,IdProyecto,Estado)
	values(
		@sot, --correlativo
		GETDATE(),
		@IdTipoServicio, --IdTipoServicio  --->
		@IdAnalista, -- IdAnalista
		@IdCliente, --IdCliente
		@IdSede, --IdSede
		@IdProyecto, --IdProyecto
		'P' -- Estado
	)
END 
GO
/****** Object:  StoredProcedure [dbo].[Usp_TrabajadorActualizaPerfil]    Script Date: 9/07/2022 08:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Usp_TrabajadorActualizaPerfil](
	@IdTrabajador VARCHAR(3),
	@nombre VARCHAR(60)
)
AS BEGIN
	set nocount on
	update Trabajador
	set Nombre=@nombre
	where IdTrabajador=@IdTrabajador
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_TrabajadorLogin]    Script Date: 9/07/2022 08:43:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_TrabajadorLogin](
	@usuario VARCHAR(60),
	@contrasena VARCHAR(60)
)
AS BEGIN
	Select * 
	from Trabajador
	where Email=@usuario
	and Contrasena=@contrasena
END
GO
USE [master]
GO
ALTER DATABASE [PMO_CLARO] SET  READ_WRITE 
GO
