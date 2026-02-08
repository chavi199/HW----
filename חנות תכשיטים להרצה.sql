USE [master]
GO
/****** Object:  Database Jewellary_Stroe    Script Date: 26/10/2023 12:55:15 ******/
CREATE DATABASE Jewellary_Stroe

GO
ALTER DATABASE Jewellary_Stroe SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE Jewellary_Stroe SET ANSI_NULLS OFF 
GO
ALTER DATABASE Jewellary_Stroe SET ANSI_PADDING OFF 
GO
ALTER DATABASE Jewellary_Stroe SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE Jewellary_Stroe SET ARITHABORT OFF 
GO
ALTER DATABASE Jewellary_Stroe SET AUTO_CLOSE OFF 
GO
ALTER DATABASE Jewellary_Stroe SET AUTO_SHRINK OFF 
GO
ALTER DATABASE Jewellary_Stroe SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE Jewellary_Stroe SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE Jewellary_Stroe SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE Jewellary_Stroe SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE Jewellary_Stroe SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE Jewellary_Stroe SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE Jewellary_Stroe SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE Jewellary_Stroe SET  DISABLE_BROKER 
GO
ALTER DATABASE Jewellary_Stroe SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE Jewellary_Stroe SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE Jewellary_Stroe SET TRUSTWORTHY OFF 
GO
ALTER DATABASE Jewellary_Stroe SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE Jewellary_Stroe SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE Jewellary_Stroe SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE Jewellary_Stroe SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE Jewellary_Stroe SET RECOVERY FULL 
GO
ALTER DATABASE Jewellary_Stroe SET  MULTI_USER 
GO
ALTER DATABASE Jewellary_Stroe SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE Jewellary_Stroe SET DB_CHAINING OFF 
GO
ALTER DATABASE Jewellary_Stroe SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE Jewellary_Stroe SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE Jewellary_Stroe SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE Jewellary_Stroe SET QUERY_STORE = OFF
GO
USE Jewellary_Stroe
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 26/10/2023 12:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] NOT NULL,
	[CategoryName] [nvarchar](20) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 26/10/2023 12:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[CityId] [int] NOT NULL,
	[CityName] [nvarchar](10) NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 26/10/2023 12:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] NOT NULL,
	[FirstName] [nvarchar](20) NULL,
	[LastName] [nvarchar](20) NULL,
	[Address] [nvarchar](50) NULL,
	[CityId] [int] NULL,
	[Phone] [nvarchar](20) NULL,
	[SendingCust] [int] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 26/10/2023 12:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [int] NOT NULL,
	[FirstName] [nvarchar](10) NULL,
	[LastName] [nvarchar](10) NULL,
	[Address] [nvarchar](50) NULL,
	[CityId] [int] NULL,
	[Phone] [nvarchar](11) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 26/10/2023 12:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 26/10/2023 12:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[EmployeeId] [int] NULL,
	[OrderDateTime] [datetime] NULL,
	[Delivery] [nvarchar](3) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 26/10/2023 12:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] NOT NULL,
	[CategoryId] [int] NULL,
	[TypeId] [int] NULL,
	[ProductName] [nvarchar](20) NULL,
	[Description] [nvarchar](50) NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOf]    Script Date: 26/10/2023 12:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOf](
	[TypeId] [int] NOT NULL,
	[TypeName] [nvarchar](20) NULL,
 CONSTRAINT [PK_TypeOf] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (1, N'שרשרת')
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (2, N'צמיד')
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (3, N'עגילים')
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (4, N'סט')
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (5, N'טבעת')
GO
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (1, N'ירושלים')
GO
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (2, N'בני ברק')
GO
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (3, N'מ. עילית')
GO
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (4, N'ביתר')
GO
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (5, N'אופקים')
GO
INSERT [dbo].[Cities] ([CityId], [CityName]) VALUES (6, N'צפת')
GO
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [Address], [CityId], [Phone], [SendingCust]) VALUES (1, N'אסתר', N'כהן', N'יחזקאל 3', 1, N'02-5366666', NULL)
GO
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [Address], [CityId], [Phone], [SendingCust]) VALUES (2, N'יהודית', N'עמוסי', N'כהנמן 57', 2, N'03-6587777', NULL)
GO
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [Address], [CityId], [Phone], [SendingCust]) VALUES (3, N'אפרת', N'גדלוביץ', N'ר'' עקיבא 15', 3, N'054-8466665', 2)
GO
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [Address], [CityId], [Phone], [SendingCust]) VALUES (4, N'משה', N'זכריש', N'חיד"א 6', 2, N'052-7655522', 3)
GO
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [Address], [CityId], [Phone], [SendingCust]) VALUES (5, N'שרי', N'לנדא', N'הקבלן 6', 1, N'055-6788666', NULL)
GO
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [Address], [CityId], [Phone], [SendingCust]) VALUES (6, N'רחל', N'מונהייט', N'השלושה 4', 2, N'055-6744444', 1)
GO
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [Address], [CityId], [Phone], [SendingCust]) VALUES (7, N'טובי', N'מלכיאל', N'הפסגה 13', 1, N'052-7655555', 4)
GO
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [Address], [CityId], [Phone], [SendingCust]) VALUES (8, N'אילה', N'פריד', N'שקד 17', NULL, N'052-7655553', 7)
GO
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [Address], [CityId], [Phone], [SendingCust]) VALUES (9, N'רותי', N'כהן', N'ר'' עקיבא 157', 2, N'054-8565665', 7)
GO
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [Address], [CityId], [Phone], [SendingCust]) VALUES (10, N'ציפי', N'לב', N'חזו"א 12', 3, N'08-9289999', 7)
GO
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [Address], [CityId], [Phone], [SendingCust]) VALUES (11, N'אלישבע', N'עמוסי', N'עלי הכהן 8', 1, N'02-5369898', 9)
GO
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [Address], [CityId], [Phone], [SendingCust]) VALUES (12, N'דסי', N'לנגלב', N'מתתיהו 76', NULL, N'058-3255449', 9)
GO
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [Address], [CityId], [Phone], [SendingCust]) VALUES (13, N'גיטל', N'ינקלביץ', N'ריה"נ 17', 4, N'053-3136547', 3)
GO
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [Address], [CityId], [Phone], [SendingCust]) VALUES (14, N'שרה נחמה', N'פוגל', N'ריה"נ 9', 4, N'050-4123322', 14)
GO
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [Address], [CityId], [Phone], [SendingCust]) VALUES (15, N'יהושע', N'נחמני', N'חפץ חיים 8', 3, N'050-4144448', 12)
GO
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [Address], [CityId], [Phone], [SendingCust]) VALUES (16, N'רחלי', N'חביב', N'ר'' שך 34', 2, N'03-6845555', 7)
GO
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [Address], [CityId], [Phone]) VALUES (1, N'רחל', N'אפרתי', N'עלי הכהן 7', 1, N'054-8411112')
GO
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [Address], [CityId], [Phone]) VALUES (2, N'פרידה', N'אמזל', N'ירמיהו 54', 1, N'055-6788887')
GO
INSERT [dbo].[Employees] ([EmployeeId], [FirstName], [LastName], [Address], [CityId], [Phone]) VALUES (3, N'אסתר', N'אליאב', NULL, 4, N'052-7625555')
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (1, 1, 1, CAST(N'2022-01-01T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (2, 3, 2, CAST(N'2021-05-01T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (3, 2, 1, CAST(N'2022-05-01T00:00:00.000' AS DateTime), N'כן')
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (4, 6, 1, CAST(N'2022-08-05T00:00:00.000' AS DateTime), N'כן')
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (5, 5, 2, CAST(N'2022-12-01T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (6, 1, 1, CAST(N'2021-12-01T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (7, 11, 2, CAST(N'2020-08-01T00:00:00.000' AS DateTime), N'כן')
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (8, 11, 2, CAST(N'2020-09-01T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (9, 8, 1, CAST(N'2022-04-04T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (10, 8, 2, CAST(N'2022-05-04T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (11, 4, 1, CAST(N'2021-08-05T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (12, 1, 1, CAST(N'2021-06-05T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (13, 3, 1, CAST(N'2022-06-06T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (14, 9, 1, CAST(N'2022-07-07T00:00:00.000' AS DateTime), N'כן')
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (15, 6, 2, CAST(N'2021-04-09T00:00:00.000' AS DateTime), N'כן')
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (16, 7, 2, CAST(N'2022-11-02T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (17, 7, 1, CAST(N'2023-02-01T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (18, 16, 1, CAST(N'2023-02-12T00:00:00.000' AS DateTime), N'כן')
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (19, 16, 1, CAST(N'2023-02-19T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (20, 15, 2, CAST(N'2022-08-23T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (21, 14, 1, CAST(N'2022-06-16T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (22, 13, 2, CAST(N'2021-09-19T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (23, 13, 2, CAST(N'2022-10-19T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (24, 2, 1, CAST(N'2022-06-16T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (25, 4, 1, CAST(N'2019-02-01T00:00:00.000' AS DateTime), N'כן')
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDateTime], [Delivery]) VALUES (26, 9, 1, CAST(N'2020-08-01T00:00:00.000' AS DateTime), N'כן')
GO


GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [TypeId], [ProductName], [Description], [Price]) VALUES (1, 1, 5, N'שרשרת טיפה', NULL, 89)
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [TypeId], [ProductName], [Description], [Price]) VALUES (2, 2, 4, N'צמיד 3', NULL, 350)
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [TypeId], [ProductName], [Description], [Price]) VALUES (3, 2, 4, N'צמיד לולאות', NULL, 269)
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [TypeId], [ProductName], [Description], [Price]) VALUES (4, 1, 1, N'תליון יפיפה', NULL, 590)
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [TypeId], [ProductName], [Description], [Price]) VALUES (5, 3, 2, N'עגיל כסף משובץ', N'מיוחד', 519)
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [TypeId], [ProductName], [Description], [Price]) VALUES (6, 2, 4, N'צמיד תינוקות לבבות ', N'מתאים מגיל לידה', 119)
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [TypeId], [ProductName], [Description], [Price]) VALUES (7, 1, 1, N'שרשרת עיגולים משובצת', N'כלות', 2119)
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [TypeId], [ProductName], [Description], [Price]) VALUES (8, 2, 1, N'צמיד מעוינים', NULL, 1300)
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [TypeId], [ProductName], [Description], [Price]) VALUES (9, NULL, 2, N'שרשרת ועגילים אובלי', NULL, 650)
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [TypeId], [ProductName], [Description], [Price]) VALUES (10, 2, NULL, N'צמיד חדש', N'קיים בצבעים שונים', 287)
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [TypeId], [ProductName], [Description], [Price]) VALUES (11, 4, 3, N'סט B123', NULL, 2800)
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [TypeId], [ProductName], [Description], [Price]) VALUES (12, 2, 5, N'צמיד תליונים לבבות ', NULL, 189)
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [TypeId], [ProductName], [Description], [Price]) VALUES (13, 1, 2, N'שרשרת E45', NULL, 590)
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [TypeId], [ProductName], [Description], [Price]) VALUES (14, 1, 3, N'שרשרת E432', N'חדש', 477)
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [TypeId], [ProductName], [Description], [Price]) VALUES (15, 3, NULL, N'עגיל Y456 עגול', NULL, 299)
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [TypeId], [ProductName], [Description], [Price]) VALUES (16, 3, NULL, N'עגיל מרובע Y456', NULL, 299)
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [TypeId], [ProductName], [Description], [Price]) VALUES (17, 3, 2, N'עגיל כסף משובץ B43', N'', 417)
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [TypeId], [ProductName], [Description], [Price]) VALUES (18, 2, 5, N'צמיד חלק E197', NULL, 209)
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [TypeId], [ProductName], [Description], [Price]) VALUES (19, 1, 4, N'שרשרת דמוי זהב B37', NULL, 369)
GO
INSERT [dbo].[Products] ([ProductId], [CategoryId], [TypeId], [ProductName], [Description], [Price]) VALUES (20, 1, 1, N'שרשרת כלות Y5', N'יחודי', 1999)
INSERT [dbo].[TypeOf] ([TypeId], [TypeName]) VALUES (1, N'זהב')
GO
INSERT [dbo].[TypeOf] ([TypeId], [TypeName]) VALUES (2, N'כסף')
GO
INSERT [dbo].[TypeOf] ([TypeId], [TypeName]) VALUES (3, N'שילוב זהב כסף')
GO
INSERT [dbo].[TypeOf] ([TypeId], [TypeName]) VALUES (4, N'גולדפילד')
GO
INSERT [dbo].[TypeOf] ([TypeId], [TypeName]) VALUES (5, N'פשוט')
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (1, 1, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (1, 2, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (2, 3, 2)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (3, 5, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (4, 6, 2)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (5, 2, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (5, 3, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (6, 6, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (7, 12, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (8, 11, 2)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (9, 2, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (9, 10, 2)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (10, 7, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (11, 6, 3)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (12, 4, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (12, 9, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (15, 2, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (15, 3, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (16, 10, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (17, 4, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (18, 17, 2)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (19, 6, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (19, 19, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (19, 20, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (20, 15, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (20, 16, 2)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (21, 1, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (22, 10, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (23, 18, 2)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (23, 19, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (24, 1, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (24, 19, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (25, 3, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (26, 2, 1)
GO
INSERT [dbo].[OrderDetails] ([OrderId], [ProductId], [Amount]) VALUES (26, 13, 1)
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Cities] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([CityId])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Cities]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Customers] FOREIGN KEY([SendingCust])
REFERENCES [dbo].[Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Customers]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Customers1] FOREIGN KEY([SendingCust])
REFERENCES [dbo].[Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Customers1]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Cities] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([CityId])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Cities]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers1] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers1]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Employees] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employees] ([EmployeeId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Employees]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_TypeOf] FOREIGN KEY([TypeId])
REFERENCES [dbo].[TypeOf] ([TypeId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_TypeOf]
GO
USE [master]
GO
ALTER DATABASE Jewellary_Stroe SET  READ_WRITE 
GO
