USE [master]
GO

CREATE DATABASE [WebsiteBanThietBiAnNinh]
GO

ALTER DATABASE [WebsiteBanThietBiAnNinh] SET COMPATIBILITY_LEVEL = 140
GO

ALTER DATABASE [WebsiteBanThietBiAnNinh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET  MULTI_USER 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET QUERY_STORE = OFF
GO
USE [WebsiteBanThietBiAnNinh]
GO

CREATE USER [demo] FOR LOGIN [demo] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [demo]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [nchar](10) NULL,
	[pass] [nchar](10) NULL,
	[isSell] [bit] NULL,
	[isAdmin] [bit] NULL,
	[email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[accountID] [int] NOT NULL,
	[productID] [int] NOT NULL,
	[amount] [int] NULL,
	[maCart] [int] IDENTITY(1,1) NOT NULL,
	[size] [nvarchar](50) NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[maCart] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[maHD] [int] IDENTITY(1,1) NOT NULL,
	[accountID] [int] NULL,
	[tongGia] [float] NULL,
	[ngayXuat] [datetime] NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NULL,
	[image] [nvarchar](500) NULL,
	[price] [float] NULL,
	[title] [nvarchar](500) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NOT NULL,
	[sell_ID] [int] NOT NULL,
	[model] [nvarchar](50) NULL,
	[delivery] [nvarchar](50) NULL,
	[image2] [nvarchar](500) NULL,
	[image3] [nvarchar](500) NULL,
	[image4] [nvarchar](500) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[accountID] [int] NULL,
	[productID] [int] NULL,
	[contentReview] [nvarchar](500) NULL,
	[dateReview] [date] NULL,
	[maReview] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Review] PRIMARY KEY CLUSTERED 
(
	[maReview] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoLuongDaBan](
	[productID] [int] NULL,
	[soLuongDaBan] [int] NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[idSupplier] [int] IDENTITY(1,1) NOT NULL,
	[nameSupplier] [nvarchar](100) NULL,
	[phoneSupplier] [nvarchar](50) NULL,
	[emailSupplier] [nvarchar](200) NULL,
	[addressSupplier] [nvarchar](200) NULL,
	[cateID] [int] NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[idSupplier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TongChiTieuBanHang](
	[userID] [int] NULL,
	[TongChiTieu] [float] NULL,
	[TongBanHang] [float] NULL
) ON [PRIMARY]
GO
-- Bật IDENTITY_INSERT cho bảng Account
SET IDENTITY_INSERT [dbo].[Account] ON;
GO

-- Chèn các bản ghi vào bảng Account
INSERT INTO [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [email]) VALUES (1, N'admin', N'admin', 1, 1, N'nguyendo76ngant@gmail.com');

GO

-- Tắt IDENTITY_INSERT cho bảng Account
SET IDENTITY_INSERT [dbo].[Account] OFF;
GO

INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'Hikvision')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'EZVIZ')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'HiLook')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'Xiaomi')
GO


