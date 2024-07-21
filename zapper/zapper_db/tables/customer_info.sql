USE [zapper]
GO

/****** Object:  Table [dbo].[customer_info]    Script Date: 21/07/2024 6:03:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[customer_info](
	[cust_info_id] [int] IDENTITY(1,1) NOT NULL,
	[cust_id] [int] NOT NULL,
	[address] [varchar](150) NOT NULL,
	[contact_number] [varchar](20) NOT NULL,
 CONSTRAINT [PK_customer_info] PRIMARY KEY CLUSTERED 
(
	[cust_info_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

