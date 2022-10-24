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