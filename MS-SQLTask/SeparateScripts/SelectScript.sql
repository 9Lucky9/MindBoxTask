-------------------------------------Select script
USE [MindBoxTestDB]
GO

SELECT p.ProductName as 'Имя продукта', c.CategoryName as 'Имя категории'
FROM [dbo].ProductCategories s
RIGHT JOIN [dbo].[Products] p on p.ProductId = s.ProductId
LEFT JOIN [dbo].[Categories] c on c.CategoryId = s.CategoryID

GO