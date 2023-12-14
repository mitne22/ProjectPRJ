USE [master]
GO
/****** Object:  Database [Project_PRJ]    Script Date: 14/12/2023 12:55:07 ******/
CREATE DATABASE [Project_PRJ]
GO
USE [Project_PRJ]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 14/12/2023 12:55:08 ******/

CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[uName] [nvarchar](50) NULL,
	[pass] [nvarchar](50) NULL,
	[isAdmin] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 14/12/2023 12:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cID] [int] IDENTITY(1,1) NOT NULL,
	[cName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 14/12/2023 12:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[customerID] [int] IDENTITY(1,1) NOT NULL,
	[fullName] [nvarchar](50) NULL,
	[email] [varchar](100) NULL,
	[phoneNumber] [varchar](15) NULL,
	[address] [nvarchar](255) NULL,
 CONSTRAINT [PK__Customer__DD771E3CE838ACE3] PRIMARY KEY CLUSTERED 
(
	[customerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 14/12/2023 12:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[orderID] [int] NOT NULL,
	[pID] [int] NOT NULL,
	[quantityOrder] [int] NULL,
	[price] [decimal](10, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 14/12/2023 12:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[orderDate] [date] NULL,
	[totalPrices] [decimal](10, 2) NULL,
	[customerID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 14/12/2023 12:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[pID] [int] IDENTITY(1,1) NOT NULL,
	[pName] [nvarchar](50) NULL,
	[price] [decimal](18, 0) NULL,
	[image] [nvarchar](max) NULL,
	[title] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NULL,
	[cID] [int] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[pID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (1, N'mit', N'1234', 1)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (2, N'quan', N'130851', 0)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (3, N'dat', N'1410', 0)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (4, N'nam', N'haha12', 0)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (5, N'kien', N'ha297', 0)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (6, N'mitxinh', N'2207', 1)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (7, N'thu', N'8894rd', 0)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (8, N'huong', N'fffeee', 0)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (9, N'yenne', N'hihiha', 0)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (10, N'chinh', N'2311', 0)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (11, N'minh', N'uuukkkkk', 0)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (12, N'abcDE', N'ABGHJD', 0)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (13, N'mai', N'874567', 0)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (14, N'fuhola', N'fptte', 0)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (15, N'phong', N'ruby', 0)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (16, N'trang', N'8977', 0)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (17, N'viet', N'ninh123', 0)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (18, N'ninh', N'vitutut', 0)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (19, N'truong', N'2341', 0)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (20, N'tung', N'abcxyz', 0)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (21, N'hihi', N'1234567', 0)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (22, N'khuong', N'54678', 0)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (23, N'thuy', N'12345', 0)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (24, N'quang', N'minhne', 0)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (25, N'dattt', N'080808', 0)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (26, N'hoa', N'101010', 0)
INSERT [dbo].[Account] ([uID], [uName], [pass], [isAdmin]) VALUES (27, N'quynh', N'4567', 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([cID], [cName]) VALUES (1, N'Dây chuyền vàng')
INSERT [dbo].[Category] ([cID], [cName]) VALUES (2, N'Dây chuyền bạc')
INSERT [dbo].[Category] ([cID], [cName]) VALUES (3, N'Vòng tay')
INSERT [dbo].[Category] ([cID], [cName]) VALUES (4, N'Lắc chân')
INSERT [dbo].[Category] ([cID], [cName]) VALUES (5, N'Nhẫn vàng')
INSERT [dbo].[Category] ([cID], [cName]) VALUES (6, N'Nhẫn bạc')
INSERT [dbo].[Category] ([cID], [cName]) VALUES (7, N'Bông tai')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([customerID], [fullName], [email], [phoneNumber], [address]) VALUES (1, N'Minh Nguyet Ne', N'leminhnguyet22072003@gmail.com', N'0328359185', N'Đại học FPT - khu CNC Hoà Lạc Hà Nội')
INSERT [dbo].[Customer] ([customerID], [fullName], [email], [phoneNumber], [address]) VALUES (2, N'Do Minh Quan', N'quanminhdo2010@gmail.com', N'0986456824', N'Đại học FPT - khu CNC Hoà Lạc')
INSERT [dbo].[Customer] ([customerID], [fullName], [email], [phoneNumber], [address]) VALUES (3, N'Phung Dat', N'phungdat2345@gmail.com', N'0243566876', N'Thôn 3 - Thạch Hoà - Thạch Thất- HN')
INSERT [dbo].[Customer] ([customerID], [fullName], [email], [phoneNumber], [address]) VALUES (4, N'Nam Pham', N'namnehihi@gmail.com', N'0964872546', N'Thôn 4 - Thạch Hoà - Thạch Thất- HN')
INSERT [dbo].[Customer] ([customerID], [fullName], [email], [phoneNumber], [address]) VALUES (5, N'Kien Ha', N'kienha45@gmail.com', N'0956753723', N'Sóc Sơn - Hà Nội')
INSERT [dbo].[Customer] ([customerID], [fullName], [email], [phoneNumber], [address]) VALUES (6, N'Mit Xinh', N'mitxinh22@gmail.com', N'0956386376', N'Văn Khê - Mê Linh - Hà Nội')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([orderID], [orderDate], [totalPrices], [customerID]) VALUES (6, NULL, NULL, 2)
INSERT [dbo].[Orders] ([orderID], [orderDate], [totalPrices], [customerID]) VALUES (7, NULL, NULL, 6)
INSERT [dbo].[Orders] ([orderID], [orderDate], [totalPrices], [customerID]) VALUES (8, NULL, NULL, 2)
INSERT [dbo].[Orders] ([orderID], [orderDate], [totalPrices], [customerID]) VALUES (9, NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (4, N'The Right Me', CAST(600 AS Decimal(18, 0)), N'https://cf.shopee.vn/file/646cfdc3329cc34f9987b373014520da', N'The Right Me', N'Mặt dây chuyền hình chiếc lá, phong cách Hàn Quốc sang trọng.', 2, 25)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (5, N'Yellow Butterfly', CAST(1000 AS Decimal(18, 0)), N'https://e7.pngegg.com/pngimages/847/555/png-clipart-earring-necklace-charms-pendants-jewellery-charm-bracelet-gold-chain-pendant-bracelet.png', N'Yellow Butterfly', N'Thiết kế tinh xảo, vàng 24K đính đá lấp lánh.', 1, 78)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (6, N'Noemi', CAST(450 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/products/Phu-Kien-Nu-Junie-Bong-Tai-Dinh-Da-CZ-Hinh-No-Bac-925-Ma-Vang-14K-Bong-Tai-Noemi-4.jpg?v=1670723638&width=2000', N'Noemi', N'Bông tai hình nơ dễ thương với thiết kế tinh xảo.', 7, 54)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (7, N'Larme Accessories', CAST(700 AS Decimal(18, 0)), N'https://down-vn.img.susercontent.com/file/0a6f686b10469f2fb3b9844fa86d3ff8', N'Larme Accessories', N'Chiếc lắc tay xinh xắn cực kì trendy.', 3, 24)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (8, N'Luccy Gix', CAST(1100 AS Decimal(18, 0)), N'https://mdjluxury.vn/wp-content/uploads/2019/08/nnu16-8.jpg', N'Luccy Gix', N'Nhẫn vàng 10K lấp lánh, sang trọng.', 5, 76)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (10, N'Silver Mew', CAST(890 AS Decimal(18, 0)), N'https://bizweb.dktcdn.net/thumb/1024x1024/100/319/480/products/nhan-bac-ta-v-hai-hang-mot-hang-da.jpg?v=1633704672650', N'Silver Mew', N'Làm sáng bừng đôi tay mềm mại của bạn.', 6, 76)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (13, N'Wooden Texture', CAST(700 AS Decimal(18, 0)), N'https://product.hstatic.net/1000029102/product/jr312-1_f2263ed6d6d945b99f015169210b95e7_master.jpg', N'Wooden Texture', N'Dành cho những ai thích sự đơn giản.', 6, 34)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (14, N'Choco', CAST(300 AS Decimal(18, 0)), N'https://bizweb.dktcdn.net/thumb/1024x1024/100/319/480/products/lac-chan-bac-ta-tim-tron.jpg?v=1650291081227', N'Choco', N'Toát lên sự trong sáng khi sánh cùng đôi chân của bạn.', 4, 57)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (15, N'Lily Touch', CAST(2500 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/files/20230615_083256_007.jpg?v=1686797258&width=700', N'Lily Touch', N'Bạn có thể lựa chọn 2 dáng đeo khác nhau cho mẫu dây này.', 1, 87)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (16, N'Taylor', CAST(980 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/products/Phu-Kien-Nu-Junie-Vong-Lac-Tay-Bac-Nu-Trang-Suc-Bac-925-Ma-Vang-14K-Vong-Tay-Taylor-1.jpg?v=1657878844&width=700', N'Taylor', N'Hoàn thiện vẻ duyên dáng của nàng với chiếc lắc tay Taylor.', 3, 83)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (19, N'Ava', CAST(340 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/products/bong-tai-nu-ava-1.jpg?v=1667016357&width=700', N'Ava', N'Thiết kế nhỏ xinh, phù hợp cho nàng đi làm, đi chơi…

', 7, 37)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (20, N'Evalyn', CAST(670 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/files/05_20e052e7-155e-4fb6-b053-dbb06167b4ad.jpg?v=1693115619&width=700', N'Evalyn', N'Mặt dây chuyền hoa tô điểm nhẹ nhàng.', 1, 47)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (22, N'Piece', CAST(450 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/files/01_9b9d185c-7b1c-49d9-af45-294285c6a64d.jpg?v=1692970532&width=700', N'Piece', N'Đá Zirconia tạo nên điểm nhấn của chiếc bông tai này.', 7, 43)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (23, N'Iness Steff', CAST(900 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/files/20230520_182457_005.jpg?v=1684660219&width=600', N'Iness Steff', N'Dây chuyền Ines mang trong mình sự tươi mới và phá cách.', 2, 56)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (24, N'Jenna', CAST(580 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/products/Phu-Kien-Nu-Junie-Vong-Lac-Tay-Bac-Nu-Trang-Suc-Bac-925-Ma-Vang-14K-Vong-Tay-Jenna-7.jpg?v=1657891322&width=700', N'Jenna', N'Nổi bật với thiết kế đính đá Cubic Zirconia,tăng thêm vẻ quyến rũ.', 3, 32)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (25, N'Bixby Lore', CAST(3000 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/products/Nhan-Bixby-6.jpg?v=1677408245&width=700', N'Bixby Lore', N'Đá Mặt trăng tượng trưng cho tình bạn và tình yêu.', 6, 57)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (26, N'Charlotte', CAST(450 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/products/Nhan-Charlotte-thuong-hieu-junie-4.jpg?v=1671006407&width=700', N'Charlotte', N'Ẩn chứa trong mỗi viên ngọc trai đều là một vẻ đẹp đầy sự thu hút.', 5, 85)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (27, N'Luccilina', CAST(700 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/files/20230528_183745_004.jpg?v=1685676273&width=700', N'Luccilina', N'Đá trắng tinh khiết hình trái tim, tượng trưng cho tình yêu và sự lãng mạn.', 6, 29)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (28, N'Charmy', CAST(820 AS Decimal(18, 0)), N'https://ptj.vn/img/product/large/PTJ4085-1664509628.jpg', N'Charmy', N'Hồ điệp mang lại vẻ quyến rũ cho người phụ nữ mỹ miều, diễm lệ.', 4, 38)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (32, N'Silver Fox', CAST(570 AS Decimal(18, 0)), N'https://ptj.vn/img/product/large/PTJ4147-1664771335.jpg', N'Silver Fox', N'Đeo trang sức đá hồ ly mang vận may tài lộc tới.', 4, 46)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (33, N'Bear Charm', CAST(490 AS Decimal(18, 0)), N'https://product.hstatic.net/1000029102/product/864d8b86-6fbc-4876-b27b-cee9656a48d0_ab65da19fdbb41cc9e6acc86fa770f70_master.jpeg', N'Bear Charm', N'Hai mặt charm gấu cute phù hợp với nhiều bạn nữ.', 3, 62)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (35, N'Cz Solitaire', CAST(670 AS Decimal(18, 0)), N'https://lili.vn/wp-content/uploads/2021/11/Nhan-bac-nu-dinh-da-CZ-hinh-bong-hoa-dao-LILI_289467_1.jpg', N'Cz Solitaire', N'Thiết kế hình hoa đào khoe trọn vẻ đẹp nữ tính của người đeo.', 6, 44)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (37, N'Mila', CAST(360 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/products/BongtaiMila-2.jpg?v=1654326386&width=700', N'Mila', N'Hãy trở nên táo bạo và bắt kịp xu hướng thời trang hơn với bông tai Mila.', 7, 33)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (38, N'Melanie', CAST(1250 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/products/Phu-Kien-Nu-Junie-Day-Chuyen-Ngoc-Trai-Titan-Ma-Vang-14K-Day-Chuyen-Melanie-4.jpg?v=1660028252&width=700', N'Melanie', N'Hãy thể hiện tình yêu của bạn với chiếc vòng cổ ngọc trai lộng lẫy mang tên Melanie.', 1, 54)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (39, N'Kellie', CAST(670 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/files/02_dac3e6ff-1f26-401d-a2a6-2d0500547fae.jpg?v=1695998286&width=700', N'Kellie', N'Chiếc vòng tay mỏng nhẹ đính nơ mang lại nét nữ tính cho bạn.', 3, 55)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (40, N'Lana', CAST(720 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/products/Nhan-Lana-6.jpg?v=1677486883&width=700', N'Lana', N'Chiếc nhẫn Lana có điểm nhấn là hình cánh bướm được chế tác tỉ mỉ .', 5, 66)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (41, N'Ivory', CAST(170 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/products/bong-tai-nu-ivory-4.jpg?v=1667030295&width=700', N'Ivory', N'Trong veo như giọt sương đọng trên vành tai nhỏ, lấp lánh một nét đẹp thanh tú..', 7, 76)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (42, N'Crossy', CAST(430 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/products/Nhan-Crossy-thuong-hieu-junie-4.jpg?v=1671465737&width=700', N'Crossy', N'Nhẫn Crossy là mảnh ghép hoàn hảo tạo nên vẻ đẹp đầy nữ tính, sang trọng cho nàng.', 6, 23)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (43, N'Amari', CAST(640 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/products/day-chuyen-amari-9.jpg?v=1663165946&width=700', N'Amari', N'Thể hiện nét cổ điển cùng chiếc vòng cổ này với điểm nhấn là ngọc trai lấp lánh ở giữa.', 1, 15)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (44, N'Leaf Silver', CAST(500 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/products/Nhan-Leaf-thuong-hieu-junie-4.jpg?v=1671749593&width=700', N'Leaf Silver', N'Chiếc lá dịu dàng gợi nhớ đến mùa thu bình yên, thơ mộng và lãng mạn.', 6, 52)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (45, N'Leaf Gold', CAST(740 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/products/Nhan-Leaf-thuong-hieu-junie-8.jpg?v=1671749593&width=700', N'Leaf Gold', N'Nhẫn Leaf sẽ làm tôn lên nét đẹp yêu kiều, uyển chuyển của các cô gái trong mọi khoảnh khắc.', 5, 43)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (46, N'Kaia', CAST(600 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/files/20230516_130454_002.jpg?v=1689061308&width=600', N'Kaia', N'Món trang sức lấy cảm hứng từ vẻ đẹp mùa xuân, những cánh bướm và hoa cùng nhảy múa. ', 2, 62)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (47, N'Carly', CAST(360 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/files/20230517_090225_004.jpg?v=1684573546&width=700', N'Carly', N'Khuyên tai tròn Carly là một món trang sức thú vị với phong cách Hàn Quốc dịu dàng và dễ thương.', 7, 60)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (48, N'Artemis', CAST(540 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/files/20230524_143922_012.jpg?v=1684917494&width=700', N'Artemis', N'Lắc tay Artemis mang đến vẻ đẹp tinh tế như một nàng công chúa xứ Ba Tư.', 3, 20)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (49, N'Sunny', CAST(390 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/products/vong-tay-sunny-thuong-hieu-junie-3.jpg?v=1669116772&width=700', N'Sunny', N'Sunny dễ dàng trở thành một điểm nhấn tuyệt đẹp tôn lên cổ tay thanh mảnh của cô gái đeo nó.', 3, 80)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (50, N'Jenni', CAST(230 AS Decimal(18, 0)), N'https://bizweb.dktcdn.net/thumb/1024x1024/100/385/614/products/lc-bi-roi-day-day.jpg?v=1603771011683', N'Jenni', N'Jenni là một điểm nhấn quyến rũ trên đôi chân của bạn.', 4, 64)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (51, N'Molise', CAST(240 AS Decimal(18, 0)), N'https://cdn.elly.vn/uploads/2022/03/13180537/word-image-717073-3.png', N'Molise', N'Cỏ ba lá đính đá và trái tim khiến chiếc lắc chân trở lên nổi bật.', 4, 76)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (52, N'Windy', CAST(550 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/products/Nhan-Windy-thuong-hieu-junie-6.jpg?v=1671464030&width=700', N'Windy', N'Nhẫn Windy sẽ khiến bất kì một cô gái nào ưa chuộng phong cách và thời trang phải mê mẩn.', 6, 29)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (53, N'Archieves', CAST(400 AS Decimal(18, 0)), N'https://phucminhjewelry.vn/wp-content/uploads/2022/11/O1CN01QGUFaT1cr7ZyIUjlU_689933653-400x400.jpg', N'Archives', N'Thiết kế đơn giản nhưng nổi bật, là điểm nhấn cho đôi chân của nàng.', 4, 48)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (55, N'Katherine', CAST(800 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/products/Day-chuyen-Katherine-2.jpg?v=1677035659&width=700', N'Katherine', N'Là điểm nhấn duyên dáng trên xương quai xanh nhỏ xinh của nàng.', 2, 78)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (56, N'Fabia', CAST(550 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/files/03_0cb36077-89e5-45be-ae5d-4e2640c2f4d8.jpg?v=1695997654&width=700', N'Fabia', N'Mặt dây hình giọt nước biểu tượng cho sự trong sáng, tinh khiết, giống như một giọt nước tươi mát.', 2, 57)
INSERT [dbo].[Product] ([pID], [pName], [price], [image], [title], [description], [cID], [quantity]) VALUES (1058, N'Luce', CAST(500 AS Decimal(18, 0)), N'https://www.junie.vn/cdn/shop/files/03_05a8b1d1-2c65-4cc4-8b8d-75bffd07c860.jpg?v=1695998668&width=700', N'Luce', N'Luce là một sợi dây chuyền có mặt là tạo hình của mặt trời kết hợp với mặt trăng', 1, 100)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Account] FOREIGN KEY([customerID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Account]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([orderID])
REFERENCES [dbo].[Orders] ([orderID])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([pID])
REFERENCES [dbo].[Product] ([pID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customer] FOREIGN KEY([customerID])
REFERENCES [dbo].[Customer] ([customerID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [fk_Category] FOREIGN KEY([cID])
REFERENCES [dbo].[Category] ([cID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [fk_Category]
GO
USE [master]
GO
ALTER DATABASE [Project_PRJ] SET  READ_WRITE 
GO
