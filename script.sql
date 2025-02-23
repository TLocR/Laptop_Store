USE [master]
GO
/****** Object:  Database [ShopDB]    Script Date: 4/2/2023 10:40:52 PM ******/
CREATE DATABASE [ShopDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopDB', FILENAME = N'D:\SQL2022\MSSQL16.SQLEXPRESS\MSSQL\DATA\ShopDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShopDB_log', FILENAME = N'D:\SQL2022\MSSQL16.SQLEXPRESS\MSSQL\DATA\ShopDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShopDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShopDB] SET  MULTI_USER 
GO
ALTER DATABASE [ShopDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShopDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShopDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ShopDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [ShopDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ShopDB]
GO
/****** Object:  User [sasql]    Script Date: 4/2/2023 10:40:52 PM ******/
CREATE USER [sasql] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 4/2/2023 10:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/2/2023 10:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/2/2023 10:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/2/2023 10:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/2/2023 10:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/2/2023 10:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 4/2/2023 10:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[Id] [int] NOT NULL,
	[BrandName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/2/2023 10:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 4/2/2023 10:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderNo] [int] NOT NULL,
	[CustomerId] [int] NULL,
	[DeliveryDate] [date] NULL,
	[OrderDate] [date] NULL,
	[IsComplete] [bit] NULL,
	[IsPaid] [bit] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 4/2/2023 10:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderNo] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [decimal](18, 0) NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderNo] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 4/2/2023 10:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NULL,
	[Price] [decimal](18, 0) NULL,
	[Description] [nvarchar](200) NULL,
	[Image] [nvarchar](max) NULL,
	[Categoryid] [int] NULL,
	[Brandid] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202303310504050_InitialCreate', N'WebApplication1.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EDC36107D2FD07F10F4D416CECA9726488DDD04EEDA6E8DC617649DB46F0157E2AE8548942A51AE8D225FD6877E527FA14389BAF1A2CBAEBCBB0E0A145E717866381C7286C361FEFBE7DFF1DB07DF33EE7114BB01999807A37DD3C0C40E1C972C276642172F5E9B6FDF7CFBCDF8CCF11F8C8F39DD11A3839E249E98779486C79615DB77D847F1C877ED288883051DD9816F2127B00EF7F77FB20E0E2C0C10266019C6F87D42A8EBE3F407FC9C06C4C6214D90771938D88BF9776899A5A8C615F2711C221B4FCCDFF1FC240C3DD74614443918653D4CE3C473114833C3DEC2341021014D098E3FC47846A3802C67217C40DEED6388816E81BC18F3311C97E45D87B37FC88663951D73283B8969E0F7043C38E2FAB1C4EE2B69D92CF4071A3C034DD34736EA548B13F3C2C1E9A7F781070A10191E4FBD88114FCCCB82C5491C5E613ACA3B8E32C8F308E0FE0AA2CFA32AE29ED1B9DF5E614F87A37DF6DF9E314D3C9A447842704223E4ED1937C91CA6FA37FC781B7CC6647274305F1CBD7EF90A3947AF7EC4472FAB2385B1025DED037CBA89821047201B5E14E3370DABDECF123B16DD2A7D32AD802DC1D2308D4BF4F00E9325BD834573F8DA34CEDD07ECE45FB8717D202EAC24E844A3047E5E259E87E61E2EDAAD469EECFF0D5C0F5FBE1A84EB15BA7797E9D40BFC61E144B0AEDE632F6D8DEFDC305B5EB5F9FEC4C9CEA3C067BFEBF695B57E9A054964B3C1045A925B142D31AD4B37B64AE3ED64D20C6A78B3CE5177DFB499A4B2792B49D980565909398B4DAF865CDEA7E5DBD9E22A2E8869A4C9E0D40E6B2420EC19025D6942075D4D88C0D0BEE61DF1CC47AE37C096D8810B44240B37F27131CA9F033040447ACB7C83E2187604E75714DF35880E7F0E20FA0CDB4904863AA3C80F9F9CDBCD5D40F055E2CF99FD6F8ED7605373FB57708E6C1A446784F55A1BEF5D607F0E127A469C5344F1076AE780ECE7ADEB770718449C13DBC6717C0EC68C9D690001770E7841E8D1616F38B6496D3B24997AC8F5D53189B09D7ECA49CBB8444D21C5261A32557CD224EABB60E9926EA2E6A47A51338A565139595F511958374939A55ED094A055CE8C6AB0882F9DA1E143BE1476F763BEF59CB76E2FA8A871063B24FE05131CC136E6DC204A7144CA19E8B26F6C235848A78F317D72DF9472FA88BC6468562BAD867413187E35A4B0BBBF1A5231E1F3BDEBB0A8A4C341282706F84EF4EA3356FB9A1324DBF472A80D73D3CC37B307E896CB491C07B69BAE02450A8C2730EAF2430C67B46733B2D1881911181818BACB5C1E7C81B199A2515D9353EC618A8D133B4B114E516C234756230CC8E92158EE511582959991BA703F483CC1D271C43A2176088A61A5BA84CACBC225B61B22AF554B42CF8E2E8C8DBDE021B69CE21013C6B055135D98AB13214C80828F30296D1A1A5B158B6B36444DD4AA9BF3B610B69C77293FB1119B6C899D3576C9E3B72731CC668D6DC0389B55D245006D526F1B06CACF2A5D0D403CB8EC9A810A27268D81F2906A23065AD7D8160CB4AE926767A0D911B5EBFC0BE7D55D33CFFA4179F36EBD515D5BB0CD9A3E76CC34B3D813FA50E88123D93C4FE7AC113F50C5E10CE4E4E7B39887BAA28930F019A6F5944D19EF2AE350AB194434A226C0D2D05A40F975A004242DA81EC2E5B9BC46E97814D10336CFBB35C2F2BD5F80ADD8808C5DBD16AD10EA2F4F45E3EC74FA284656588364E49D0E0B151C8541889B577DE01D94A2CBCBCA8AE9120BF789862B03E393D1A0A096C855A3A47C30836B2937CD762DA902B23E21D95A5A12C2278D96F2C10CAE256EA3ED4A5204053DC282B5545477E1032DB63CD351789BA26D6C651553FCC3D8D294568D2F5118BA645929B5E25F8C595667357D31EB5F7CE46718961D2B6A900A690B4E3488D0120BADC01A243D77A3989E228AE688E579A68E2F91297DAB66FBCF5956DDA73C89B91FC8A9D9DF590FCD257ECDDFCA0109C7398751FA2CAA4953E90A1B50773758F91BF250A4C8DE4F032FF1893EC8D2F7CEEEF0AAFDB32F32C2D812E4978228496352A85B577FA7C99117C6801355C431AB4F961E42A7F23C0AAD2A5D1799EA51F24455154597BCDADAE4E9029ADE1326C68BFDE7AB15E169D6172F52A902F04F3D312A750E1258A5AD3B6ABD14A58A596FE98E28D49B542185A61E5256AB4A6A42561B56C2D368544DD19D835C475245975BBB232B2A4AAAD08AE615B015328B6DDD511545275560457377ECB20245DC4877D883694F316BB9B0ECB0BB9E0FD3603CCDAE388C0BACDCE957812A9F7B62F15B7B098C7FDF498BD29EF8D6B2A82CCFB19E456930F43B50ED46BCBE01355EE3EB316BD7DCB54DBEE99A5F8FD7CF6E9FD43AA4439F4852702F0E7FC2216FCC0F5CED8F6CA4135846621AB91AC1C13FC614FB2346309AFDE94D3D17B3ED3C27B844C45DE09866A51DE6E1FEC1A1F0466777DECB5871EC788A03ABEED14C7DCE3650A545EE5164DFA148AE9958E34D49092AA5A32F88831F26E6DF69AFE334B3C1FE4A3FEF1917F107E2FE9940C36D9460E38B5C033A4C8D7D87571D85A05F9EC57389EE2ABFF8E353D675CFB88E60391D1BFB82A25799FEFA238A5ED2645DD79066E5A715CF77B5D5DE2B285185D5B2FAF384B94B07799A904BF99D8F1EBEEF2B9AF2F9C15A888A270643E10DA242DD138255B0B4CF071CF849D3E703FD06AB7E4EB08A68DAA7042EE90F263E24E8BE0DE53DB7E8871487A64D6C49A99E5B0BB1D7AACADCB66F92EAB5D75AE8724D760FB841EBAED70B519E593DF360AE5351AE3C18F636EDFEC96B9477A52CB90CDAB75B8DBCC902E486CBA5AFAAEE78072AE514953FDBAF2EDEB4ADE9B2C03B5EA2D9AF8678C78C8DBBF9ED570A6FDAD87409E21D37B65EF5C03B666BDBF29F5BB6B4CE2E74EBD5BD72A192E6364795456EABDECD52EE70FC9F0760045944993DBA54978B3595BAB6302C49F44CF5756A226369E1487C258A66B6FDC6CA1D7EE360394D335B4D7567136FBEFF37F2E634CDBC353593DBA83B56562DAA6AC15BF6B1A652AAE754675C1B494B597B5BCCDA7835FF9CCA8A07514A6DF5686E979F4F15F1202A1972E9F4A81A962F8AC17756FECD46F0DFB1BB2C21D8BFE048B05DF39A05CD055904B9F31624CA49840CCD25A6C801977A125177816C0ACD2C019DBE1A4F937AEC1A648E9D0B729DD030A13064ECCFBD5AC28B05014DFCD3D2E8BACCE3EB90FD8A87180288E9B2C4FD35F939713DA790FB5C9113D240B0E882A77BD95C5296F65D3E16485701E908C4D5570445B7D80F3D008BAFC90CDDE3556403F37B8797C87E2C33803A90F689A8AB7D7CEAA26584FC986394FDE127D8B0E33FBCF91FE8CBB96EBA540000, N'6.4.4')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2', N'Member')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'58aae9fa-4a01-4976-9e93-dfc9ef13a989', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a4e7b6df-ab65-4c8e-a642-f9764304cbf7', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd239b99b-48a8-4c99-8756-f6c48c64c5b5', N'2')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'58aae9fa-4a01-4976-9e93-dfc9ef13a989', N'admin@gmail.com', 0, N'AC9XPLCMQRElyltBoHOCd/Jzhcjel70HGhzboSWAH1UyrNZ5zmHzTk6sWtzLj2hVYQ==', N'27221776-cda5-46ef-b452-a1977f5f6af0', NULL, 0, 0, NULL, 1, 0, N'admin@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a4e7b6df-ab65-4c8e-a642-f9764304cbf7', N'mem1@gmail.com', 0, N'ABxf/SeFsOil6aw7e4syTVaZ4U1hFosUmvj+Vrk4GYhdv9XjRPPy/TPGLzoQJKkVMw==', N'5acf634b-1973-48e8-b2f4-821c11dbecf6', NULL, 0, 0, NULL, 1, 0, N'mem1@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'd239b99b-48a8-4c99-8756-f6c48c64c5b5', N'Quangne@gmail.com', 0, N'AFT2Pw3c1U32MZvcMcaD+4uGwDutLKB6NMBm1lXrS5TFrPvqEyYdi8WTIxhDrX8uOQ==', N'319c4d3a-9215-449f-9258-ec6a3db9ee9d', NULL, 0, 0, NULL, 1, 0, N'Quangne@gmail.com')
