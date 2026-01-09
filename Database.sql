CREATE DATABASE FINAL;
USE [FINAL]
GO
/****** Object:  Table [dbo].[CATEGORY]    Script Date: 08/20/24 22:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORY](
	[id] [uniqueidentifier] NOT NULL,
	[slug] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[createAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GOo
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETAILORDERS](
	[id] [uniqueidentifier] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [decimal](38, 2) NOT NULL,
	[idOrder] [uniqueidentifier] NULL,
	[idProduct] [uniqueidentifier] NULL,
	[createAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDER]    Script Date: 08/20/24 22:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER](
	[id] [uniqueidentifier] NOT NULL,
	[status] [int] NULL,
	[total] [decimal](38, 2) NULL,
	[createAt] [datetime] NOT NULL,
	[idUser] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 08/20/24 22:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT](
	[id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[detail] [nvarchar](255) NULL,
	[quantity] [int] NULL,
	[price] [decimal](18, 0) NULL,
	[type] [nvarchar](255) NULL,
	[createAt] [datetime] NULL,
	[idUser] [uniqueidentifier] NULL,
	[pathImg] [nvarchar](max) NULL,
	[idCategory] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ROLE]    Script Date: 08/20/24 22:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROLE](
	[id] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](20) NULL,
	[createAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER]    Script Date: 08/20/24 22:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER](
	[id] [uniqueidentifier] NOT NULL,
	[email] [nvarchar](40) NOT NULL,
	[name] [nvarchar](40) NULL,
	[password] [nvarchar](max) NOT NULL,
	[address] [nvarchar](max) NULL,
	[phone] [nvarchar](max) NULL,
	[pathImg] [nvarchar](max) NULL,
	[idRole] [uniqueidentifier] NULL,
	[createAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

























GO
INSERT [dbo].[CATEGORY] ([id], [slug], [name], [createAt]) VALUES (N'4dfe78c2-4efa-4a72-a9cd-6b700390ad01', N'giaynam', N'Giày nam', CAST(N'2023-06-24T13:30:45.687' AS DateTime))
INSERT [dbo].[CATEGORY] ([id], [slug], [name], [createAt]) VALUES (N'5007207d-ed82-4f50-af26-b42635230538', N'dep', N'Dép', CAST(N'2023-06-24T13:30:45.687' AS DateTime))
INSERT [dbo].[CATEGORY] ([id], [slug], [name], [createAt]) VALUES (N'be314ffd-208e-4bdb-915d-b74358abdfe8', N'giaynu', N'Giày nữ', CAST(N'2023-06-24T13:30:45.687' AS DateTime))
GO
INSERT [dbo].[DETAILORDERS] ([id], [quantity], [price], [idOrder], [idProduct], [createAt]) VALUES (N'2bb5278e-5219-4724-8072-7540514d674d', 1, CAST(12000000.00 AS Decimal(38, 2)), N'327766f7-68de-406e-89a8-4b5bc9779dbb', N'd4eb3b2e-2e99-4b17-ab4f-033a0024c769', CAST(N'2024-05-23T20:40:27.670' AS DateTime))
INSERT [dbo].[DETAILORDERS] ([id], [quantity], [price], [idOrder], [idProduct], [createAt]) VALUES (N'588a7c1f-d184-42be-93eb-7878ce1ccd06', 1, CAST(12000000.00 AS Decimal(38, 2)), N'c7f5a0a0-8724-4453-be9d-a71dcd71fa06', N'd4eb3b2e-2e99-4b17-ab4f-033a0024c769', CAST(N'2024-08-19T14:40:57.283' AS DateTime))
INSERT [dbo].[DETAILORDERS] ([id], [quantity], [price], [idOrder], [idProduct], [createAt]) VALUES (N'45a029ef-0f9a-4b62-a4ae-975d5923353f', 1, CAST(12000000.00 AS Decimal(38, 2)), N'39d6e6a7-8a3b-49d0-aadc-91b1b09847eb', N'd4eb3b2e-2e99-4b17-ab4f-033a0024c769', CAST(N'2024-05-23T20:59:28.843' AS DateTime))
GO
INSERT [dbo].[ORDER] ([id], [status], [total], [createAt], [idUser]) VALUES (N'327766f7-68de-406e-89a8-4b5bc9779dbb', 3, CAST(12000000.00 AS Decimal(38, 2)), CAST(N'2024-05-23T20:43:18.120' AS DateTime), N'7efb44ec-2891-4342-8856-e2801a296099')
INSERT [dbo].[ORDER] ([id], [status], [total], [createAt], [idUser]) VALUES (N'39d6e6a7-8a3b-49d0-aadc-91b1b09847eb', 5, CAST(12000000.00 AS Decimal(38, 2)), CAST(N'2024-05-23T20:59:47.553' AS DateTime), N'7efb44ec-2891-4342-8856-e2801a296099')
INSERT [dbo].[ORDER] ([id], [status], [total], [createAt], [idUser]) VALUES (N'c7f5a0a0-8724-4453-be9d-a71dcd71fa06', 1, CAST(12000000.00 AS Decimal(38, 2)), CAST(N'2024-08-19T14:41:29.773' AS DateTime), N'7efb44ec-2891-4342-8856-e2801a296099')
GO
INSERT [dbo].[PRODUCT] ([id], [name], [detail], [quantity], [price], [type], [createAt], [idUser], [pathImg], [idCategory]) VALUES (N'c89a7738-3702-4f16-8132-0314eccc54f8', N'Giày nam V1', N'giày chất lượng', 50, CAST(400000 AS Decimal(18, 0)), N'Hộp', CAST(N'2023-06-24T13:30:48.323' AS DateTime), N'32fa5441-9c59-4518-bf11-5d9bb0dab94f', N'https://res.cloudinary.com/df6mryfkp/image/upload/v1724051828/banthuoclac/y1jnwyf14n8dxe9lm9ag.webp', N'4dfe78c2-4efa-4a72-a9cd-6b700390ad01')
INSERT [dbo].[PRODUCT] ([id], [name], [detail], [quantity], [price], [type], [createAt], [idUser], [pathImg], [idCategory]) VALUES (N'd4eb3b2e-2e99-4b17-ab4f-033a0024c769', N'Giày Nam V1', N'Giày chất lượng', 47, CAST(12000000 AS Decimal(18, 0)), N'Hộp', CAST(N'2023-06-24T13:30:48.353' AS DateTime), N'32fa5441-9c59-4518-bf11-5d9bb0dab94f', N'https://res.cloudinary.com/df6mryfkp/image/upload/v1724051739/banthuoclac/oukhixobtyp6gqhu8kxo.webp', N'4dfe78c2-4efa-4a72-a9cd-6b700390ad01')
INSERT [dbo].[PRODUCT] ([id], [name], [detail], [quantity], [price], [type], [createAt], [idUser], [pathImg], [idCategory]) VALUES (N'4fc8450b-4a73-46c9-878f-0bdfa692c744', N'Giày nữ K1', N'giày chất lượng', 30, CAST(200000 AS Decimal(18, 0)), N'Hộp', CAST(N'2023-06-24T13:30:47.677' AS DateTime), N'32fa5441-9c59-4518-bf11-5d9bb0dab94f', N'https://res.cloudinary.com/df6mryfkp/image/upload/v1724052017/banthuoclac/a1b3bqzigunfbm3yogtc.jpg', N'be314ffd-208e-4bdb-915d-b74358abdfe8')
INSERT [dbo].[PRODUCT] ([id], [name], [detail], [quantity], [price], [type], [createAt], [idUser], [pathImg], [idCategory]) VALUES (N'2835315c-18db-4549-b111-0bf2c738e57f', N'Giày nữ K2', N'giày chất lượng', 20, CAST(200000 AS Decimal(18, 0)), N'Hộp', CAST(N'2023-06-24T13:30:47.633' AS DateTime), N'32fa5441-9c59-4518-bf11-5d9bb0dab94f', N'https://res.cloudinary.com/df6mryfkp/image/upload/v1724052077/banthuoclac/watrbxulfk5mzwbklplx.jpg', N'be314ffd-208e-4bdb-915d-b74358abdfe8')
INSERT [dbo].[PRODUCT] ([id], [name], [detail], [quantity], [price], [type], [createAt], [idUser], [pathImg], [idCategory]) VALUES (N'5bbf34e6-bea8-4b3a-b322-15da04449762', N'Dép cao su', N'dép tốt', 30, CAST(150000 AS Decimal(18, 0)), N'Hộp', CAST(N'2023-06-24T13:30:46.763' AS DateTime), N'32fa5441-9c59-4518-bf11-5d9bb0dab94f', N'https://res.cloudinary.com/df6mryfkp/image/upload/v1724052173/banthuoclac/lvwefw9ce9d3poibj0rj.jpg', N'5007207d-ed82-4f50-af26-b42635230538')
INSERT [dbo].[PRODUCT] ([id], [name], [detail], [quantity], [price], [type], [createAt], [idUser], [pathImg], [idCategory]) VALUES (N'b7e8aea8-af27-466c-ab2e-1813d776ed91', N'Dép sốp 1', N'dép tốt', 50, CAST(9000000 AS Decimal(18, 0)), N'Hộp', CAST(N'2023-06-24T13:30:46.770' AS DateTime), N'32fa5441-9c59-4518-bf11-5d9bb0dab94f', N'https://res.cloudinary.com/df6mryfkp/image/upload/v1724052128/banthuoclac/dldzmshjl7j0w3yzuhrb.jpg', N'5007207d-ed82-4f50-af26-b42635230538')
GO
INSERT [dbo].[ROLE] ([id], [name], [createAt]) VALUES (N'3eca9f6f-84b8-42da-8a58-bcdb6b64f823', N'Admin', CAST(N'2023-06-24T13:25:12.770' AS DateTime))
INSERT [dbo].[ROLE] ([id], [name], [createAt]) VALUES (N'd6803cd2-3459-4401-890a-d9ec65c46f72', N'Guest', CAST(N'2023-06-24T13:25:12.770' AS DateTime))
INSERT [dbo].[ROLE] ([id], [name], [createAt]) VALUES (N'd6803cd2-3459-4401-890a-d9ec65c46f73', N'Admin', CAST(N'2024-10-24T13:25:12.770' AS DateTime))
GO
INSERT [dbo].[USER] ([id], [email], [name], [password], [address], [phone], [pathImg], [idRole], [createAt]) VALUES (N'32fa5441-9c59-4518-bf11-5d9bb0dab94f', N'admin@gmail.com', N'Admin', N'123456', N'Q7 - TP HCM', N'0986538788', N'https://res.cloudinary.com/df6mryfkp/image/upload/v1691680093/banthuoclac/kfpol3rt2xvsf4zuducw.png', N'3eca9f6f-84b8-42da-8a58-bcdb6b64f823', NULL)
INSERT [dbo].[USER] ([id], [email], [name], [password], [address], [phone], [pathImg], [idRole], [createAt]) VALUES (N'7efb44ec-2891-4342-8856-e2801a296099', N'minhhieu@gmail.com', N'Minh Hiếu', N'123456', N'Q8 - TP HCM', N'0986538788', NULL, N'd6803cd2-3459-4401-890a-d9ec65c46f72', CAST(N'2023-06-24T13:32:24.520' AS DateTime))
INSERT [dbo].[USER] ([id], [email], [name], [password], [address], [phone], [pathImg], [idRole], [createAt]) VALUES (N'7efb44ec-2891-4342-8856-e2801a296098', N'baohan@gmail.com', N'Bảo Hân', N'123456', N'Q8 - TP HCM', N'0986123456', NULL, N'3eca9f6f-84b8-42da-8a58-bcdb6b64f823', CAST(N'2024-11-24T13:32:24.520' AS DateTime))
GO
ALTER TABLE [dbo].[CATEGORY] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[CATEGORY] ADD  DEFAULT (getdate()) FOR [createAt]
GO
ALTER TABLE [dbo].[DETAILORDERS] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[DETAILORDERS] ADD  DEFAULT (getdate()) FOR [createAt]
GO
ALTER TABLE [dbo].[ORDER] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[ORDER] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[ORDER] ADD  DEFAULT ((0)) FOR [total]
GO
ALTER TABLE [dbo].[ORDER] ADD  DEFAULT (getdate()) FOR [createAt]
GO
ALTER TABLE [dbo].[PRODUCT] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[PRODUCT] ADD  DEFAULT (getdate()) FOR [createAt]
GO
ALTER TABLE [dbo].[ROLE] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[ROLE] ADD  DEFAULT (getdate()) FOR [createAt]
GO
ALTER TABLE [dbo].[USER] ADD  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[USER] ADD  DEFAULT (getdate()) FOR [createAt]
GO
ALTER TABLE [dbo].[DETAILORDERS]  WITH CHECK ADD FOREIGN KEY([idOrder])
REFERENCES [dbo].[ORDER] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DETAILORDERS]  WITH CHECK ADD FOREIGN KEY([idProduct])
REFERENCES [dbo].[PRODUCT] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PRODUCT]  WITH CHECK ADD FOREIGN KEY([idCategory])
REFERENCES [dbo].[CATEGORY] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PRODUCT]  WITH CHECK ADD FOREIGN KEY([idUser])
REFERENCES [dbo].[USER] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[USER]  WITH CHECK ADD FOREIGN KEY([idRole])
REFERENCES [dbo].[ROLE] ([id])
ON DELETE CASCADE
GO
