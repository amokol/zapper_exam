USE [zapper]
GO

/****** Object:  Table [dbo].[transactions]    Script Date: 21/07/2024 6:04:10 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[transactions](
	[transaction_id] [int] IDENTITY(1,1) NOT NULL,
	[transaction_date] [datetime] NOT NULL,
	[cust_id] [int] NOT NULL,
	[merchant_id] [int] NOT NULL,
	[payment_method] [varchar](50) NOT NULL,
	[payment] [money] NOT NULL,
	[product_id] [int] NOT NULL,
	[cust_info_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_transactions] PRIMARY KEY CLUSTERED 
(
	[transaction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