SET IDENTITY_INSERT [dbo].[Invoice] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    01, 
    N'Camera Hikvison ', 
    N'https://nhaantoan.com/wp-content/uploads/2024/06/DS-2CD63C5G1-IVS-450x450.jpg', 
    1500, 
    N'DS-2CD63C5G1-IVS', 
    N'Camera giám sát', 
    1, 
    1, 
    N'Mã: DS-2CD63C5G1-IVS',  
    N'TP.HCM', 
    N'', 
  N'', 
   N''
)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    02, 
    N'Đầu ghi hình camera', 
    N'https://nhaantoan.com/wp-content/uploads/2024/05/DS-7732NI-I4.jpg', 
    1000, 
    N'IP 32 kênh H.265 HIKVISION DS-7732NI-I4(B)', 
    N'Danh mục: Camera, Camera Hikvision, Camera IP', 
    1, 
    1, 
    N' Mã: DS-7732NI-I4(B)',  
    N'TP.HCM', 
    N'',
    N'', 
    N''
)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    03, 
    N'Camera IP', 
    N'https://nhaantoan.com/wp-content/uploads/2024/01/DS-2CD2143G2-IU.jpg', 
    500,
    N'bán cầu hồng ngoại 4MP HIKVISION SH-2TH143G2IU', 
    N'Danh mục: Camera, Camera Hikvision, Camera IP', 
    1, 
    1, 
    N'Mã: SH-2TH143G2IU',  
    N'TP.HCM', 
    N'', 
    N'', 
    N''
)

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    04, 
    N'RG-ES206GS-P,', 
    N'https://nhaantoan.com/wp-content/uploads/2023/11/RG-ES206GS-P-450x450.png', 
    1500, 
    N'Thiết bị Chuyển mạch Thông minh PoE 6 Cổng Gigabit Quản lý qua Cloud', 
    N'MÀU SẮC: XÁM', 
    1, 
    1, 
    N' Mã: RG-ES206GS-P',  
    N'TP.HCM', 
     N'', 
    N'', 
    N''
)


INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    05, 
    N'Camera TP-Link', 
    N'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https:/cellphones.com.vn/media/catalog/product/c/a/camera-ip-wifi-tp-link-tapo-c200-360-1080p-2mp_1_.png', 
    100, 
    N'TP Link', 
    N'MÀU SẮC: XANH', 
    1, 
    1, 
    N'Tapo',  
    N'TP.HCM', 
    N'', 
    N'', 
    N''
)



INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    06, 
    N'Chuông báo chống trộm', 
    N'https://homematic.vn/wp-content/uploads/2023/08/homematic.vn-chuong-bao-khach-bao-trom-khong-day-khoang-cach-xa-homematic-t505-11-760x760.jpg', 
    200, 
    N' HOMEMACTIC', 
    N'MÀU SẮC: ĐEN', 
    1, 
    1, 
    N'T505',  
    N'TP.HCM', 
    N'', 
    N'', 
    N''
)




INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    08, 
    N'Chuông cửa thông minh', 
    N'https://cdn.tgdd.vn/Files/2019/11/29/1223234/xiaomi-vua-ra-mat-chuong-cua-thong-minh-dingling-s.jpg', 
    350, 
    N'Hàng mới nhập', 
    N'MÀU SẮC: TRẮNG', 
    1, 
    1, 
    N'No Mode',  
    N'TP.HCM', 
    N'', 
    N'', 
    N''
)




INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    09, 
    N'Camera Hikvision', 
    N'https://nhaantoan.com/wp-content/uploads/2024/03/DS-2SH3D511-TG-450x450.jpg', 
    300, 
    N'Colorvu DS-2SH3D511-TG', 
    N'MÀU SẮC: ĐEN', 
    1, 
    1, 
    N'Mã: DS-2SH3D511-TG',  
    N'TP.HCM', 
    N'', 
    N'',
    N''
)

INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    10, 
    N'Camera IP PT hồng ngoại', 
    N'https://nhaantoan.com/wp-content/uploads/2024/02/DS-2SH3V511-TG.jpg', 
    250, 
    N'4.0 MP HIKVISION DS-2SH3V511-TG', 
    N'MÀU SẮC: TRẮNG', 
    1, 
    1, 
    N' Mã: DS-2SH3V511-TG',  
    N'TP.HCM', 
 N'', 
    N'',
    N''
)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    11, 
    N'Cảm biến kính vỡ', 
    N'https://cogito.vn/wp-content/uploads/2022/05/cam-bien-kinh-vo-chong-trom-130db.jpg', 
    100, 
    N'NEW', 
    N'103DB', 
    1, 
    1, 
    N'ĐANG CẬP NHẬT',  
    N'TP.HCM', 
    N'', 
    N'',
    N''
)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    12, 
    N'CẢM BIẾN KHÓI', 
    N'https://thietbipanasonic.vn/wp-content/uploads/2023/06/SH28455911.jpg', 
    150, 
    N'PANASONIC', 
    N'NEW', 
    1, 
    1, 
    N'SH28453911',  
    N'TP.HCM', 
    N'', 
    N'',
    N''
)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    13, 
    N'Màn Hình An Ninh', 
    N'https://img001.video2b.com/1104/file_01654311480615.jpg?x-oss-process=image/resize,m_lfit,w_768/format,webp/quality,90', 
    250, 
    N'NO MODE', 
    N'NEW', 
    1, 
    1, 
    N'ĐANG CẬP NHẬT',  
    N'TP.HCM', 
    N'https://lh3.googleusercontent.com/X1-AZycjH78h2NcKkl6PEiWFs5UJhM8-THMgUMbcKDibPsOGJ0mV3ctQl-YRLbOULR-SK6atuMNdL0hGdCGqe1cdqL1fZu6l=w500-rw', 
    N'https://lh3.googleusercontent.com/Nu-kqZiYqWzig71rN3plORrZqAdgD5-LxlhiurIp-HZuoJPn-IldQb2Wlg72hnlGThCcwHJ2gYJTUQz8sLzSZvbBOh2wsJwCGg=w1000-rw', 
    N'https://lh3.googleusercontent.com/kFbZ3qa0rDVRGHOuM9_2Nt1-qcyj_CQy0cWo4Nlhy0faVTq6kBVs80YwZADHCwqf_l2iv2X_fe78I7hjmix1dT76Epxq1Oc=w1000-rw'
)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    14, 
    N'Cảm biến chuyển động', 
 N'https://hi-static.fpt.vn/sys/hifpt/fsh/smarthome/img/product_variants/2024/05/13/1715583230-cam-bien-chuyen-dong.jpg', 
    200, 
    N'FPT', 
    N'MÀU SẮC : TRẮNG', 
    2, 
    1, 
    N'ĐANG CẬP NHẬT',  
    N'TP.HCM', 
    N'', 
    N'', 
    N''
)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID], [model],  [delivery], [image2], [image3], [image4])
VALUES (
    15, 
    N'Chuông báo động', 
    N'https://bizweb.dktcdn.net/thumb/1024x1024/100/449/039/products/h5a551b9d6dff4fe9bf4a525365ab0c2fx.jpg?v=1647798330193', 
    100, 
    N'SMART HOME DEVICE', 
    N'NEW', 
    1, 
    1, 
    N'ĐANG CẬP NHẬT',  
    N'TP.HCM', 
    N'', 
    N'', 
    N''
)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO

SET IDENTITY_INSERT [dbo].[Review] ON 

