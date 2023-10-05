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

/****** Object:  Table [dbo].[QuanTri]    Script Date: 9/23/2023 11:42:20 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[QuanTri](
	[quantri_id] [varchar](50) NOT NULL,
	[hoten] [nvarchar](max) NULL,
	[diachi] [nvarchar](250) NULL,
	[gioitinh] [nvarchar](30) NULL,
	[email] [nvarchar](max) NULL,
	[taikhoan] [nvarchar](max) NULL,
	[matkhau] [nvarchar](max) NULL
	CONSTRAINT [PK_QuanTri] PRIMARY KEY CLUSTERED 
(
	[quantri_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [BTLPTPMHDV_QLBHS]
GO

/****** Object:  Table [dbo].[SanPham]    Script Date: 9/23/2023 11:42:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SanPham](
	[IDHangHoa] [nvarchar](10) NOT NULL,
	[TenSP] [nvarchar](max) NULL,
	[SoL] [int] NULL,
   CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[IDHangHoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [BTLPTPMHDV_QLBHS]
GO

/****** Object:  Table [dbo].[HoaDon]    Script Date: 9/23/2023 11:42:44 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nvarchar](10) Not NULL,
	[HoTenKh] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL
CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
	[MaCT] [nvarchar](50) Not NULL,
	[MaHD] [nvarchar](10) NULL,
	[MaHH] [nvarchar](10) NULL,
	[SoL] [int] NULL
CONSTRAINT [PK_ChiTietHD] PRIMARY KEY CLUSTERED 
(
	[MaCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEc dbo.sp_quantri_get_by_id '01'
CREATE PROCEDURE [dbo].[sp_quantri_get_by_id](@quantri_id VARCHAR(50))
AS
    BEGIN
        SELECT  [quantri_id] , 
					 hoten           , 
					 diachi           ,
					 gioitinh           ,
					 email           ,
					 taikhoan         ,
					 matkhau           
					  
        FROM [QuanTri]
      where  [quantri_id] = @quantri_id;
    END;
GO
 
CREATE PROCEDURE [dbo].[sp_quantri_create]
(@quantri_id  varchar(50), 
 @hoten  nvarchar(150) ,
 @diachi nvarchar(250)  ,
 @gioitinh nvarchar(30)  ,
 @email varchar(150) ,
 @taikhoan varchar(30) ,
 @matkhau  varchar(60) 
)
AS
    BEGIN
      INSERT INTO [QuanTri]
                (
				 	 [quantri_id]               , 
					 hoten           ,
					 diachi           ,
					 gioitinh           ,
					 email           ,
					 taikhoan         ,
					 matkhau           
				)
                VALUES
                (
				 @quantri_id   , 
				 @hoten           ,
				 @diachi           ,
				 @gioitinh           ,
				 @email           ,
				 @taikhoan         ,
				 @matkhau           
				);
        SELECT '';
    END;
GO
--///Sửa quản trị
create PROCEDURE [dbo].[sp_quantri_update](
@quantri_id  varchar(50), 
 @hoten  nvarchar(150) ,
 @diachi nvarchar(250)  ,
 @gioitinh nvarchar(30)  ,
 @email varchar(150) ,
 @taikhoan varchar(30) ,
 @matkhau  varchar(60) 
)
AS
    BEGIN
       Update  QuanTri
	   set hoten=@hoten, diachi=@diachi,gioitinh=@gioitinh, email=@email, taikhoan=@taikhoan,matkhau=@matkhau
	   where quantri_id=@quantri_id;
    END;

--///xóa quản trị 
create PROCEDURE [dbo].[sp_quantri_delete](
@quantri_id  varchar(50)
)
AS
    BEGIN
       Delete from   QuanTri
	   where quantri_id=@quantri_id;
    END;
--/// Tìm kiếm quản trị
Create PROCEDURE [dbo].[sp_quantri_search] (@page_index  INT, 
                                       @page_size   INT,
									 @hoten  nvarchar(150) ,
									 @diachi nvarchar(250)  
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY hoten ASC)) AS RowNumber, 
                              qt.quantri_id,
							  qt.hoten,
							  qt.diachi
                        INTO #Results1
                        FROM QuanTri AS qt
					    WHERE  (@hoten = '' Or qt.hoten like N'%'+@hoten+'%') and						
						(@diachi = '' Or qt.diachi like N'%'+@diachi+'%');                   
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY hoten ASC)) AS RowNumber, 
                              qt.quantri_id,
							  qt.hoten,
							  qt.diachi
                        INTO #Results2
                        FROM QuanTri AS qt
					    WHERE  (@hoten = '' Or qt.hoten like N'%'+@hoten+'%') and						
						(@diachi = '' Or qt.diachi like N'%'+@diachi+'%');                   
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2;                        
                        DROP TABLE #Results1; 
        END;
    END;







