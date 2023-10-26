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

create TABLE [dbo].[QuanTri](
	[quantri_id] [varchar](50) NOT NULL,
	[hoten] [nvarchar](max) NULL,
	[diachi] [nvarchar](250) NULL,
	[gioitinh] [nvarchar](30) NULL,
	[email] [nvarchar](max) NULL,
	[vaitro][nvarchar](250) Null,
	[taikhoan] [nvarchar](max) NULL,
	[matkhau] [nvarchar](max) NULL
	CONSTRAINT [PK_QuanTri] PRIMARY KEY CLUSTERED 
(
	[quantri_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
create TABLE [dbo].[KhachHang](
	[khachhang_id] [nvarchar](50) NOT NULL,
	[hoten] [nvarchar](max) NULL,
	[diachi] [nvarchar](250) NULL,
	[email] [nvarchar](max) NULL,
	[taikhoan] [nvarchar](max) NULL,
	[matkhau] [nvarchar](max) NULL
	CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[khachhang_id] ASC
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

USE [BTLPTPMHDV_QLBHS]
GO
USE [BTLPTPMHDV_QLBHS]
GO

/****** Object:  Table [dbo].[LoaiSP]    Script Date: 10/12/2023 9:33:00 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LoaiSP](
	[MaLSP] [nvarchar](50) NOT NULL,
	[TenLH] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


/****** Object:  Table [dbo].[SanPham]    Script Date: 10/12/2023 9:31:28 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SanPham](
	[IDHangHoa] [nvarchar](10) NOT NULL,
	[LoaiSP] [nvarchar](50) NULL,
	[TenSP] [nvarchar](max) NULL,
	[SoL] [int] NULL,
	[AnhSP] [nvarchar](max) NULL,
	[TinhTrang] [nvarchar](max) NULL,
	[GiaSP] [decimal](18, 0) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[IDHangHoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([LoaiSP])
REFERENCES [dbo].[LoaiSP] ([MaLSP])
GO

ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO


USE [BTLPTPMHDV_QLBHS]
GO

/****** Object:  Table [dbo].[HoaDon]    Script Date: 9/23/2023 11:42:44 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

USE [BTLPTPMHDV_QLBHS]
GO

/****** Object:  Table [dbo].[HoaDon]    Script Date: 10/12/2023 9:31:54 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nvarchar](10) NOT NULL,
	[HoTenKh] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[NgayTao] [datetime] NULL,
	[Sdt] [nvarchar](50) NULL,
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

USE [BTLPTPMHDV_QLBHS]
GO

/****** Object:  Table [dbo].[ChiTietSP]    Script Date: 10/12/2023 9:32:18 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ChiTietSP](
	[ChiTietSPID] [nvarchar](50) NOT NULL,
	[SanPhamID] [nvarchar](10) NULL,
	[AnhCT] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_ChiTietSP] PRIMARY KEY CLUSTERED 
(
	[ChiTietSPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSP_SanPham] FOREIGN KEY([SanPhamID])
REFERENCES [dbo].[SanPham] ([IDHangHoa])
GO

ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [FK_ChiTietSP_SanPham]
GO
USE [BTLPTPMHDV_QLBHS]
GO

/****** Object:  Table [dbo].[ChiTieHD]    Script Date: 10/12/2023 9:32:37 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ChiTieHD](
	[MaCT] [nvarchar](50) NOT NULL,
	[MaHD] [nvarchar](10) NULL,
	[MaHH] [nvarchar](10) NULL,
	[SoL] [int] NULL,
	[TongGia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ChiTietHD] PRIMARY KEY CLUSTERED 
(
	[MaCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ChiTieHD]  WITH CHECK ADD  CONSTRAINT [FK_ChiTieHD_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO

ALTER TABLE [dbo].[ChiTieHD] CHECK CONSTRAINT [FK_ChiTieHD_HoaDon]
GO

ALTER TABLE [dbo].[ChiTieHD]  WITH CHECK ADD  CONSTRAINT [FK_ChiTieHD_SanPham] FOREIGN KEY([MaHH])
REFERENCES [dbo].[SanPham] ([IDHangHoa])
GO

ALTER TABLE [dbo].[ChiTieHD] CHECK CONSTRAINT [FK_ChiTieHD_SanPham]
GO



EXEc dbo.sp_quantri_get_by_id '01'
alter PROCEDURE [dbo].[sp_quantri_get_by_id](@quantri_id VARCHAR(50))
AS
    BEGIN
        SELECT  [quantri_id] , 
					 hoten           , 
					 diachi           ,
					 gioitinh           ,
					 email           ,
					 vaitro,
					 taikhoan         ,
					 matkhau           
					  
        FROM [QuanTri]
      where  [quantri_id] = @quantri_id;
    END;
GO
 
alter PROCEDURE [dbo].[sp_quantri_create]
(@quantri_id  varchar(50), 
 @hoten  nvarchar(max) ,
 @diachi nvarchar(250)  ,
 @gioitinh nvarchar(30)  ,
 @email nvarchar(max) ,
 @vaitro nvarchar(250),
 @taikhoan nvarchar(max) ,
 @matkhau  nvarchar(max) 
)
AS
    BEGIN
      INSERT INTO [QuanTri]
                (
				 	 [quantri_id] , 
					 hoten ,
					 diachi ,
					 gioitinh ,
					 email ,
					 vaitro,
					 taikhoan ,
					 matkhau           
				)
                VALUES
                (
				 @quantri_id   , 
				 @hoten ,
				 @diachi,
				 @gioitinh ,
				 @email ,
				 @vaitro,
				 @taikhoan  ,
				 @matkhau           
				);
        SELECT '';
    END;
GO
--///Sửa quản trị
alter PROCEDURE [dbo].[sp_quantri_update](
@quantri_id  varchar(50), 
 @hoten  nvarchar(max) ,
 @diachi nvarchar(250)  ,
 @gioitinh nvarchar(30)  ,
 @email nvarchar(max) ,
 @vaitro nvarchar(250),
 @taikhoan nvarchar(max) ,
 @matkhau  nvarchar(max) 
)
AS
    BEGIN
       Update  QuanTri
	   set hoten=@hoten, diachi=@diachi,gioitinh=@gioitinh, email=@email,vaitro=@vaitro, taikhoan=@taikhoan,matkhau=@matkhau
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
alter PROCEDURE [dbo].[sp_quantri_search] (@page_index  INT, 
                                       @page_size   INT,
									 @hoten  nvarchar(max) ,
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
							  qt.diachi,
							  qt.gioitinh,
							  qt.email,
							  qt.vaitro,
							  qt.taikhoan,qt.matkhau
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
							  qt.diachi,
							  qt.gioitinh,
							  qt.email,
							  qt.vaitro,
							  qt.taikhoan,qt.matkhau
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

--//GetByID LoaiSP
CREATE PROCEDURE [dbo].[sp_loaiSP_get_by_id](@MaLSP NVARCHAR(50))
AS
    BEGIN
        SELECT  [MaLSP] , 
					 TenLH           , 
					 NoiDung
        FROM [LoaiSP]
      where  [MaLSP] = @MaLSP;
    END;
GO
 
CREATE PROCEDURE [dbo].[sp_LoaiSP_create]
(@MaLSP  Nvarchar(50), 
 @TenLH  nvarchar(Max) ,
 @NoiDung nvarchar(50)  
)
AS
    BEGIN
      INSERT INTO [LoaiSP]
                (
				 	 [MaLSP]               , 
					 TenLH          ,
					 NoiDung          
				)
                VALUES
                (
				 @MaLSP   , 
				 @TenLH         ,
				 @NoiDung          
				);
        SELECT '';
    END;
GO
--///Sửa loại sản phẩm
create PROCEDURE [dbo].[sp_loaisp_update](
@MaLSP  Nvarchar(50), 
 @TenLH  nvarchar(Max) ,
 @NoiDung nvarchar(50)  
)
AS
    BEGIN
       Update  LoaiSP
	   set MaLSP=@MaLSP, TenLH=@TenLH,NoiDung=@NoiDung
	   where MaLSP=@MaLSP;
    END;

--///xóa loại sản phẩm
alter  PROCEDURE [dbo].[sp_loaisp_delete](
@MaLSP  Nvarchar(50)
)
AS
    BEGIN
		--Delete From ChiTietSP where SanPhamID=@IDHangHoa
		--delete from SanPham  where LoaiSP=@MaLSP
       Delete from   LoaiSP
	   where MaLSP=@MaLSP;
    END;

---//GetById Sản phẩm
Alter  PROCEDURE [dbo].[sp_sanpham_get_by_id](@IDHangHoa nvarchar(10))
AS
    BEGIN
        SELECT h.*, 
        (
            SELECT c.*
            FROM ChiTietSP AS c
            WHERE h.IDHangHoa = c.SanPhamID FOR JSON PATH
        ) AS list_json_chitietsanpham
        FROM SanPham AS h
        WHERE  h.IDHangHoa = @IDHangHoa;
    END;


--//Thêm sảm phẩm
create  PROCEDURE [dbo].[sp_sanpham_create]
(@IDHangHoa NVARCHAR(10), 
 @LoaiSP NVARCHAR(50), 
 @TenSP nvarchar(50),
 @SoL int, 
 @AnhSP nvarchar(MAX),
 @TinhTrang nvarchar(MAX),
 @GiaSP decimal(18,0),
 @list_json_chitietsanpham NVARCHAR(MAX)
)
AS
    BEGIN
        INSERT INTO SanPham
                (IDHangHoa, 
                 LoaiSP, 
				 TenSP,
                 SoL,
				 AnhSP,
				 TinhTrang,
				 GiaSP
                )
                VALUES
                (@IDHangHoa, 
                 @LoaiSP,
				 @TenSP,
                 @SoL,
				 @AnhSP,
				 @TinhTrang,
				 @GiaSP
                );

                IF(@list_json_chitietsanpham IS NOT NULL)
                    BEGIN
                        INSERT INTO ChiTietSP
						 (ChiTietSPID, 
						  SanPhamID,
                          AnhCT, 
                          MoTa               
                        )
                    SELECT JSON_VALUE(p.value, '$.chiTietSPID'), 
                            @IDHangHoa, 
                            JSON_VALUE(p.value, '$.anhCT'), 
							JSON_VALUE(p.value, '$.moTa')
                    FROM OPENJSON(@list_json_chitietsanpham) AS p;
                END;
        SELECT '';
    END;
GO

--//Sửa sản phẩm
create PROCEDURE [dbo].[sp_sanpham_update]
(@IDHangHoa NVARCHAR(10), 
 @LoaiSP NVARCHAR(50), 
 @TenSP nvarchar(50),
 @SoL int, 
 @AnhSP nvarchar(MAX),
 @TinhTrang nvarchar(MAX),
 @GiaSP decimal(18,0),
 @list_json_chitietsanpham NVARCHAR(MAX)
)
AS
    BEGIN
		UPDATE SanPham
		SET
			LoaiSP  = @LoaiSP,
			TenSP = @TenSP,
			SoL=@SoL,
			AnhSP=@AnhSP,
			TinhTrang=@TinhTrang,
			GiaSP=@GiaSP
		WHERE IDHangHoa = @IDHangHoa;
		
		IF(@list_json_chitietsanpham IS NOT NULL) 
		BEGIN
			 -- Insert data to temp table 
		   SELECT
			  JSON_VALUE(p.value, '$.chiTietSPID') as chiTietSPID,
			  JSON_VALUE(p.value, '$.sanPhamID') as sanPhamID,
			  JSON_VALUE(p.value, '$.anhCT') as anhCT,
			  JSON_VALUE(p.value, '$.moTa') as moTa,
			  JSON_VALUE(p.value, '$.status') AS status 
			  INTO #Results 
		   FROM OPENJSON(@list_json_chitietsanpham) AS p;
		 
		 -- Insert data to table with STATUS = 1;
			INSERT INTO ChiTietSP(ChiTietSPID, 
						  SanPhamID,
                          AnhCT, 
                          MoTa ) 
			   SELECT
				  #Results.chiTietSPID,
				  @IDHangHoa,
				  #Results.anhCT,
				  #Results.moTa			 
			   FROM  #Results 
			   WHERE #Results.status = '1' 
			
			-- Update data to table with STATUS = 2
			  UPDATE ChiTietSP 
			  SET
				 AnhCT = #Results.anhCT,
				 MoTa = #Results.moTa
			  FROM #Results 
			  WHERE  ChiTietSP.ChiTietSPID = #Results.chiTietSPID AND #Results.status = '2';
			
			-- Delete data to table with STATUS = 3
			DELETE C
			FROM ChiTietSP C
			INNER JOIN #Results R
				ON C.ChiTietSPID=R.chiTietSPID
			WHERE R.status = '3';
			DROP TABLE #Results;
		END;
        SELECT '';
    END;
---//Xóa sản phẩm
create  PROCEDURE [dbo].[sp_sanpham_delete]
(@IDHangHoa NVARCHAR(10)
 )
AS
    BEGIN
        Delete From ChiTietSP where SanPhamID=@IDHangHoa
		delete from SanPham where IDHangHoa=@IDHangHoa
    END;
GO

---//Thống kê sản phẩm theo tình trạng

alter PROCEDURE [dbo].[sp_thong_ke_sanpham] (@page_index  INT, 
                                       @page_size   INT,
									   @ten_sanpham Nvarchar(max),
									   @TinhTrang nvarchar(max)
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY s.TenSP ASC)) AS RowNumber, 
                              s.IDHangHoa,
							  s.TenSP,
							  l.TenLH,
							  s.SoL,
							  s.TinhTrang,
							  s.GiaSP,
							  c.MoTa
                        INTO #Results1
                        FROM   SanPham s
						inner join ChiTietSP c on c.SanPhamID = s.IDHangHoa
						inner join LoaiSP l on l.MaLSP = s.LoaiSP
					    WHERE  (@ten_sanpham = '' Or s.TenSP like N'%'+@ten_sanpham+'%') and						
						(@TinhTrang = '' Or s.TinhTrang like N'%'+@TinhTrang+'%');      
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
                              ORDER BY s.TenSP ASC)) AS RowNumber, 
                              s.IDHangHoa,
							  s.TenSP,
							  l.TenLH,
							  s.SoL,
							  s.TinhTrang,
							  s.GiaSP,
							  c.MoTa
                        INTO #Results2
                        FROM   SanPham s
						inner join ChiTietSP c on c.SanPhamID = s.IDHangHoa
						inner join LoaiSP l on l.MaLSP = s.LoaiSP
					    WHERE  (@ten_sanpham = '' Or s.TenSP like N'%'+@ten_sanpham+'%') and						
						(@TinhTrang = '' Or s.TinhTrang like N'%'+@TinhTrang+'%');      
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2                        
                        DROP TABLE #Results2; 
        END;
    END;
 --//Tìm kiếm sản phẩm
-- alter PROCEDURE [dbo].[sp_sanpham_search] (@page_index  INT, 
--                                       @page_size   INT,
--									   @TenSP Nvarchar(max),
--									   @IDHangHoa nvarchar(10)
--									   )
--AS
--    BEGIN
--		DECLARE @list_json_chitietsanpham NVARCHAR(MAX);
--		SELECT @list_json_chitietsanpham = (
--								SELECT
--									c.ChiTietSPID,
--									c.SanPhamID,
--									c.AnhCT,
--									c.MoTa
--								FROM ChiTietSP AS c
--								WHERE c.SanPhamID = @IDHangHoa
--								FOR JSON AUTO
--							)
--        DECLARE @RecordCount BIGINT;
--        IF(@page_size <> 0)
--            BEGIN
--						SET NOCOUNT ON;
--						SELECT
--							ROW_NUMBER() OVER (ORDER BY s.TenSP ASC) AS RowNumber,
--							s.IDHangHoa,
--							s.LoaiSP,
--							s.TenSP,
--							s.SoL,
--							s.AnhSP,
--							s.TinhTrang,
--							s.GiaSP,
--							@list_json_chitietsanpham as list_json_chitietsanpham
--						INTO #Results1
--						FROM SanPham AS s
--						WHERE
--							(@TenSP = '' OR s.TenSP LIKE N'%' + @TenSP + '%')
--							and s.IDHangHoa = @IDHangHoa;
--						SELECT @RecordCount = COUNT(*)
--                        FROM #Results1;
--                        SELECT r.*,
--                               @RecordCount AS RecordCount
--                        FROM #Results1 as r
--                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
--                              OR @page_index = -1;
--                        DROP TABLE #Results1; 
--            END;
--            ELSE
--            BEGIN
--					SET NOCOUNT ON;
--					SELECT
--						ROW_NUMBER() OVER (ORDER BY s.TenSP ASC) AS RowNumber,
--						s.IDHangHoa,
--						s.LoaiSP,
--						s.SoL,
--						s.AnhSP,
--						s.TinhTrang,
--						s.GiaSP,
--						@list_json_chitietsanpham as list_json_chitietsanpham
--					INTO #Results2
--					FROM SanPham AS s
--					WHERE
--						(@TenSP = '' OR s.TenSP LIKE N'%' + @TenSP + '%')
--						and s.IDHangHoa = @IDHangHoa;
--                    SELECT @RecordCount = COUNT(*)
--                    FROM #Results2;
--                    SELECT *, 
--                            @RecordCount AS RecordCount
--                    FROM #Results2;                        
--                    DROP TABLE #Results1; 
--			END;
--    END;
--GO

 --//Get-by-id hóa đơn
create PROCEDURE [dbo].[sp_hoadon_get_by_id](@MaHD nvarchar(10))
AS
    BEGIN
        SELECT h.*, 
        (
            SELECT c.*
            FROM ChiTieHD AS c
            WHERE h.MaHD = c.MaHD FOR JSON PATH
        ) AS list_json_chitiethoadon
        FROM HoaDon AS h
        WHERE  h.MaHD = @MaHD;
    END;
 exec sp_hoadon_get_by_id '01'
---//Thêm hóa đơn
create  PROCEDURE [dbo].[sp_hoadon_create]
(@MaHD NVARCHAR(10),
 @HoTenKH NVARCHAR(50), 
 @DiaChi nvarchar(50),  
 @NgayTao datetime ,
@Sdt nvarchar(50),
 @list_json_chitiethoadon NVARCHAR(MAX)
)
AS
    BEGIN
        INSERT INTO HoaDon
                (MaHD,
				HoTenKh, 
                 DiaChi, 
				NgayTao,
				Sdt
                )
                VALUES
                (@MaHD,
				@HoTenKH, 
                 @DiaChi, 
                 @NgayTao,
				 @Sdt
                );
                IF(@list_json_chitiethoadon IS NOT NULL)
                    BEGIN
                        INSERT INTO ChiTieHD
						 (MaCT,
						 MaHD, 
						  MaHH,
                          SoL,
                          TongGia               
                        )
                    SELECT	JSON_VALUE(p.value, '$.maCT'),
							@MaHD,
							JSON_VALUE(p.value, '$.maHH'), 
                            JSON_VALUE(p.value, '$.soL'), 
                            JSON_VALUE(p.value, '$.tongGia')    
                    FROM OPENJSON(@list_json_chitiethoadon) AS p
                END;
        SELECT '';
    END;
GO
--//Sửa hóa đơn
create  PROCEDURE [dbo].[sp_hoa_don_update]
(@MaHD NVARCHAR(10),
 @HoTenKH NVARCHAR(50), 
 @DiaChi nvarchar(50),  
 @NgayTao datetime ,
@Sdt nvarchar(50),
 @list_json_chitiethoadon NVARCHAR(MAX)
)
AS
    BEGIN
		UPDATE HoaDon
		SET
			HoTenKh  = @HoTenKH ,
			DiaChi = @DiaChi,
			NgayTao=@NgayTao,
			Sdt=@Sdt
		WHERE MaHD = @MaHD;
		
		IF(@list_json_chitiethoadon IS NOT NULL) 
		BEGIN
			 -- Insert data to temp table 
		   SELECT
			  JSON_VALUE(p.value, '$.maCT') as maCT,
			  JSON_VALUE(p.value, '$.maHD') as maHD,
			  JSON_VALUE(p.value, '$.maHH') as maHH,
			  JSON_VALUE(p.value, '$.soL') as soL,
			  JSON_VALUE(p.value, '$.tongGia') as tongGia,
			  JSON_VALUE(p.value, '$.status') AS status 
			  INTO #Results 
		   FROM OPENJSON(@list_json_chitiethoadon) AS p;
		 
		 -- Insert data to table with STATUS = 1;
			INSERT INTO ChiTieHD(
						MaCT,
						 MaHD, 
						  MaHH,
                          SoL,
                          TongGia  ) 
			   SELECT
				  #Results.maCT,
				  @MaHD,
				  #Results.maHH,
				  #Results.soL,
				  #Results.tongGia			 
			   FROM  #Results 
			   WHERE #Results.status = '1' 
			
			-- Update data to table with STATUS = 2
			  UPDATE ChiTieHD 
			  SET
				 SoL = #Results.soL,
				 TongGia = #Results.tongGia
			  FROM #Results 
			  WHERE  ChiTieHD.MaCT = #Results.maCT AND #Results.status = '2';
			
			-- Delete data to table with STATUS = 3
			DELETE C
			FROM ChiTieHD C
			INNER JOIN #Results R
				ON C.MaCT=R.maCT
			WHERE R.status = '3';
			DROP TABLE #Results;
		END;
        SELECT '';
    END;

--//Xóa Hóa Đơn
create  PROCEDURE [dbo].[sp_hoadon_delete]
(@MaHD NVARCHAR(10)
 )
AS
    BEGIN
        Delete From ChiTieHD where MaHD=@MaHD
		delete from HoaDon where MaHD=@MaHD
    END;
GO
--//Thống kê khách hàng đã mua hàng
alter PROCEDURE [dbo].[sp_thong_ke_khach] (@page_index  INT, 
                                       @page_size   INT,
									   @ten_khach Nvarchar(50),
									   @fr_NgayTao datetime, 
									   @to_NgayTao datetime
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.NgayTao ASC)) AS RowNumber, 
                              s.IDHangHoa,
							  s.TenSP,
							  c.SoL,
							  c.TongGia,
							  h.NgayTao,
							  h.HoTenKh,
							  h.DiaChi
                        INTO #Results1
                        FROM HoaDon  h
						inner join ChiTieHD c on c.MaHD = h.MaHD
						inner join SanPham s on s.IDHangHoa = c.MaHH
					    WHERE  (@ten_khach = '' Or h.HoTenKh like N'%'+@ten_khach+'%') and						
						((@fr_NgayTao IS NULL
                        AND @to_NgayTao IS NULL)
                        OR (@fr_NgayTao IS NOT NULL
                            AND @to_NgayTao IS NULL
                            AND h.NgayTao >= @fr_NgayTao)
                        OR (@fr_NgayTao IS NULL
                            AND @to_NgayTao IS NOT NULL
                            AND h.NgayTao <= @to_NgayTao)
                        OR (h.NgayTao BETWEEN @fr_NgayTao AND @to_NgayTao))              
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
                              ORDER BY h.NgayTao ASC)) AS RowNumber, 
                              s.IDHangHoa,
							  s.TenSP,
							  c.SoL,
							  c.TongGia,
							  h.NgayTao,
							  h.HoTenKh,
							  h.DiaChi
                        INTO #Results2
                        FROM HoaDon  h
						inner join ChiTieHD c on c.MaHD = h.MaHD
						inner join SanPham s on s.IDHangHoa = c.MaHH
					    WHERE  (@ten_khach = '' Or h.HoTenKh like N'%'+@ten_khach+'%') and						
						((@fr_NgayTao IS NULL
                        AND @to_NgayTao IS NULL)
                        OR (@fr_NgayTao IS NOT NULL
                            AND @to_NgayTao IS NULL
                            AND h.NgayTao >= @fr_NgayTao)
                        OR (@fr_NgayTao IS NULL
AND @to_NgayTao IS NOT NULL
                            AND h.NgayTao <= @to_NgayTao)
                        OR (h.NgayTao BETWEEN @fr_NgayTao AND @to_NgayTao))              
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2                        
                        DROP TABLE #Results2; 
        END;
    END;
--//GetbyID KhachHang
create PROCEDURE [dbo].[sp_khach_get_by_id](@khachhang_id nvarchar(50))
AS
    BEGIN
      SELECT  *
      FROM KhachHang
      where khachhang_id= @khachhang_id;
    END;
--//Thêm KhachHang
alter PROCEDURE [dbo].[sp_khach_create](
@khachhang_id nvarchar(50),
@hoten nvarchar(max),
@diachi nvarchar(250),
@email nvarchar(max),
@taikhoan nvarchar(max),
@matkhau nvarchar(max)
)
AS
    BEGIN
       insert into KhachHang(khachhang_id,hoten,diachi,email,taikhoan,matkhau)
	   values(@khachhang_id,@hoten,@diachi,@email,@taikhoan,@matkhau);
    END;
--//Sửa KhachHang
create PROCEDURE [dbo].[sp_khach_update](
@khachhang_id nvarchar(50),
@hoten nvarchar(max),
@diachi nvarchar(250),
@email nvarchar(max),
@taikhoan nvarchar(max),
@matkhau nvarchar(max)
)
AS
    BEGIN
       Update  KhachHang
	   set hoten=@hoten, diachi=@diachi ,email=@email, taikhoan=@taikhoan, matkhau=@matkhau
	   where khachhang_id=@khachhang_id;
    END;
GO
--//Xóa khách Hàng
create PROCEDURE [dbo].[sp_khach_delete](
@khachhang_id nvarchar(50)
)
AS
    BEGIN
       Delete from   KhachHang
	   where khachhang_id=@khachhang_id;
    END;
GO
--//Tìm Kiếm khách hàng
create PROCEDURE [dbo].[sp_khach_search] (@page_index  INT, 
                                       @page_size   INT,
									   @ho_ten Nvarchar(max),
									   @dia_chi Nvarchar(250)
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY hoten ASC)) AS RowNumber, 
                              k.khachhang_id,
							  k.hoten,
							  k.DiaChi
                        INTO #Results1
                        FROM KhachHang AS k
					    WHERE  (@ho_ten = '' Or k.hoten like N'%'+@ho_ten+'%') and						
						(@dia_chi = '' Or k.diachi like N'%'+@dia_chi+'%');                   
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
                              k.khachhang_id,
							  k.hoten,
							  k.DiaChi
                        INTO #Results2
                        FROM KhachHang AS k
					    WHERE  (@ho_ten = '' Or k.hoten like N'%'+@ho_ten+'%') and						
						(@dia_chi = '' Or k.diachi like N'%'+@dia_chi+'%');                               
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2;                        
                        DROP TABLE #Results1; 
        END;
    END;

--//Login Khách hàng
create PROCEDURE [dbo].[sp_login_khachhang](@taikhoan nvarchar(max), @matkhau nvarchar(max))
AS
    BEGIN
      SELECT  *
      FROM KhachHang
      where taikhoan= @taikhoan and matkhau = @matkhau;
    END;

	Create PROCEDURE [dbo].[sp_login](@taikhoan nvarchar(50), @matkhau nvarchar(50))
AS
    BEGIN
      SELECT  *
      FROM TaiKhoans
      where TenTaiKhoan= @taikhoan and MatKhau = @matkhau;
    END;