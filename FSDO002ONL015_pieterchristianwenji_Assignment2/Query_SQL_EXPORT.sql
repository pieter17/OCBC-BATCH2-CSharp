USE [master]
GO
/****** Object:  Database [BANK]    Script Date: 25/11/2021 02:17:55 ******/
CREATE DATABASE [BANK]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BANK', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BANK.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BANK_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BANK_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BANK] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BANK].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BANK] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BANK] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BANK] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BANK] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BANK] SET ARITHABORT OFF 
GO
ALTER DATABASE [BANK] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BANK] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BANK] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BANK] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BANK] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BANK] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BANK] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BANK] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BANK] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BANK] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BANK] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BANK] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BANK] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BANK] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BANK] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BANK] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BANK] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BANK] SET RECOVERY FULL 
GO
ALTER DATABASE [BANK] SET  MULTI_USER 
GO
ALTER DATABASE [BANK] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BANK] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BANK] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BANK] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BANK] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BANK] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BANK', N'ON'
GO
ALTER DATABASE [BANK] SET QUERY_STORE = OFF
GO
USE [BANK]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 25/11/2021 02:17:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[customerNumber] [int] IDENTITY(1,1) NOT NULL,
	[customerName] [varchar](25) NULL,
	[contactLastName] [varchar](25) NULL,
	[contactFirstName] [varchar](25) NULL,
	[phone] [varchar](12) NULL,
	[addressLine1] [varchar](35) NULL,
	[addressLine2] [varchar](35) NULL,
	[city] [varchar](20) NULL,
	[state] [varchar](20) NULL,
	[postalCode] [varchar](5) NULL,
	[country] [varchar](20) NULL,
	[salesRepEmployeNumber] [int] NULL,
	[creditLimit] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[customerNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 25/11/2021 02:17:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[employeeNumber] [int] IDENTITY(1,1) NOT NULL,
	[lastName] [varchar](25) NULL,
	[firstName] [varchar](25) NULL,
	[extension] [varchar](20) NULL,
	[email] [varchar](25) NULL,
	[officeCode] [char](5) NULL,
	[reportsTo] [int] NULL,
	[jobTitle] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[employeeNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[offices]    Script Date: 25/11/2021 02:17:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[offices](
	[officeCode] [char](5) NOT NULL,
	[city] [varchar](20) NULL,
	[country] [varchar](20) NULL,
	[postalCode] [varchar](5) NULL,
	[territory] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[officeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderdetails]    Script Date: 25/11/2021 02:17:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderdetails](
	[orderNumber] [int] NOT NULL,
	[productCode] [int] NOT NULL,
	[quantityOrdered] [int] NULL,
	[priceEach] [float] NULL,
	[orderLineNumber] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 25/11/2021 02:17:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[orderNumber] [int] IDENTITY(1,1) NOT NULL,
	[orderDate] [date] NULL,
	[requiredDate] [date] NULL,
	[shippedDate] [date] NULL,
	[status] [varchar](8) NULL,
	[comments] [varchar](25) NULL,
	[customerNumber] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payments]    Script Date: 25/11/2021 02:17:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payments](
	[customerNumber] [int] NULL,
	[checkNumber] [int] IDENTITY(1,1) NOT NULL,
	[paymentDate] [date] NULL,
	[amount] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[checkNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productlines]    Script Date: 25/11/2021 02:17:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productlines](
	[productLine] [int] NOT NULL,
	[textDescription] [varchar](50) NULL,
	[htmlDescription] [varchar](50) NULL,
	[image] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[productLine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 25/11/2021 02:17:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[productCode] [int] IDENTITY(1,1) NOT NULL,
	[productName] [varchar](50) NULL,
	[productLine] [int] NULL,
	[productScale] [varchar](25) NULL,
	[productVendor] [varchar](25) NULL,
	[productDescription] [varchar](100) NULL,
	[quantityInStock] [int] NULL,
	[buyPrice] [float] NULL,
	[MSRP] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[productCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[customers] ON 

INSERT [dbo].[customers] ([customerNumber], [customerName], [contactLastName], [contactFirstName], [phone], [addressLine1], [addressLine2], [city], [state], [postalCode], [country], [salesRepEmployeNumber], [creditLimit]) VALUES (1, N'Ilham', N'Bruce', N'Ilham', N'08129381', N'Bandung', N'Cimahi', N'Bandung', N'Jawa Barat', N'40331', N'Indonesia', 4, 4000000)
INSERT [dbo].[customers] ([customerNumber], [customerName], [contactLastName], [contactFirstName], [phone], [addressLine1], [addressLine2], [city], [state], [postalCode], [country], [salesRepEmployeNumber], [creditLimit]) VALUES (2, N'Putri', N'Putri', N'Daya', N'0182301803', N'Penang', N'Penang', N'Penang', N'Malay', N'23132', N'Malaysia', 5, 5000000)
INSERT [dbo].[customers] ([customerNumber], [customerName], [contactLastName], [contactFirstName], [phone], [addressLine1], [addressLine2], [city], [state], [postalCode], [country], [salesRepEmployeNumber], [creditLimit]) VALUES (3, N'Steve', N'Steve', N'Michael', N'02938109', N'Jakarta', N'Malang', N'Jakarta', N'Jakarta', N'41276', N'Indonesia', 5, 9000000)
INSERT [dbo].[customers] ([customerNumber], [customerName], [contactLastName], [contactFirstName], [phone], [addressLine1], [addressLine2], [city], [state], [postalCode], [country], [salesRepEmployeNumber], [creditLimit]) VALUES (4, N'Maxie', N'Hoppner', N'Samara', N'2453944373', N'Asempapak', N'Dongle', N'Ystad', N'ystad', N'31231', N'Indonesia', 6, 5000000)
INSERT [dbo].[customers] ([customerNumber], [customerName], [contactLastName], [contactFirstName], [phone], [addressLine1], [addressLine2], [city], [state], [postalCode], [country], [salesRepEmployeNumber], [creditLimit]) VALUES (5, N'Ashlan', N'Downey', N'Maudie', N'6759759804', N'Delareyville', N'Rušanj', N'Pakokku', N'paskda', N'21311', N'South Africa', 9, 6000000)
INSERT [dbo].[customers] ([customerNumber], [customerName], [contactLastName], [contactFirstName], [phone], [addressLine1], [addressLine2], [city], [state], [postalCode], [country], [salesRepEmployeNumber], [creditLimit]) VALUES (6, N'Miguel', N'Kynton', N'Chas', N'1088641445', N'Son T?nh', N'Hà Tiên', N'Nanjia', N'nigeria', N'29311', N'Vietnam', 8, 5000000)
INSERT [dbo].[customers] ([customerNumber], [customerName], [contactLastName], [contactFirstName], [phone], [addressLine1], [addressLine2], [city], [state], [postalCode], [country], [salesRepEmployeNumber], [creditLimit]) VALUES (7, N'Jono', N'abram', N'jono', N'08231311', N'malang', N'malang', N'malang', N'jawa', N'12311', N'indonesia', 7, 5000000)
INSERT [dbo].[customers] ([customerNumber], [customerName], [contactLastName], [contactFirstName], [phone], [addressLine1], [addressLine2], [city], [state], [postalCode], [country], [salesRepEmployeNumber], [creditLimit]) VALUES (8, N'Bradney', N'Enderby', N'Wendie', N'2204572235', N'Bobrovka', N'Rybczewice', N'Santo Niño', N'Russia', N'12313', N'Russia', 7, 7000000)
INSERT [dbo].[customers] ([customerNumber], [customerName], [contactLastName], [contactFirstName], [phone], [addressLine1], [addressLine2], [city], [state], [postalCode], [country], [salesRepEmployeNumber], [creditLimit]) VALUES (9, N'Maia', N'Scarlon', N'Courtney', N'5826757885', N'Baisha', N'Jiangqiao', N'Conceição do Coité', N'xaind', N'01231', N'China', 4, 10000000)
INSERT [dbo].[customers] ([customerNumber], [customerName], [contactLastName], [contactFirstName], [phone], [addressLine1], [addressLine2], [city], [state], [postalCode], [country], [salesRepEmployeNumber], [creditLimit]) VALUES (10, N'Torrence', N'Merredy', N'Baily', N'4367372822', N'Gaopai', N'Montpellier', N'Chone', N'china', N'21311', N'China', 5, 8000000)
SET IDENTITY_INSERT [dbo].[customers] OFF
GO
SET IDENTITY_INSERT [dbo].[employees] ON 

INSERT [dbo].[employees] ([employeeNumber], [lastName], [firstName], [extension], [email], [officeCode], [reportsTo], [jobTitle]) VALUES (1, N'Doe', N'John', N'14', N'John@gmail.com', N'10001', NULL, N'CEO')
INSERT [dbo].[employees] ([employeeNumber], [lastName], [firstName], [extension], [email], [officeCode], [reportsTo], [jobTitle]) VALUES (2, N'Dimas', N'Van', N'14', N'Van@gmail.com', N'10002', NULL, N'Head')
INSERT [dbo].[employees] ([employeeNumber], [lastName], [firstName], [extension], [email], [officeCode], [reportsTo], [jobTitle]) VALUES (3, N'Yanto', N'yunus', N'14', N'yanto@mail.com', N'20004', NULL, N'Head')
INSERT [dbo].[employees] ([employeeNumber], [lastName], [firstName], [extension], [email], [officeCode], [reportsTo], [jobTitle]) VALUES (4, N'Steve', N'Michael', N'13', N'steve@mail.com', N'10001', 1, N'Secret')
INSERT [dbo].[employees] ([employeeNumber], [lastName], [firstName], [extension], [email], [officeCode], [reportsTo], [jobTitle]) VALUES (5, N'Chntiya', N'Steph', N'14', N'cSteph@gmail.com', N'20002', 1, N'Staff')
INSERT [dbo].[employees] ([employeeNumber], [lastName], [firstName], [extension], [email], [officeCode], [reportsTo], [jobTitle]) VALUES (6, N'Luuk', N'De Jong', N'11', N'jong@yahoo.com', N'10003', 2, N'Staff')
INSERT [dbo].[employees] ([employeeNumber], [lastName], [firstName], [extension], [email], [officeCode], [reportsTo], [jobTitle]) VALUES (7, N'Ajam', N'Vernon', N'12', N'vajam0@technorati.com', N'10002', 3, N'Technician')
INSERT [dbo].[employees] ([employeeNumber], [lastName], [firstName], [extension], [email], [officeCode], [reportsTo], [jobTitle]) VALUES (8, N'Bearcroft', N'Fleming', N'3', N'fbearcroft2@nhs.uk', N'20001', 2, N'Executive')
INSERT [dbo].[employees] ([employeeNumber], [lastName], [firstName], [extension], [email], [officeCode], [reportsTo], [jobTitle]) VALUES (9, N'Privost', N'Tedmund', N'12', N'tprivost5@tuttocitta.it', N'20005', 3, N'Programmer')
INSERT [dbo].[employees] ([employeeNumber], [lastName], [firstName], [extension], [email], [officeCode], [reportsTo], [jobTitle]) VALUES (10, N'Lamburne', N'Nataline', N'14', N'nlamburne1@blogger.com', N'10005', 1, N'Food')
SET IDENTITY_INSERT [dbo].[employees] OFF
GO
INSERT [dbo].[offices] ([officeCode], [city], [country], [postalCode], [territory]) VALUES (N'10001', N'Bandung', N'Indonesia', N'40534', N'Asia Afrika')
INSERT [dbo].[offices] ([officeCode], [city], [country], [postalCode], [territory]) VALUES (N'10002', N'Jakarta', N'Indonesia', N'40712', N'Selatan')
INSERT [dbo].[offices] ([officeCode], [city], [country], [postalCode], [territory]) VALUES (N'10003', N'Medan', N'Indonesia', N'42103', N'medan')
INSERT [dbo].[offices] ([officeCode], [city], [country], [postalCode], [territory]) VALUES (N'10004', N'Surabaya', N'Indonesia', N'40192', N'jawa')
INSERT [dbo].[offices] ([officeCode], [city], [country], [postalCode], [territory]) VALUES (N'10005', N'jayapura', N'indonesia', N'48121', N'papua')
INSERT [dbo].[offices] ([officeCode], [city], [country], [postalCode], [territory]) VALUES (N'20001', N'singapore', N'singapore', N'29132', N'singapore')
INSERT [dbo].[offices] ([officeCode], [city], [country], [postalCode], [territory]) VALUES (N'20002', N'Penang', N'Malaysia', N'10212', N'Penang')
INSERT [dbo].[offices] ([officeCode], [city], [country], [postalCode], [territory]) VALUES (N'20003', N'sydney', N'autralia', N'19282', N'sydney')
INSERT [dbo].[offices] ([officeCode], [city], [country], [postalCode], [territory]) VALUES (N'20004', N'johor', N'malaysia', N'92310', N'johor')
INSERT [dbo].[offices] ([officeCode], [city], [country], [postalCode], [territory]) VALUES (N'20005', N'johor baru', N'malaysia', N'92310', N'johor baru')
GO
INSERT [dbo].[orderdetails] ([orderNumber], [productCode], [quantityOrdered], [priceEach], [orderLineNumber]) VALUES (1, 2, 100, 65000, 1)
INSERT [dbo].[orderdetails] ([orderNumber], [productCode], [quantityOrdered], [priceEach], [orderLineNumber]) VALUES (2, 1, 100, 250000, 2)
INSERT [dbo].[orderdetails] ([orderNumber], [productCode], [quantityOrdered], [priceEach], [orderLineNumber]) VALUES (3, 3, 200, 25000, 3)
INSERT [dbo].[orderdetails] ([orderNumber], [productCode], [quantityOrdered], [priceEach], [orderLineNumber]) VALUES (4, 6, 1, 5000000, 4)
INSERT [dbo].[orderdetails] ([orderNumber], [productCode], [quantityOrdered], [priceEach], [orderLineNumber]) VALUES (5, 8, 10, 300000, 5)
INSERT [dbo].[orderdetails] ([orderNumber], [productCode], [quantityOrdered], [priceEach], [orderLineNumber]) VALUES (6, 9, 7, 255000, 6)
INSERT [dbo].[orderdetails] ([orderNumber], [productCode], [quantityOrdered], [priceEach], [orderLineNumber]) VALUES (7, 5, 5, 1000000, 7)
INSERT [dbo].[orderdetails] ([orderNumber], [productCode], [quantityOrdered], [priceEach], [orderLineNumber]) VALUES (8, 10, 100, 12500, 8)
INSERT [dbo].[orderdetails] ([orderNumber], [productCode], [quantityOrdered], [priceEach], [orderLineNumber]) VALUES (9, 4, 50, 25000, 9)
INSERT [dbo].[orderdetails] ([orderNumber], [productCode], [quantityOrdered], [priceEach], [orderLineNumber]) VALUES (10, 6, 2, 500000, 10)
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([orderNumber], [orderDate], [requiredDate], [shippedDate], [status], [comments], [customerNumber]) VALUES (1, CAST(N'2021-11-15' AS Date), CAST(N'2021-11-16' AS Date), CAST(N'2021-11-17' AS Date), N'Shipped', N'is Shipping', 1)
INSERT [dbo].[orders] ([orderNumber], [orderDate], [requiredDate], [shippedDate], [status], [comments], [customerNumber]) VALUES (2, CAST(N'2020-11-28' AS Date), CAST(N'2020-12-01' AS Date), CAST(N'2020-12-01' AS Date), N'Shipped', N'no salt', 2)
INSERT [dbo].[orders] ([orderNumber], [orderDate], [requiredDate], [shippedDate], [status], [comments], [customerNumber]) VALUES (3, CAST(N'2021-08-10' AS Date), CAST(N'2021-08-18' AS Date), CAST(N'2021-08-19' AS Date), N'Shipped', N'Wood pack', 3)
INSERT [dbo].[orders] ([orderNumber], [orderDate], [requiredDate], [shippedDate], [status], [comments], [customerNumber]) VALUES (4, CAST(N'2020-12-15' AS Date), CAST(N'2020-12-19' AS Date), CAST(N'2020-12-22' AS Date), N'Shipped', N'no', 9)
INSERT [dbo].[orders] ([orderNumber], [orderDate], [requiredDate], [shippedDate], [status], [comments], [customerNumber]) VALUES (5, CAST(N'2021-04-29' AS Date), CAST(N'2021-04-29' AS Date), CAST(N'2021-04-30' AS Date), N'Shipped', N'no', 6)
INSERT [dbo].[orders] ([orderNumber], [orderDate], [requiredDate], [shippedDate], [status], [comments], [customerNumber]) VALUES (6, CAST(N'2021-03-09' AS Date), CAST(N'2021-03-09' AS Date), CAST(N'2021-03-12' AS Date), N'Shipped', N'wood pack', 4)
INSERT [dbo].[orders] ([orderNumber], [orderDate], [requiredDate], [shippedDate], [status], [comments], [customerNumber]) VALUES (7, CAST(N'2020-12-09' AS Date), CAST(N'2020-12-09' AS Date), CAST(N'2020-12-09' AS Date), N'Shipped', N'express', 3)
INSERT [dbo].[orders] ([orderNumber], [orderDate], [requiredDate], [shippedDate], [status], [comments], [customerNumber]) VALUES (8, CAST(N'2021-04-14' AS Date), CAST(N'2021-04-14' AS Date), CAST(N'2021-04-17' AS Date), N'Shipped', N'no', 5)
INSERT [dbo].[orders] ([orderNumber], [orderDate], [requiredDate], [shippedDate], [status], [comments], [customerNumber]) VALUES (9, CAST(N'2021-10-30' AS Date), CAST(N'2021-10-30' AS Date), CAST(N'2021-10-30' AS Date), N'Shipped', N'same day', 10)
INSERT [dbo].[orders] ([orderNumber], [orderDate], [requiredDate], [shippedDate], [status], [comments], [customerNumber]) VALUES (10, CAST(N'2021-05-25' AS Date), CAST(N'2021-05-27' AS Date), CAST(N'2021-05-28' AS Date), N'Shipped', N'no', 7)
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[payments] ON 

INSERT [dbo].[payments] ([customerNumber], [checkNumber], [paymentDate], [amount]) VALUES (1, 1, CAST(N'2021-11-16' AS Date), 2000000)
INSERT [dbo].[payments] ([customerNumber], [checkNumber], [paymentDate], [amount]) VALUES (3, 2, CAST(N'2021-08-18' AS Date), 5000000)
INSERT [dbo].[payments] ([customerNumber], [checkNumber], [paymentDate], [amount]) VALUES (2, 3, CAST(N'2020-12-01' AS Date), 500000)
INSERT [dbo].[payments] ([customerNumber], [checkNumber], [paymentDate], [amount]) VALUES (9, 4, CAST(N'2020-12-19' AS Date), 900000)
INSERT [dbo].[payments] ([customerNumber], [checkNumber], [paymentDate], [amount]) VALUES (6, 5, CAST(N'2021-04-30' AS Date), 7500000)
INSERT [dbo].[payments] ([customerNumber], [checkNumber], [paymentDate], [amount]) VALUES (4, 6, CAST(N'2021-03-09' AS Date), 4000000)
INSERT [dbo].[payments] ([customerNumber], [checkNumber], [paymentDate], [amount]) VALUES (3, 7, CAST(N'2020-12-09' AS Date), 2350000)
INSERT [dbo].[payments] ([customerNumber], [checkNumber], [paymentDate], [amount]) VALUES (5, 8, CAST(N'2021-04-14' AS Date), 750000)
INSERT [dbo].[payments] ([customerNumber], [checkNumber], [paymentDate], [amount]) VALUES (10, 9, CAST(N'2021-10-30' AS Date), 6000000)
INSERT [dbo].[payments] ([customerNumber], [checkNumber], [paymentDate], [amount]) VALUES (7, 10, CAST(N'2021-05-27' AS Date), 3500000)
SET IDENTITY_INSERT [dbo].[payments] OFF
GO
INSERT [dbo].[productlines] ([productLine], [textDescription], [htmlDescription], [image]) VALUES (1, N'FOOD AND DRINKS', N'<p>FOOD AND DRINKS</p>', NULL)
INSERT [dbo].[productlines] ([productLine], [textDescription], [htmlDescription], [image]) VALUES (2, N'SELL THING ABOUT AUTOMOTIF', N'<p>SELL THING ABOUT AUTOMOTIF</p>', NULL)
INSERT [dbo].[productlines] ([productLine], [textDescription], [htmlDescription], [image]) VALUES (3, N'SELL COSMETIC FOR MAN AND WOMAN', N'<p>SELL COSMETIC FOR MAN AND WOMAN</p>', NULL)
INSERT [dbo].[productlines] ([productLine], [textDescription], [htmlDescription], [image]) VALUES (4, N'TOYS', N'<p>Toys</p>', NULL)
INSERT [dbo].[productlines] ([productLine], [textDescription], [htmlDescription], [image]) VALUES (5, N'sell Furniture', N'<p>sell Furniture</p>', NULL)
INSERT [dbo].[productlines] ([productLine], [textDescription], [htmlDescription], [image]) VALUES (6, N'Hardware Computers', N'<p>Hardware Computers</p>', NULL)
INSERT [dbo].[productlines] ([productLine], [textDescription], [htmlDescription], [image]) VALUES (7, N'Accseories Computer', N'<p>Accseories Computer</p>', NULL)
INSERT [dbo].[productlines] ([productLine], [textDescription], [htmlDescription], [image]) VALUES (8, N'Video Games', N'<p>Video Games</p>', NULL)
INSERT [dbo].[productlines] ([productLine], [textDescription], [htmlDescription], [image]) VALUES (9, N'Books and dicts', N'<p>Books and dicts</p>', NULL)
INSERT [dbo].[productlines] ([productLine], [textDescription], [htmlDescription], [image]) VALUES (10, N'Plants and flower', N'<p>Plants and flowerPlants and flower</p>', NULL)
GO
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([productCode], [productName], [productLine], [productScale], [productVendor], [productDescription], [quantityInStock], [buyPrice], [MSRP]) VALUES (1, N'sandwich Subway', 1, N'Good', N'subway inc.', N'sell sandwich and drinks', 200, 50000, 65000)
INSERT [dbo].[products] ([productCode], [productName], [productLine], [productScale], [productVendor], [productDescription], [quantityInStock], [buyPrice], [MSRP]) VALUES (2, N'ban Bridgestone', 2, N'Great', N'Bridgestone', N'Ban mobil dan motor', 155, 195000, 250000)
INSERT [dbo].[products] ([productCode], [productName], [productLine], [productScale], [productVendor], [productDescription], [quantityInStock], [buyPrice], [MSRP]) VALUES (3, N'Wardah', 3, N'Great', N'Wardah', N'kosmetik wanita', 225, 18000, 25000)
INSERT [dbo].[products] ([productCode], [productName], [productLine], [productScale], [productVendor], [productDescription], [quantityInStock], [buyPrice], [MSRP]) VALUES (4, N'Hot Wheels', 4, N'Great', N'Namco', N'Mainan mobil', 125, 19000, 25000)
INSERT [dbo].[products] ([productCode], [productName], [productLine], [productScale], [productVendor], [productDescription], [quantityInStock], [buyPrice], [MSRP]) VALUES (5, N'Ikea bed', 5, N'Good', N'IKEA', N'Bed from ikea', 50, 1000000, 950000)
INSERT [dbo].[products] ([productCode], [productName], [productLine], [productScale], [productVendor], [productDescription], [quantityInStock], [buyPrice], [MSRP]) VALUES (6, N'Intel i9 10', 6, N'Great', N'Intel', N'processor', 200, 4850000, 5000000)
INSERT [dbo].[products] ([productCode], [productName], [productLine], [productScale], [productVendor], [productDescription], [quantityInStock], [buyPrice], [MSRP]) VALUES (7, N'Razer Headset', 7, N'Great', N'Razer', N'Headset from razer', 100, 1500000, 1750000)
INSERT [dbo].[products] ([productCode], [productName], [productLine], [productScale], [productVendor], [productDescription], [quantityInStock], [buyPrice], [MSRP]) VALUES (8, N'GTA V', 8, N'Good', N'Rockstar', N'Video games', 250, 250000, 300000)
INSERT [dbo].[products] ([productCode], [productName], [productLine], [productScale], [productVendor], [productDescription], [quantityInStock], [buyPrice], [MSRP]) VALUES (9, N'Harry Potter', 9, N'Great', N'gramedia', N'Book title Harry Potter', 122, 250000, 255000)
INSERT [dbo].[products] ([productCode], [productName], [productLine], [productScale], [productVendor], [productDescription], [quantityInStock], [buyPrice], [MSRP]) VALUES (10, N'Rose', 10, N'good', N'bunga', N'rose flower', 100, 12500, 15000)
SET IDENTITY_INSERT [dbo].[products] OFF
GO
ALTER TABLE [dbo].[orders] ADD  DEFAULT ('notship') FOR [status]
GO
ALTER TABLE [dbo].[customers]  WITH CHECK ADD FOREIGN KEY([salesRepEmployeNumber])
REFERENCES [dbo].[employees] ([employeeNumber])
GO
ALTER TABLE [dbo].[employees]  WITH CHECK ADD FOREIGN KEY([officeCode])
REFERENCES [dbo].[offices] ([officeCode])
GO
ALTER TABLE [dbo].[employees]  WITH CHECK ADD FOREIGN KEY([reportsTo])
REFERENCES [dbo].[employees] ([employeeNumber])
GO
ALTER TABLE [dbo].[orderdetails]  WITH CHECK ADD FOREIGN KEY([orderNumber])
REFERENCES [dbo].[orders] ([orderNumber])
GO
ALTER TABLE [dbo].[orderdetails]  WITH CHECK ADD FOREIGN KEY([productCode])
REFERENCES [dbo].[products] ([productCode])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([customerNumber])
REFERENCES [dbo].[customers] ([customerNumber])
GO
ALTER TABLE [dbo].[payments]  WITH CHECK ADD FOREIGN KEY([customerNumber])
REFERENCES [dbo].[customers] ([customerNumber])
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD FOREIGN KEY([productLine])
REFERENCES [dbo].[productlines] ([productLine])
GO
USE [master]
GO
ALTER DATABASE [BANK] SET  READ_WRITE 
GO
