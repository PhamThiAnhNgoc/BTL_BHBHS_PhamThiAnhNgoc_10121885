USE [master]
GO

/****** Object:  Database [BTLPTPMHDV_QLBHS]    Script Date: 9/23/2023 11:41:48 AM ******/
CREATE DATABASE [BTLPTPMHDV_QLBHS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BTLPTPMHDV_QLBHS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\BTLPTPMHDV_QLBHS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BTLPTPMHDV_QLBHS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\BTLPTPMHDV_QLBHS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BTLPTPMHDV_QLBHS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET ARITHABORT OFF 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET  ENABLE_BROKER 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET  MULTI_USER 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET DB_CHAINING OFF 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET QUERY_STORE = OFF
GO

ALTER DATABASE [BTLPTPMHDV_QLBHS] SET  READ_WRITE 
GO
USE [BTLPTPMHDV_QLBHS]
GO

/****** Object:  Table [dbo].[User]    Script Date: 9/23/2023 11:42:20 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[User](
	[user_id] [varchar](50) NOT NULL,
	[hoten] [nvarchar](max) NULL,
	[ngaysinh] [date] NULL,
	[diachi] [nvarchar](250) NULL,
	[gioitinh] [nvarchar](30) NULL,
	[email] [nvarchar](max) NULL,
	[taikhoan] [nvarchar](max) NULL,
	[matkhau] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [BTLPTPMHDV_QLBHS]
GO

/****** Object:  Table [dbo].[SanPham]    Script Date: 9/23/2023 11:42:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SanPham](
	[IDHangHoa] [nchar](10) NULL,
	[TenSP] [nvarchar](max) NULL,
	[SoL] [nchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [BTLPTPMHDV_QLBHS]
GO

/****** Object:  Table [dbo].[HoaDon]    Script Date: 9/23/2023 11:42:44 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nchar](10) NULL,
	[HoTenKh] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL
) ON [PRIMARY]
GO
USE [BTLPTPMHDV_QLBHS]
GO

/****** Object:  Table [dbo].[ChiTieHD]    Script Date: 9/23/2023 11:42:58 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ChiTieHD](
	[MaCT] [nvarchar](50) NULL,
	[MaHD] [nvarchar](50) NULL,
	[MaHH] [nvarchar](50) NULL,
	[SoL] [int] NULL
) ON [PRIMARY]
GO