INSERT [dbo].[Review] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 15, N'xin chao san pham nay rat tot', CAST(N'2021-11-19' AS Date), 2)
INSERT [dbo].[Review] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 11, N'xin chào', CAST(N'2021-11-24' AS Date), 14)
INSERT [dbo].[Review] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 11, N'sản phẩm này rất tốt', CAST(N'2021-11-25' AS Date), 15)
INSERT [dbo].[Review] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 11, N'xin chao 2', CAST(N'2021-11-26' AS Date), 16)
INSERT [dbo].[Review] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 11, N'fsdf', CAST(N'2021-12-01' AS Date), 17)
INSERT [dbo].[Review] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 11, N'xin chao 3', CAST(N'2021-12-02' AS Date), 18)
INSERT [dbo].[Review] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 11, N'xin chao 4', CAST(N'2021-12-03' AS Date), 19)
INSERT [dbo].[Review] ([accountID], [productID], [contentReview], [dateReview], [maReview]) VALUES (1, 11, N'bao cao', CAST(N'2021-12-14' AS Date), 20)
SET IDENTITY_INSERT [dbo].[Review] OFF
GO
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (11, 23)
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (15, 13)
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (19, 21)
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (20, 9)
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (21, 7)
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (24, 10)
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (46, 2)
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (45, 4)
INSERT [dbo].[SoLuongDaBan] ([productID], [soLuongDaBan]) VALUES (41, 2)
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([idSupplier], [nameSupplier], [phoneSupplier], [emailSupplier], [addressSupplier], [cateID]) VALUES (1, N'Cty TNHH D.HIKVISION', N'0946280159', N'cty@gmail.com', N'so 1 Nguyen Van Bao', 1)
INSERT [dbo].[Supplier] ([idSupplier], [nameSupplier], [phoneSupplier], [emailSupplier], [addressSupplier], [cateID]) VALUES (2, N'Cty TNHH D.EZVIZ', N'0946280159', N'cty@gmail.com', N'so 2 Nguyen Van Bao', 2)
INSERT [dbo].[Supplier] ([idSupplier], [nameSupplier], [phoneSupplier], [emailSupplier], [addressSupplier], [cateID]) VALUES (3, N'Cty TNHH D.HILOOK', N'0946280159', N'cty@gmail.com', N'so 3 Nguyen Van Bao', 3)
INSERT [dbo].[Supplier] ([idSupplier], [nameSupplier], [phoneSupplier], [emailSupplier], [addressSupplier], [cateID]) VALUES (4, N'Cty TNHH D.TPLINK', N'0946280159', N'cty@gmail.com', N'so 4 Nguyen Van Bao', 4)
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
INSERT [dbo].[TongChiTieuBanHang] ([userID], [TongChiTieu], [TongBanHang]) VALUES (1, 10340.200000000003, 14082)
INSERT [dbo].[TongChiTieuBanHang] ([userID], [TongChiTieu], [TongBanHang]) VALUES (1014, 600, 4000)
INSERT [dbo].[TongChiTieuBanHang] ([userID], [TongChiTieu], [TongBanHang]) VALUES (1015, 450, 3500)
INSERT [dbo].[TongChiTieuBanHang] ([userID], [TongChiTieu], [TongBanHang]) VALUES (1017, 900, 3000)
INSERT [dbo].[TongChiTieuBanHang] ([userID], [TongChiTieu], [TongBanHang]) VALUES (1018, 800, 2500)
INSERT [dbo].[TongChiTieuBanHang] ([userID], [TongChiTieu], [TongBanHang]) VALUES (1019, 660, 2700)
INSERT [dbo].[TongChiTieuBanHang] ([userID], [TongChiTieu], [TongBanHang]) VALUES (2, 100, 150)
GO
*/

ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Account]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Account] FOREIGN KEY([sell_ID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Account]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cid])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_Account]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [FK_Review_Product] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [FK_Review_Product]
GO
ALTER TABLE [dbo].[SoLuongDaBan]  WITH CHECK ADD  CONSTRAINT [FK_SoLuongDaBan_Product] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[SoLuongDaBan] CHECK CONSTRAINT [FK_SoLuongDaBan_Product]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Category] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cid])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_Category]
GO
ALTER TABLE [dbo].[TongChiTieuBanHang]  WITH CHECK ADD  CONSTRAINT [FK_TongChiTieuBanHang_Account] FOREIGN KEY([userID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[TongChiTieuBanHang] CHECK CONSTRAINT [FK_TongChiTieuBanHang_Account]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_CapNhatSoLuongDaBan] @productID int, @soLuongBanThem int
as
begin
	update SoLuongDaBan set [soLuongDaBan]=[soLuongDaBan] + @soLuongBanThem where productID=@productID
end
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_CapNhatTongBanHang] @sell_ID int, @banHangThem float
as
begin
	update TongChiTieuBanHang set TongBanHang= TongBanHang + @banHangThem where [userID]=@sell_ID
end
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc_CapNhatTongChiTieu] @userID int, @chiTieuThem float
as
begin
	update TongChiTieuBanHang set TongChiTieu= TongChiTieu + @chiTieuThem where [userID]=@userID
end
GO
USE [master]
GO
ALTER DATABASE [WebsiteBanThietBiAnNinh] SET  READ_WRITE 
GO

