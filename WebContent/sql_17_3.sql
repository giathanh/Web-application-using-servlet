USE [master]
GO
/****** Object:  Database [SE12]    Script Date: 3/17/2017 4:57:08 PM ******/
CREATE DATABASE [SE12]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SE12', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SE12.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SE12_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SE12_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SE12] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SE12].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SE12] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SE12] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SE12] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SE12] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SE12] SET ARITHABORT OFF 
GO
ALTER DATABASE [SE12] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SE12] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SE12] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SE12] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SE12] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SE12] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SE12] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SE12] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SE12] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SE12] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SE12] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SE12] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SE12] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SE12] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SE12] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SE12] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SE12] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SE12] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SE12] SET RECOVERY FULL 
GO
ALTER DATABASE [SE12] SET  MULTI_USER 
GO
ALTER DATABASE [SE12] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SE12] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SE12] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SE12] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [SE12]
GO
/****** Object:  Table [dbo].[BaiDang]    Script Date: 3/17/2017 4:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiDang](
	[MaBaiDang] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[AnhBia] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DiaChiWeb] [nvarchar](50) NULL,
	[ViDo] [float] NULL,
	[KinhDo] [float] NULL,
	[SDT] [nvarchar](50) NULL,
	[GiaCaoNhat] [int] NULL,
	[GiaThapNhat] [int] NULL,
	[NgayDang] [date] NULL,
	[NgayHetHan] [date] NULL,
	[SoLuotTruyCap] [int] NULL,
	[SoLuotThich] [int] NULL,
	[Username] [nvarchar](20) NOT NULL,
	[MaDanhMuc] [int] NOT NULL,
	[MaLoaiTin] [int] NOT NULL,
	[MaTinhThanh] [int] NOT NULL,
	[DiemDanhGia] [int] NULL,
 CONSTRAINT [pk_BaiDang] PRIMARY KEY CLUSTERED 
(
	[MaBaiDang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 3/17/2017 4:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](50) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[NgayBinhLuan] [date] NULL,
	[DiemDanhGia] [int] NULL,
	[MaBaiDang] [int] NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
 CONSTRAINT [pk_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTGiaoDich]    Script Date: 3/17/2017 4:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTGiaoDich](
	[MaGiaoDich] [int] NOT NULL,
	[MaGoi] [int] NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [pk_CTGiaoDich] PRIMARY KEY CLUSTERED 
(
	[MaGiaoDich] ASC,
	[MaGoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 3/17/2017 4:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 3/17/2017 4:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaDichVu] [int] IDENTITY(1,1) NOT NULL,
	[TenDichVu] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_DichVu] PRIMARY KEY CLUSTERED 
(
	[MaDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DichVuBD]    Script Date: 3/17/2017 4:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVuBD](
	[MaDichVu] [int] NOT NULL,
	[MaBaiDang] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDichVu] ASC,
	[MaBaiDang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiaoDich]    Script Date: 3/17/2017 4:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoDich](
	[MaGiaoDich] [int] IDENTITY(1,1) NOT NULL,
	[NgayGiaoDich] [date] NULL,
	[ThanhTien] [int] NULL,
	[Username] [nvarchar](20) NOT NULL,
 CONSTRAINT [pk_GiaoDich] PRIMARY KEY CLUSTERED 
(
	[MaGiaoDich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Goi]    Script Date: 3/17/2017 4:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Goi](
	[MaGoi] [int] IDENTITY(1,1) NOT NULL,
	[TenGoi] [nvarchar](50) NULL,
	[DonGia] [int] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [pk_Goi] PRIMARY KEY CLUSTERED 
(
	[MaGoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HinhAnh]    Script Date: 3/17/2017 4:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnh](
	[MaHinh] [int] IDENTITY(1,1) NOT NULL,
	[TenHinh] [nvarchar](50) NOT NULL,
	[MaBaiDang] [int] NOT NULL,
 CONSTRAINT [pk_HinhAnh] PRIMARY KEY CLUSTERED 
(
	[MaHinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 3/17/2017 4:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaKhuyenMai] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[MaBaiDang] [int] NOT NULL,
 CONSTRAINT [pk_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaKhuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LienHe]    Script Date: 3/17/2017 4:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienHe](
	[MaLienHe] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](50) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[NgayGui] [date] NULL,
	[SDT] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[MaVanDe] [int] NOT NULL,
 CONSTRAINT [pk_LienHe] PRIMARY KEY CLUSTERED 
(
	[MaLienHe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiTaiKhoan]    Script Date: 3/17/2017 4:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTaiKhoan](
	[MaLoaiTK] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiTK] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_LoaiTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiTin]    Script Date: 3/17/2017 4:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTin](
	[MaLoaiTin] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiTin] [nvarchar](50) NOT NULL,
	[CapDoTin] [int] NULL,
 CONSTRAINT [pk_LoaiTin] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiTKUuDai]    Script Date: 3/17/2017 4:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTKUuDai](
	[MaLoaiTK] [int] NOT NULL,
	[MaUuDai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiTK] ASC,
	[MaUuDai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LuuBD]    Script Date: 3/17/2017 4:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuuBD](
	[MaBaiDang] [int] NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[NgayLuu] [date] NULL,
 CONSTRAINT [pk_LuuBD] PRIMARY KEY CLUSTERED 
(
	[MaBaiDang] ASC,
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 3/17/2017 4:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [int] NOT NULL,
	[TenQuyen] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_Quyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 3/17/2017 4:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[Username] [nvarchar](20) NOT NULL,
	[Pass] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Avatar] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[GioiTinh] [int] NULL,
	[NgaySinh] [date] NULL,
	[SDT] [nvarchar](50) NULL,
	[NgayDangKy] [date] NULL,
	[MaQuyen] [int] NOT NULL,
	[MaLoaiTK] [int] NOT NULL,
 CONSTRAINT [pk_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Thich]    Script Date: 3/17/2017 4:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thich](
	[MaBaiDang] [int] NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[NgayThich] [date] NULL,
 CONSTRAINT [pk_Thich] PRIMARY KEY CLUSTERED 
(
	[MaBaiDang] ASC,
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinhThanh]    Script Date: 3/17/2017 4:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhThanh](
	[MaTinhThanh] [int] IDENTITY(1,1) NOT NULL,
	[TenTinhThanh] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_TinhThanh] PRIMARY KEY CLUSTERED 
(
	[MaTinhThanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UuDai]    Script Date: 3/17/2017 4:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UuDai](
	[MaUuDai] [int] IDENTITY(1,1) NOT NULL,
	[TenUuDai] [nvarchar](50) NOT NULL,
	[ThoiHanUuDai] [int] NOT NULL,
	[MaLoaiTK] [int] NOT NULL,
 CONSTRAINT [pk_UuDai] PRIMARY KEY CLUSTERED 
(
	[MaUuDai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VanDe]    Script Date: 3/17/2017 4:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VanDe](
	[MaVanDe] [int] IDENTITY(1,1) NOT NULL,
	[TenVanDe] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_VanDe] PRIMARY KEY CLUSTERED 
(
	[MaVanDe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BaiDang] ON 

INSERT [dbo].[BaiDang] ([MaBaiDang], [TieuDe], [NoiDung], [AnhBia], [DiaChi], [DiaChiWeb], [ViDo], [KinhDo], [SDT], [GiaCaoNhat], [GiaThapNhat], [NgayDang], [NgayHetHan], [SoLuotTruyCap], [SoLuotThich], [Username], [MaDanhMuc], [MaLoaiTin], [MaTinhThanh], [DiemDanhGia]) VALUES (1, N'Khách sạn Mường Thanh', N'Ks hơi lớn, nhà cao 4 tầng, mình ở tầng 2 phía dưới có hầm để xe máy nữa. Phóng nhỏ nhưng sạch sẽ, điện nước đầy đủ rất ok.', N'BD1.jpg', N'360 Ngô Quyền', N'mt.com.vn', 36.01214, 36.01214, N'0905306845', 850000, 200000, CAST(0x833C0B00 AS Date), CAST(0x9F3C0B00 AS Date), 0, 0, N'hoangan', 7, 2, 2, NULL)
INSERT [dbo].[BaiDang] ([MaBaiDang], [TieuDe], [NoiDung], [AnhBia], [DiaChi], [DiaChiWeb], [ViDo], [KinhDo], [SDT], [GiaCaoNhat], [GiaThapNhat], [NgayDang], [NgayHetHan], [SoLuotTruyCap], [SoLuotThich], [Username], [MaDanhMuc], [MaLoaiTin], [MaTinhThanh], [DiemDanhGia]) VALUES (2, N'Spa TNT', N'Sạch sẽ, điện nước đầy đủ rất ok.', N'BD2.jpg', N'35 Trần Tống', N'tnt.com.vn', 78.01214, 31.01214, N'0905306845', 80000, 20000, CAST(0x833C0B00 AS Date), CAST(0x9F3C0B00 AS Date), 0, 0, N'hoangan', 7, 2, 3, NULL)
INSERT [dbo].[BaiDang] ([MaBaiDang], [TieuDe], [NoiDung], [AnhBia], [DiaChi], [DiaChiWeb], [ViDo], [KinhDo], [SDT], [GiaCaoNhat], [GiaThapNhat], [NgayDang], [NgayHetHan], [SoLuotTruyCap], [SoLuotThich], [Username], [MaDanhMuc], [MaLoaiTin], [MaTinhThanh], [DiemDanhGia]) VALUES (3, N'Hồ Hoàn Kiếm', N'<b style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Hồ Hoàn Kiếm</b><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">&nbsp;còn được gọi là&nbsp;</span><b style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Hồ Gươm</b><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">&nbsp;(trong&nbsp;</span><a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoM4I/SQGRSNgq/q_2FDurY/kPzMeaE1/8o69niQl/vtWRYDNA/uMyf94Yi/FZBTr7f7/6AkE1b2j/dZ3Nthks/NNApzcH9/PZEOViWo/9Ejumhw_/3D/b29/" title="Tập tin:Hanoi quartier administratif petit lac map plan 1886.jpg" style="font-family: &quot;Times New Roman&quot;; font-size: medium;">bản đồ Hà Nội năm 1886</a><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">, hồ này được gọi là Hồ Hoàn Gươm -&nbsp;</span><i style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Lac de Hoan Guom</i><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">), là một hồ nước ngọt tự nhiên của thành phố&nbsp;</span><a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoQ4I/KSGRf8_2/BKXeO4SJ/u9DTCPky/b29/" title="Hà Nội" style="font-family: &quot;Times New Roman&quot;; font-size: medium;">Hà Nội</a><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">. Hồ có diện tích khoảng 12 ha</span><sup id="cite_ref-2" class="reference" style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;;"><a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoQ4I/SQGRSOgt/LIIf3D3N/HFFIFr87/iphnQB_2/FYS6RGRd/n8U_3D/b29/">[2]</a></sup><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">. Trước kia, hồ còn có các tên gọi là hồ Lục Thủy (vì nước có màu xanh quanh năm), hồ Thủy Quân (dùng để duyệt thủy binh), hồ Tả Vọng và Hữu Vọng (trong thời&nbsp;</span><a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoWre/TiD3ONl7/S3W_2Faf/3NO3brQp/6ImFsDlh/j5fdR3Fx/vg_3D_3D/b29/" title="Nhà Lê trung hưng" style="font-family: &quot;Times New Roman&quot;; font-size: medium;">Lê mạt</a><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">). Tên gọi Hoàn Kiếm xuất hiện vào đầu&nbsp;</span><a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoMre/TkDXOO5s/65OOrH3N/fHFIIZuK/XVsGBx/b29/" title="Thế kỷ 15" style="font-family: &quot;Times New Roman&quot;; font-size: medium;">thế kỷ 15</a><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">&nbsp;gắn với truyền thuyết vua&nbsp;</span><a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoU4I/KSGReN_2/BL_2BTW_/2Faf3NPH/WJ8PuKLT/yhMG6ZjN/b29/" title="Lê Thái Tổ" style="font-family: &quot;Times New Roman&quot;; font-size: medium;">Lê Lợi</a><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">&nbsp;trả gươm báu cho Rùa thần. Tên hồ được lấy để đặt cho một quận trung tâm của Hà Nội (</span><a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoQqu/TiD3ONl4/WkNdyJvK/PTc4F_2B/36GP/b29/" title="Hoàn Kiếm" style="font-family: &quot;Times New Roman&quot;; font-size: medium;">quận Hoàn Kiếm</a><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">) và là hồ nước duy nhất của quận này cho đến ngày nay.</span><p><p style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Cách đây khoảng 6 thế kỷ, dựa theo bản đồ thời&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoU4I/KSGReN_2/BL_2BTW_/2Faf3NPH/X6gEycKh/3HQG_2BM/_2Bf/b29/" title="Lê Thánh Tông">Hồng Đức</a>&nbsp;thì phần lớn xung quanh kinh thành khi ấy là nước. Hồ Hoàn Kiếm là một phân lưu sông Hồng chảy qua vị trí của các phố ngày nay như Hàng Đào, Hai Bà Trưng, Lý Thường Kiệt, Hàng Chuối. Tiếp đó đổ ra nhánh chính của sông Hồng&nbsp;<sup id="cite_ref-3" class="reference"><a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoQ4I/SQGRSOgt/LIIf3D3N/HFFIFr87/iphnQB_2/FYS6RGRd/n8U_3D/b29/">[3]</a></sup>. Nơi rộng nhất phân lưu này hình thành nên hồ Hoàn Kiếm hiện nay.</p><p style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Thời Lê Trung hưng (<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoMre/TkDXOO5s/65OOrH3N/fHFIIZuK/XVsGBy/b29/" title="Thế kỷ 16">thế kỷ 16</a>), khi&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDobre/TiD3OO5o/qkKseJvK/PTc4J_2B/paWMhw_3/D_3D/b29/" title="Chúa Trịnh">chúa Trịnh</a>&nbsp;cho chỉnh trang&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoQqu/TiD3ONl4/WcIcHE3N/HFFIFr84/_2B9uzlh/j5XdPXJx/vve_2B8Y/Ys/b29/" title="Hoàng thành Thăng Long">Hoàng thành Thăng Long</a>&nbsp;để vua Lê ở đã đồng thời xây dựng phủ chúa riêng nằm ngay bên ngoài Hoàng thành và trở thành một cơ quan trung ương thời bấy giờ với những công trình kiến trúc xa hoa như lầu Ngũ Long (dùng để duyệt quân) nằm ở bờ Đông hồ Hoàn Kiếm, đình Tả Vọng trên đảo Ngọc Sơn. Năm 1728&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoMt_/2BTkDXOO/5c7DPNvE/ptWfUK48/b29/" title="Trịnh Giang">Trịnh Giang</a>&nbsp;cho đào hầm ở vị trí phía Nam hồ để xây dựng cung điện ngầm gọi là Thưởng Trì cung.</p><p style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Chúa Trịnh cho ngăn hồ lớn thành hồ Tả Vọng và Hữu Vọng. Hồ Hữu Vọng được dùng làm nơi duyệt quân thuỷ chiến của triều đình. Đến đời&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoM4I/SQGRSOgq/nKIZDvzb/fPAeUerM/KgrXQF9c/I_3D/b29/" title="Tự Đức">Tự Đức</a>&nbsp;(<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDpp_2/FfWW/b29/" title="1847">1847</a>-<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDpp_2/FfmS/b29/" title="1883">1883</a>), hồ Hữu Vọng được gọi là hồ&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoMre/TkDXOO5c/66SczziO/fTcvN_2B/3NWMsD1h/iZDdRwM6/mJ2RwYsj/D8Fk_2F_/2BbQz3M2/9qc_3D/b29/" title="Thủy quân lục chiến">Thủy Quân</a>, còn hồ Tả Vọng chính là hồ Hoàn Kiếm. Từ năm&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDpp_2/FfmV/b29/" title="1884">1884</a>, nhà nước bảo hộ&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoIre/TiD3ONlp/s_3D/b29/" title="Pháp">Pháp</a>&nbsp;cho lấp hồ Thuỷ Quân để xây dựng, mở mang Hà Nội.</p></p>', N'upload/img/20170317_13_59_55_.jpg', N'Hồ Hoàn Kiếm-Hà Nội', N'', 21.0303907, 105.8461673, N'01674508685', 0, 500000, CAST(0x6A270B00 AS Date), NULL, NULL, NULL, N'thinhdm', 7, 1, 5, 0)
INSERT [dbo].[BaiDang] ([MaBaiDang], [TieuDe], [NoiDung], [AnhBia], [DiaChi], [DiaChiWeb], [ViDo], [KinhDo], [SDT], [GiaCaoNhat], [GiaThapNhat], [NgayDang], [NgayHetHan], [SoLuotTruyCap], [SoLuotThich], [Username], [MaDanhMuc], [MaLoaiTin], [MaTinhThanh], [DiemDanhGia]) VALUES (4, N'Hồ Hoàn Kiếm', N'<b style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Hồ Hoàn Kiếm</b><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">&nbsp;còn được gọi là&nbsp;</span><b style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Hồ Gươm</b><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">&nbsp;(trong&nbsp;</span><a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoM4I/SQGRSNgq/q_2FDurY/kPzMeaE1/8o69niQl/vtWRYDNA/uMyf94Yi/FZBTr7f7/6AkE1b2j/dZ3Nthks/NNApzcH9/PZEOViWo/9Ejumhw_/3D/b29/" title="Tập tin:Hanoi quartier administratif petit lac map plan 1886.jpg" style="font-family: &quot;Times New Roman&quot;; font-size: medium;">bản đồ Hà Nội năm 1886</a><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">, hồ này được gọi là Hồ Hoàn Gươm -&nbsp;</span><i style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Lac de Hoan Guom</i><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">), là một hồ nước ngọt tự nhiên của thành phố&nbsp;</span><a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoQ4I/KSGRf8_2/BKXeO4SJ/u9DTCPky/b29/" title="Hà Nội" style="font-family: &quot;Times New Roman&quot;; font-size: medium;">Hà Nội</a><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">. Hồ có diện tích khoảng 12 ha</span><sup id="cite_ref-2" class="reference" style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;;"><a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoQ4I/SQGRSOgt/LIIf3D3N/HFFIFr87/iphnQB_2/FYS6RGRd/n8U_3D/b29/">[2]</a></sup><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">. Trước kia, hồ còn có các tên gọi là hồ Lục Thủy (vì nước có màu xanh quanh năm), hồ Thủy Quân (dùng để duyệt thủy binh), hồ Tả Vọng và Hữu Vọng (trong thời&nbsp;</span><a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoWre/TiD3ONl7/S3W_2Faf/3NO3brQp/6ImFsDlh/j5fdR3Fx/vg_3D_3D/b29/" title="Nhà Lê trung hưng" style="font-family: &quot;Times New Roman&quot;; font-size: medium;">Lê mạt</a><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">). Tên gọi Hoàn Kiếm xuất hiện vào đầu&nbsp;</span><a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoMre/TkDXOO5s/65OOrH3N/fHFIIZuK/XVsGBx/b29/" title="Thế kỷ 15" style="font-family: &quot;Times New Roman&quot;; font-size: medium;">thế kỷ 15</a><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">&nbsp;gắn với truyền thuyết vua&nbsp;</span><a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoU4I/KSGReN_2/BL_2BTW_/2Faf3NPH/WJ8PuKLT/yhMG6ZjN/b29/" title="Lê Thái Tổ" style="font-family: &quot;Times New Roman&quot;; font-size: medium;">Lê Lợi</a><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">&nbsp;trả gươm báu cho Rùa thần. Tên hồ được lấy để đặt cho một quận trung tâm của Hà Nội (</span><a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoQqu/TiD3ONl4/WkNdyJvK/PTc4F_2B/36GP/b29/" title="Hoàn Kiếm" style="font-family: &quot;Times New Roman&quot;; font-size: medium;">quận Hoàn Kiếm</a><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">) và là hồ nước duy nhất của quận này cho đến ngày nay.</span><p><p style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Cách đây khoảng 6 thế kỷ, dựa theo bản đồ thời&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoU4I/KSGReN_2/BL_2BTW_/2Faf3NPH/X6gEycKh/3HQG_2BM/_2Bf/b29/" title="Lê Thánh Tông">Hồng Đức</a>&nbsp;thì phần lớn xung quanh kinh thành khi ấy là nước. Hồ Hoàn Kiếm là một phân lưu sông Hồng chảy qua vị trí của các phố ngày nay như Hàng Đào, Hai Bà Trưng, Lý Thường Kiệt, Hàng Chuối. Tiếp đó đổ ra nhánh chính của sông Hồng&nbsp;<sup id="cite_ref-3" class="reference"><a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoQ4I/SQGRSOgt/LIIf3D3N/HFFIFr87/iphnQB_2/FYS6RGRd/n8U_3D/b29/">[3]</a></sup>. Nơi rộng nhất phân lưu này hình thành nên hồ Hoàn Kiếm hiện nay.</p><p style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Thời Lê Trung hưng (<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoMre/TkDXOO5s/65OOrH3N/fHFIIZuK/XVsGBy/b29/" title="Thế kỷ 16">thế kỷ 16</a>), khi&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDobre/TiD3OO5o/qkKseJvK/PTc4J_2B/paWMhw_3/D_3D/b29/" title="Chúa Trịnh">chúa Trịnh</a>&nbsp;cho chỉnh trang&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoQqu/TiD3ONl4/WcIcHE3N/HFFIFr84/_2B9uzlh/j5XdPXJx/vve_2B8Y/Ys/b29/" title="Hoàng thành Thăng Long">Hoàng thành Thăng Long</a>&nbsp;để vua Lê ở đã đồng thời xây dựng phủ chúa riêng nằm ngay bên ngoài Hoàng thành và trở thành một cơ quan trung ương thời bấy giờ với những công trình kiến trúc xa hoa như lầu Ngũ Long (dùng để duyệt quân) nằm ở bờ Đông hồ Hoàn Kiếm, đình Tả Vọng trên đảo Ngọc Sơn. Năm 1728&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoMt_/2BTkDXOO/5c7DPNvE/ptWfUK48/b29/" title="Trịnh Giang">Trịnh Giang</a>&nbsp;cho đào hầm ở vị trí phía Nam hồ để xây dựng cung điện ngầm gọi là Thưởng Trì cung.</p><p style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Chúa Trịnh cho ngăn hồ lớn thành hồ Tả Vọng và Hữu Vọng. Hồ Hữu Vọng được dùng làm nơi duyệt quân thuỷ chiến của triều đình. Đến đời&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoM4I/SQGRSOgq/nKIZDvzb/fPAeUerM/KgrXQF9c/I_3D/b29/" title="Tự Đức">Tự Đức</a>&nbsp;(<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDpp_2/FfWW/b29/" title="1847">1847</a>-<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDpp_2/FfmS/b29/" title="1883">1883</a>), hồ Hữu Vọng được gọi là hồ&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoMre/TkDXOO5c/66SczziO/fTcvN_2B/3NWMsD1h/iZDdRwM6/mJ2RwYsj/D8Fk_2F_/2BbQz3M2/9qc_3D/b29/" title="Thủy quân lục chiến">Thủy Quân</a>, còn hồ Tả Vọng chính là hồ Hoàn Kiếm. Từ năm&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDpp_2/FfmV/b29/" title="1884">1884</a>, nhà nước bảo hộ&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoIre/TiD3ONlp/s_3D/b29/" title="Pháp">Pháp</a>&nbsp;cho lấp hồ Thuỷ Quân để xây dựng, mở mang Hà Nội.</p></p>', N'upload/img/null', N'Hồ Hoàn Kiếm-Hà Nội', N'2', 21.0303907, 105.8461673, N'01674508685', 0, 500000, CAST(0xF6280B00 AS Date), NULL, NULL, NULL, N'thinhdm', 7, 1, 5, 0)
INSERT [dbo].[BaiDang] ([MaBaiDang], [TieuDe], [NoiDung], [AnhBia], [DiaChi], [DiaChiWeb], [ViDo], [KinhDo], [SDT], [GiaCaoNhat], [GiaThapNhat], [NgayDang], [NgayHetHan], [SoLuotTruyCap], [SoLuotThich], [Username], [MaDanhMuc], [MaLoaiTin], [MaTinhThanh], [DiemDanhGia]) VALUES (5, N'Chùa Một Cột', N'<b style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Chùa Một Cột</b><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">&nbsp;hay&nbsp;</span><b style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Chùa Mật</b><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">&nbsp;(gọi theo&nbsp;</span><a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoM4I/SQGRSOgq/q5If2Juq/HTcPE1sL/GLyhR16e/O6IHkorQ/_3D_3D/b29/" class="mw-redirect" title="Từ Hán-Việt" style="font-family: &quot;Times New Roman&quot;; font-size: medium;">Hán-Việt</a><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">&nbsp;là Nhất Trụ tháp 一柱塔), còn có tên khác là&nbsp;</span><b style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Diên Hựu tự</b><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">&nbsp;(延祐寺) hoặc&nbsp;</span><b style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Liên Hoa Đài</b><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">&nbsp;(蓮花臺, "đài hoa sen"), là một ngôi chùa nằm giữa lòng thủ đô&nbsp;</span><a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoQ4I/KSGRf8_2/BKXeO4SJ/u9DTCPky/b29/" title="Hà Nội" style="font-family: &quot;Times New Roman&quot;; font-size: medium;">Hà Nội</a><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">. Đây là ngôi chùa có kiến trúc độc đáo ở Việt Nam.</span><p><p style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Chùa Diên Hựu được vua&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoU4I/KSGRSI_2/BL_2BTW_/2Faf3NPH/WJ8PuKTR/yhNwosY_/3D/b29/" title="Lý Thái Tông">Lý Thái Tông</a>&nbsp;cho khởi công xây dựng vào mùa đông tháng mười (<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDp9hv/KEBGSh_2/BIfeO4SJ/u9DTCYI4/9Q_3D_3D/b29/" title="Âm lịch">âm lịch</a>) năm&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoT4I/SQGRSOgq/nMIeaJvK/PTc4J_2B/3KOX/b29/" title="Kỷ Sửu">Kỷ Sửu</a>&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDpp9f/WY/b29/" title="1049">1049</a>,&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoWrO/TiD3ON5o/WkFtyJvK/PTc4J_2B/pdCXsAct/6eTJIANd/_2FJDF6r/cFB4k_3D/b29/" title="Niên hiệu Việt Nam">niên hiệu</a>&nbsp;Sùng Hưng Đại Bảo thứ nhất.<sup id="cite_ref-1" class="reference"><a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDobre/TiD3OOno/qkM5DpyL/e0c_2BVi/pJO9rHQB/_2FYS6R2/Qm4Nw_3D/b29/">[1]</a></sup></p><p style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Nhưng theo cuốn&nbsp;<i>Hà Nội-di tích lịch sử và danh thắng</i>, nhóm các nhà sử học&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDp9hv/WEBWalyY/OkJsCJuq/HTcPI1wq/vHrGJhjZ/OV/b29/" title="Đinh Xuân Lâm">Đinh Xuân Lâm</a>, Doãn Đoan Trinh,&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoc4I/KXGRT8gq/jNW_2FSd/l_2FWpZb/Iu84C9vi/RhiZDdRw/M64JmR/b29/" title="Dương Trung Quốc">Dương Trung Quốc</a>, Nguyễn Quang Ân, Nguyễn Thanh Mai, Đàm Tái Hưng tiến hành nghiên cứu văn bia dựng tại chùa năm&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQx/_2BCH3E9/ve_2FRVC/bz04KPEt/CRurezAO/UZ3MKj3D/8sk_2FWK/IAQu_2FO/qwu9AJQI/VCuqr94G/sR1KC_2B/J7DEsxYa/N9pkow_3/D_3D/b29/" class="new" title="Cảnh Trị (trang chưa được viết)">Cảnh Trị</a>&nbsp;thứ 3 (1665), đời vua&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoU4I/KSGReN_2/BKOOB5Dp/yLe0c_2B/VjrIm9u3/QH_2F4S6/MS94/b29/" title="Lê Huyền Tông">Lê Huyền Tông</a>, do Tỳ Khưu Lê Tất Đạt khắc ghi, thì thấy rằng: tại vị trí chùa Một Cột ngày nay, vào thời&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoWre/TiD3ONl7/TePYGJwK/LTcvZ_2B/39fHqmBh/juPdPAVx/vg_3D_3D/b29/" title="Nhà Đường">nhà Đường</a>&nbsp;(năm&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQx/_2BCH3E9/ve_2FRVC/bz04KPEt/CRsbe1Au/UarYq9uz/lhiZDdRw/M64Jmc_2/Bc4qBZBI/oa2v6zId/xO_2B4ZK/bNvhQYZI/A_3D/b29/" class="new" title="Hàm Thống (trang chưa được viết)">Hàm Thống</a>&nbsp;thứ nhất) một cột đá trên có ngôi lầu ngọc (với tượng&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoIre/TkDXOO5s/66OsE_3D/b29/" title="Phật">Phật</a>&nbsp;<a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDoJsK/DPY3OPlM/7DTNg_3D/b29/" title="Quan Âm">Quan Âm</a>&nbsp;ở trong) đã được dựng giữa một hồ nước vuông. Vua Lý Thái Tông thường đến cầu nguyện, được hoàng tử nối dõi, liền tu sửa lại thành chùa, xây thêm một ngôi chùa bên cạnh chùa Một Cột (cách 10 m về phía Tây Nam) và đặt tên cả quần thể chùa này là Diên Hựu tự (với nghĩa là "phúc lành dài lâu" hay "Phước bền dài lâu").<sup id="cite_ref-H.C3.A0_N.E1.BB.99i-di_tich_2-0" class="reference"><a href="https://www.workproxy.net/browse.php/7hQ2_2Bl/KmmBULG6/ITRtuzhb/3NBzLOQ1/mAGDobre/TiD3OOno/qkM5DpyL/e0c_2BVi/pJO9rHQB/_2FYS6R2/Qm4Nw_3D/b29/">[2]</a></sup></p><p style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Năm 1954, quân đội Viễn chinh Pháp trước khi rút khỏi Hà Nội đã cho đặt mìn để phá chùa Một Cột. Báo Tia sáng ngày 10-9-1954 đưa tin "<i>..., chùa Một Cột di tích liệt hạng của Hà Thành đã sụp đổ sau một tiếng nổ long trời lở đất...</i>" Sau khi tiếp quản thủ đô, Bộ Văn hóa Việt Nam Dân chủ Cộng hòa đã tiến hành trùng tu lớn chùa Một Cột (chùa Diên Hựu), xây dựng lại chùa Một Cột theo kiến trúc cũ.</p></p>', N'upload/img/20170317_14_12_07_.jpg', N'Quận Ba Đình, TP. Hà Nội', N'canhdep.vn', 21.0358756, 105.8314269, N'09446210546', 2000000, 100000, CAST(0x943C0B00 AS Date), NULL, NULL, NULL, N'thinhdm', 7, 1, 5, 0)
INSERT [dbo].[BaiDang] ([MaBaiDang], [TieuDe], [NoiDung], [AnhBia], [DiaChi], [DiaChiWeb], [ViDo], [KinhDo], [SDT], [GiaCaoNhat], [GiaThapNhat], [NgayDang], [NgayHetHan], [SoLuotTruyCap], [SoLuotThich], [Username], [MaDanhMuc], [MaLoaiTin], [MaTinhThanh], [DiemDanhGia]) VALUES (6, N'Nem lụi phố Phan Huy Ích nổi tiếng Hà Nội', N'<b style="margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; font-family: HelveticaNeue, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255);">Nem lụi</b><span style="color: rgb(34, 34, 34); font-family: HelveticaNeue, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">&nbsp;là một món ăn vặt có nguồn gốc từ Huế. Tuy nhiên hiện nay nem lụi đã trở thành món ăn rất quen thuộc của các bạn trẻ hay ăn vặt tại Hà Nội. Ở Hà Nội hiện nay có rất nhiều quá, nhiều hàng bán món ăn vặt này. Tuy nhiên có một con phố đã nổi tiếng từ rất lâu với món ăn này đó là phố Phan Huy Ích – Ba Đình – Hà Nội.</span><p><span style="color: rgb(34, 34, 34); font-family: HelveticaNeue, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">Món này được làm từ giò sống được vo lại và sau đó gắn vào que tre và đem nướng dưới than hoa. Ở một số hàng có thể quấn vào cây sả để nướng vừa là để tăng mùi vị và vừa là làm cho cây nem trông to hơn và bắt mắt hơn. Nước chấm của món này cũng khá cầu kỳ, được làm từ tương đậu nành pha với gan xay nhuyễn sau đó nấu lên thêm đường vào. Đun cho nước chấm hơi sền sệt là được và phía trên có rắc lạc rang.</span><span style="color: rgb(34, 34, 34); font-family: HelveticaNeue, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br></span></p><p><span style="color: rgb(34, 34, 34); font-family: HelveticaNeue, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">Trên con phố Phan Huy Ích hiện nay cũng có khá nhiều hàng bán nem lụi. Có thể nói đa số các hàng đều rất ngon và giá cả phải chăng. Có lẽ chính vì vậy mà con phố này đã trở lên nổi tiếng với món&nbsp;</span><a href="https://www.workproxy.net/browse.php/pwE2rUWg/2AMXXqgM/TpC0gf6P/GSCIGUCD/HjgoraDP/ET653saS/Hd2Bl_2F/2fHLQy_2/BImFwjkl/4c_2BXbG/4_3D/b29/" target="_blank" style="margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; font-family: HelveticaNeue, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; vertical-align: baseline; color: rgb(64, 155, 212); text-decoration: none; outline: 0px; -webkit-tap-highlight-color: rgb(255, 166, 2); transition-timing-function: linear; background-color: rgb(255, 255, 255);"><i style="margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">Nem lụi phố Phan Huy Ích</i></a><span style="color: rgb(34, 34, 34); font-family: HelveticaNeue, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);">&nbsp;này. Nó như đã trở thành một thương hiệu riêng của con phố. Giá nem cũng khá bình dân, 1 chiếc nem nướng thơm lừng giá cũng chỉ 7.000 đ, mọi thứ đồ uống khác đi kèm cũng rẻ như giá ở những hàng bình dân khác. Địa chỉ này là điểm đến quen thuộc của những bạn trẻ mê ẩm thực đường phố tại Hà Nội. Nếu có cơ hội hãy đưa bạn bè của bạn đến con phố này để thường thức một món ăn bình dân nhưng rất đặc biệt này.</span><span style="color: rgb(34, 34, 34); font-family: HelveticaNeue, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);"><br></span></p>', N'upload/img/20170317_14_20_36_.jpg', N'phố Phan Huy Ích – Ba Đình – Hà Nội.', N'anvat.pro', 21.0379428, 105.8270227, N'0551850003', 150000, 30000, CAST(0x943C0B00 AS Date), NULL, NULL, NULL, N'thinhdm', 3, 1, 5, 0)
INSERT [dbo].[BaiDang] ([MaBaiDang], [TieuDe], [NoiDung], [AnhBia], [DiaChi], [DiaChiWeb], [ViDo], [KinhDo], [SDT], [GiaCaoNhat], [GiaThapNhat], [NgayDang], [NgayHetHan], [SoLuotTruyCap], [SoLuotThich], [Username], [MaDanhMuc], [MaLoaiTin], [MaTinhThanh], [DiemDanhGia]) VALUES (7, N'asv', N'asvas', N'upload/img/bai-dang/20170317_14_26_50_.jpg', N'asv', N'', 80.2238546, 12.974267, N'', 0, 0, CAST(0x943C0B00 AS Date), NULL, NULL, NULL, N'thinhdm', 1, 1, 1, 0)
INSERT [dbo].[BaiDang] ([MaBaiDang], [TieuDe], [NoiDung], [AnhBia], [DiaChi], [DiaChiWeb], [ViDo], [KinhDo], [SDT], [GiaCaoNhat], [GiaThapNhat], [NgayDang], [NgayHetHan], [SoLuotTruyCap], [SoLuotThich], [Username], [MaDanhMuc], [MaLoaiTin], [MaTinhThanh], [DiemDanhGia]) VALUES (8, N' Mỳ quảng Bà Mua', N'<span style="font-family: Verdana, Arial, Tahoma, Calibri, Geneva, sans-serif; font-size: 13px; background-color: rgb(250, 250, 250);">Mỳ Bà Mua thì khỏi nói về độ nổi tiếng rồi. Hình như có đến 5, 6 cơ sở ở Đà Nẵng luôn&nbsp;</span><img src="https://www.workproxy.net/browse.php/pwE2s0u9/ww9MFKIC/R9a_2Fif/LMADqPUx/6IHnh3ra/7MWXmlyo/qcG8aDiv/_2BfXak_/2B7siPij/51_2BI_2/BfbCc_3D/b29/" border="0" alt="" title=":meo14" class="inlineimg" style="max-width: 555px; vertical-align: bottom; font-family: Verdana, Arial, Tahoma, Calibri, Geneva, sans-serif; font-size: 13px; background-color: rgb(250, 250, 250);"><br style="font-family: Verdana, Arial, Tahoma, Calibri, Geneva, sans-serif; font-size: 13px; background-color: rgb(250, 250, 250);"><span style="font-family: Verdana, Arial, Tahoma, Calibri, Geneva, sans-serif; font-size: 13px; background-color: rgb(250, 250, 250);">Mỳ ở đây khá đa dạng, mỳ thịt, mỳ gà, hến, có cả mỳ sứa nữa. Chỗ mình gần cơ sở ở Nguyễn Tri Phương nên hay qua đó ăn. QUán ở đừog Nguyễn Tri PHương thì bình dân, rộng rãi nhưng không được đẹp bằng mấy quán ở chỗ khác nhưng mà vè độ ngon thì như nhau&nbsp;</span><p><span style="font-family: Verdana, Arial, Tahoma, Calibri, Geneva, sans-serif; font-size: 13px; background-color: rgb(250, 250, 250);">Mình không ăn gà được nên gọi mỳ thịt, ngon hơn những chỗ khác và không ớn.</span><br style="font-family: Verdana, Arial, Tahoma, Calibri, Geneva, sans-serif; font-size: 13px; background-color: rgb(250, 250, 250);"><span style="font-family: Verdana, Arial, Tahoma, Calibri, Geneva, sans-serif; font-size: 13px; background-color: rgb(250, 250, 250);">Mỳ thì ngon rồi đó nhưng thích nhất là dĩa rau sống, khá to và toàn rau ngon ngon</span><span style="font-family: Verdana, Arial, Tahoma, Calibri, Geneva, sans-serif; font-size: 13px; background-color: rgb(250, 250, 250);"><br></span></p><p><span style="font-family: Verdana, Arial, Tahoma, Calibri, Geneva, sans-serif; font-size: 13px; background-color: rgb(250, 250, 250);">Đây là lần đầu ăn mỳ sứa, tuy không thấm bằng mỳ thịt hay mỳ gà nhưng mà vẫn khá ok, con sứa nhai giòn giòn rất lạ miệng.</span><span style="font-family: Verdana, Arial, Tahoma, Calibri, Geneva, sans-serif; font-size: 13px; background-color: rgb(250, 250, 250);"><br></span></p><p><span style="font-family: Verdana, Arial, Tahoma, Calibri, Geneva, sans-serif; font-size: 13px; background-color: rgb(250, 250, 250);">Ở đây còn bán bánh trán thịt heo với giá khá rẻ,&nbsp;</span><b style="font-family: Verdana, Arial, Tahoma, Calibri, Geneva, sans-serif; font-size: 13px; background-color: rgb(250, 250, 250);">35k/ phần</b><span style="font-family: Verdana, Arial, Tahoma, Calibri, Geneva, sans-serif; font-size: 13px; background-color: rgb(250, 250, 250);">&nbsp;và</span><b style="font-family: Verdana, Arial, Tahoma, Calibri, Geneva, sans-serif; font-size: 13px; background-color: rgb(250, 250, 250);">&nbsp;40k/phần</b><span style="font-family: Verdana, Arial, Tahoma, Calibri, Geneva, sans-serif; font-size: 13px; background-color: rgb(250, 250, 250);">. Một người ăn là no căng bụng luôn</span><span style="font-family: Verdana, Arial, Tahoma, Calibri, Geneva, sans-serif; font-size: 13px; background-color: rgb(250, 250, 250);"><br></span></p>', N'upload/img/bai-dang/20170317_14_50_44_.jpg', N'19 - 21 Trần Bình Trọng, Quận Hải Châu, Đà Nẵng', N'myquangngon.net', 16.0661405, 108.2171936, N'01676456521', 80000, 30000, CAST(0x943C0B00 AS Date), NULL, NULL, NULL, N'thinhdm', 3, 1, 1, 0)
INSERT [dbo].[BaiDang] ([MaBaiDang], [TieuDe], [NoiDung], [AnhBia], [DiaChi], [DiaChiWeb], [ViDo], [KinhDo], [SDT], [GiaCaoNhat], [GiaThapNhat], [NgayDang], [NgayHetHan], [SoLuotTruyCap], [SoLuotThich], [Username], [MaDanhMuc], [MaLoaiTin], [MaTinhThanh], [DiemDanhGia]) VALUES (10, N'Thảo Cầm Viên Sài Gòn', N'<b style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Thảo Cầm Viên Sài Gòn</b><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">&nbsp;(tên gọi tắt:&nbsp;</span><b style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Thảo Cầm Viên</b><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">, người dân quen gọi&nbsp;</span><b style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Sở thú</b><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">) là công viên bảo tồn&nbsp;</span><a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IHY4VbQ/yzIydgJ9/_2FWl6l8/4PZFVhod/H2TR56g6/nozw_3D_/3D/b29/" title="Động vật" style="font-family: &quot;Times New Roman&quot;; font-size: medium;">động vật</a><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">&nbsp;-&nbsp;</span><a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IGpykew/wydVcRYa/jkgA2NIk/Mi9VxbGG/LCg_3D/b29/" title="Thực vật" style="font-family: &quot;Times New Roman&quot;; font-size: medium;">thực vật</a><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">&nbsp;ở&nbsp;</span><a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IGpyke2/wSdWA10w/4Fs3i7JQ/JkhVoa32/NxQe49mJ/_2Beak2U/2VEOXnJv/AuTbBG_2/Bi82Pg_3/D_3D/b29/" title="Thành phố Hồ Chí Minh" style="font-family: &quot;Times New Roman&quot;; font-size: medium;">Thành phố Hồ Chí Minh</a><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">,&nbsp;</span><a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IGry0ew/wydVcRZg/iF8A4JYM/b29/" title="Việt Nam" style="font-family: &quot;Times New Roman&quot;; font-size: medium;">Việt Nam</a><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">. Đây là&nbsp;</span><a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IGrhyHD/10AnFnZp/mmkdi84l/bVVj7LGE/W3l55w_3/D_3D/b29/" class="mw-redirect" title="Vườn thú" style="font-family: &quot;Times New Roman&quot;; font-size: medium;">vườn thú</a><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">&nbsp;có tuổi thọ đứng hàng thứ 8 trên thế giới.</span><sup id="cite_ref-1" class="reference" style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;;"><a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IGpykew/wydVchYZ/jEQA7dIk/Mi9VxbGG/XzFk8IGJ/_2BJekoT/_2BkDN7n/JvAuTcRw/6AF9Fcvk/xfCi/b29/">[1]</a></sup><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">&nbsp;Khuôn viên rộng lớn này hiện tọa lạc gần hạ lưu&nbsp;</span><a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IG2hyHG/10NWXVsH/8UM2i7RS/JktW8cuL/TRkKg6ru/np24gyHn/DNmqQIY6/KbZbkn4a/Cbam7_2B/ePdGCIeg/_3D_3D/b29/" title="Kênh Nhiêu Lộc - Thị Nghè" style="font-family: &quot;Times New Roman&quot;; font-size: medium;">kênh Nhiêu Lộc - Thị Nghè</a><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">&nbsp;với hai cổng vào nằm ở số 2B đường&nbsp;</span><a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IGzxReM/10cmFnEa/mhNqwKgj/Jk8modaF/TWQCyIDz/8MzoxT35/dsyDCA_3/D_3D/b29/" title="Nguyễn Bỉnh Khiêm" style="font-family: &quot;Times New Roman&quot;; font-size: medium;">Nguyễn Bỉnh Khiêm</a><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">&nbsp;và số 1 đường Nguyễn Thị Minh Khai&nbsp;</span><a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IG_2Fhy/fE10BWFn/Ee0XQRyZ/9EQDkyxa/2YQCxTg6/uanuaxxT/v7ds_2BA/QPpPYpMw/b29/" title="Bến Nghé (phường)" style="font-family: &quot;Times New Roman&quot;; font-size: medium;">phường Bến Nghé</a><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">,&nbsp;</span><a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IGs10ew/wydVchYZ/_2B0UAn9/s_2BV2Iy/x6fiKWxV/zrfc04HE/0VuIEaj7/VJxDKbEo/kgQac8Hy/2IGkYgb6/Z6Y2bAAk/O6c_3D/b29/" title="Quận 1, Thành phố Hồ Chí Minh" style="font-family: &quot;Times New Roman&quot;; font-size: medium;">quận 1, Thành phố Hồ Chí Minh</a><span style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">.</span><p><p style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Ngày 23&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IGpyke2/wSdWAl0_/2F4Ek_2B/b29/" title="Tháng ba">tháng 3</a>&nbsp;năm&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IHMmlTB/b29/" title="1864">1864</a>, Đề đốc&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey_2F/5n78qY2k/yFmnIoR1/os005i_2/Fp4EcXhy/qcSmHTBk/wo3z98Xe/pwyrPemr/QIA4KbUh/xSN_2BN5/u17q2iei/CtK5NUQS/gpOaYdL3/ol/b29/" class="new" title="Pierre-Paul de La Grandière (trang chưa được viết)">De La Grandière</a>&nbsp;ký nghị định cho phép xây dựng Vườn Bách Thảo tại&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IGuhyHG/10MnWmwf/mmhsi7VT/bQ_3D_3D/b29/" class="mw-redirect" title="Sài Gòn">Sài Gòn</a>. Ngay sau đó, Louis Adolphe Germain, một&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey_2F/5n78qY2k/yFmnIoR1/os005i7N/IiMC9Wtf/eYG3l4ks/3tgvv1iF/uJYKiAJJ/xyKpV6wy/83OMWk46/u4YTesJo/sbXSZwZA/_3D_3D/b29/" class="new" title="Bác sĩ thú y (trang chưa được viết)">bác sĩ thú y</a>&nbsp;của quân đội Pháp, được giao nhiệm vụ mở mang 12&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IG1xwGB/kw_3D_3D/b29/" title="Hecta">ha</a>&nbsp;trên vùng đất hoang ở phía đông bắc&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IG2hyHG/10NWXVsH/8UM2i7RS/JktW8cuL/TRkKg6ru/np24gyHn/DNmqQIY6/KbZbkn4a/Cbam7_2B/ePdGCIeg/_3D_3D/b29/" title="Kênh Nhiêu Lộc - Thị Nghè">rạch Thị Nghè</a>&nbsp;(Pháp gọi là Arrroyo d''Avalanche, lấy theo tên chiến tàu chiến đã vào rạch Thị Nghè để tấn công thành Gia Định) để làm nơi nuôi thú và ươm cây.&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IGpyke2/wSdWAl0_/2F4Ek_2B/b29/" title="Tháng ba">Tháng 3</a>&nbsp;năm sau (1865) thì một số chuồng trại đã xây xong.</p><p style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Để biến nơi này thành nơi nuôi trồng các loài&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IHY4VbQ/yzIydgJ9/_2FWl6l8/4PZFVhod/H2TR56g6/nozw_3D_/3D/b29/" title="Động vật">động vật</a>,&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IGpykew/wydVcRYa/jkgA2NIk/Mi9VxbGG/LCg_3D/b29/" title="Thực vật">thực vật</a>&nbsp;của toàn&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IG_2Fhy/HG10MmXW/x9_2FB96/l8ZERjsy/xtXiKW9U/_2Bc3vj4/G40FuJYK/iAUa1sU7/A89HB9FM/jkxPTpBn/SnJQ_3D_/3D/b29/" title="Bán đảo Đông Dương">Đông Dương</a>; vừa để trưng bày, vừa để cung cấp cây giống cho&nbsp;<i><a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IG_2Fhy/fE10BWFn/Jr0HQri7/RSJksn6v/OYJHl_2B/l83u_2BY/G5oh2iDP/7nIPIuTr/Y89gIHAt/2EtueOBW/CLc7gcWy/RoFvxWBQ/Z6c4EX0L/J5bJj9BB/mJmPz2_2/BEbiWyUA/XG4vhpD0/b29/" title="Bảo tàng Lịch sử Tự nhiên Quốc gia Pháp">Muséum national d''histoire naturelle</a></i>&nbsp;và trồng dọc theo các trục lộ ở Sài Gòn; viên&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IGpykew/wydVcRZh/jkU48dIi/Ny8utbGC/WXl55M2V/isferh_2/BnDMbnIP/IuTrY89X/U_3D/b29/" title="Thống đốc Nam Kỳ">Thống đốc Nam Kỳ</a>&nbsp;nhận thấy cần phải có người giỏi chuyên môn hơn, nên đã mời J.B. Louis Pierre, người phụ trách chăm sóc thực vật của&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey_2F/5n78qY2k/yFmnIoR1/os005i_2/BNIiNS9V/tLGCWXl5/5M2V_2F8/regluJYK/iDVKBjU4/BxkgNpc7/qAooP_2F/KBqKI4sR/Rjk5NOkS/JzN9Q75f/kJMhPfzN/RETUks36/rBY_3D/b29/" class="new" title="Vườn bách thảo Calcutta (trang chưa được viết)">Vườn bách thảo Calcutta</a>&nbsp;(<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IHY51PQ/sEMycgc2/4A4cmtJY/My9StbGF/KnkCnw_3/D_3D/b29/" title="Ấn Độ">Ấn Độ</a>), sang làm giám đốc vào ngày&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IHPmj2B/midUABYZ/jkU48cQ_/3D/b29/" title="28 tháng 3">28 tháng 3</a>&nbsp;năm&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IHMmlTA/b29/" title="1865">1865</a>.</p><p style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Cuối năm 1865, Vườn Bách Thảo được nới rộng đến 20 ha. Sang năm&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IHMm1DB/b29/" title="1924">1924</a>, khuôn viên sáp nhập thêm bên bờ bắc&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IGvhyfE/10BWFnJp/3EMA_2Bp/9ERjsyxt/biUB5k6I/_2FEnuey/xT_2Fy/b29/" class="mw-redirect" title="Rạch Thị Nghè">rạch Thị Nghè</a>&nbsp;13 ha nữa; một cây cầu đúc được bắc qua rạch để nối liền hai khu vực hoàn thành năm&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IHMm1DC/b29/" title="1927">1927</a>. Và cũng trong năm đó, nhờ sự vận động của một viên chức Pháp tại Nhật, chính phủ&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IGzykew/wydVchYZ/_2B18_3D/b29/" class="mw-redirect" title="Nhật">Nhật</a>&nbsp;đã cung cấp cho Vườn Bách Thảo khoảng 900 giống cây lạ.</p><p style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Ngày&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IHMlz2B/midUABYZ/jkU48cZT/b29/" title="15 tháng 12">15 tháng 12</a>&nbsp;năm&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IHMmlTC/b29/" title="1867">1867</a>, Thống đốc De La Grandière ban hành nghị định số 183 nhằm chấn chỉnh tổ chức và điều hành Vườn Bách Thảo, đặt nơi đây dưới sự quản lý của Hội đồng thành phố Sài Gòn, với một ngân khoản điều hành 21.000&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IG70AOb/kV1HWxYb/jA4en4c_/3D/b29/" title="Franc Pháp">quan Pháp</a>/năm, do ngân sách thuộc địa cung cấp.</p><p style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium;">Ngày&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IHMlT2B/midUABYZ/jkU48cU_/3D/b29/" title="17 tháng 2">17 tháng 2</a>&nbsp;năm&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IHMmlTM/b29/" title="1869">1869</a>, phó đô đốc G. Ohier, quyền Thống đốc&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IGzww_2/BquSdSAh/Ya_2FQ4d/nQ_3D_3D/b29/" title="Nam Kỳ">Nam Kỳ</a>, ký nghị định số 33 thành lập Ủy ban thường trực do&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey_2F/5n78qY2k/yFmnIoR1/os005i_2/Fp8Ib2tk/8OaiTj1Y/0oHD1Znk/hBe_2Bdf/_2BnAa9i/Yp8khg_3/D_3D/b29/" class="new" title="Philastre (trang chưa được viết)">Philastre</a>&nbsp;làm chủ tịch, để giám sát việc chi tiêu tại Thảo Cầm Viên. Vào thời điểm này, chi phí hàng năm của Vườn Bách Thảo đã được nâng lên 30.000 quan Pháp/năm. Cũng theo nghị định trên, đúng ngày Quốc khánh của Pháp 14&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IGpyke2/wSdWAl0_/2F4El668/ZEQUsyxa/e_2B/b29/" title="Tháng bảy">tháng 7</a>&nbsp;năm&nbsp;<a href="https://www.workproxy.net/browse.php/WE418e7e/EQiAHAiD/4lXbY48N/584Ey7hl/6IHMmlTM/b29/" title="1869">1869</a>, Vườn Bách Thảo mở cửa thường trực cho công chúng vào xem.</p></p>', N'upload/img/bai-dang/20170317_15_50_07_.jpg', N'Phường Bến Nghé, quận 1, Thành phố Hồ Chí Minh', N'saigonzoo.net', 10.7810972, 106.6962611, N'0167456123', 700000, 300000, CAST(0x943C0B00 AS Date), NULL, NULL, NULL, N'thinhdm', 7, 1, 4, 0)
SET IDENTITY_INSERT [dbo].[BaiDang] OFF
SET IDENTITY_INSERT [dbo].[BinhLuan] ON 

INSERT [dbo].[BinhLuan] ([MaBinhLuan], [TieuDe], [NoiDung], [NgayBinhLuan], [DiemDanhGia], [MaBaiDang], [Username]) VALUES (1, N'Ý kiến', N'Không có ý kiến', CAST(0x853C0B00 AS Date), 4, 1, N'hoangan')
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [TieuDe], [NoiDung], [NgayBinhLuan], [DiemDanhGia], [MaBaiDang], [Username]) VALUES (2, N'Ý kiến', N'Không có ý kiến', CAST(0x853C0B00 AS Date), 4, 1, N'hoangan')
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [TieuDe], [NoiDung], [NgayBinhLuan], [DiemDanhGia], [MaBaiDang], [Username]) VALUES (3, N'Ý kiến', N'Không có ý kiến', CAST(0x853C0B00 AS Date), 4, 2, N'hoangan')
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [TieuDe], [NoiDung], [NgayBinhLuan], [DiemDanhGia], [MaBaiDang], [Username]) VALUES (4, N'Đóng góp', N'Không có đóng góp', CAST(0x863C0B00 AS Date), 2, 2, N'hoangan')
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (1, N'Làm đẹp')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (2, N'Kinh doanh')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (3, N'Dich vụ ăn uống')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (4, N'Tài chánh')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (5, N'Sức khỏe')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (6, N'Khách sạn')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (7, N'Giải trí')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
SET IDENTITY_INSERT [dbo].[DichVu] ON 

INSERT [dbo].[DichVu] ([MaDichVu], [TenDichVu]) VALUES (1, N'Wifi Free')
INSERT [dbo].[DichVu] ([MaDichVu], [TenDichVu]) VALUES (2, N'Vật nuôi thân thiện')
INSERT [dbo].[DichVu] ([MaDichVu], [TenDichVu]) VALUES (3, N'Góc trẻ em')
INSERT [dbo].[DichVu] ([MaDichVu], [TenDichVu]) VALUES (4, N'Xe lăn')
INSERT [dbo].[DichVu] ([MaDichVu], [TenDichVu]) VALUES (5, N'Bãi đậu xe')
INSERT [dbo].[DichVu] ([MaDichVu], [TenDichVu]) VALUES (6, N'Quà tặng')
INSERT [dbo].[DichVu] ([MaDichVu], [TenDichVu]) VALUES (7, N'Thuê xe đạp')
INSERT [dbo].[DichVu] ([MaDichVu], [TenDichVu]) VALUES (8, N'Trả bằng thẻ')
INSERT [dbo].[DichVu] ([MaDichVu], [TenDichVu]) VALUES (9, N'Máy lạnh')
INSERT [dbo].[DichVu] ([MaDichVu], [TenDichVu]) VALUES (10, N'Lò sưởi')
SET IDENTITY_INSERT [dbo].[DichVu] OFF
INSERT [dbo].[DichVuBD] ([MaDichVu], [MaBaiDang]) VALUES (1, 1)
INSERT [dbo].[DichVuBD] ([MaDichVu], [MaBaiDang]) VALUES (1, 2)
INSERT [dbo].[DichVuBD] ([MaDichVu], [MaBaiDang]) VALUES (1, 5)
INSERT [dbo].[DichVuBD] ([MaDichVu], [MaBaiDang]) VALUES (1, 6)
INSERT [dbo].[DichVuBD] ([MaDichVu], [MaBaiDang]) VALUES (1, 8)
INSERT [dbo].[DichVuBD] ([MaDichVu], [MaBaiDang]) VALUES (1, 10)
INSERT [dbo].[DichVuBD] ([MaDichVu], [MaBaiDang]) VALUES (2, 1)
INSERT [dbo].[DichVuBD] ([MaDichVu], [MaBaiDang]) VALUES (2, 3)
INSERT [dbo].[DichVuBD] ([MaDichVu], [MaBaiDang]) VALUES (2, 5)
INSERT [dbo].[DichVuBD] ([MaDichVu], [MaBaiDang]) VALUES (2, 10)
INSERT [dbo].[DichVuBD] ([MaDichVu], [MaBaiDang]) VALUES (3, 1)
INSERT [dbo].[DichVuBD] ([MaDichVu], [MaBaiDang]) VALUES (3, 3)
INSERT [dbo].[DichVuBD] ([MaDichVu], [MaBaiDang]) VALUES (5, 2)
INSERT [dbo].[DichVuBD] ([MaDichVu], [MaBaiDang]) VALUES (5, 6)
INSERT [dbo].[DichVuBD] ([MaDichVu], [MaBaiDang]) VALUES (5, 8)
INSERT [dbo].[DichVuBD] ([MaDichVu], [MaBaiDang]) VALUES (5, 10)
INSERT [dbo].[DichVuBD] ([MaDichVu], [MaBaiDang]) VALUES (6, 5)
INSERT [dbo].[DichVuBD] ([MaDichVu], [MaBaiDang]) VALUES (7, 5)
INSERT [dbo].[DichVuBD] ([MaDichVu], [MaBaiDang]) VALUES (8, 3)
INSERT [dbo].[DichVuBD] ([MaDichVu], [MaBaiDang]) VALUES (9, 6)
INSERT [dbo].[DichVuBD] ([MaDichVu], [MaBaiDang]) VALUES (9, 8)
SET IDENTITY_INSERT [dbo].[HinhAnh] ON 

INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (1, N'BD1.jpg', 1)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (2, N'BD1.jpg', 1)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (3, N'BD1.jpg', 1)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (4, N'BD1.jpg', 2)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (5, N'BD1.jpg', 2)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (6, N'upload/img/null', 4)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (7, N'upload/img/null', 3)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (8, N'upload/img/20170317_14_00_53_0.', 3)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (9, N'upload/img/20170317_14_02_05_0.', 4)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (10, N'upload/img/20170317_14_12_07_0.jpg', 5)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (11, N'upload/img/20170317_14_12_07_1.jpg', 5)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (12, N'upload/img/20170317_14_12_07_2.jpg', 5)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (13, N'upload/img/20170317_14_20_37_0.jpg', 6)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (14, N'upload/img/20170317_14_20_37_1.jpg', 6)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (15, N'upload/img/bai-dang/20170317_14_26_50_0.jpg', 7)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (16, N'upload/img/bai-dang/20170317_14_26_50_1.jpg', 7)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (17, N'upload/img/bai-dang/20170317_14_26_50_2.jpg', 7)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (18, N'upload/img/bai-dang/20170317_14_50_45_0.jpg', 8)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (19, N'upload/img/bai-dang/20170317_14_50_45_1.jpg', 8)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (20, N'upload/img/bai-dang/20170317_14_50_45_2.jpg', 8)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (21, N'upload/img/bai-dang/20170317_14_50_45_3.jpg', 8)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (23, N'upload/img/bai-dang/20170317_15_50_08_0.jpg', 10)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (24, N'upload/img/bai-dang/20170317_15_50_08_1.jpg', 10)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (25, N'upload/img/bai-dang/20170317_15_50_08_2.jpg', 10)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (26, N'upload/img/bai-dang/20170317_15_52_35_0.', 10)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (27, N'upload/img/bai-dang/20170317_15_54_30_0.', 10)
INSERT [dbo].[HinhAnh] ([MaHinh], [TenHinh], [MaBaiDang]) VALUES (28, N'upload/img/bai-dang/20170317_15_56_45_0.', 10)
SET IDENTITY_INSERT [dbo].[HinhAnh] OFF
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoan] ON 

INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTK], [TenLoaiTK]) VALUES (1, N'Người dùng thông thường')
INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTK], [TenLoaiTK]) VALUES (2, N'Người dùng thân thiết')
INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTK], [TenLoaiTK]) VALUES (3, N'Người dùng V.I.P')
INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTK], [TenLoaiTK]) VALUES (4, N'Admin')
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoan] OFF
SET IDENTITY_INSERT [dbo].[LoaiTin] ON 

INSERT [dbo].[LoaiTin] ([MaLoaiTin], [TenLoaiTin], [CapDoTin]) VALUES (1, N'Chưa duyệt', 1)
INSERT [dbo].[LoaiTin] ([MaLoaiTin], [TenLoaiTin], [CapDoTin]) VALUES (2, N'Đã duyệt', 2)
INSERT [dbo].[LoaiTin] ([MaLoaiTin], [TenLoaiTin], [CapDoTin]) VALUES (3, N'Tin vip', 3)
SET IDENTITY_INSERT [dbo].[LoaiTin] OFF
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (1, N'Admin')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (2, N'User')
INSERT [dbo].[TaiKhoan] ([Username], [Pass], [Email], [Avatar], [HoTen], [GioiTinh], [NgaySinh], [SDT], [NgayDangKy], [MaQuyen], [MaLoaiTK]) VALUES (N'admin', N'123', N'admin@gmail.com', N'admin.jpg', N'Nguyen Long', 0, CAST(0x2A1D0B00 AS Date), N'0905302222', CAST(0x833C0B00 AS Date), 1, 4)
INSERT [dbo].[TaiKhoan] ([Username], [Pass], [Email], [Avatar], [HoTen], [GioiTinh], [NgaySinh], [SDT], [NgayDangKy], [MaQuyen], [MaLoaiTK]) VALUES (N'hoangan', N'123', N'hoangan@gmail.com', N'hoangan.jpg', N'Nguyen An', 0, CAST(0x2A1D0B00 AS Date), N'0905302222', CAST(0x833C0B00 AS Date), 2, 1)
INSERT [dbo].[TaiKhoan] ([Username], [Pass], [Email], [Avatar], [HoTen], [GioiTinh], [NgaySinh], [SDT], [NgayDangKy], [MaQuyen], [MaLoaiTK]) VALUES (N'thinhdm', N'123', N'thinh@gmail.com', N'user.png', N'Đào Minh Thịnh', NULL, NULL, NULL, NULL, 2, 1)
INSERT [dbo].[Thich] ([MaBaiDang], [Username], [NgayThich]) VALUES (7, N'thinhdm', NULL)
SET IDENTITY_INSERT [dbo].[TinhThanh] ON 

INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (1, N'Đà Nẵng')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (2, N'Đà Lạt')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (3, N'Huế')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (4, N'Sài Gòn')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (5, N'Hà Nội')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (6, N'Nha Trang')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (7, N'Quãng Ngãi')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (8, N'Quãng Bình')
SET IDENTITY_INSERT [dbo].[TinhThanh] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__TaiKhoan__A9D10534028DFBD8]    Script Date: 3/17/2017 4:57:08 PM ******/
ALTER TABLE [dbo].[TaiKhoan] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BaiDang]  WITH CHECK ADD  CONSTRAINT [fk_BaiDang_DanhMuc] FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMuc] ([MaDanhMuc])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BaiDang] CHECK CONSTRAINT [fk_BaiDang_DanhMuc]
GO
ALTER TABLE [dbo].[BaiDang]  WITH CHECK ADD  CONSTRAINT [fk_BaiDang_LoaiTin] FOREIGN KEY([MaLoaiTin])
REFERENCES [dbo].[LoaiTin] ([MaLoaiTin])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BaiDang] CHECK CONSTRAINT [fk_BaiDang_LoaiTin]
GO
ALTER TABLE [dbo].[BaiDang]  WITH CHECK ADD  CONSTRAINT [fk_BaiDang_TaiKhoan] FOREIGN KEY([Username])
REFERENCES [dbo].[TaiKhoan] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BaiDang] CHECK CONSTRAINT [fk_BaiDang_TaiKhoan]
GO
ALTER TABLE [dbo].[BaiDang]  WITH CHECK ADD  CONSTRAINT [fk_BaiDang_TinhThanh] FOREIGN KEY([MaTinhThanh])
REFERENCES [dbo].[TinhThanh] ([MaTinhThanh])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BaiDang] CHECK CONSTRAINT [fk_BaiDang_TinhThanh]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [fk_BinhLuan_BaiDang] FOREIGN KEY([MaBaiDang])
REFERENCES [dbo].[BaiDang] ([MaBaiDang])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [fk_BinhLuan_BaiDang]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [fk_BinhLuan_TaiKhoan] FOREIGN KEY([Username])
REFERENCES [dbo].[TaiKhoan] ([Username])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [fk_BinhLuan_TaiKhoan]
GO
ALTER TABLE [dbo].[CTGiaoDich]  WITH CHECK ADD  CONSTRAINT [fk_CTGiaoDich_GiaoDich] FOREIGN KEY([MaGiaoDich])
REFERENCES [dbo].[GiaoDich] ([MaGiaoDich])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTGiaoDich] CHECK CONSTRAINT [fk_CTGiaoDich_GiaoDich]
GO
ALTER TABLE [dbo].[CTGiaoDich]  WITH CHECK ADD  CONSTRAINT [fk_CTGiaoDich_Goi] FOREIGN KEY([MaGoi])
REFERENCES [dbo].[Goi] ([MaGoi])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTGiaoDich] CHECK CONSTRAINT [fk_CTGiaoDich_Goi]
GO
ALTER TABLE [dbo].[DichVuBD]  WITH CHECK ADD  CONSTRAINT [fk_DichVuBD_BaiDang] FOREIGN KEY([MaBaiDang])
REFERENCES [dbo].[BaiDang] ([MaBaiDang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DichVuBD] CHECK CONSTRAINT [fk_DichVuBD_BaiDang]
GO
ALTER TABLE [dbo].[DichVuBD]  WITH CHECK ADD  CONSTRAINT [fk_DichVuBD_DichVu] FOREIGN KEY([MaDichVu])
REFERENCES [dbo].[DichVu] ([MaDichVu])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DichVuBD] CHECK CONSTRAINT [fk_DichVuBD_DichVu]
GO
ALTER TABLE [dbo].[GiaoDich]  WITH CHECK ADD  CONSTRAINT [fk_GiaoDich_TaiKhoan] FOREIGN KEY([Username])
REFERENCES [dbo].[TaiKhoan] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GiaoDich] CHECK CONSTRAINT [fk_GiaoDich_TaiKhoan]
GO
ALTER TABLE [dbo].[HinhAnh]  WITH CHECK ADD  CONSTRAINT [fk_HinhAnh_BaiDang] FOREIGN KEY([MaBaiDang])
REFERENCES [dbo].[BaiDang] ([MaBaiDang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HinhAnh] CHECK CONSTRAINT [fk_HinhAnh_BaiDang]
GO
ALTER TABLE [dbo].[KhuyenMai]  WITH CHECK ADD  CONSTRAINT [fk_KhuyenMai_BaiDang] FOREIGN KEY([MaBaiDang])
REFERENCES [dbo].[BaiDang] ([MaBaiDang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhuyenMai] CHECK CONSTRAINT [fk_KhuyenMai_BaiDang]
GO
ALTER TABLE [dbo].[LienHe]  WITH CHECK ADD  CONSTRAINT [fk_LienHe_VanDe] FOREIGN KEY([MaVanDe])
REFERENCES [dbo].[VanDe] ([MaVanDe])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LienHe] CHECK CONSTRAINT [fk_LienHe_VanDe]
GO
ALTER TABLE [dbo].[LoaiTKUuDai]  WITH CHECK ADD  CONSTRAINT [fk_LoaiTKUuDai_LoaiTaiKhoan] FOREIGN KEY([MaLoaiTK])
REFERENCES [dbo].[LoaiTaiKhoan] ([MaLoaiTK])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LoaiTKUuDai] CHECK CONSTRAINT [fk_LoaiTKUuDai_LoaiTaiKhoan]
GO
ALTER TABLE [dbo].[LoaiTKUuDai]  WITH CHECK ADD  CONSTRAINT [fk_LoaiTKUuDai_UuDai] FOREIGN KEY([MaUuDai])
REFERENCES [dbo].[UuDai] ([MaUuDai])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LoaiTKUuDai] CHECK CONSTRAINT [fk_LoaiTKUuDai_UuDai]
GO
ALTER TABLE [dbo].[LuuBD]  WITH CHECK ADD  CONSTRAINT [fk_LuuBD_BaiDang] FOREIGN KEY([MaBaiDang])
REFERENCES [dbo].[BaiDang] ([MaBaiDang])
GO
ALTER TABLE [dbo].[LuuBD] CHECK CONSTRAINT [fk_LuuBD_BaiDang]
GO
ALTER TABLE [dbo].[LuuBD]  WITH CHECK ADD  CONSTRAINT [fk_LuuBD_TaiKhoan] FOREIGN KEY([Username])
REFERENCES [dbo].[TaiKhoan] ([Username])
GO
ALTER TABLE [dbo].[LuuBD] CHECK CONSTRAINT [fk_LuuBD_TaiKhoan]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [fk_TaiKhoan_LoaiTaiKhoan] FOREIGN KEY([MaLoaiTK])
REFERENCES [dbo].[LoaiTaiKhoan] ([MaLoaiTK])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [fk_TaiKhoan_LoaiTaiKhoan]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [fk_TaiKhoan_Quyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [fk_TaiKhoan_Quyen]
GO
ALTER TABLE [dbo].[Thich]  WITH CHECK ADD  CONSTRAINT [fk_Thich_BaiDang] FOREIGN KEY([MaBaiDang])
REFERENCES [dbo].[BaiDang] ([MaBaiDang])
GO
ALTER TABLE [dbo].[Thich] CHECK CONSTRAINT [fk_Thich_BaiDang]
GO
ALTER TABLE [dbo].[Thich]  WITH CHECK ADD  CONSTRAINT [fk_Thich_TaiKhoan] FOREIGN KEY([Username])
REFERENCES [dbo].[TaiKhoan] ([Username])
GO
ALTER TABLE [dbo].[Thich] CHECK CONSTRAINT [fk_Thich_TaiKhoan]
GO
/****** Object:  Trigger [dbo].[DiemTB]    Script Date: 3/17/2017 4:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[DiemTB]
ON [dbo].[BinhLuan]
FOR INSERT AS 
BEGIN
	UPDATE BaiDang
	SET DiemDanhGia = (select AVG(bl.DiemDanhGia) as diemtb
					from BaiDang bd inner join BinhLuan bl on bd.MaBaiDang=bl.MaBaiDang
					inner join TaiKhoan tk on bl.Username=tk.Username
					where bd.MaBaiDang=BaiDang.MaBaiDang
					group by bd.MaBaiDang)
	FROM BinhLuan
	WHERE BaiDang.MaBaiDang=BinhLuan.MaBaiDang;
	
	PRINT N'Đã cập nhật điểm đánh giá trong bài đăng. DiemTB'
	
END
GO
USE [master]
GO
ALTER DATABASE [SE12] SET  READ_WRITE 
GO
