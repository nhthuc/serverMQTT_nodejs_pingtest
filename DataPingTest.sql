﻿
USE [PINGTEST]
GO
/****** Object:  Table [dbo].[DULIEU]    Script Date: 18/7/2019 10:23:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DULIEU](
	[ID_DULIEU] [int] IDENTITY(1,1) NOT NULL,
	[ID_NHANVIEN] [int] NOT NULL,
	[ID_THIETBI] [varchar](20) NOT NULL,
	[IP_SERVER] [varchar](20) NULL,
	[CHUKY_PING] [int] NULL,
	[SOGOITINGUI] [int] NULL,
	[THOIGIAN_BATDAU] [datetime] NULL,
	[IP_THIETBI] [varchar](20) NULL,
	[HOTEN_KH] [varchar](50) NULL,
	[DIACHI_KH] [varchar](50) NULL,
	[SODT_KH] [varchar](20) NULL,
	[TRANGTHAI_TB] [int] NULL,
	[TRANGTHAI] [int] NULL,
 CONSTRAINT [PK__DULIEU__EFB3D96D5F0561CC] PRIMARY KEY CLUSTERED 
(
	[ID_DULIEU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GOITIN]    Script Date: 18/7/2019 10:23:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GOITIN](
	[ID_GOITIN] [int] IDENTITY(1,1) NOT NULL,
	[ID_DULIEU] [int] NOT NULL,
	[PING_TIME] [int] NULL,
	[PING_TTL] [int] NULL,
	[TRANGTHAI_GOITIN] [int] NULL,
	[KICHTHUOC_GOITIN] [int] NULL,
	[NGAY_HT] [datetime] NULL,
 CONSTRAINT [PK__GOITIN__2548FEEE66E4DFE4] PRIMARY KEY CLUSTERED 
(
	[ID_GOITIN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MENU]    Script Date: 18/7/2019 10:23:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MENU](
	[ID_MENU] [int] IDENTITY(1,1) NOT NULL,
	[MA_MENU] [nvarchar](50) NULL,
	[TEN_MENU] [nvarchar](50) NULL,
 CONSTRAINT [PK_MENU] PRIMARY KEY CLUSTERED 
(
	[ID_MENU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 18/7/2019 10:23:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[ID_NHANVIEN] [int] NOT NULL,
	[ID_USER_] [int] NULL,
	[HOTEN_NV] [nvarchar](100) NULL,
	[SODT_NV] [nvarchar](50) NULL,
	[GHICHU] [nvarchar](max) NULL,
	[CHUCVU] [nvarchar](50) NULL,
	[PHONGBAN] [nvarchar](50) NULL,
	[DIACHI] [nvarchar](max) NULL,
	[EMAIL] [nvarchar](50) NULL,
 CONSTRAINT [PK__NHANVIEN__DE90FCA3A85CB1F3] PRIMARY KEY CLUSTERED 
(
	[ID_NHANVIEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ROLE]    Script Date: 18/7/2019 10:23:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROLE](
	[ID_ROLE] [int] IDENTITY(1,1) NOT NULL,
	[TEN_ROLE] [nvarchar](50) NULL,
 CONSTRAINT [PK_ROLE] PRIMARY KEY CLUSTERED 
(
	[ID_ROLE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ROLE_MENU]    Script Date: 18/7/2019 10:23:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROLE_MENU](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ROLE] [int] NULL,
	[ID_MENU] [int] NULL,
 CONSTRAINT [PK_ROLE_MENU] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THIETBI]    Script Date: 18/7/2019 10:23:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THIETBI](
	[ID_THIETBI] [varchar](20) NOT NULL,
	[TEN_THIETBI] [varchar](20) NULL,
	[TRANGTHAI] [int] NULL,
	[TRANGTHAI_HD] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_THIETBI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THONGKE]    Script Date: 18/7/2019 10:23:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THONGKE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_DULIEU] [int] NOT NULL,
	[TRUNGBINH] [int] NULL,
	[TIME] [datetime] NULL,
 CONSTRAINT [PK_THONGKE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TK_USER]    Script Date: 18/7/2019 10:23:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TK_USER](
	[ID_USER] [int] NOT NULL,
	[TK_USERNAME] [varchar](20) NULL,
	[PASSWORD] [varchar](20) NULL,
	[ID_ROLE] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_USER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GOITIN] ADD  CONSTRAINT [DF_GOITIN_SOGOITINTHANHCONG]  DEFAULT (getdate()) FOR [NGAY_HT]
GO
ALTER TABLE [dbo].[DULIEU]  WITH CHECK ADD  CONSTRAINT [FK_DULIEU_DULIEU_KH_NHANVIEN] FOREIGN KEY([ID_NHANVIEN])
REFERENCES [dbo].[NHANVIEN] ([ID_NHANVIEN])
GO
ALTER TABLE [dbo].[DULIEU] CHECK CONSTRAINT [FK_DULIEU_DULIEU_KH_NHANVIEN]
GO
ALTER TABLE [dbo].[DULIEU]  WITH CHECK ADD  CONSTRAINT [FK_DULIEU_DULIEU_TH_THIETBI] FOREIGN KEY([ID_THIETBI])
REFERENCES [dbo].[THIETBI] ([ID_THIETBI])
GO
ALTER TABLE [dbo].[DULIEU] CHECK CONSTRAINT [FK_DULIEU_DULIEU_TH_THIETBI]
GO
ALTER TABLE [dbo].[GOITIN]  WITH CHECK ADD  CONSTRAINT [FK_GOITIN_DULIEU_GO_DULIEU] FOREIGN KEY([ID_DULIEU])
REFERENCES [dbo].[DULIEU] ([ID_DULIEU])
GO
ALTER TABLE [dbo].[GOITIN] CHECK CONSTRAINT [FK_GOITIN_DULIEU_GO_DULIEU]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_USER_KHAC_TK_USER] FOREIGN KEY([ID_USER_])
REFERENCES [dbo].[TK_USER] ([ID_USER])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_USER_KHAC_TK_USER]
GO
ALTER TABLE [dbo].[ROLE_MENU]  WITH CHECK ADD  CONSTRAINT [FK_ROLE_MENU_MENU] FOREIGN KEY([ID_MENU])
REFERENCES [dbo].[MENU] ([ID_MENU])
GO
ALTER TABLE [dbo].[ROLE_MENU] CHECK CONSTRAINT [FK_ROLE_MENU_MENU]
GO
ALTER TABLE [dbo].[ROLE_MENU]  WITH CHECK ADD  CONSTRAINT [FK_ROLE_MENU_ROLE] FOREIGN KEY([ID_ROLE])
REFERENCES [dbo].[ROLE] ([ID_ROLE])
GO
ALTER TABLE [dbo].[ROLE_MENU] CHECK CONSTRAINT [FK_ROLE_MENU_ROLE]
GO
ALTER TABLE [dbo].[THONGKE]  WITH CHECK ADD  CONSTRAINT [FK_THONGKE_DULIEU] FOREIGN KEY([ID_DULIEU])
REFERENCES [dbo].[DULIEU] ([ID_DULIEU])
GO
ALTER TABLE [dbo].[THONGKE] CHECK CONSTRAINT [FK_THONGKE_DULIEU]
GO
ALTER TABLE [dbo].[TK_USER]  WITH CHECK ADD  CONSTRAINT [FK_TK_USER_ROLE] FOREIGN KEY([ID_ROLE])
REFERENCES [dbo].[ROLE] ([ID_ROLE])
GO
ALTER TABLE [dbo].[TK_USER] CHECK CONSTRAINT [FK_TK_USER_ROLE]
GO
ALTER DATABASE [PINGTEST] SET  READ_WRITE 
GO

INSERT INTO dbo.ROLE ( TEN_ROLE )VALUES  ( N'Admin')
GO

INSERT INTO dbo.MENU ( MA_MENU, TEN_MENU ) VALUES  ( N'qlquyen',N'Quản lý Role')
GO
INSERT INTO dbo.MENU ( MA_MENU, TEN_MENU ) VALUES  ( N'qlnv',N'Quản lý Nhân viên')
GO
INSERT INTO dbo.MENU ( MA_MENU, TEN_MENU ) VALUES  ( N'qlkh',N'Quản lý Khách hàng')
GO
INSERT INTO dbo.MENU ( MA_MENU, TEN_MENU ) VALUES  ( N'qltb',N'Quản lý Thiết bị')
GO
INSERT INTO dbo.MENU ( MA_MENU, TEN_MENU ) VALUES  ( N'qlping',N'Quản lý Ping')
GO
INSERT INTO dbo.MENU ( MA_MENU, TEN_MENU ) VALUES  ( N'bc',N'Báo cáo')
GO

INSERT INTO dbo.TK_USER 
        ( ID_USER, TK_USERNAME, PASSWORD, ID_ROLE)
VALUES  ( 1,'admin','admin',1)
GO

INSERT INTO dbo.THIETBI ( ID_THIETBI ,TEN_THIETBI ,TRANGTHAI ,TRANGTHAI_HD)VALUES  ( '1' ,'VNPT-001' ,0 ,0)
GO
INSERT INTO dbo.THIETBI ( ID_THIETBI ,TEN_THIETBI ,TRANGTHAI ,TRANGTHAI_HD)VALUES ( '2' ,'VNPT-002' ,0 ,0)
GO

INSERT INTO dbo.ROLE_MENU ( ID_ROLE, ID_MENU ) VALUES  (1,1)
INSERT INTO dbo.ROLE_MENU ( ID_ROLE, ID_MENU ) VALUES  (1,2)
INSERT INTO dbo.ROLE_MENU ( ID_ROLE, ID_MENU ) VALUES  (1,3)
INSERT INTO dbo.ROLE_MENU ( ID_ROLE, ID_MENU ) VALUES  (1,4)
INSERT INTO dbo.ROLE_MENU ( ID_ROLE, ID_MENU ) VALUES  (1,5)
INSERT INTO dbo.ROLE_MENU ( ID_ROLE, ID_MENU ) VALUES  (1,6)
GO