GO
INSERT [dbo].[Brand] ([Id], [BrandName]) VALUES (1, N'Asus')
INSERT [dbo].[Brand] ([Id], [BrandName]) VALUES (2, N'MSI')
INSERT [dbo].[Brand] ([Id], [BrandName]) VALUES (3, N'TUF')
INSERT [dbo].[Brand] ([Id], [BrandName]) VALUES (4, N'ROG')
INSERT [dbo].[Brand] ([Id], [BrandName]) VALUES (5, N'Acer')
INSERT [dbo].[Brand] ([Id], [BrandName]) VALUES (6, N'AlienWare')
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [CategoryName]) VALUES (4, N'Máy Tính')
INSERT [dbo].[Category] ([Id], [CategoryName]) VALUES (8, N'Bàn Phím')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (1, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (2, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (3, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (4, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (5, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (6, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (7, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (8, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (9, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (10, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (11, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (12, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (13, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (14, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (15, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (16, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (17, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (18, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (19, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (20, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (21, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (22, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (23, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (24, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (25, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (26, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (27, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (28, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (29, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (30, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (31, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (32, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (33, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (34, NULL, NULL, CAST(N'2023-04-01' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (35, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (36, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (37, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (38, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (39, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (40, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (41, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (42, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (43, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (44, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (45, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (46, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (47, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (48, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (49, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (50, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (51, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (52, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (53, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (54, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (55, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (56, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (57, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (58, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (59, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (60, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (61, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (62, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (63, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (64, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (65, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (66, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (67, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (68, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (69, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (70, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (71, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (72, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (73, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (74, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (75, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (76, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (77, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (78, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (79, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (80, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (81, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (82, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (83, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (84, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (85, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (86, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (87, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (88, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (89, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (90, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (91, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
INSERT [dbo].[Order] ([OrderNo], [CustomerId], [DeliveryDate], [OrderDate], [IsComplete], [IsPaid]) VALUES (92, NULL, NULL, CAST(N'2023-04-02' AS Date), 0, 0)
GO
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (1, 42, CAST(343434 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (2, 42, CAST(343434 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (3, 42, CAST(343434 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (11, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (18, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (19, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (21, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (22, 40, CAST(154500 AS Decimal(18, 0)), 2)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (22, 41, CAST(144444 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (24, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (27, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (29, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (31, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (32, 42, CAST(343434 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (33, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (34, 40, CAST(154500 AS Decimal(18, 0)), 2)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (35, 40, CAST(154500 AS Decimal(18, 0)), 56)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (39, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (40, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (41, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (53, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (55, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (56, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (58, 71, CAST(1231231 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (61, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (63, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (65, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (67, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (69, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (70, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (72, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (74, 41, CAST(144444 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (75, 41, CAST(144444 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (75, 72, CAST(1234456 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (77, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (78, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (79, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (80, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (81, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (83, 40, CAST(154500 AS Decimal(18, 0)), 3)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (84, 40, CAST(154500 AS Decimal(18, 0)), 3)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (84, 74, CAST(8756765 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (85, 74, CAST(8756765 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (86, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (87, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (88, 40, CAST(154500 AS Decimal(18, 0)), 16)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (90, 40, CAST(154500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetail] ([OrderNo], [ProductId], [Price], [Quantity]) VALUES (91, 40, CAST(154500 AS Decimal(18, 0)), 2)
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Title], [Price], [Description], [Image], [Categoryid], [Brandid]) VALUES (40, N'Laptop Gaming Acer Aspire 7 A715-42G-R05G', CAST(154500 AS Decimal(18, 0)), N'CPU AMD Ryzen 5 5500U VGAGeforce GTX 1650 4GB RAM DDR4 8GB (1 x 8GB) 3200MHz; 2 slots, up to 32GB', N'acer.jpg', 4, 1)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Description], [Image], [Categoryid], [Brandid]) VALUES (41, N'Laptop MSI Modern 15 A5M 239VN', CAST(144444 AS Decimal(18, 0)), N'CPU AMD Ryzen 7 5700UVGA AMD Radeon GraphicsRAM DDR4 8GB (1 x 8GB) 3200MHz; 2 slot, up to 32GB', N'msi3.jpg', 4, 2)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Description], [Image], [Categoryid], [Brandid]) VALUES (42, N'Laptop Gaming Acer Predator Helios 300', CAST(343434 AS Decimal(18, 0)), N'CPU Intel Core i7 12700H VGA Geforce RTX 3070Ti 8GB RAM DDR5 16GB (2 x 8GB) 4800MHz ; 2 slots, up to 64GB', N'acer1.jpg', 4, 5)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Description], [Image], [Categoryid], [Brandid]) VALUES (70, N'Laptop Gaming Alienware X17 R1', CAST(231313 AS Decimal(18, 0)), N'CPU 11th Generation Intel® Core™ i7-11800H (8-Core, 24MB Cache, up to 4.6GHz Max Turbo Frequency)  RAM 16GB DDR4 3200MHz  HARD DISK NVIDIA® GeForce RTX™ 3070 8GB GDDR6', N'AL1 (1).jpg', 4, 6)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Description], [Image], [Categoryid], [Brandid]) VALUES (71, N'Laptop Gaming Asus ROG Strix G15 G513IE-HN729W', CAST(1231231 AS Decimal(18, 0)), N'CPU AMD Ryzen 7 4800H VGA Geforce RTX 3050 4GB RAM DDR4 8GB (1 x 8GB) 3200MHz; 2 slots, up to 32GB', N'rog3.jpg', 4, 4)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Description], [Image], [Categoryid], [Brandid]) VALUES (72, N'PC QNL a3060', CAST(1234456 AS Decimal(18, 0)), N'CPU Intel Core i5-13400F 16GB RAM RTX 3060 250GB SSD', N'pc10.jpg', 4, 4)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Description], [Image], [Categoryid], [Brandid]) VALUES (73, N'PC QNL MPG7 4070T', CAST(4556645 AS Decimal(18, 0)), N'CPU Intel Core i7-13700K 32GB RAM RTX 4070Ti 500GB SSD', N'pc4.jpg', 4, 1)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Description], [Image], [Categoryid], [Brandid]) VALUES (74, N'PC QNL a4070', CAST(8756765 AS Decimal(18, 0)), N'CPU Intel Core i5-13400F 16GB RAM RTX 4070Ti 500GB SSD', N'pc3 (1).jpg', 4, 5)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Description], [Image], [Categoryid], [Brandid]) VALUES (75, N'PC QNL UD3 2060', CAST(88888 AS Decimal(18, 0)), N'CPU Intel Core i3-12100F 16GB RTX 2060 250GB SSD', N'pc8.jpg', 4, 4)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Description], [Image], [Categoryid], [Brandid]) VALUES (76, N'PC QNL UD5', CAST(666666 AS Decimal(18, 0)), N'CPU Intel Core i5-12400F 16GB GTX 1660 Super 250GB SSD', N'pc9.jpg', 4, 3)
INSERT [dbo].[Product] ([Id], [Title], [Price], [Description], [Image], [Categoryid], [Brandid]) VALUES (84, N'12313', CAST(1231313 AS Decimal(18, 0)), N'123123', N'/Content/ImageBooks/an-it-de-khoe.jpg', 8, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 4/2/2023 10:40:53 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/2/2023 10:40:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/2/2023 10:40:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 4/2/2023 10:40:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/2/2023 10:40:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 4/2/2023 10:40:53 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderNo])
REFERENCES [dbo].[Order] ([OrderNo])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brand] FOREIGN KEY([Brandid])
REFERENCES [dbo].[Brand] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Brand]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([Categoryid])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
USE [master]
GO
ALTER DATABASE [ShopDB] SET  READ_WRITE 
GO
