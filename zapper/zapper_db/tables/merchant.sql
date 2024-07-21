USE [zapper]
GO

/****** Object:  Table [dbo].[merchant]    Script Date: 21/07/2024 6:03:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[merchant](
	[mechant_id] [int] IDENTITY(1,1) NOT NULL,
	[merchant_name] [varchar](50) NOT NULL,
	[address] [varchar](150) NOT NULL,
	[contact_number] [varchar](20) NOT NULL,
 CONSTRAINT [PK_merchant] PRIMARY KEY CLUSTERED 
(
	[mechant_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

