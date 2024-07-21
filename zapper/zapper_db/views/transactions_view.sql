USE [zapper]
GO

/****** Object:  View [dbo].[transactions_view]    Script Date: 21/07/2024 6:04:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[transactions_view]
AS
SELECT dbo.customer.cust_name, dbo.customer_info.address AS customer_address, dbo.customer_info.contact_number AS customer_number, dbo.transactions.transaction_date, dbo.merchant.merchant_name, dbo.product.product_name, dbo.product.price, dbo.transactions.quantity, dbo.product.price * dbo.transactions.quantity AS total_price
FROM  dbo.transactions INNER JOIN
         dbo.customer ON dbo.customer.cust_id = dbo.transactions.cust_id INNER JOIN
         dbo.merchant ON dbo.transactions.merchant_id = dbo.merchant.mechant_id INNER JOIN
         dbo.customer_info ON dbo.transactions.cust_info_id = dbo.customer_info.cust_info_id INNER JOIN
         dbo.product ON dbo.transactions.product_id = dbo.product.product_id
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "customer"
            Begin Extent = 
               Top = 12
               Left = 76
               Bottom = 259
               Right = 351
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "customer_info"
            Begin Extent = 
               Top = 12
               Left = 427
               Bottom = 259
               Right = 715
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "merchant"
            Begin Extent = 
               Top = 12
               Left = 791
               Bottom = 259
               Right = 1079
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "product"
            Begin Extent = 
               Top = 12
               Left = 1155
               Bottom = 259
               Right = 1430
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "transactions"
            Begin Extent = 
               Top = 12
               Left = 1506
               Bottom = 259
               Right = 1860
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'transactions_view'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'transactions_view'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'transactions_view'
GO

