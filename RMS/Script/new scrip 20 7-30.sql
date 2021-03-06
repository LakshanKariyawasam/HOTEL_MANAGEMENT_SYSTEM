
--create database [RESTURANT]
USE [RESTURANT]


GO
/****** Object:  Table [dbo].[tbl_account]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_customer]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_expenses]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_GRN_details]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_Invoce_list]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_Invoice_details]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_item_ctgry]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_items]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_reserved_table]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_settings]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_stock]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_stock_rc]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_table_ctgry]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_tables]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_users]    Script Date: 20/07/2016 19:25:05 ******/
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

INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (1, CAST(N'2016-07-16' AS Date), N'12:12:12', N'DP', CAST(0.00 AS Numeric(38, 2)), CAST(10000.55 AS Numeric(38, 2)), CAST(10000.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (2, CAST(N'2016-07-17' AS Date), N'12:00:00 AM', N'Cash Expenses : dgdg', CAST(0.00 AS Numeric(38, 2)), CAST(500.00 AS Numeric(38, 2)), CAST(10500.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (3, CAST(N'2016-07-17' AS Date), N'12:00:00 AM', N'Cash Expenses : hhhhhhhhhhhhhhhhhh', CAST(1000.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(9500.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (4, CAST(N'2016-07-20' AS Date), N'03:02:06 PM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(11815.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (5, CAST(N'2016-07-20' AS Date), N'03:02:59 PM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(14130.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (6, CAST(N'2016-07-20' AS Date), N'03:04:48 PM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(16445.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (7, CAST(N'2016-07-20' AS Date), N'03:44:20 PM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(18760.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (8, CAST(N'2016-07-20' AS Date), N'03:46:37 PM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(21075.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (9, CAST(N'2016-07-20' AS Date), N'03:46:51 PM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(2335.00 AS Numeric(38, 2)), CAST(23410.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (10, CAST(N'2016-07-20' AS Date), N'04:07:11 PM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(25725.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (11, CAST(N'2016-07-20' AS Date), N'07:18:02 PM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(28040.55 AS Numeric(38, 2)))
SET IDENTITY_INSERT [dbo].[tbl_account] OFF
SET IDENTITY_INSERT [dbo].[tbl_customer] ON 

INSERT [dbo].[tbl_customer] ([ID], [c_name], [st_no], [st_name], [city], [tp_no]) VALUES (1, N'Hashan SSSS', N'NIKA', N'rrrrrrrrrrr', N'NIKA', N'NIKA')
INSERT [dbo].[tbl_customer] ([ID], [c_name], [st_no], [st_name], [city], [tp_no]) VALUES (2, N'sasdas', N'ggggg', N'', N'', N'')
INSERT [dbo].[tbl_customer] ([ID], [c_name], [st_no], [st_name], [city], [tp_no]) VALUES (4, N'asjdjas', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_customer] OFF
SET IDENTITY_INSERT [dbo].[tbl_expenses] ON 

INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (1, N'test', CAST(500.00 AS Numeric(38, 2)), CAST(N'2016-07-16' AS Date), N'12:12:12', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (10, N'sadsad', CAST(50.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (11, N'hfghgf', CAST(456.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (12, N'rgdfgh', CAST(456.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (13, N'aaaa', CAST(50.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (14, N'yututy', CAST(456.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (15, N'tttttttttttt', CAST(50.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (16, N'ffff', CAST(777.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (17, N'eeee', CAST(22.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (18, N'wqewr', CAST(30.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (19, N'sefsdg', CAST(456.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (20, N'ererer', CAST(323.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (21, N'fdgfh', CAST(50.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (22, N'dfdsf', CAST(454.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (23, N'dgdg', CAST(500.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (24, N'hhhhhhhhhhhhhhhhhh', CAST(1000.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
SET IDENTITY_INSERT [dbo].[tbl_expenses] OFF
SET IDENTITY_INSERT [dbo].[tbl_GRN_details] ON 

INSERT [dbo].[tbl_GRN_details] ([ID], [item_id], [qty], [rate], [total], [g_date], [g_time]) VALUES (1, 1, CAST(10.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(N'2016-07-18' AS Date), N'12:00:00 AM')
INSERT [dbo].[tbl_GRN_details] ([ID], [item_id], [qty], [rate], [total], [g_date], [g_time]) VALUES (2, 4, CAST(6.00 AS Numeric(38, 2)), CAST(6.00 AS Numeric(38, 2)), CAST(36.00 AS Numeric(38, 2)), CAST(N'2016-07-18' AS Date), N'12:00:00 AM')
INSERT [dbo].[tbl_GRN_details] ([ID], [item_id], [qty], [rate], [total], [g_date], [g_time]) VALUES (3, 1, CAST(3.00 AS Numeric(38, 2)), CAST(3.00 AS Numeric(38, 2)), CAST(9.00 AS Numeric(38, 2)), CAST(N'2016-07-18' AS Date), N'09:24:08 PM')
SET IDENTITY_INSERT [dbo].[tbl_GRN_details] OFF
SET IDENTITY_INSERT [dbo].[tbl_Invoce_list] ON 

INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (14, 1017, CAST(2335.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2335.00 AS Numeric(38, 2)), CAST(2500.00 AS Numeric(38, 2)), CAST(165.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'02:49:23 PM', 1, 1, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (15, 1018, CAST(2335.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2335.00 AS Numeric(38, 2)), CAST(3000.00 AS Numeric(38, 2)), CAST(665.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'02:50:04 PM', 1, 1, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (16, 1019, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(3000.00 AS Numeric(38, 2)), CAST(685.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'02:51:00 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (17, 1020, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(3000.00 AS Numeric(38, 2)), CAST(685.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'02:51:37 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (18, 1021, CAST(2335.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2335.00 AS Numeric(38, 2)), CAST(3000.00 AS Numeric(38, 2)), CAST(665.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'02:54:14 PM', 1, 1, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (19, 1022, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(3500.00 AS Numeric(38, 2)), CAST(1185.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'02:57:56 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (20, 1023, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(2500.00 AS Numeric(38, 2)), CAST(185.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'02:59:55 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (21, 1024, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(3600.00 AS Numeric(38, 2)), CAST(1285.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'03:01:04 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (22, 1025, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(25500.00 AS Numeric(38, 2)), CAST(23185.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'03:02:06 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (23, 1026, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(2560.00 AS Numeric(38, 2)), CAST(245.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'03:02:59 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (24, 1027, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(3500.00 AS Numeric(38, 2)), CAST(1185.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'03:03:22 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (25, 1028, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(3000.00 AS Numeric(38, 2)), CAST(685.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'03:04:48 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (26, 1029, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(2558.00 AS Numeric(38, 2)), CAST(243.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'03:44:20 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (27, 1030, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(3500.00 AS Numeric(38, 2)), CAST(1185.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'03:46:37 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (28, 1031, CAST(2335.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2335.00 AS Numeric(38, 2)), CAST(5000.00 AS Numeric(38, 2)), CAST(2665.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'03:46:51 PM', 1, 1, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (29, 1032, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(5000.00 AS Numeric(38, 2)), CAST(2685.00 AS Numeric(38, 2)), N'CARD', CAST(N'2016-07-20' AS Date), N'04:07:11 PM', 1, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (30, 1033, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(3500.00 AS Numeric(38, 2)), CAST(1185.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'07:18:02 PM', 3, 0, 1, 1)
SET IDENTITY_INSERT [dbo].[tbl_Invoce_list] OFF
SET IDENTITY_INSERT [dbo].[tbl_Invoice_details] ON 

INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (14, 1025, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(475.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:02:06 PM', N'banana hhhh', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (15, 1025, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:02:06 PM', N'gamejjhhh', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (16, 1025, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:02:06 PM', N'Mix Rice', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (17, 1025, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(140.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:02:06 PM', N'Orange', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (18, 1026, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(475.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:02:59 PM', N'475.00', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (19, 1026, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:02:59 PM', N'1,300.00', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (20, 1026, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:02:59 PM', N'400.00', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (21, 1026, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(140.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:02:59 PM', N'140.00', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (23, 1028, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(475.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:04:48 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (24, 1028, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:04:48 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (25, 1028, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:04:48 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (26, 1028, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(140.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:04:48 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (27, 1029, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(475.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:44:20 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (28, 1029, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:44:20 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (29, 1029, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:44:20 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (30, 1029, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(140.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:44:20 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (31, 1030, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(475.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:46:37 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (32, 1030, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:46:37 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (33, 1030, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:46:37 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (34, 1030, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(140.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:46:37 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (35, 1031, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(475.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:46:51 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (36, 1031, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(4.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(560.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:46:51 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (37, 1031, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:46:51 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (38, 1032, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(475.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'04:07:11 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (39, 1032, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(140.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'04:07:11 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (40, 1032, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'04:07:11 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (41, 1032, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'04:07:11 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (42, 1033, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(475.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'07:18:02 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (43, 1033, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(140.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'07:18:02 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (44, 1033, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'07:18:02 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (45, 1033, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'07:18:02 PM', N'Non Stock Item', 1)
SET IDENTITY_INSERT [dbo].[tbl_Invoice_details] OFF
SET IDENTITY_INSERT [dbo].[tbl_item_ctgry] ON 

INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (1, N'Food')
INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (2, N'ggg')
INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (3, N'asd')
INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (4, N'd')
INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (5, N'Furit')
INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (6, N'Kuma')
INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (7, N'Nuwan')
INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (8, N'saman')
INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (9, N'Supun')
INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (10, N'MKJ')
INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (11, N'Sarath')
SET IDENTITY_INSERT [dbo].[tbl_item_ctgry] OFF
SET IDENTITY_INSERT [dbo].[tbl_items] ON 

INSERT [dbo].[tbl_items] ([ID], [ctgry_id], [item_name], [item_dscp], [cost], [price], [disc], [type]) VALUES (1, 1, N'banana hhhh', N'fruit', CAST(100.00 AS Numeric(38, 2)), CAST(500.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), N'Stock Item')
INSERT [dbo].[tbl_items] ([ID], [ctgry_id], [item_name], [item_dscp], [cost], [price], [disc], [type]) VALUES (2, 1, N'gamejjhhh', N'uuu', CAST(500.00 AS Numeric(38, 2)), CAST(1500.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), N'Non Stock Item')
INSERT [dbo].[tbl_items] ([ID], [ctgry_id], [item_name], [item_dscp], [cost], [price], [disc], [type]) VALUES (3, 1, N'Mix Rice', N'asd', CAST(50.00 AS Numeric(38, 2)), CAST(500.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), N'Non Stock Item')
INSERT [dbo].[tbl_items] ([ID], [ctgry_id], [item_name], [item_dscp], [cost], [price], [disc], [type]) VALUES (4, 5, N'Orange', N'', CAST(100.00 AS Numeric(38, 2)), CAST(150.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), N'Stock Item')
SET IDENTITY_INSERT [dbo].[tbl_items] OFF
SET IDENTITY_INSERT [dbo].[tbl_reserved_table] ON 

INSERT [dbo].[tbl_reserved_table] ([RID], [tb_ID], [itm_ID], [qty], [cus_id], [cus_name]) VALUES (375, 1, 1, CAST(1.00 AS Numeric(38, 2)), 0, N'CASH')
INSERT [dbo].[tbl_reserved_table] ([RID], [tb_ID], [itm_ID], [qty], [cus_id], [cus_name]) VALUES (376, 1, 4, CAST(1.00 AS Numeric(38, 2)), 0, N'CASH')
INSERT [dbo].[tbl_reserved_table] ([RID], [tb_ID], [itm_ID], [qty], [cus_id], [cus_name]) VALUES (381, 10, 4, CAST(1.00 AS Numeric(38, 2)), 0, N'CASH')
INSERT [dbo].[tbl_reserved_table] ([RID], [tb_ID], [itm_ID], [qty], [cus_id], [cus_name]) VALUES (382, 10, 1, CAST(1.00 AS Numeric(38, 2)), 0, N'CASH')
INSERT [dbo].[tbl_reserved_table] ([RID], [tb_ID], [itm_ID], [qty], [cus_id], [cus_name]) VALUES (383, 10, 2, CAST(1.00 AS Numeric(38, 2)), 0, N'CASH')
INSERT [dbo].[tbl_reserved_table] ([RID], [tb_ID], [itm_ID], [qty], [cus_id], [cus_name]) VALUES (384, 9, 4, CAST(1.00 AS Numeric(38, 2)), 0, N'CASH')
INSERT [dbo].[tbl_reserved_table] ([RID], [tb_ID], [itm_ID], [qty], [cus_id], [cus_name]) VALUES (385, 9, 1, CAST(1.00 AS Numeric(38, 2)), 0, N'CASH')
INSERT [dbo].[tbl_reserved_table] ([RID], [tb_ID], [itm_ID], [qty], [cus_id], [cus_name]) VALUES (386, 9, 3, CAST(1.00 AS Numeric(38, 2)), 0, N'CASH')
SET IDENTITY_INSERT [dbo].[tbl_reserved_table] OFF
INSERT [dbo].[tbl_settings] ([ID], [Data_A], [Data_B]) VALUES (1, 1033, N'Start Invoice no')
INSERT [dbo].[tbl_stock] ([ID], [in_stock], [damge], [last_rc_qty], [itm_ctgry]) VALUES (1, CAST(70.00 AS Numeric(38, 2)), CAST(58.00 AS Numeric(38, 2)), CAST(3.00 AS Numeric(38, 2)), N'1')
INSERT [dbo].[tbl_stock] ([ID], [in_stock], [damge], [last_rc_qty], [itm_ctgry]) VALUES (4, CAST(131.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(6.00 AS Numeric(38, 2)), N'5')
SET IDENTITY_INSERT [dbo].[tbl_stock_rc] ON 

INSERT [dbo].[tbl_stock_rc] ([ID], [Item_id], [reson], [qty], [remark], [d_date], [d_time]) VALUES (1, 4, N'Damage', CAST(10.00 AS Numeric(38, 2)), N'test Damage enter', CAST(N'2016-07-19' AS Date), N'12:38:38 AM')
INSERT [dbo].[tbl_stock_rc] ([ID], [Item_id], [reson], [qty], [remark], [d_date], [d_time]) VALUES (2, 1, N'Damage', CAST(52.00 AS Numeric(38, 2)), N'hjuy', CAST(N'2016-07-19' AS Date), N'12:41:06 AM')
INSERT [dbo].[tbl_stock_rc] ([ID], [Item_id], [reson], [qty], [remark], [d_date], [d_time]) VALUES (3, 1, N'Damage', CAST(5.00 AS Numeric(38, 2)), N'hhhh', CAST(N'2016-07-19' AS Date), N'09:33:58 AM')
INSERT [dbo].[tbl_stock_rc] ([ID], [Item_id], [reson], [qty], [remark], [d_date], [d_time]) VALUES (4, 4, N'Deduct', CAST(1.00 AS Numeric(38, 2)), N'Hiskasjd', CAST(N'2016-07-19' AS Date), N'10:05:43 AM')
SET IDENTITY_INSERT [dbo].[tbl_stock_rc] OFF
SET IDENTITY_INSERT [dbo].[tbl_table_ctgry] ON 

INSERT [dbo].[tbl_table_ctgry] ([ID], [ctgry], [code], [color]) VALUES (1, N'Normal Table', N'NT', N'Green')
INSERT [dbo].[tbl_table_ctgry] ([ID], [ctgry], [code], [color]) VALUES (2, N'Coffee Table', N'CT', N'Blue')
INSERT [dbo].[tbl_table_ctgry] ([ID], [ctgry], [code], [color]) VALUES (3, N'Family Table', N'FT', N'Green')
INSERT [dbo].[tbl_table_ctgry] ([ID], [ctgry], [code], [color]) VALUES (4, N'Special Dining Table', N'SDT', N'Blue')
INSERT [dbo].[tbl_table_ctgry] ([ID], [ctgry], [code], [color]) VALUES (11, N'Dining Table', N'DT', N'Pink')
INSERT [dbo].[tbl_table_ctgry] ([ID], [ctgry], [code], [color]) VALUES (13, N'gb', N'', N'Please Select...')
INSERT [dbo].[tbl_table_ctgry] ([ID], [ctgry], [code], [color]) VALUES (14, N'vv', N'', N'Please Select...')
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
INSERT [dbo].[tbl_tables] ([ID], [tb_name], [tb_ctgry], [tb_ct_ID]) VALUES (10, N'NT06', N'Normal Table', 1)
INSERT [dbo].[tbl_tables] ([ID], [tb_name], [tb_ctgry], [tb_ct_ID]) VALUES (11, N'NT07', N'Normal Table', 1)
INSERT [dbo].[tbl_tables] ([ID], [tb_name], [tb_ctgry], [tb_ct_ID]) VALUES (12, N'NT08', N'Normal Table', 1)
INSERT [dbo].[tbl_tables] ([ID], [tb_name], [tb_ctgry], [tb_ct_ID]) VALUES (13, N'NT09', N'Normal Table', 1)
SET IDENTITY_INSERT [dbo].[tbl_tables] OFF
SET IDENTITY_INSERT [dbo].[tbl_users] ON 

INSERT [dbo].[tbl_users] ([ID], [uname], [pw], [PIN], [type], [u_pv]) VALUES (2, N'admin', N'admin', 1234, N'admin', N'FA')
INSERT [dbo].[tbl_users] ([ID], [uname], [pw], [PIN], [type], [u_pv]) VALUES (4, N'WE', N'we', 123, N'Administrator', N'Full access')
SET IDENTITY_INSERT [dbo].[tbl_users] OFF

create database [RESTURANT]
USE [RESTURANT]


GO
/****** Object:  Table [dbo].[tbl_account]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_customer]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_expenses]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_GRN_details]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_Invoce_list]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_Invoice_details]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_item_ctgry]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_items]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_reserved_table]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_settings]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_stock]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_stock_rc]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_table_ctgry]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_tables]    Script Date: 20/07/2016 19:25:05 ******/
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
/****** Object:  Table [dbo].[tbl_users]    Script Date: 20/07/2016 19:25:05 ******/
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

INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (1, CAST(N'2016-07-16' AS Date), N'12:12:12', N'DP', CAST(0.00 AS Numeric(38, 2)), CAST(10000.55 AS Numeric(38, 2)), CAST(10000.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (2, CAST(N'2016-07-17' AS Date), N'12:00:00 AM', N'Cash Expenses : dgdg', CAST(0.00 AS Numeric(38, 2)), CAST(500.00 AS Numeric(38, 2)), CAST(10500.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (3, CAST(N'2016-07-17' AS Date), N'12:00:00 AM', N'Cash Expenses : hhhhhhhhhhhhhhhhhh', CAST(1000.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(9500.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (4, CAST(N'2016-07-20' AS Date), N'03:02:06 PM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(11815.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (5, CAST(N'2016-07-20' AS Date), N'03:02:59 PM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(14130.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (6, CAST(N'2016-07-20' AS Date), N'03:04:48 PM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(16445.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (7, CAST(N'2016-07-20' AS Date), N'03:44:20 PM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(18760.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (8, CAST(N'2016-07-20' AS Date), N'03:46:37 PM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(21075.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (9, CAST(N'2016-07-20' AS Date), N'03:46:51 PM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(2335.00 AS Numeric(38, 2)), CAST(23410.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (10, CAST(N'2016-07-20' AS Date), N'04:07:11 PM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(25725.55 AS Numeric(38, 2)))
INSERT [dbo].[tbl_account] ([ID], [ad_date], [ad_time], [descp], [debit], [credit], [balance]) VALUES (11, CAST(N'2016-07-20' AS Date), N'07:18:02 PM', N'asdsa', CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(28040.55 AS Numeric(38, 2)))
SET IDENTITY_INSERT [dbo].[tbl_account] OFF
SET IDENTITY_INSERT [dbo].[tbl_customer] ON 

INSERT [dbo].[tbl_customer] ([ID], [c_name], [st_no], [st_name], [city], [tp_no]) VALUES (1, N'Hashan SSSS', N'NIKA', N'rrrrrrrrrrr', N'NIKA', N'NIKA')
INSERT [dbo].[tbl_customer] ([ID], [c_name], [st_no], [st_name], [city], [tp_no]) VALUES (2, N'sasdas', N'ggggg', N'', N'', N'')
INSERT [dbo].[tbl_customer] ([ID], [c_name], [st_no], [st_name], [city], [tp_no]) VALUES (4, N'asjdjas', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_customer] OFF
SET IDENTITY_INSERT [dbo].[tbl_expenses] ON 

INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (1, N'test', CAST(500.00 AS Numeric(38, 2)), CAST(N'2016-07-16' AS Date), N'12:12:12', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (10, N'sadsad', CAST(50.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (11, N'hfghgf', CAST(456.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (12, N'rgdfgh', CAST(456.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (13, N'aaaa', CAST(50.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (14, N'yututy', CAST(456.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (15, N'tttttttttttt', CAST(50.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (16, N'ffff', CAST(777.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (17, N'eeee', CAST(22.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (18, N'wqewr', CAST(30.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (19, N'sefsdg', CAST(456.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (20, N'ererer', CAST(323.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (21, N'fdgfh', CAST(50.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (22, N'dfdsf', CAST(454.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (23, N'dgdg', CAST(500.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
INSERT [dbo].[tbl_expenses] ([ID], [Descrip], [Amount], [ex_date], [ex_time], [userID]) VALUES (24, N'hhhhhhhhhhhhhhhhhh', CAST(1000.00 AS Numeric(38, 2)), CAST(N'2016-07-17' AS Date), N'2016-07-17', 1)
SET IDENTITY_INSERT [dbo].[tbl_expenses] OFF
SET IDENTITY_INSERT [dbo].[tbl_GRN_details] ON 

INSERT [dbo].[tbl_GRN_details] ([ID], [item_id], [qty], [rate], [total], [g_date], [g_time]) VALUES (1, 1, CAST(10.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(N'2016-07-18' AS Date), N'12:00:00 AM')
INSERT [dbo].[tbl_GRN_details] ([ID], [item_id], [qty], [rate], [total], [g_date], [g_time]) VALUES (2, 4, CAST(6.00 AS Numeric(38, 2)), CAST(6.00 AS Numeric(38, 2)), CAST(36.00 AS Numeric(38, 2)), CAST(N'2016-07-18' AS Date), N'12:00:00 AM')
INSERT [dbo].[tbl_GRN_details] ([ID], [item_id], [qty], [rate], [total], [g_date], [g_time]) VALUES (3, 1, CAST(3.00 AS Numeric(38, 2)), CAST(3.00 AS Numeric(38, 2)), CAST(9.00 AS Numeric(38, 2)), CAST(N'2016-07-18' AS Date), N'09:24:08 PM')
SET IDENTITY_INSERT [dbo].[tbl_GRN_details] OFF
SET IDENTITY_INSERT [dbo].[tbl_Invoce_list] ON 

INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (14, 1017, CAST(2335.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2335.00 AS Numeric(38, 2)), CAST(2500.00 AS Numeric(38, 2)), CAST(165.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'02:49:23 PM', 1, 1, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (15, 1018, CAST(2335.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2335.00 AS Numeric(38, 2)), CAST(3000.00 AS Numeric(38, 2)), CAST(665.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'02:50:04 PM', 1, 1, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (16, 1019, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(3000.00 AS Numeric(38, 2)), CAST(685.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'02:51:00 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (17, 1020, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(3000.00 AS Numeric(38, 2)), CAST(685.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'02:51:37 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (18, 1021, CAST(2335.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2335.00 AS Numeric(38, 2)), CAST(3000.00 AS Numeric(38, 2)), CAST(665.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'02:54:14 PM', 1, 1, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (19, 1022, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(3500.00 AS Numeric(38, 2)), CAST(1185.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'02:57:56 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (20, 1023, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(2500.00 AS Numeric(38, 2)), CAST(185.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'02:59:55 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (21, 1024, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(3600.00 AS Numeric(38, 2)), CAST(1285.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'03:01:04 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (22, 1025, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(25500.00 AS Numeric(38, 2)), CAST(23185.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'03:02:06 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (23, 1026, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(2560.00 AS Numeric(38, 2)), CAST(245.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'03:02:59 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (24, 1027, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(3500.00 AS Numeric(38, 2)), CAST(1185.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'03:03:22 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (25, 1028, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(3000.00 AS Numeric(38, 2)), CAST(685.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'03:04:48 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (26, 1029, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(2558.00 AS Numeric(38, 2)), CAST(243.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'03:44:20 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (27, 1030, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(3500.00 AS Numeric(38, 2)), CAST(1185.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'03:46:37 PM', 2, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (28, 1031, CAST(2335.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2335.00 AS Numeric(38, 2)), CAST(5000.00 AS Numeric(38, 2)), CAST(2665.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'03:46:51 PM', 1, 1, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (29, 1032, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(5000.00 AS Numeric(38, 2)), CAST(2685.00 AS Numeric(38, 2)), N'CARD', CAST(N'2016-07-20' AS Date), N'04:07:11 PM', 1, 0, 1, 1)
INSERT [dbo].[tbl_Invoce_list] ([ID], [Inv_no], [Sub_total], [Disc], [Net_total], [Reciverd], [Balance], [Pmt_type], [inv_date], [inv_time], [Tbl_ID], [Cus_id], [User_id], [Inv_state]) VALUES (30, 1033, CAST(2315.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), CAST(2315.00 AS Numeric(38, 2)), CAST(3500.00 AS Numeric(38, 2)), CAST(1185.00 AS Numeric(38, 2)), N'CASH', CAST(N'2016-07-20' AS Date), N'07:18:02 PM', 3, 0, 1, 1)
SET IDENTITY_INSERT [dbo].[tbl_Invoce_list] OFF
SET IDENTITY_INSERT [dbo].[tbl_Invoice_details] ON 

INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (14, 1025, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(475.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:02:06 PM', N'banana hhhh', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (15, 1025, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:02:06 PM', N'gamejjhhh', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (16, 1025, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:02:06 PM', N'Mix Rice', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (17, 1025, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(140.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:02:06 PM', N'Orange', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (18, 1026, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(475.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:02:59 PM', N'475.00', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (19, 1026, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:02:59 PM', N'1,300.00', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (20, 1026, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:02:59 PM', N'400.00', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (21, 1026, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(140.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:02:59 PM', N'140.00', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (23, 1028, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(475.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:04:48 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (24, 1028, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:04:48 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (25, 1028, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:04:48 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (26, 1028, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(140.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:04:48 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (27, 1029, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(475.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:44:20 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (28, 1029, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:44:20 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (29, 1029, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:44:20 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (30, 1029, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(140.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:44:20 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (31, 1030, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(475.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:46:37 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (32, 1030, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:46:37 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (33, 1030, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:46:37 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (34, 1030, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(140.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:46:37 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (35, 1031, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(475.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:46:51 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (36, 1031, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(4.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(560.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:46:51 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (37, 1031, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'03:46:51 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (38, 1032, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(475.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'04:07:11 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (39, 1032, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(140.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'04:07:11 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (40, 1032, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'04:07:11 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (41, 1032, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'04:07:11 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (42, 1033, 1, N'banana hhhh', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), CAST(475.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'07:18:02 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (43, 1033, 4, N'Orange', CAST(150.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(140.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'07:18:02 PM', N'Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (44, 1033, 2, N'gamejjhhh', CAST(1500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), CAST(1300.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'07:18:02 PM', N'Non Stock Item', 1)
INSERT [dbo].[tbl_Invoice_details] ([ID], [Inv_no], [itm_id], [itm_name], [rate], [qty], [disc], [tt_amount], [inv_date], [inv_time], [itm_type], [User_id]) VALUES (45, 1033, 3, N'Mix Rice', CAST(500.00 AS Numeric(38, 2)), CAST(1.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), CAST(400.00 AS Numeric(38, 2)), CAST(N'2016-07-20' AS Date), N'07:18:02 PM', N'Non Stock Item', 1)
SET IDENTITY_INSERT [dbo].[tbl_Invoice_details] OFF
SET IDENTITY_INSERT [dbo].[tbl_item_ctgry] ON 

INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (1, N'Food')
INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (2, N'ggg')
INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (3, N'asd')
INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (4, N'd')
INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (5, N'Furit')
INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (6, N'Kuma')
INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (7, N'Nuwan')
INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (8, N'saman')
INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (9, N'Supun')
INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (10, N'MKJ')
INSERT [dbo].[tbl_item_ctgry] ([ID], [ct_name]) VALUES (11, N'Sarath')
SET IDENTITY_INSERT [dbo].[tbl_item_ctgry] OFF
SET IDENTITY_INSERT [dbo].[tbl_items] ON 

INSERT [dbo].[tbl_items] ([ID], [ctgry_id], [item_name], [item_dscp], [cost], [price], [disc], [type]) VALUES (1, 1, N'banana hhhh', N'fruit', CAST(100.00 AS Numeric(38, 2)), CAST(500.00 AS Numeric(38, 2)), CAST(25.00 AS Numeric(38, 2)), N'Stock Item')
INSERT [dbo].[tbl_items] ([ID], [ctgry_id], [item_name], [item_dscp], [cost], [price], [disc], [type]) VALUES (2, 1, N'gamejjhhh', N'uuu', CAST(500.00 AS Numeric(38, 2)), CAST(1500.00 AS Numeric(38, 2)), CAST(200.00 AS Numeric(38, 2)), N'Non Stock Item')
INSERT [dbo].[tbl_items] ([ID], [ctgry_id], [item_name], [item_dscp], [cost], [price], [disc], [type]) VALUES (3, 1, N'Mix Rice', N'asd', CAST(50.00 AS Numeric(38, 2)), CAST(500.00 AS Numeric(38, 2)), CAST(100.00 AS Numeric(38, 2)), N'Non Stock Item')
INSERT [dbo].[tbl_items] ([ID], [ctgry_id], [item_name], [item_dscp], [cost], [price], [disc], [type]) VALUES (4, 5, N'Orange', N'', CAST(100.00 AS Numeric(38, 2)), CAST(150.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), N'Stock Item')
SET IDENTITY_INSERT [dbo].[tbl_items] OFF
SET IDENTITY_INSERT [dbo].[tbl_reserved_table] ON 

INSERT [dbo].[tbl_reserved_table] ([RID], [tb_ID], [itm_ID], [qty], [cus_id], [cus_name]) VALUES (375, 1, 1, CAST(1.00 AS Numeric(38, 2)), 0, N'CASH')
INSERT [dbo].[tbl_reserved_table] ([RID], [tb_ID], [itm_ID], [qty], [cus_id], [cus_name]) VALUES (376, 1, 4, CAST(1.00 AS Numeric(38, 2)), 0, N'CASH')
INSERT [dbo].[tbl_reserved_table] ([RID], [tb_ID], [itm_ID], [qty], [cus_id], [cus_name]) VALUES (381, 10, 4, CAST(1.00 AS Numeric(38, 2)), 0, N'CASH')
INSERT [dbo].[tbl_reserved_table] ([RID], [tb_ID], [itm_ID], [qty], [cus_id], [cus_name]) VALUES (382, 10, 1, CAST(1.00 AS Numeric(38, 2)), 0, N'CASH')
INSERT [dbo].[tbl_reserved_table] ([RID], [tb_ID], [itm_ID], [qty], [cus_id], [cus_name]) VALUES (383, 10, 2, CAST(1.00 AS Numeric(38, 2)), 0, N'CASH')
INSERT [dbo].[tbl_reserved_table] ([RID], [tb_ID], [itm_ID], [qty], [cus_id], [cus_name]) VALUES (384, 9, 4, CAST(1.00 AS Numeric(38, 2)), 0, N'CASH')
INSERT [dbo].[tbl_reserved_table] ([RID], [tb_ID], [itm_ID], [qty], [cus_id], [cus_name]) VALUES (385, 9, 1, CAST(1.00 AS Numeric(38, 2)), 0, N'CASH')
INSERT [dbo].[tbl_reserved_table] ([RID], [tb_ID], [itm_ID], [qty], [cus_id], [cus_name]) VALUES (386, 9, 3, CAST(1.00 AS Numeric(38, 2)), 0, N'CASH')
SET IDENTITY_INSERT [dbo].[tbl_reserved_table] OFF
INSERT [dbo].[tbl_settings] ([ID], [Data_A], [Data_B]) VALUES (1, 1033, N'Start Invoice no')
INSERT [dbo].[tbl_stock] ([ID], [in_stock], [damge], [last_rc_qty], [itm_ctgry]) VALUES (1, CAST(70.00 AS Numeric(38, 2)), CAST(58.00 AS Numeric(38, 2)), CAST(3.00 AS Numeric(38, 2)), N'1')
INSERT [dbo].[tbl_stock] ([ID], [in_stock], [damge], [last_rc_qty], [itm_ctgry]) VALUES (4, CAST(131.00 AS Numeric(38, 2)), CAST(10.00 AS Numeric(38, 2)), CAST(6.00 AS Numeric(38, 2)), N'5')
SET IDENTITY_INSERT [dbo].[tbl_stock_rc] ON 

INSERT [dbo].[tbl_stock_rc] ([ID], [Item_id], [reson], [qty], [remark], [d_date], [d_time]) VALUES (1, 4, N'Damage', CAST(10.00 AS Numeric(38, 2)), N'test Damage enter', CAST(N'2016-07-19' AS Date), N'12:38:38 AM')
INSERT [dbo].[tbl_stock_rc] ([ID], [Item_id], [reson], [qty], [remark], [d_date], [d_time]) VALUES (2, 1, N'Damage', CAST(52.00 AS Numeric(38, 2)), N'hjuy', CAST(N'2016-07-19' AS Date), N'12:41:06 AM')
INSERT [dbo].[tbl_stock_rc] ([ID], [Item_id], [reson], [qty], [remark], [d_date], [d_time]) VALUES (3, 1, N'Damage', CAST(5.00 AS Numeric(38, 2)), N'hhhh', CAST(N'2016-07-19' AS Date), N'09:33:58 AM')
INSERT [dbo].[tbl_stock_rc] ([ID], [Item_id], [reson], [qty], [remark], [d_date], [d_time]) VALUES (4, 4, N'Deduct', CAST(1.00 AS Numeric(38, 2)), N'Hiskasjd', CAST(N'2016-07-19' AS Date), N'10:05:43 AM')
SET IDENTITY_INSERT [dbo].[tbl_stock_rc] OFF
SET IDENTITY_INSERT [dbo].[tbl_table_ctgry] ON 

INSERT [dbo].[tbl_table_ctgry] ([ID], [ctgry], [code], [color]) VALUES (1, N'Normal Table', N'NT', N'Green')
INSERT [dbo].[tbl_table_ctgry] ([ID], [ctgry], [code], [color]) VALUES (2, N'Coffee Table', N'CT', N'Blue')
INSERT [dbo].[tbl_table_ctgry] ([ID], [ctgry], [code], [color]) VALUES (3, N'Family Table', N'FT', N'Green')
INSERT [dbo].[tbl_table_ctgry] ([ID], [ctgry], [code], [color]) VALUES (4, N'Special Dining Table', N'SDT', N'Blue')
INSERT [dbo].[tbl_table_ctgry] ([ID], [ctgry], [code], [color]) VALUES (11, N'Dining Table', N'DT', N'Pink')
INSERT [dbo].[tbl_table_ctgry] ([ID], [ctgry], [code], [color]) VALUES (13, N'gb', N'', N'Please Select...')
INSERT [dbo].[tbl_table_ctgry] ([ID], [ctgry], [code], [color]) VALUES (14, N'vv', N'', N'Please Select...')
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
INSERT [dbo].[tbl_tables] ([ID], [tb_name], [tb_ctgry], [tb_ct_ID]) VALUES (10, N'NT06', N'Normal Table', 1)
INSERT [dbo].[tbl_tables] ([ID], [tb_name], [tb_ctgry], [tb_ct_ID]) VALUES (11, N'NT07', N'Normal Table', 1)
INSERT [dbo].[tbl_tables] ([ID], [tb_name], [tb_ctgry], [tb_ct_ID]) VALUES (12, N'NT08', N'Normal Table', 1)
INSERT [dbo].[tbl_tables] ([ID], [tb_name], [tb_ctgry], [tb_ct_ID]) VALUES (13, N'NT09', N'Normal Table', 1)
SET IDENTITY_INSERT [dbo].[tbl_tables] OFF
SET IDENTITY_INSERT [dbo].[tbl_users] ON 

INSERT [dbo].[tbl_users] ([ID], [uname], [pw], [PIN], [type], [u_pv]) VALUES (2, N'admin', N'admin', 1234, N'admin', N'FA')
INSERT [dbo].[tbl_users] ([ID], [uname], [pw], [PIN], [type], [u_pv]) VALUES (4, N'WE', N'we', 123, N'Administrator', N'Full access')
SET IDENTITY_INSERT [dbo].[tbl_users] OFF
