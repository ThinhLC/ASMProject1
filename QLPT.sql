USE [QLPT]
GO
/****** Object:  Table [dbo].[chiphi]    Script Date: 4/20/2024 7:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chiphi](
	[maChiphi] [int] IDENTITY(1,1) NOT NULL,
	[tiendien] [float] NULL,
	[maphong] [int] NULL,
	[tiennuoc] [float] NULL,
	[thoigian] [datetime] NOT NULL,
	[makh] [int] NOT NULL,
	[Tong] [float] NULL,
 CONSTRAINT [PK__chiphi__0FD61E2B6C3EA7C4] PRIMARY KEY CLUSTERED 
(
	[maChiphi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 4/20/2024 7:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[MAKH] [int] IDENTITY(1,1) NOT NULL,
	[tenkh] [nvarchar](255) NOT NULL,
	[sdt] [nvarchar](255) NOT NULL,
	[cmnd] [nvarchar](50) NOT NULL,
	[matk] [int] NOT NULL,
	[hinh] [text] NULL,
 CONSTRAINT [PK__khachhan__603F592CA4F15BF0] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaiphong]    Script Date: 4/20/2024 7:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaiphong](
	[malp] [int] IDENTITY(1,1) NOT NULL,
	[tenlp] [nvarchar](255) NOT NULL,
	[hinhanh] [text] NULL,
	[gia] [float] NOT NULL,
	[matk] [int] NOT NULL,
 CONSTRAINT [PK__loaiphon__7A21A325A1134AD2] PRIMARY KEY CLUSTERED 
(
	[malp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phong]    Script Date: 4/20/2024 7:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phong](
	[map] [int] IDENTITY(1,1) NOT NULL,
	[malp] [int] NOT NULL,
	[tenp] [nvarchar](255) NOT NULL,
	[mota] [nvarchar](255) NOT NULL,
	[trangthai] [bit] NOT NULL,
	[hinhanh] [text] NULL,
	[matk] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[map] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phongthue]    Script Date: 4/20/2024 7:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phongthue](
	[maphongthue] [int] IDENTITY(1,1) NOT NULL,
	[MAKH] [int] NOT NULL,
	[maphong] [int] NOT NULL,
	[tongtien] [int] NULL,
	[trangthai] [bit] NULL,
	[checkin] [datetime] NULL,
	[checkout] [datetime] NULL,
	[matk] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maphongthue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 4/20/2024 7:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taikhoan](
	[matk] [int] IDENTITY(1,1) NOT NULL,
	[tentk] [nvarchar](255) NOT NULL,
	[mk] [nvarchar](255) NOT NULL,
	[quyen] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[matk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[chiphi] ON 

INSERT [dbo].[chiphi] ([maChiphi], [tiendien], [maphong], [tiennuoc], [thoigian], [makh], [Tong]) VALUES (2, 120, 51, 60, CAST(N'2022-02-01T00:00:00.000' AS DateTime), 5, 180)
INSERT [dbo].[chiphi] ([maChiphi], [tiendien], [maphong], [tiennuoc], [thoigian], [makh], [Tong]) VALUES (4, 110, 49, 55, CAST(N'2022-04-01T00:00:00.000' AS DateTime), 19, 165)
INSERT [dbo].[chiphi] ([maChiphi], [tiendien], [maphong], [tiennuoc], [thoigian], [makh], [Tong]) VALUES (6, 50, 45, 100, CAST(N'2023-12-02T14:29:38.967' AS DateTime), 44, 550000)
INSERT [dbo].[chiphi] ([maChiphi], [tiendien], [maphong], [tiennuoc], [thoigian], [makh], [Tong]) VALUES (7, 50, NULL, 50, CAST(N'2023-12-05T11:32:14.373' AS DateTime), 58, 300000)
INSERT [dbo].[chiphi] ([maChiphi], [tiendien], [maphong], [tiennuoc], [thoigian], [makh], [Tong]) VALUES (15, 50, 47, 100, CAST(N'2023-12-02T14:29:38.967' AS DateTime), 44, 550000)
INSERT [dbo].[chiphi] ([maChiphi], [tiendien], [maphong], [tiennuoc], [thoigian], [makh], [Tong]) VALUES (16, NULL, 50, NULL, CAST(N'2023-12-11T12:10:18.333' AS DateTime), 61, NULL)
INSERT [dbo].[chiphi] ([maChiphi], [tiendien], [maphong], [tiennuoc], [thoigian], [makh], [Tong]) VALUES (17, 100, 42, 100, CAST(N'2023-12-09T14:53:12.830' AS DateTime), 63, 660000)
INSERT [dbo].[chiphi] ([maChiphi], [tiendien], [maphong], [tiennuoc], [thoigian], [makh], [Tong]) VALUES (18, 50, 42, 20, CAST(N'2023-12-10T15:00:20.350' AS DateTime), 64, 110000)
SET IDENTITY_INSERT [dbo].[chiphi] OFF
GO
SET IDENTITY_INSERT [dbo].[khachhang] ON 

INSERT [dbo].[khachhang] ([MAKH], [tenkh], [sdt], [cmnd], [matk], [hinh]) VALUES (4, N'Ph?m Th? D', N'0987652451', N'912123467123', 1, N'CCCD.jpg')
INSERT [dbo].[khachhang] ([MAKH], [tenkh], [sdt], [cmnd], [matk], [hinh]) VALUES (5, N'Hoàng Văn E', N'0336419717', N'123456789126', 1, N'analysis.png')
INSERT [dbo].[khachhang] ([MAKH], [tenkh], [sdt], [cmnd], [matk], [hinh]) VALUES (19, N'Tú', N'950254125', N'223456123', 1, N'user.png')
INSERT [dbo].[khachhang] ([MAKH], [tenkh], [sdt], [cmnd], [matk], [hinh]) VALUES (21, N'Ph?m Th? E', N'0367688986', N'312321123456', 1, N'PSD CCCD Cân All by NH.jpg')
INSERT [dbo].[khachhang] ([MAKH], [tenkh], [sdt], [cmnd], [matk], [hinh]) VALUES (26, N'Luong Cao Thinh', N'905805643', N'412322131', 1, N'user.png')
INSERT [dbo].[khachhang] ([MAKH], [tenkh], [sdt], [cmnd], [matk], [hinh]) VALUES (29, N'Thịnh cao', N'0789123456', N'483928182345', 1, N'CCCD.jpg')
INSERT [dbo].[khachhang] ([MAKH], [tenkh], [sdt], [cmnd], [matk], [hinh]) VALUES (44, N'Luong Cao Thinh', N'0906812333', N'008321231345', 1, N'CCCD.jpg')
INSERT [dbo].[khachhang] ([MAKH], [tenkh], [sdt], [cmnd], [matk], [hinh]) VALUES (45, N'Hoàng Văn E', N'0678345674', N'312421321333', 1, N'CCCD.jpg')
INSERT [dbo].[khachhang] ([MAKH], [tenkh], [sdt], [cmnd], [matk], [hinh]) VALUES (56, N'nguyenvanb', N'0327166621', N'1234567893', 1, N'bill (1).png')
INSERT [dbo].[khachhang] ([MAKH], [tenkh], [sdt], [cmnd], [matk], [hinh]) VALUES (58, N'testing', N'12345678912', N'123456781921', 1, N'bill.png')
INSERT [dbo].[khachhang] ([MAKH], [tenkh], [sdt], [cmnd], [matk], [hinh]) VALUES (59, N'testing1', N'0327166622', N'123454321234', 1, N'crm.png')
INSERT [dbo].[khachhang] ([MAKH], [tenkh], [sdt], [cmnd], [matk], [hinh]) VALUES (60, N'nguyen van c', N'0327657432', N'433333456765', 1, N'CCCD.jpg')
INSERT [dbo].[khachhang] ([MAKH], [tenkh], [sdt], [cmnd], [matk], [hinh]) VALUES (61, N'Luong cao Thinh', N'3675847584', N'673847567676', 1, N'CCCD.jpg')
INSERT [dbo].[khachhang] ([MAKH], [tenkh], [sdt], [cmnd], [matk], [hinh]) VALUES (62, N'Lê Thiện Phúc', N'0782756723', N'657834891223', 1, N'CCCD.jpg')
INSERT [dbo].[khachhang] ([MAKH], [tenkh], [sdt], [cmnd], [matk], [hinh]) VALUES (63, N'Lê Ngọc Tuấn Tú', N'0782756729', N'094737126431', 1, N'CCCD.jpg')
INSERT [dbo].[khachhang] ([MAKH], [tenkh], [sdt], [cmnd], [matk], [hinh]) VALUES (64, N'Thầy Nam', N'0904827378', N'094673728111', 1, N'CCCD.jpg')
SET IDENTITY_INSERT [dbo].[khachhang] OFF
GO
SET IDENTITY_INSERT [dbo].[loaiphong] ON 

INSERT [dbo].[loaiphong] ([malp], [tenlp], [hinhanh], [gia], [matk]) VALUES (1, N'Phòng Đơn', N'', 1000000, 1)
INSERT [dbo].[loaiphong] ([malp], [tenlp], [hinhanh], [gia], [matk]) VALUES (2, N'Phòng Đôi', N'', 1200000, 2)
INSERT [dbo].[loaiphong] ([malp], [tenlp], [hinhanh], [gia], [matk]) VALUES (3, N'Phòng VIP', N'', 2000000, 3)
INSERT [dbo].[loaiphong] ([malp], [tenlp], [hinhanh], [gia], [matk]) VALUES (4, N'Phòng Gia Đ?nh', N'', 2500000, 4)
INSERT [dbo].[loaiphong] ([malp], [tenlp], [hinhanh], [gia], [matk]) VALUES (5, N'Phòng Suite', N'', 3000000, 5)
SET IDENTITY_INSERT [dbo].[loaiphong] OFF
GO
SET IDENTITY_INSERT [dbo].[phong] ON 

INSERT [dbo].[phong] ([map], [malp], [tenp], [mota], [trangthai], [hinhanh], [matk]) VALUES (42, 3, N'105', N'motamoi ', 0, N'aaaa', 1)
INSERT [dbo].[phong] ([map], [malp], [tenp], [mota], [trangthai], [hinhanh], [matk]) VALUES (44, 4, N'106', N'tx', 0, N'delete.png', 2)
INSERT [dbo].[phong] ([map], [malp], [tenp], [mota], [trangthai], [hinhanh], [matk]) VALUES (45, 4, N'107', N'tx', 1, N'delete.png', 2)
INSERT [dbo].[phong] ([map], [malp], [tenp], [mota], [trangthai], [hinhanh], [matk]) VALUES (47, 4, N'108', N'tx', 1, N'delete.png', 2)
INSERT [dbo].[phong] ([map], [malp], [tenp], [mota], [trangthai], [hinhanh], [matk]) VALUES (48, 4, N'109', N'tx', 1, N'delete.png', 2)
INSERT [dbo].[phong] ([map], [malp], [tenp], [mota], [trangthai], [hinhanh], [matk]) VALUES (49, 4, N'110', N'tx', 1, N'delete.png', 2)
INSERT [dbo].[phong] ([map], [malp], [tenp], [mota], [trangthai], [hinhanh], [matk]) VALUES (50, 1, N'111', N'tx', 1, N'bill.png', 2)
INSERT [dbo].[phong] ([map], [malp], [tenp], [mota], [trangthai], [hinhanh], [matk]) VALUES (51, 3, N'123', N'TTTT', 1, N'analysis.png', 1)
INSERT [dbo].[phong] ([map], [malp], [tenp], [mota], [trangthai], [hinhanh], [matk]) VALUES (52, 2, N'113', N'', 0, N'bar-chart.png', 1)
INSERT [dbo].[phong] ([map], [malp], [tenp], [mota], [trangthai], [hinhanh], [matk]) VALUES (53, 4, N'1022', N'tx', 0, N'bill (1).png', 1)
INSERT [dbo].[phong] ([map], [malp], [tenp], [mota], [trangthai], [hinhanh], [matk]) VALUES (54, 3, N'115', N'tx', 0, N'bill (1).png', 1)
SET IDENTITY_INSERT [dbo].[phong] OFF
GO
SET IDENTITY_INSERT [dbo].[phongthue] ON 

INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (6, 21, 42, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (8, 21, 44, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (11, 19, 49, NULL, NULL, CAST(N'2023-12-10T15:44:37.927' AS DateTime), NULL, 1)
INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (12, 5, 51, NULL, NULL, CAST(N'2023-12-11T00:49:20.867' AS DateTime), NULL, 1)
INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (13, 44, 45, NULL, NULL, CAST(N'2023-12-11T10:55:25.977' AS DateTime), CAST(N'2024-03-05T08:10:47.497' AS DateTime), 1)
INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (14, 44, 47, NULL, NULL, CAST(N'2023-12-11T11:06:29.833' AS DateTime), NULL, 1)
INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (15, 58, 48, NULL, NULL, CAST(N'2023-12-11T11:19:08.173' AS DateTime), NULL, 1)
INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (16, 61, 50, NULL, NULL, CAST(N'2023-12-11T12:10:18.333' AS DateTime), NULL, 1)
INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (17, 63, 42, NULL, NULL, CAST(N'2023-12-11T14:52:27.327' AS DateTime), CAST(N'2023-12-11T14:55:48.830' AS DateTime), 1)
INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (18, 64, 42, NULL, NULL, CAST(N'2023-12-11T14:59:47.763' AS DateTime), CAST(N'2023-12-11T15:00:46.353' AS DateTime), 1)
INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (36, 44, 45, NULL, NULL, CAST(N'2024-04-09T07:28:23.503' AS DateTime), NULL, 1)
INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (37, 44, 45, NULL, NULL, CAST(N'2024-04-09T07:28:51.020' AS DateTime), NULL, 1)
INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (38, 44, 45, NULL, NULL, CAST(N'2024-04-09T07:29:22.763' AS DateTime), NULL, 1)
INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (39, 44, 45, NULL, NULL, CAST(N'2024-04-09T07:29:28.293' AS DateTime), NULL, 1)
INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (40, 5, 45, NULL, NULL, CAST(N'2024-04-09T07:29:28.293' AS DateTime), NULL, 1)
INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (41, 44, 45, NULL, NULL, CAST(N'2024-04-11T06:09:58.917' AS DateTime), NULL, 1)
INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (42, 5, 45, NULL, NULL, CAST(N'2024-04-11T06:09:58.917' AS DateTime), NULL, 1)
INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (43, 44, 45, NULL, NULL, CAST(N'2024-04-11T06:34:18.660' AS DateTime), NULL, 1)
INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (44, 5, 45, NULL, NULL, CAST(N'2024-04-11T06:34:18.660' AS DateTime), NULL, 1)
INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (45, 44, 45, NULL, NULL, CAST(N'2024-04-11T06:34:28.740' AS DateTime), NULL, 1)
INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (46, 5, 45, NULL, NULL, CAST(N'2024-04-11T06:34:28.740' AS DateTime), NULL, 1)
INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (47, 44, 45, NULL, NULL, CAST(N'2024-04-11T06:34:35.247' AS DateTime), NULL, 1)
INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (48, 5, 45, NULL, NULL, CAST(N'2024-04-11T06:34:35.247' AS DateTime), NULL, 1)
INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (49, 44, 45, NULL, NULL, CAST(N'2024-04-11T07:55:59.617' AS DateTime), NULL, 1)
INSERT [dbo].[phongthue] ([maphongthue], [MAKH], [maphong], [tongtien], [trangthai], [checkin], [checkout], [matk]) VALUES (50, 5, 45, NULL, NULL, CAST(N'2024-04-11T07:55:59.617' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[phongthue] OFF
GO
SET IDENTITY_INSERT [dbo].[taikhoan] ON 

INSERT [dbo].[taikhoan] ([matk], [tentk], [mk], [quyen]) VALUES (1, N'user1', N'password123', 0)
INSERT [dbo].[taikhoan] ([matk], [tentk], [mk], [quyen]) VALUES (2, N'user2', N'password2', 1)
INSERT [dbo].[taikhoan] ([matk], [tentk], [mk], [quyen]) VALUES (3, N'user3', N'password3', 0)
INSERT [dbo].[taikhoan] ([matk], [tentk], [mk], [quyen]) VALUES (4, N'user4', N'password4', 1)
INSERT [dbo].[taikhoan] ([matk], [tentk], [mk], [quyen]) VALUES (5, N'user5', N'password5', 0)
SET IDENTITY_INSERT [dbo].[taikhoan] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_CMND]    Script Date: 4/20/2024 7:55:34 PM ******/
ALTER TABLE [dbo].[khachhang] ADD  CONSTRAINT [UC_CMND] UNIQUE NONCLUSTERED 
(
	[cmnd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[chiphi]  WITH CHECK ADD  CONSTRAINT [FK_khachhang_MAKH] FOREIGN KEY([makh])
REFERENCES [dbo].[khachhang] ([MAKH])
GO
ALTER TABLE [dbo].[chiphi] CHECK CONSTRAINT [FK_khachhang_MAKH]
GO
ALTER TABLE [dbo].[chiphi]  WITH CHECK ADD  CONSTRAINT [LP_MaLoaiPhong] FOREIGN KEY([maphong])
REFERENCES [dbo].[phong] ([map])
GO
ALTER TABLE [dbo].[chiphi] CHECK CONSTRAINT [LP_MaLoaiPhong]
GO
ALTER TABLE [dbo].[loaiphong]  WITH CHECK ADD  CONSTRAINT [FK__loaiphong__matk__4BAC3F29] FOREIGN KEY([matk])
REFERENCES [dbo].[taikhoan] ([matk])
GO
ALTER TABLE [dbo].[loaiphong] CHECK CONSTRAINT [FK__loaiphong__matk__4BAC3F29]
GO
ALTER TABLE [dbo].[phong]  WITH CHECK ADD  CONSTRAINT [FK__phong__malp__4E88ABD4] FOREIGN KEY([malp])
REFERENCES [dbo].[loaiphong] ([malp])
GO
ALTER TABLE [dbo].[phong] CHECK CONSTRAINT [FK__phong__malp__4E88ABD4]
GO
ALTER TABLE [dbo].[phong]  WITH CHECK ADD FOREIGN KEY([matk])
REFERENCES [dbo].[taikhoan] ([matk])
GO
ALTER TABLE [dbo].[phongthue]  WITH CHECK ADD  CONSTRAINT [FK__phongthue__MAKH__5812160E] FOREIGN KEY([MAKH])
REFERENCES [dbo].[khachhang] ([MAKH])
GO
ALTER TABLE [dbo].[phongthue] CHECK CONSTRAINT [FK__phongthue__MAKH__5812160E]
GO
ALTER TABLE [dbo].[phongthue]  WITH CHECK ADD FOREIGN KEY([maphong])
REFERENCES [dbo].[phong] ([map])
GO
ALTER TABLE [dbo].[phongthue]  WITH CHECK ADD FOREIGN KEY([matk])
REFERENCES [dbo].[taikhoan] ([matk])
GO
