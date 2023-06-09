USE [EyeWearShop]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 6/10/2023 1:48:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[photo] [varchar](50) NOT NULL,
	[activated] [bit] NOT NULL,
	[admin] [bit] NOT NULL,
 CONSTRAINT [PK__Accounts__536C85E5862B61BA] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/10/2023 1:48:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [varchar](4) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Categori__3214EC07F36FFD1A] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 6/10/2023 1:48:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/10/2023 1:48:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Orders__3214EC071CD8D49D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/10/2023 1:48:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Image] [varchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[CreateDate] [date] NOT NULL,
	[Available] [bit] NOT NULL,
	[CategoryId] [varchar](4) NOT NULL,
 CONSTRAINT [PK__Products__3214EC0757831186] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products]
ADD [Qty] INT
UPDATE [dbo].[Products]
SET [Qty] = 1

/****** INSERT [dbo].[Accounts] ******/
SET IDENTITY_INSERT [dbo].[Accounts] ON
INSERT [dbo].[Accounts]([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin]) VALUES(N'NaVTT',N'123',N'Vo Thanh Na',N'na123@gmail.com',N'photo01.jpg',1,1)
INSERT [dbo].[Accounts]([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin]) VALUES(N'LongMP',N'123',N'Mai Phi Long',N'long1233@gmail.com',N'photo02.jpg',1,0)
INSERT [dbo].[Accounts]([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin]) VALUES(N'PhucLDT',N'123',N'Luu Dinh Thien Phuc',N'phuc1323@gmail.com',N'photo03.jpg',1,1)
INSERT [dbo].[Accounts]([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin]) VALUES(N'AnhTN',N'123',N'Tran Nhut Anh',N'anh1233@gmail.com',N'photo04.jpg',1,0)
INSERT [dbo].[Accounts]([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin]) VALUES(N'VoTV',N'123',N'Tran Van Vo',N'vo1232@gmail.com',N'photo05.jpg',1,0)

