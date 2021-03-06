USE [master]
GO
/****** Object:  Database [QuanLy_KHO]    Script Date: 12/14/2020 12:01:47 PM ******/
CREATE DATABASE [QuanLy_KHO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLy_KHO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLy_KHO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLy_KHO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLy_KHO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLy_KHO] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLy_KHO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLy_KHO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLy_KHO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLy_KHO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLy_KHO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLy_KHO] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLy_KHO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLy_KHO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLy_KHO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLy_KHO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLy_KHO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLy_KHO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLy_KHO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLy_KHO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLy_KHO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLy_KHO] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLy_KHO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLy_KHO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLy_KHO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLy_KHO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLy_KHO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLy_KHO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLy_KHO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLy_KHO] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLy_KHO] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLy_KHO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLy_KHO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLy_KHO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLy_KHO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLy_KHO] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLy_KHO] SET QUERY_STORE = OFF
GO
USE [QuanLy_KHO]
GO
/****** Object:  Table [dbo].[CT_PH_NHAP_HH]    Script Date: 12/14/2020 12:01:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PH_NHAP_HH](
	[MA_HH] [char](10) NULL,
	[MA_PH_NHAP] [char](10) NULL,
	[SOLUONG] [int] NULL,
	[NGAY_NHAP] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PH_XUAT_HH]    Script Date: 12/14/2020 12:01:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PH_XUAT_HH](
	[MA_HH] [char](10) NULL,
	[MA_PH_XUAT] [char](10) NULL,
	[SOLUONG] [int] NULL,
	[NGAY_XUAT] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PHIEUDOITRA]    Script Date: 12/14/2020 12:01:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PHIEUDOITRA](
	[MA_PHIEU] [char](10) NULL,
	[MA_HH] [char](10) NULL,
	[SOLUONG] [int] NULL,
	[NGAY_DOITRA] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HANGHOA]    Script Date: 12/14/2020 12:01:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANGHOA](
	[MA_HH] [char](10) NOT NULL,
	[TEN_HH] [nvarchar](30) NOT NULL,
	[SOLUONG] [int] NULL,
	[MA_NCC] [char](10) NULL,
	[MA_LOAI_HH] [char](10) NULL,
	[SOLUONGLOI] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MA_HH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIHANGHOA]    Script Date: 12/14/2020 12:01:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIHANGHOA](
	[MA_LOAI_HH] [char](10) NOT NULL,
	[TENLOAI_HH] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MA_LOAI_HH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 12/14/2020 12:01:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MA_NCC] [char](10) NOT NULL,
	[TEN_NCC] [nvarchar](50) NULL,
	[DIACHI] [nvarchar](50) NULL,
	[SDT] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MA_NCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 12/14/2020 12:01:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [char](10) NOT NULL,
	[TENNV] [nvarchar](50) NULL,
	[GIOITINH] [nvarchar](10) NULL,
	[SDT] [char](10) NULL,
	[MA_QUANLY] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAPHANPHOI]    Script Date: 12/14/2020 12:01:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAPHANPHOI](
	[MA_NPP] [char](10) NOT NULL,
	[TEN_NPP] [nvarchar](50) NULL,
	[SDT] [char](10) NULL,
	[DIACHI] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MA_NPP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUDOITRA]    Script Date: 12/14/2020 12:01:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUDOITRA](
	[MA_PHIEU] [char](10) NOT NULL,
	[TEN_PHIEU] [nvarchar](30) NULL,
	[MANV] [char](10) NULL,
	[MA_NCC] [char](10) NULL,
	[MA_NPP] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MA_PHIEU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 12/14/2020 12:01:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MA_PH_NHAP] [char](10) NOT NULL,
	[TEN_PH_NHAP] [nvarchar](50) NULL,
	[MANV] [char](10) NULL,
	[MA_NCC] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MA_PH_NHAP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUXUAT]    Script Date: 12/14/2020 12:01:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUXUAT](
	[MA_PH_XUAT] [char](10) NOT NULL,
	[TEN_PH_XUAT] [nvarchar](50) NULL,
	[MANV] [char](10) NULL,
	[MA_NPP] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MA_PH_XUAT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HANGHOA] ([MA_HH], [TEN_HH], [SOLUONG], [MA_NCC], [MA_LOAI_HH], [SOLUONGLOI]) VALUES (N'HH01      ', N'Chăn bông', 100, N'CC01      ', N'L02       ', 0)
INSERT [dbo].[HANGHOA] ([MA_HH], [TEN_HH], [SOLUONG], [MA_NCC], [MA_LOAI_HH], [SOLUONGLOI]) VALUES (N'HH02      ', N'Dao', 150, N'CC01      ', N'L01       ', 14)
INSERT [dbo].[HANGHOA] ([MA_HH], [TEN_HH], [SOLUONG], [MA_NCC], [MA_LOAI_HH], [SOLUONGLOI]) VALUES (N'HH03      ', N'Mì tôm', 1500, N'CC03      ', N'L03       ', 11)
INSERT [dbo].[HANGHOA] ([MA_HH], [TEN_HH], [SOLUONG], [MA_NCC], [MA_LOAI_HH], [SOLUONGLOI]) VALUES (N'HH05      ', N'Chuột máy tính', 1234, N'CC01      ', N'L01       ', 111)
GO
INSERT [dbo].[LOAIHANGHOA] ([MA_LOAI_HH], [TENLOAI_HH]) VALUES (N'L01       ', N'Đồ gia dụng')
INSERT [dbo].[LOAIHANGHOA] ([MA_LOAI_HH], [TENLOAI_HH]) VALUES (N'L02       ', N'Chăn ga, gối đệm')
INSERT [dbo].[LOAIHANGHOA] ([MA_LOAI_HH], [TENLOAI_HH]) VALUES (N'L03       ', N'Đồ ăn')
GO
INSERT [dbo].[NHACUNGCAP] ([MA_NCC], [TEN_NCC], [DIACHI], [SDT]) VALUES (N'CC01      ', N'Kim Bảo', N'235 Cầu Giấy', N'0986237123')
INSERT [dbo].[NHACUNGCAP] ([MA_NCC], [TEN_NCC], [DIACHI], [SDT]) VALUES (N'CC02      ', N'Thiên Nam', N'11 Trần Hưng Đạo', N'0987654321')
INSERT [dbo].[NHACUNGCAP] ([MA_NCC], [TEN_NCC], [DIACHI], [SDT]) VALUES (N'CC03      ', N'Bình An', N'236 Hoàng Quốc Việt', N'0987345232')
GO
ALTER TABLE [dbo].[CT_PH_NHAP_HH]  WITH CHECK ADD  CONSTRAINT [FK_ctpNHAP_HH] FOREIGN KEY([MA_HH])
REFERENCES [dbo].[HANGHOA] ([MA_HH])
GO
ALTER TABLE [dbo].[CT_PH_NHAP_HH] CHECK CONSTRAINT [FK_ctpNHAP_HH]
GO
ALTER TABLE [dbo].[CT_PH_NHAP_HH]  WITH CHECK ADD  CONSTRAINT [FK_ctpNHAP_phNHAP] FOREIGN KEY([MA_PH_NHAP])
REFERENCES [dbo].[PHIEUNHAP] ([MA_PH_NHAP])
GO
ALTER TABLE [dbo].[CT_PH_NHAP_HH] CHECK CONSTRAINT [FK_ctpNHAP_phNHAP]
GO
ALTER TABLE [dbo].[CT_PH_XUAT_HH]  WITH CHECK ADD  CONSTRAINT [DK_ctpXUAT_phXUAT] FOREIGN KEY([MA_PH_XUAT])
REFERENCES [dbo].[PHIEUXUAT] ([MA_PH_XUAT])
GO
ALTER TABLE [dbo].[CT_PH_XUAT_HH] CHECK CONSTRAINT [DK_ctpXUAT_phXUAT]
GO
ALTER TABLE [dbo].[CT_PH_XUAT_HH]  WITH CHECK ADD  CONSTRAINT [FK_ctpXUAT_HH] FOREIGN KEY([MA_HH])
REFERENCES [dbo].[HANGHOA] ([MA_HH])
GO
ALTER TABLE [dbo].[CT_PH_XUAT_HH] CHECK CONSTRAINT [FK_ctpXUAT_HH]
GO
ALTER TABLE [dbo].[CT_PHIEUDOITRA]  WITH CHECK ADD  CONSTRAINT [FK_CTPH_HH] FOREIGN KEY([MA_HH])
REFERENCES [dbo].[HANGHOA] ([MA_HH])
GO
ALTER TABLE [dbo].[CT_PHIEUDOITRA] CHECK CONSTRAINT [FK_CTPH_HH]
GO
ALTER TABLE [dbo].[CT_PHIEUDOITRA]  WITH CHECK ADD  CONSTRAINT [FK_CTPH_PH] FOREIGN KEY([MA_PHIEU])
REFERENCES [dbo].[PHIEUDOITRA] ([MA_PHIEU])
GO
ALTER TABLE [dbo].[CT_PHIEUDOITRA] CHECK CONSTRAINT [FK_CTPH_PH]
GO
ALTER TABLE [dbo].[HANGHOA]  WITH CHECK ADD  CONSTRAINT [FK_HH_LOAI] FOREIGN KEY([MA_LOAI_HH])
REFERENCES [dbo].[LOAIHANGHOA] ([MA_LOAI_HH])
GO
ALTER TABLE [dbo].[HANGHOA] CHECK CONSTRAINT [FK_HH_LOAI]
GO
ALTER TABLE [dbo].[HANGHOA]  WITH CHECK ADD  CONSTRAINT [FK_HH_NCC] FOREIGN KEY([MA_NCC])
REFERENCES [dbo].[NHACUNGCAP] ([MA_NCC])
GO
ALTER TABLE [dbo].[HANGHOA] CHECK CONSTRAINT [FK_HH_NCC]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NV_QUANLY] FOREIGN KEY([MA_QUANLY])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NV_QUANLY]
GO
ALTER TABLE [dbo].[PHIEUDOITRA]  WITH CHECK ADD  CONSTRAINT [FK_PH_NCC] FOREIGN KEY([MA_NCC])
REFERENCES [dbo].[NHACUNGCAP] ([MA_NCC])
GO
ALTER TABLE [dbo].[PHIEUDOITRA] CHECK CONSTRAINT [FK_PH_NCC]
GO
ALTER TABLE [dbo].[PHIEUDOITRA]  WITH CHECK ADD  CONSTRAINT [FK_PH_NV] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[PHIEUDOITRA] CHECK CONSTRAINT [FK_PH_NV]
GO
ALTER TABLE [dbo].[PHIEUDOITRA]  WITH CHECK ADD  CONSTRAINT [FK_PHDoi_NPP] FOREIGN KEY([MA_NPP])
REFERENCES [dbo].[NHAPHANPHOI] ([MA_NPP])
GO
ALTER TABLE [dbo].[PHIEUDOITRA] CHECK CONSTRAINT [FK_PHDoi_NPP]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_phNHAP_NCC] FOREIGN KEY([MA_NCC])
REFERENCES [dbo].[NHACUNGCAP] ([MA_NCC])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_phNHAP_NCC]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_phNHAP_NV] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_phNHAP_NV]
GO
ALTER TABLE [dbo].[PHIEUXUAT]  WITH CHECK ADD  CONSTRAINT [FK_phXUAT_NPP] FOREIGN KEY([MA_NPP])
REFERENCES [dbo].[NHAPHANPHOI] ([MA_NPP])
GO
ALTER TABLE [dbo].[PHIEUXUAT] CHECK CONSTRAINT [FK_phXUAT_NPP]
GO
ALTER TABLE [dbo].[PHIEUXUAT]  WITH CHECK ADD  CONSTRAINT [FK_phXUAT_NV] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[PHIEUXUAT] CHECK CONSTRAINT [FK_phXUAT_NV]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD CHECK  (([GIOITINH]=N'Nữ' OR [GIOITINH]=N'Nam'))
GO
USE [master]
GO
ALTER DATABASE [QuanLy_KHO] SET  READ_WRITE 
GO
