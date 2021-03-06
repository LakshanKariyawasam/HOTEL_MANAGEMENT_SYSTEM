USE [master]
GO
/****** Object:  Database [RESTURANT]    Script Date: 6/18/2017 10:27:14 AM ******/
CREATE DATABASE [RESTURANT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RESTURANT', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\RESTURANT.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'RESTURANT_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\RESTURANT_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [RESTURANT] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RESTURANT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RESTURANT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RESTURANT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RESTURANT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RESTURANT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RESTURANT] SET ARITHABORT OFF 
GO
ALTER DATABASE [RESTURANT] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [RESTURANT] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [RESTURANT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RESTURANT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RESTURANT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RESTURANT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RESTURANT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RESTURANT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RESTURANT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RESTURANT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RESTURANT] SET  ENABLE_BROKER 
GO
ALTER DATABASE [RESTURANT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RESTURANT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RESTURANT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RESTURANT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RESTURANT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RESTURANT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RESTURANT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RESTURANT] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RESTURANT] SET  MULTI_USER 
GO
ALTER DATABASE [RESTURANT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RESTURANT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RESTURANT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RESTURANT] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [RESTURANT]
GO
/****** Object:  User [admin]    Script Date: 6/18/2017 10:27:14 AM ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [admin]
GO
ALTER ROLE [db_datareader] ADD MEMBER [admin]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [admin]
GO
/****** Object:  Table [dbo].[tbl_account]    Script Date: 6/18/2017 10:27:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ad_date] [date] NOT NULL,
	[ad_time] [varchar](15) NOT NULL,
	[descp] [varchar](70) NOT NULL,
	[debit] [numeric](38, 2) NOT NULL,
	[credit] [numeric](38, 2) NOT NULL,
	[balance] [numeric](38, 2) NOT NULL,
 CONSTRAINT [PK_tbl_account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_customer]    Script Date: 6/18/2017 10:27:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[c_name] [varchar](75) NOT NULL,
	[st_no] [varchar](50) NULL,
	[st_name] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[tp_no] [varchar](20) NULL,
 CONSTRAINT [PK_tbl_customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_expenses]    Script Date: 6/18/2017 10:27:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_expenses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Descrip] [varchar](50) NULL,
	[Amount] [numeric](38, 2) NULL,
	[ex_date] [date] NULL,
	[ex_time] [varchar](10) NULL,
	[userID] [int] NULL,
 CONSTRAINT [PK_tbl_expenses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_GRN_details]    Script Date: 6/18/2017 10:27:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_GRN_details](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[item_id] [int] NULL,
	[qty] [numeric](38, 2) NULL,
	[rate] [numeric](38, 2) NULL,
	[total] [numeric](38, 2) NULL,
	[g_date] [date] NULL,
	[g_time] [varchar](15) NULL,
 CONSTRAINT [PK_tbl_GRN_details] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Invoce_list]    Script Date: 6/18/2017 10:27:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Invoce_list](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Inv_no] [int] NOT NULL,
	[Sub_total] [numeric](38, 2) NOT NULL,
	[Disc] [numeric](38, 2) NOT NULL,
	[Net_total] [numeric](38, 2) NOT NULL,
	[Reciverd] [numeric](38, 2) NULL,
	[Balance] [numeric](38, 2) NULL,
	[Pmt_type] [varchar](10) NULL,
	[inv_date] [date] NOT NULL,
	[inv_time] [varchar](15) NOT NULL,
	[Tbl_ID] [int] NULL,
	[Cus_id] [int] NULL,
	[User_id] [int] NOT NULL,
	[Inv_state] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Invoce_list] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Invoice_details]    Script Date: 6/18/2017 10:27:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Invoice_details](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Inv_no] [int] NOT NULL,
	[itm_id] [int] NOT NULL,
	[itm_name] [varchar](200) NOT NULL,
	[rate] [numeric](38, 2) NOT NULL,
	[qty] [numeric](38, 2) NOT NULL,
	[disc] [numeric](38, 2) NOT NULL,
	[tt_amount] [numeric](38, 2) NULL,
	[inv_date] [date] NOT NULL,
	[inv_time] [varchar](20) NOT NULL,
	[itm_type] [varchar](20) NOT NULL,
	[User_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Invoice_details] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_item_ctgry]    Script Date: 6/18/2017 10:27:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_item_ctgry](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ct_name] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_item_ctgry] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_items]    Script Date: 6/18/2017 10:27:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_items](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ctgry_id] [int] NOT NULL,
	[item_name] [varchar](100) NOT NULL,
	[item_dscp] [varchar](100) NULL,
	[cost] [numeric](38, 2) NOT NULL,
	[price] [numeric](38, 2) NOT NULL,
	[disc] [numeric](38, 2) NOT NULL,
	[type] [varchar](15) NOT NULL,
 CONSTRAINT [PK_tbl_items] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_reserved_table]    Script Date: 6/18/2017 10:27:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_reserved_table](
	[RID] [int] IDENTITY(1,1) NOT NULL,
	[tb_ID] [int] NULL,
	[itm_ID] [int] NULL,
	[qty] [numeric](38, 2) NULL,
	[cus_id] [int] NULL,
	[cus_name] [varchar](70) NULL,
 CONSTRAINT [PK_tbl_reserved_table] PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_settings]    Script Date: 6/18/2017 10:27:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_settings](
	[ID] [int] NOT NULL,
	[Data_A] [int] NULL,
	[Data_B] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_settings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_stock]    Script Date: 6/18/2017 10:27:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_stock](
	[ID] [int] NOT NULL,
	[in_stock] [numeric](38, 2) NOT NULL,
	[damge] [numeric](38, 2) NULL,
	[last_rc_qty] [numeric](38, 2) NOT NULL,
	[itm_ctgry] [varchar](15) NOT NULL,
 CONSTRAINT [PK_tbl_stock] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_stock_rc]    Script Date: 6/18/2017 10:27:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_stock_rc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Item_id] [int] NOT NULL,
	[reson] [varchar](25) NOT NULL,
	[qty] [numeric](38, 2) NOT NULL,
	[remark] [varchar](150) NULL,
	[d_date] [date] NOT NULL,
	[d_time] [varchar](15) NOT NULL,
 CONSTRAINT [PK_tbl_stock_rc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_table_ctgry]    Script Date: 6/18/2017 10:27:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_table_ctgry](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ctgry] [varchar](50) NOT NULL,
	[code] [varchar](5) NULL,
	[color] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_table_ctgry] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_tables]    Script Date: 6/18/2017 10:27:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_tables](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[tb_name] [varchar](25) NOT NULL,
	[tb_ctgry] [varchar](25) NOT NULL,
	[tb_ct_ID] [int] NOT NULL,
 CONSTRAINT [PK_tbl_tables] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_users]    Script Date: 6/18/2017 10:27:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[uname] [varchar](50) NOT NULL,
	[pw] [varchar](50) NULL,
	[PIN] [int] NOT NULL,
	[type] [varchar](25) NOT NULL,
	[u_pv] [varchar](25) NOT NULL,
 CONSTRAINT [PK_tbl_users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_account] ON 

INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (1, CAST(0xA03B0B00 AS Date), N'12:12:12', N'DP', CAST(0.00 AS Numeric(38, 2)), CAST(10000.55 AS Numeric(38, 2)), CAST(10000.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (2, CAST(0xA13B0B00 AS Date), N'12:00:00 AM', N'Cash Expenses : dgdg', CAST(0.00 AS Numeric(38, 2)), CAST(500.00 AS Numeric(38, 2)), CAST(10500.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (3, CAST(0xA13B0B00 AS Date), N'12:00:00 AM', N'Cash Expenses : hhhhhhhhhhhhhhhhhh', CAST(1000.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(9500.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (4, CAST(0xA43B0B00 AS Date), N'03:02:06 PM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(11815.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (5, CAST(0xA43B0B00 AS Date), N'03:02:59 PM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(14130.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (6, CAST(0xA43B0B00 AS Date), N'03:04:48 PM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(16445.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (7, CAST(0xA43B0B00 AS Date), N'03:44:20 PM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(18760.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (8, CAST(0xA43B0B00 AS Date), N'03:46:37 PM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(21075.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (9, CAST(0xA43B0B00 AS Date), N'03:46:51 PM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(2335.00 AS Numeric(38, 2)), CAST(23410.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (10, CAST(0xA43B0B00 AS Date), N'04:07:11 PM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(25725.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (11, CAST(0xA43B0B00 AS Date), N'07:18:02 PM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(28040.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (12, CAST(0xEE3C0B00 AS Date), N'09:37:31 AM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(3320.00 AS Numeric(38, 2)), CAST(31360.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (13, CAST(0xF03C0B00 AS Date), N'12:00:00 AM', N'Cash Expenses : buy new foods', CAST(20000.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(11360.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (14, CAST(0xF13C0B00 AS Date), N'12:02:08 AM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(11360.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (15, CAST(0xF13C0B00 AS Date), N'12:43:40 AM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(680.00 AS Numeric(38, 2)), CAST(12040.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (16, CAST(0xF13C0B00 AS Date), N'08:16:50 AM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(1200.00 AS Numeric(38, 2)), CAST(13240.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (17, CAST(0xF13C0B00 AS Date), N'08:38:00 AM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(140.00 AS Numeric(38, 2)), CAST(13380.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (18, CAST(0xF13C0B00 AS Date), N'08:38:11 AM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(13780.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (19, CAST(0xF13C0B00 AS Date), N'08:46:47 AM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(13780.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (20, CAST(0xF13C0B00 AS Date), N'08:46:59 AM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(13780.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (21, CAST(0xF13C0B00 AS Date), N'08:48:44 AM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(13780.55 AS Numeric(38, 2)))
SET IDENTITY_INSERT [dbo].[tbl_account] OFF
SET IDENTITY_INSERT [dbo].[tbl_customer] ON 

INSERT [dbo].[tbl_customer] ([ID], [c_name], [st_no], [st_name], [city], [tp_no]) VALUES (1, N'Hashan SSSS', N'NIKA', N'rrrrrrrrrrr', N'NIKA', N'0773223282')
INSERT [dbo].[tbl_customer] ([ID], [c_name], [st_no], [st_name], [city], [tp_no]) VALUES (2, N'sasdas', N'ggggg', N'', N'', N'0773223282')
SET IDENTITY_INSERT [dbo].[tbl_customer] OFF
SET IDENTITY_INSERT [dbo].[tbl_expenses] ON 

INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (1, N'test', CAST(500.00 AS Numeric(38, 2)), CAST(0xA03B0B00 AS Date), N'12:12:12', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (10, N'sadsad', CAST(50.00 AS Numeric(38, 2)), CAST(0xA13B0B00 AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (11, N'hfghgf', CAST(456.00 AS Numeric(38, 2)), CAST(0xA13B0B00 AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (12, N'rgdfgh', CAST(456.00 AS Numeric(38, 2)), CAST(0xA13B0B00 AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (13, N'aaaa', CAST(50.00 AS Numeric(38, 2)), CAST(0xA13B0B00 AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (14, N'yututy', CAST(456.00 AS Numeric(38, 2)), CAST(0xA13B0B00 AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (15, N'tttttttttttt', CAST(50.00 AS Numeric(38, 2)), CAST(0xA13B0B00 AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (16, N'ffff', CAST(777.00 AS Numeric(38, 2)), CAST(0xA13B0B00 AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (17, N'eeee', CAST(22.00 AS Numeric(38, 2)), CAST(0xA13B0B00 AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (18, N'wqewr', CAST(30.00 AS Numeric(38, 2)), CAST(0xA13B0B00 AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (19, N'sefsdg', CAST(456.00 AS Numeric(38, 2)), CAST(0xA13B0B00 AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (20, N'ererer', CAST(323.00 AS Numeric(38, 2)), CAST(0xA13B0B00 AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (21, N'fdgfh', CAST(50.00 AS Numeric(38, 2)), CAST(0xA13B0B00 AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (22, N'dfdsf', CAST(454.00 AS Numeric(38, 2)), CAST(0xA13B0B00 AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (23, N'dgdg', CAST(500.00 AS Numeric(38, 2)), CAST(0xA13B0B00 AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (24, N'hhhhhhhhhhhhhhhhhh', CAST(1000.00 AS Numeric(38, 2)), CAST(0xA13B0B00 AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (25, N'buy new foods', CAST(20000.00 AS Numeric(38, 2)), CAST(0xF03C0B00 AS Date), N'2017-06-17', 1)
SET IDENTITY_INSERT [dbo].[tbl_expenses] OFF
SET IDENTITY_INSERT [dbo].[tbl_GRN_details] ON 

INSERT [dbo].[tbl_GRN_details] ([ID], [item_id], [qty], [rate], [total], [g_date], [g_time]) VALUES (1, 1, CAST(10.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(0xA23B0B00 AS Date), N'12:00:00 AM')
INSERT [dbo].[tbl_GRN_details] ([ID], [item_id], [qty], [rate], [total], [g_date], [g_time]) VALUES (2, 4, CAST(6.00 AS Numeric(38, 2)), CAST(6.00 AS Numeric(38, 2)), CAST(36.00 AS Numeric(38, 2)), CAST(0xA23B0B00 AS Date), N'12:00:00 AM')
INSERT [dbo].[tbl_GRN_details] ([ID], [item_id], [qty], [rate], [total], [g_date], [g_time]) VALUES (3, 1, CAST(3.00 AS Numeric(38, 2)), CAST(3.00 AS Numeric(38, 2)), CAST(9.00 AS Numeric(38, 2)), CAST(0xA23B0B00 AS Date), N'09:24:08 PM')
INSERT [dbo].[tbl_GRN_details] ([ID], [item_id], [qty], [rate], [total], [g_date], [g_time]) VALUES (4, 4, CAST(5.00 AS Numeric(38, 2)), CAST(5.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(0xF03C0B00 AS Date), N'11:16:40 PM')
INSERT [dbo].[tbl_GRN_details] ([ID], [item_id], [qty], [rate], [total], [g_date], [g_time]) VALUES (5, 5, CAST(5.00 AS Numeric(38, 2)), CAST(5.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(0xF03C0B00 AS Date), N'11:18:03 PM')
INSERT [dbo].[tbl_GRN_details] ([ID], [item_id], [qty], [rate], [total], [g_date], [g_time]) VALUES (6, 5, CAST(1.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(0xF13C0B00 AS Date), N'12:19:55 AM')
INSERT [dbo].[tbl_GRN_details] ([ID], [item_id], [qty], [rate], [total], [g_date], [g_time]) VALUES (7, 5, CAST(58.00 AS Numeric(38, 2)), CAST(58.00 AS Numeric(38, 2)), CAST(3364.00 AS Numeric(38, 2)), CAST(0xF13C0B00 AS Date), N'12:23:17 AM')
SET IDENTITY_INSERT [dbo].[tbl_GRN_details] OFF
SET IDENTITY_INSERT [dbo].[tbl_Invoce_list] ON 

INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (14, 1017, CAST(2335.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2335.00 AS Numeric(38, 2)), CAST(2500.00 AS Numeric(38, 2)), CAST(165.00 AS Numeric(38, 2)), N'CASH', CAST(0xA43B0B00 AS Date), N'02:49:23 PM', 1, 1, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (15, 1018, CAST(2335.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2335.00 AS Numeric(38, 2)), CAST(3000.00 AS Numeric(38, 2)), CAST(665.00 AS Numeric(38, 2)), N'CASH', CAST(0xA43B0B00 AS Date), N'02:50:04 PM', 1, 1, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (16, 1019, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(3000.00 AS Numeric(38, 2)), CAST(685.00 AS Numeric(38, 2)), N'CASH', CAST(0xA43B0B00 AS Date), N'02:51:00 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (17, 1020, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(3000.00 AS Numeric(38, 2)), CAST(685.00 AS Numeric(38, 2)), N'CASH', CAST(0xA43B0B00 AS Date), N'02:51:37 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (18, 1021, CAST(2335.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2335.00 AS Numeric(38, 2)), CAST(3000.00 AS Numeric(38, 2)), CAST(665.00 AS Numeric(38, 2)), N'CASH', CAST(0xA43B0B00 AS Date), N'02:54:14 PM', 1, 1, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (19, 1022, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(3500.00 AS Numeric(38, 2)), CAST(1185.00 AS Numeric(38, 2)), N'CASH', CAST(0xA43B0B00 AS Date), N'02:57:56 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (20, 1023, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(2500.00 AS Numeric(38, 2)), CAST(185.00 AS Numeric(38, 2)), N'CASH', CAST(0xA43B0B00 AS Date), N'02:59:55 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (21, 1024, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(3600.00 AS Numeric(38, 2)), CAST(1285.00 AS Numeric(38, 2)), N'CASH', CAST(0xA43B0B00 AS Date), N'03:01:04 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (22, 1025, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(25500.00 AS Numeric(38, 2)), CAST(23185.00 AS Numeric(38, 2)), N'CASH', CAST(0xA43B0B00 AS Date), N'03:02:06 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (23, 1026, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(2560.00 AS Numeric(38, 2)), CAST(245.00 AS Numeric(38, 2)), N'CASH', CAST(0xA43B0B00 AS Date), N'03:02:59 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (24, 1027, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(3500.00 AS Numeric(38, 2)), CAST(1185.00 AS Numeric(38, 2)), N'CASH', CAST(0xA43B0B00 AS Date), N'03:03:22 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (25, 1028, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(3000.00 AS Numeric(38, 2)), CAST(685.00 AS Numeric(38, 2)), N'CASH', CAST(0xA43B0B00 AS Date), N'03:04:48 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (26, 1029, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(2558.00 AS Numeric(38, 2)), CAST(243.00 AS Numeric(38, 2)), N'CASH', CAST(0xA43B0B00 AS Date), N'03:44:20 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (27, 1030, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(3500.00 AS Numeric(38, 2)), CAST(1185.00 AS Numeric(38, 2)), N'CASH', CAST(0xA43B0B00 AS Date), N'03:46:37 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (28, 1031, CAST(2335.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2335.00 AS Numeric(38, 2)), CAST(5000.00 AS Numeric(38, 2)), CAST(2665.00 AS Numeric(38, 2)), N'CASH', CAST(0xA43B0B00 AS Date), N'03:46:51 PM', 1, 1, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (29, 1032, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(5000.00 AS Numeric(38, 2)), CAST(444.00 AS Numeric(38, 2)), N'CARD', CAST(0xA43B0B00 AS Date), N'04:07:11 PM', 1, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (30, 1033, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(3500.00 AS Numeric(38, 2)), CAST(1185.00 AS Numeric(38, 2)), N'CASH', CAST(0xA43B0B00 AS Date), N'07:18:02 PM', 3, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (31, 1034, CAST(3330.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(3320.00 AS Numeric(38, 2)), CAST(3320.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), N'CASH', CAST(0xEE3C0B00 AS Date), N'09:37:31 AM', 1, 5, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (32, 1035, CAST(0.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(141.00 AS Numeric(38, 2)), CAST(141.00 AS Numeric(38, 2)), N'CARD', CAST(0xF13C0B00 AS Date), N'12:02:08 AM', 0, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (33, 1036, CAST(680.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(680.00 AS Numeric(38, 2)), CAST(1000.00 AS Numeric(38, 2)), CAST(320.00 AS Numeric(38, 2)), N'CARD', CAST(0xF13C0B00 AS Date), N'12:43:40 AM', 1, 2, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (34, 1037, CAST(1200.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(1200.00 AS Numeric(38, 2)), CAST(5000.00 AS Numeric(38, 2)), CAST(3800.00 AS Numeric(38, 2)), N'CARD', CAST(0xF13C0B00 AS Date), N'08:16:50 AM', 1, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (35, 1038, CAST(140.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(140.00 AS Numeric(38, 2)), CAST(1000.00 AS Numeric(38, 2)), CAST(860.00 AS Numeric(38, 2)), N'CASH', CAST(0xF13C0B00 AS Date), N'08:38:00 AM', 1, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (36, 1039, CAST(400.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(2000.00 AS Numeric(38, 2)), CAST(1600.00 AS Numeric(38, 2)), N'CARD', CAST(0xF13C0B00 AS Date), N'08:38:11 AM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (37, 1040, CAST(0.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(1555.00 AS Numeric(38, 2)), CAST(1555.00 AS Numeric(38, 2)), N'CASH', CAST(0xF13C0B00 AS Date), N'08:46:47 AM', 0, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (38, 1041, CAST(0.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(5000.00 AS Numeric(38, 2)), CAST(5000.00 AS Numeric(38, 2)), N'CARD', CAST(0xF13C0B00 AS Date), N'08:46:59 AM', 0, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (39, 1042, CAST(0.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(4.00 AS Numeric(38, 2)), CAST(4.00 AS Numeric(38, 2)), N'CARD', CAST(0xF13C0B00 AS Date), N'08:48:44 AM', 0, 0, 1, 1)
SET IDENTITY_INSERT [dbo].[tbl_Invoce_list] OFF
SET IDENTITY_INSERT [dbo].[tbl_Invoice_details] ON 

INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (14, 1025, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(475.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'03:02:06 PM', N'banana hhhh', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (15, 1025, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'03:02:06 PM', N'gamejjhhh', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (16, 1025, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'03:02:06 PM', N'Mix Rice', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (17, 1025, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(140.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'03:02:06 PM', N'Orange', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (18, 1026, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(475.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'03:02:59 PM', N'475.00', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (19, 1026, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'03:02:59 PM', N'1,300.00', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (20, 1026, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'03:02:59 PM', N'400.00', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (21, 1026, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(140.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'03:02:59 PM', N'140.00', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (23, 1028, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(475.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'03:04:48 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (24, 1028, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'03:04:48 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (25, 1028, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'03:04:48 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (26, 1028, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(140.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'03:04:48 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (27, 1029, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(475.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'03:44:20 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (28, 1029, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'03:44:20 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (29, 1029, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'03:44:20 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (30, 1029, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(140.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'03:44:20 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (31, 1030, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(475.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'03:46:37 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (32, 1030, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'03:46:37 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (33, 1030, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'03:46:37 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (34, 1030, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(140.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'03:46:37 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (35, 1031, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(475.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'03:46:51 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (36, 1031, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(4.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(560.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'03:46:51 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (37, 1031, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'03:46:51 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (38, 1032, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(475.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'04:07:11 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (39, 1032, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(140.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'04:07:11 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (40, 1032, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'04:07:11 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (41, 1032, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'04:07:11 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (42, 1033, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(475.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'07:18:02 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (43, 1033, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(140.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'07:18:02 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (44, 1033, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'07:18:02 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (45, 1033, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(0xA43B0B00 AS Date), N'07:18:02 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (46, 1034, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(2.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(950.00 AS Numeric(38, 2)), CAST(0xEE3C0B00 AS Date), N'09:37:31 AM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (47, 1034, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(2.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(280.00 AS Numeric(38, 2)), CAST(0xEE3C0B00 AS Date), N'09:37:31 AM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (48, 1034, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(0xEE3C0B00 AS Date), N'09:37:31 AM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (49, 1034, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(2.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(800.00 AS Numeric(38, 2)), CAST(0xEE3C0B00 AS Date), N'09:37:31 AM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (50, 1036, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(0xF13C0B00 AS Date), N'12:43:40 AM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (51, 1036, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(2.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(280.00 AS Numeric(38, 2)), CAST(0xF13C0B00 AS Date), N'12:43:40 AM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (52, 1037, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(3.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(1200.00 AS Numeric(38, 2)), CAST(0xF13C0B00 AS Date), N'08:16:50 AM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (53, 1038, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(140.00 AS Numeric(38, 2)), CAST(0xF13C0B00 AS Date), N'08:38:00 AM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (54, 1039, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(0xF13C0B00 AS Date), N'08:38:11 AM', N'Non Stock Item', 1)
SET IDENTITY_INSERT [dbo].[tbl_Invoice_details] OFF
SET IDENTITY_INSERT [dbo].[tbl_item_ctgry] ON 

INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (1, N'Food')
INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (5, N'Furit')
INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (12, N'rice')
INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (13, N'milk')
SET IDENTITY_INSERT [dbo].[tbl_item_ctgry] OFF
SET IDENTITY_INSERT [dbo].[tbl_items] ON 

INSERT [dbo].[tbl_items] ([ID], [ctgry_id], [item_name], [item_dscp], [cost], [price], [disc], [type]) VALUES (3, 1, N'Mix Rice', N'asd', CAST(156.00 AS Numeric(38, 2)), CAST(500.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), N'Non Stock Item')
INSERT [dbo].[tbl_items] ([ID], [ctgry_id], [item_name], [item_dscp], [cost], [price], [disc], [type]) VALUES (4, 5, N'Orange', N'', CAST(100.00 AS Numeric(38, 2)), CAST(150.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), N'Stock Item')
INSERT [dbo].[tbl_items] ([ID], [ctgry_id], [item_name], [item_dscp], [cost], [price], [disc], [type]) VALUES (5, 1, N'milk', N'beverages', CAST(150.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1.20 AS Numeric(38, 2)), N'Stock Item')
SET IDENTITY_INSERT [dbo].[tbl_items] OFF
SET IDENTITY_INSERT [dbo].[tbl_reserved_table] ON 

INSERT [dbo].[tbl_reserved_table] ([RID], [tb_ID], [itm_ID], [qty], [cus_id], [cus_name]) VALUES (381, 10, 4, CAST(1.00 AS Numeric(38, 2)), 0, N'CASH')
INSERT [dbo].[tbl_reserved_table] ([RID], [tb_ID], [itm_ID], [qty], [cus_id], [cus_name]) VALUES (382, 10, 1, CAST(1.00 AS Numeric(38, 2)), 0, N'CASH')
INSERT [dbo].[tbl_reserved_table] ([RID], [tb_ID], [itm_ID], [qty], [cus_id], [cus_name]) VALUES (383, 10, 2, CAST(1.00 AS Numeric(38, 2)), 0, N'CASH')
SET IDENTITY_INSERT [dbo].[tbl_reserved_table] OFF
INSERT [dbo].[tbl_settings] ([ID], [Data_A], [Data_B]) VALUES (1, 1042, N'Start Invoice no')
INSERT [dbo].[tbl_stock] ([ID], [in_stock], [damge], [last_rc_qty], [itm_ctgry]) VALUES (1, CAST(68.00 AS Numeric(38, 2)), CAST(58.00 AS Numeric(38, 2)), CAST(3.00 AS Numeric(38, 2)), N'1')
INSERT [dbo].[tbl_stock] ([ID], [in_stock], [damge], [last_rc_qty], [itm_ctgry]) VALUES (4, CAST(129.00 AS Numeric(38, 2)), CAST(12.00 AS Numeric(38, 2)), CAST(5.00 AS Numeric(38, 2)), N'5')
INSERT [dbo].[tbl_stock] ([ID], [in_stock], [damge], [last_rc_qty], [itm_ctgry]) VALUES (5, CAST(64.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(58.00 AS Numeric(38, 2)), N'1')
SET IDENTITY_INSERT [dbo].[tbl_stock_rc] ON 

INSERT [dbo].[tbl_stock_rc] ([ID], [Item_id], [reson], [qty], [remark], [d_date], [d_time]) VALUES (1, 4, N'Damage', CAST(10.00 AS Numeric(38, 2)), N'test Damage enter', CAST(0xA33B0B00 AS Date), N'12:38:38 AM')
INSERT [dbo].[tbl_stock_rc] ([ID], [Item_id], [reson], [qty], [remark], [d_date], [d_time]) VALUES (2, 1, N'Damage', CAST(52.00 AS Numeric(38, 2)), N'hjuy', CAST(0xA33B0B00 AS Date), N'12:41:06 AM')
INSERT [dbo].[tbl_stock_rc] ([ID], [Item_id], [reson], [qty], [remark], [d_date], [d_time]) VALUES (3, 1, N'Damage', CAST(5.00 AS Numeric(38, 2)), N'hhhh', CAST(0xA33B0B00 AS Date), N'09:33:58 AM')
INSERT [dbo].[tbl_stock_rc] ([ID], [Item_id], [reson], [qty], [remark], [d_date], [d_time]) VALUES (4, 4, N'Deduct', CAST(1.00 AS Numeric(38, 2)), N'Hiskasjd', CAST(0xA33B0B00 AS Date), N'10:05:43 AM')
INSERT [dbo].[tbl_stock_rc] ([ID], [Item_id], [reson], [qty], [remark], [d_date], [d_time]) VALUES (5, 4, N'Damage', CAST(2.00 AS Numeric(38, 2)), N'ok', CAST(0xF03C0B00 AS Date), N'11:07:54 PM')
SET IDENTITY_INSERT [dbo].[tbl_stock_rc] OFF
SET IDENTITY_INSERT [dbo].[tbl_table_ctgry] ON 

INSERT [dbo].[tbl_table_ctgry] ([ID], [ctgry], [code], [color]) VALUES (1, N'Normal Table', N'NT', N'Green')
INSERT [dbo].[tbl_table_ctgry] ([ID], [ctgry], [code], [color]) VALUES (2, N'Coffee Table', N'CT', N'Blue')
INSERT [dbo].[tbl_table_ctgry] ([ID], [ctgry], [code], [color]) VALUES (3, N'Family Table', N'FT', N'Green')
SET IDENTITY_INSERT [dbo].[tbl_table_ctgry] OFF
SET IDENTITY_INSERT [dbo].[tbl_tables] ON 

INSERT [dbo].[tbl_tables] ([ID], [tb_name], [tb_ctgry], [tb_ct_ID]) VALUES (1, N'NT01', N'Normal Table', 1)
INSERT [dbo].[tbl_tables] ([ID], [tb_name], [tb_ctgry], [tb_ct_ID]) VALUES (2, N'NT02', N'Normal Table', 1)
INSERT [dbo].[tbl_tables] ([ID], [tb_name], [tb_ctgry], [tb_ct_ID]) VALUES (3, N'NT03', N'Normal Table', 1)
INSERT [dbo].[tbl_tables] ([ID], [tb_name], [tb_ctgry], [tb_ct_ID]) VALUES (4, N'NT04', N'Normal Table', 1)
INSERT [dbo].[tbl_tables] ([ID], [tb_name], [tb_ctgry], [tb_ct_ID]) VALUES (5, N'NT05', N'Normal Table', 1)
INSERT [dbo].[tbl_tables] ([ID], [tb_name], [tb_ctgry], [tb_ct_ID]) VALUES (7, N'CT01', N'Coffee Table', 2)
INSERT [dbo].[tbl_tables] ([ID], [tb_name], [tb_ctgry], [tb_ct_ID]) VALUES (8, N'CT02', N'Coffee Table', 2)
INSERT [dbo].[tbl_tables] ([ID], [tb_name], [tb_ctgry], [tb_ct_ID]) VALUES (9, N'CT03', N'Coffee Table', 2)
INSERT [dbo].[tbl_tables] ([ID], [tb_name], [tb_ctgry], [tb_ct_ID]) VALUES (11, N'NT07', N'Normal Table', 1)
INSERT [dbo].[tbl_tables] ([ID], [tb_name], [tb_ctgry], [tb_ct_ID]) VALUES (12, N'NT08', N'Normal Table', 1)
INSERT [dbo].[tbl_tables] ([ID], [tb_name], [tb_ctgry], [tb_ct_ID]) VALUES (14, N'Ashan', N'guest', 15)
SET IDENTITY_INSERT [dbo].[tbl_tables] OFF
SET IDENTITY_INSERT [dbo].[tbl_users] ON 

INSERT [dbo].[tbl_users] ([ID], [uname], [pw], [PIN], [type], [u_pv]) VALUES (2, N'admin', N'admin', 1234, N'admin', N'FA')
INSERT [dbo].[tbl_users] ([ID], [uname], [pw], [PIN], [type], [u_pv]) VALUES (4, N'WE', N'we', 123, N'Administrator', N'Full access')
SET IDENTITY_INSERT [dbo].[tbl_users] OFF
USE [master]
GO
ALTER DATABASE [RESTURANT] SET  READ_WRITE 
GO
