USE [master]
GO
/****** Object:  Database [Java6]    Script Date: 07/17/2020 11:18:11 ******/
CREATE DATABASE [Java6] ON  PRIMARY 
( NAME = N'Java6', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Java6.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Java6_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\Java6_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Java6] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Java6].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Java6] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Java6] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Java6] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Java6] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Java6] SET ARITHABORT OFF
GO
ALTER DATABASE [Java6] SET AUTO_CLOSE ON
GO
ALTER DATABASE [Java6] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Java6] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Java6] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Java6] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Java6] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Java6] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Java6] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Java6] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Java6] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Java6] SET  ENABLE_BROKER
GO
ALTER DATABASE [Java6] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Java6] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Java6] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Java6] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Java6] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Java6] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Java6] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Java6] SET  READ_WRITE
GO
ALTER DATABASE [Java6] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Java6] SET  MULTI_USER
GO
ALTER DATABASE [Java6] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Java6] SET DB_CHAINING OFF
GO
USE [Java6]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 07/17/2020 11:18:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mật khẩu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ và tên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Fullname'
GO
INSERT [dbo].[Users] ([Id], [Password], [Fullname]) VALUES (N'12', N'123', N'123')
INSERT [dbo].[Users] ([Id], [Password], [Fullname]) VALUES (N'15', N'1234567', N'khanht')
INSERT [dbo].[Users] ([Id], [Password], [Fullname]) VALUES (N'2', N'33333', N'3')
INSERT [dbo].[Users] ([Id], [Password], [Fullname]) VALUES (N'admin', N'1234567', N'Nguyễn quốc khánh')
INSERT [dbo].[Users] ([Id], [Password], [Fullname]) VALUES (N'khanhtuong', N'123', N'123')
/****** Object:  Table [dbo].[Majors]    Script Date: 07/17/2020 11:18:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Majors](
	[Id] [char](3) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Majors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chuyên ngành' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Majors', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên chuyên ngành' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Majors', @level2type=N'COLUMN',@level2name=N'Name'
GO
INSERT [dbo].[Majors] ([Id], [Name]) VALUES (N'APP', N'Ứng dụng phần mềm')
INSERT [dbo].[Majors] ([Id], [Name]) VALUES (N'BIZ', N'Quản trị doanh nghiệp')
INSERT [dbo].[Majors] ([Id], [Name]) VALUES (N'DOM', N'Digital & Online Marketing')
INSERT [dbo].[Majors] ([Id], [Name]) VALUES (N'MAR', N'Marketing và bán hàng')
INSERT [dbo].[Majors] ([Id], [Name]) VALUES (N'MOB', N'Lập trình trên điện thoại di động')
INSERT [dbo].[Majors] ([Id], [Name]) VALUES (N'MUL', N'Mỹ thuật đa phương tiện')
INSERT [dbo].[Majors] ([Id], [Name]) VALUES (N'PRE', N'PR và tổ chức sự kiện')
INSERT [dbo].[Majors] ([Id], [Name]) VALUES (N'WEB', N'Thiết kế trang web')
/****** Object:  Table [dbo].[Departs]    Script Date: 07/17/2020 11:18:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departs](
	[Id] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[note] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Departs] ([Id], [Name], [note]) VALUES (N'1', N'123', N'1234')
INSERT [dbo].[Departs] ([Id], [Name], [note]) VALUES (N'CHDN', N'CHDNN', NULL)
INSERT [dbo].[Departs] ([Id], [Name], [note]) VALUES (N'CNTT', N'CÔNG NGHỆ THÔNG TIN', N'2222')
INSERT [dbo].[Departs] ([Id], [Name], [note]) VALUES (N'fafaf', N'âfafa', NULL)
INSERT [dbo].[Departs] ([Id], [Name], [note]) VALUES (N'KD', N'KINH DOANH', NULL)
INSERT [dbo].[Departs] ([Id], [Name], [note]) VALUES (N'KH', N'KH', NULL)
INSERT [dbo].[Departs] ([Id], [Name], [note]) VALUES (N'KT', N'Ke toan hihi', NULL)
/****** Object:  Table [dbo].[Staffs]    Script Date: 07/17/2020 11:18:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staffs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[gender] [nvarchar](5) NOT NULL,
	[birthday] [date] NOT NULL,
	[photo] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](25) NOT NULL,
	[salary] [float] NOT NULL,
	[notes] [nvarchar](500) NULL,
	[departId] [nvarchar](50) NOT NULL,
	[capdo] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Staffs] ON
INSERT [dbo].[Staffs] ([id], [name], [gender], [birthday], [photo], [email], [phone], [salary], [notes], [departId], [capdo]) VALUES (2, N'phanvanphu', N'Nam', CAST(0x4D250B00 AS Date), N'khanh.jpg', N'nguyenkhanh15996@gmail.com', N'0911363626', 1000000, N'hihi', N'KD', N'trưởng phòng')
INSERT [dbo].[Staffs] ([id], [name], [gender], [birthday], [photo], [email], [phone], [salary], [notes], [departId], [capdo]) VALUES (3, N'khanh', N'Nam', CAST(0x541F0B00 AS Date), N'khanh.jpg', N'nguyenkhanh15996@gmail.com', N'0911353526', 1111111111, N'dddd', N'IT', N'Trưởng phòng')
INSERT [dbo].[Staffs] ([id], [name], [gender], [birthday], [photo], [email], [phone], [salary], [notes], [departId], [capdo]) VALUES (4, N'phạm hoài sơn', N'Nữ', CAST(0x541F0B00 AS Date), N'son.jpg', N'sonnguhetphanthienha@gmail.com', N'0911353526', 0, N'bê đê', N'KT', N'Thư ký')
INSERT [dbo].[Staffs] ([id], [name], [gender], [birthday], [photo], [email], [phone], [salary], [notes], [departId], [capdo]) VALUES (5, N'khanh', N'Nam', CAST(0x541F0B00 AS Date), N'khanh.jpg', N'phuphan0796@gmail.com', N'0911353526', 1212312312, N'bê đê', N'CNTT', N'Thư ký')
SET IDENTITY_INSERT [dbo].[Staffs] OFF
/****** Object:  Table [dbo].[Records]    Script Date: 07/17/2020 11:18:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Records](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[type] [int] NOT NULL,
	[reason] [nvarchar](200) NOT NULL,
	[date] [date] NOT NULL,
	[staffId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Records] ON
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (2, 1, N'hoàn thành', CAST(0xAB410B00 AS Date), 2)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (4, 1, N'chưa hoàn thành', CAST(0xAB410B00 AS Date), 3)
INSERT [dbo].[Records] ([id], [type], [reason], [date], [staffId]) VALUES (6, 2, N'chưa hoàn thành', CAST(0xCE400B00 AS Date), 4)
SET IDENTITY_INSERT [dbo].[Records] OFF
/****** Object:  View [dbo].[tongsopb]    Script Date: 07/17/2020 11:18:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[tongsopb] as Select count(id) as tongsopb from Departs
GO
/****** Object:  View [dbo].[tongnhanvien]    Script Date: 07/17/2020 11:18:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[tongnhanvien] as Select count(id) as tongso from Staffs
GO
/****** Object:  Table [dbo].[Students]    Script Date: 07/17/2020 11:18:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Mark] [float] NOT NULL,
	[Gender] [bit] NOT NULL,
	[Birthday] [date] NOT NULL,
	[MajorId] [char](3) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã sinh viên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Students', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ và tên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Students', @level2type=N'COLUMN',@level2name=N'Fullname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Điểm trung bình' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Students', @level2type=N'COLUMN',@level2name=N'Mark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Giới tính' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Students', @level2type=N'COLUMN',@level2name=N'Gender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày sinh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Students', @level2type=N'COLUMN',@level2name=N'Birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chuyên ngành' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Students', @level2type=N'COLUMN',@level2name=N'MajorId'
GO
SET IDENTITY_INSERT [dbo].[Students] ON
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (1, N'HUỲNH MINH TUẤN', 7.74, 1, CAST(0xDA0F0B00 AS Date), N'MAR')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (2, N'ĐẬU HOÀNG LÂM', 0, 1, CAST(0xA5160B00 AS Date), N'APP')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (3, N'NGUYỄN LƯƠNG THÀNH ĐẠT', 7.22, 1, CAST(0xF5080B00 AS Date), N'APP')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (4, N'NGUYỄN ĐỨC CHIẾN', 0, 1, CAST(0x47020B00 AS Date), N'MUL')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (5, N'TÔ CHÍ HẢI', 4.56, 1, CAST(0x95FE0A00 AS Date), N'PRE')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (6, N'VŨ QUỐC AN', 1.71, 1, CAST(0x38010B00 AS Date), N'DOM')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (7, N'LÊ TIẾN ĐẠT', 0.48, 1, CAST(0x411B0B00 AS Date), N'PRE')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (8, N'PHẠM ĐỨC TUẤN', 8.02, 1, CAST(0x3A070B00 AS Date), N'MUL')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (9, N'HUỲNH THANH HUY', 1.21, 1, CAST(0x7E070B00 AS Date), N'MAR')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (10, N'ĐINH QUANG VŨ', 1.47, 1, CAST(0xB4120B00 AS Date), N'BIZ')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (11, N'PHẠM HỮU THỊNH', 7.08, 1, CAST(0xC9170B00 AS Date), N'BIZ')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (12, N'TRẦN THẾ PHƯỚC', 7.65, 1, CAST(0xAE060B00 AS Date), N'MAR')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (13, N'HUỲNH HỮU HUY', 8.04, 1, CAST(0xB81A0B00 AS Date), N'APP')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (14, N'LÊ MINH TÚ', 6.61, 1, CAST(0x38070B00 AS Date), N'MUL')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (15, N'NGUYỄN HOÀNG NHÂN', 9.17, 1, CAST(0x2D0A0B00 AS Date), N'WEB')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (16, N'ĐINH TÚ THUẬN', 7.1, 1, CAST(0x75010B00 AS Date), N'BIZ')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (17, N'LÊ NGUYỄN TRỌNG HỮU', 7.29, 1, CAST(0xD5070B00 AS Date), N'MAR')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (18, N'NGÔ ANH TÚ', 2.04, 1, CAST(0xD5050B00 AS Date), N'MOB')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (19, N'NGUYỄN VĂN QUANG', 0, 1, CAST(0x68FC0A00 AS Date), N'MAR')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (20, N'NGUYỄN VĂN LINH', 8.92, 1, CAST(0x83100B00 AS Date), N'PRE')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (21, N'HỒ TRỌNG TÂM', 8.91, 1, CAST(0x40100B00 AS Date), N'MUL')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (22, N'NGUYỄN TRẦN MINH MẪN', 0, 1, CAST(0x3D1B0B00 AS Date), N'MOB')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (23, N'HOÀNG CÔNG DY', 8.48, 1, CAST(0xBC080B00 AS Date), N'MUL')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (24, N'NGUYỄN HUY PHÚ', 0, 1, CAST(0x8C170B00 AS Date), N'BIZ')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (25, N'PHẠM ĐÌNH QUỐC AN', 1.89, 1, CAST(0x9A0C0B00 AS Date), N'MUL')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (26, N'PHẠM HOÀI THƯƠNG', 9.09, 1, CAST(0x19070B00 AS Date), N'DOM')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (27, N'NGUYỄN MINH DUYÊN', 9.34, 1, CAST(0xD6010B00 AS Date), N'MUL')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (28, N'NGUYỄN PHƯỚC LỘC', 6.16, 1, CAST(0x6E140B00 AS Date), N'DOM')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (29, N'TRƯƠNG MINH TRÍ', 8.14, 1, CAST(0xE3FB0A00 AS Date), N'MUL')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (30, N'VÒNG TUẤN XƯƠNG', 7.26, 1, CAST(0x5D1B0B00 AS Date), N'MAR')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (31, N'VU VẠN QUANG', 8.47, 1, CAST(0x0A190B00 AS Date), N'APP')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (32, N'HỒ XUÂN HUY', 6.1, 1, CAST(0x85110B00 AS Date), N'MOB')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (33, N'LÊ SỸ THÀNH', 6.34, 1, CAST(0xBE170B00 AS Date), N'WEB')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (34, N'TRẦN TƯỜNG DUY', 8.09, 1, CAST(0xC3170B00 AS Date), N'MOB')
INSERT [dbo].[Students] ([Id], [Fullname], [Mark], [Gender], [Birthday], [MajorId]) VALUES (35, N'NGUYỄN TRẦN PHÚ', 6.3, 1, CAST(0x5C0B0B00 AS Date), N'DOM')
SET IDENTITY_INSERT [dbo].[Students] OFF
/****** Object:  View [dbo].[ThanhTichCaNhan]    Script Date: 07/17/2020 11:18:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ThanhTichCaNhan] AS
SELECT Records.staffId, name,departId, count(case when type = '1' then '1' else null end) AS TongThanhTich, count(case when type = '0' then '1' else null end) AS TongKyLuat, (SUM(case when type=1 then 1 else 0 end)-SUM(case when type=0 then 1 else 0 end)) AS diemtongket FROM Staffs,Records  where Records.staffId = Staffs.id GROUP BY Records.staffId,name,departId
GO
/****** Object:  View [dbo].[Thanhtich]    Script Date: 07/17/2020 11:18:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view [dbo].[Thanhtich] as SELECT staffId AS maso, SUM(case when type=1 then 1 else 0 end) AS thanhtich, SUM(case when type=0 then 1 else 0 end) AS kyluat, (SUM(case when type=1 then 1 else 0 end)-SUM(case when type=0 then 1 else 0 end)) AS diemtongket FROM Records GROUP BY staffId
GO
/****** Object:  View [dbo].[tongkhenthuong]    Script Date: 07/17/2020 11:18:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[tongkhenthuong] as Select count(maso) as tongkhenthuong from Thanhtich
GO
/****** Object:  ForeignKey [FK__Records__staffId__25869641]    Script Date: 07/17/2020 11:18:12 ******/
ALTER TABLE [dbo].[Records]  WITH CHECK ADD FOREIGN KEY([staffId])
REFERENCES [dbo].[Staffs] ([id])
ON UPDATE CASCADE
GO
/****** Object:  ForeignKey [FK_Students_Majors]    Script Date: 07/17/2020 11:18:12 ******/
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Majors] FOREIGN KEY([MajorId])
REFERENCES [dbo].[Majors] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Majors]
GO
