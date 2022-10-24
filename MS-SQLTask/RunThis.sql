USE [master]
-------------------------------------Create database
CREATE DATABASE [MindBoxTestDB];
GO

USE [MindBoxTestDB]
GO
-------------------------------------Create tables
CREATE TABLE [Products]
(
 [ProductId]   int NOT NULL IDENTITY(1,1),
 [ProductName] nvarchar(50) NOT NULL ,


 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([ProductId] ASC)
);
GO

CREATE TABLE [Categories]
(
 [CategoryId]   int NOT NULL IDENTITY(1,1),
 [CategoryName] nvarchar(50) NOT NULL ,


 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([CategoryId] ASC)
);
GO

CREATE TABLE [ProductCategories]
(
 [Id]         int NOT NULL IDENTITY(1,1),
 [CategoryId] int NOT NULL ,
 [ProductId]  int NOT NULL ,


 CONSTRAINT [PK_ProductCategories] PRIMARY KEY CLUSTERED ([Id] ASC),
 CONSTRAINT [FK_ProductCategories_Categories] FOREIGN KEY ([CategoryId])  REFERENCES [Categories]([CategoryId]),
 CONSTRAINT [FK_ProductCategories_Products] FOREIGN KEY ([ProductId])  REFERENCES [Products]([ProductId]),
 CONSTRAINT [UC_ProductCategories] UNIQUE ([CategoryId], [ProductId])
);
GO


CREATE NONCLUSTERED INDEX [FK_1] ON [ProductCategories] 
 (
  [CategoryId] ASC
 )

GO

CREATE NONCLUSTERED INDEX [FK_2] ON [ProductCategories] 
 (
  [ProductId] ASC
 )

GO

-------------------------------------Fill with data
USE [MindBoxTestDB]
GO

INSERT INTO [dbo].[Categories]
     VALUES
           ('Процессор'),
		   ('Видеокарта'),
		   ('Материнская плата')
GO

GO

INSERT INTO [dbo].[Products]
     VALUES
			--1
           ('AMD Ryzen 5 3600 OEM'),
		   --Не будет категории
		   ('AMD Ryzen 5 5600 OEM'),
		   --3
		   ('Intel Core i5-11400F OEM'),
		   --4
		   ('Intel Core i5-12400F OEM'),

		   --5
		   ('PowerColor AMD Radeon RX 6750 XT Red Devil OC'),
		   --Не будет категории
		   ('Sapphire AMD Radeon RX 6650 XT NITRO+ GAMING'),
		   --7
		   ('KFA2 GeForce RTX 3070 Ti SG'),
		   --8
		   ('ASUS TUF Gaming GeForce RTX 3050 OC Edition'),

		   --9
		   ('ASUS ROG STRIX B550-XE GAMING WIFI'),
		   --Не будет категории
		   ('ASUS TUF GAMING B450M-PLUS II'),
		   --11
		   ('MSI MAG B560 TOMAHAWK WIFI'),
		   --12
		   ('ASUS Pro B560M-C/CSM'),
		   
		   --13
		   --Не будет категории
		   ('ZET GAMING Immortality TKL')
GO

INSERT INTO [dbo].[ProductCategories]
     VALUES

           (1, 1),
		   (1, 3),
		   (1, 4),

		   (2, 5),
		   (2, 7),
		   (2, 8),

		   (3, 9),
		   (3, 11),
		   (3, 12)
GO

-------------------------------------Select script
USE [MindBoxTestDB]
GO

SELECT p.ProductName as 'Имя продукта', c.CategoryName as 'Имя категории'
FROM [dbo].ProductCategories s
RIGHT JOIN [dbo].[Products] p on p.ProductId = s.ProductId
LEFT JOIN [dbo].[Categories] c on c.CategoryId = s.CategoryID

GO