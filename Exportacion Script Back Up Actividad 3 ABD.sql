USE [master]
GO
/****** Object:  Database [AkirasBoutiques]    Script Date: 29/05/2023 10:30:29 p. m. ******/
CREATE DATABASE [AkirasBoutiques]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AkirasBoutiques', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AkirasBoutiques.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AkirasBoutiques_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AkirasBoutiques_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [AkirasBoutiques] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AkirasBoutiques].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AkirasBoutiques] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET ARITHABORT OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AkirasBoutiques] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AkirasBoutiques] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AkirasBoutiques] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AkirasBoutiques] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AkirasBoutiques] SET  MULTI_USER 
GO
ALTER DATABASE [AkirasBoutiques] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AkirasBoutiques] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AkirasBoutiques] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AkirasBoutiques] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AkirasBoutiques] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AkirasBoutiques] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AkirasBoutiques] SET QUERY_STORE = ON
GO
ALTER DATABASE [AkirasBoutiques] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [AkirasBoutiques]
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 29/05/2023 10:30:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
	[id_categoria] [int] NOT NULL,
	[nombre] [text] NOT NULL,
	[descripcion] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 29/05/2023 10:30:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[id_cliente] [int] NOT NULL,
	[nombre] [text] NOT NULL,
	[apellido] [text] NOT NULL,
	[direccion] [text] NOT NULL,
	[fec_nac] [date] NOT NULL,
	[telefono] [int] NOT NULL,
	[email] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalle]    Script Date: 29/05/2023 10:30:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle](
	[id_detalle] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 29/05/2023 10:30:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[id_Empleado] [int] NOT NULL,
	[nombre_de_la_persona] [text] NOT NULL,
	[apellido_de_la_persona] [text] NOT NULL,
	[direccion] [text] NOT NULL,
	[numero_de_telefono] [int] NOT NULL,
	[edad] [date] NOT NULL,
	[sucursal] [text] NOT NULL,
	[correo] [text] NULL,
	[contraseña] [varchar](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factura]    Script Date: 29/05/2023 10:30:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factura](
	[id_factura] [int] NOT NULL,
	[id_cliente] [int] NOT NULL,
	[fecha] [date] NULL,
	[id_detalle] [int] NOT NULL,
	[id_Sucursal] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 29/05/2023 10:30:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[id_producto] [int] NOT NULL,
	[nombre] [text] NOT NULL,
	[precio] [int] NOT NULL,
	[stock] [int] NOT NULL,
	[id_categoria] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sucursales]    Script Date: 29/05/2023 10:30:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursales](
	[id_Sucursal] [int] NOT NULL,
	[nombre_de_la_sucursal] [text] NOT NULL,
	[Encargado_de_la_sucursal] [text] NOT NULL,
	[direccion_sucursal] [text] NOT NULL,
	[telefono_sucursal] [int] NOT NULL,
	[ciudad] [text] NOT NULL,
	[estado] [text] NOT NULL,
	[id_Empleado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[detalle]  WITH CHECK ADD  CONSTRAINT [id_producto] FOREIGN KEY([id_producto])
REFERENCES [dbo].[producto] ([id_producto])
GO
ALTER TABLE [dbo].[detalle] CHECK CONSTRAINT [id_producto]
GO
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [id_cliente] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[cliente] ([id_cliente])
GO
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [id_cliente]
GO
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [id_detalle] FOREIGN KEY([id_detalle])
REFERENCES [dbo].[detalle] ([id_detalle])
GO
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [id_detalle]
GO
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [id_Sucursal] FOREIGN KEY([id_Sucursal])
REFERENCES [dbo].[Sucursales] ([id_Sucursal])
GO
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [id_Sucursal]
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [id_categoria] FOREIGN KEY([id_categoria])
REFERENCES [dbo].[categoria] ([id_categoria])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [id_categoria]
GO
ALTER TABLE [dbo].[Sucursales]  WITH CHECK ADD  CONSTRAINT [id_Empleado] FOREIGN KEY([id_Empleado])
REFERENCES [dbo].[Empleados] ([id_Empleado])
GO
ALTER TABLE [dbo].[Sucursales] CHECK CONSTRAINT [id_Empleado]
GO
USE [master]
GO
ALTER DATABASE [AkirasBoutiques] SET  READ_WRITE 
GO
