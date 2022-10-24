-------------------------------------Fill with data
USE [MindBoxTestDB]
GO

INSERT INTO [dbo].[Categories]
     VALUES
           ('���������'),
		   ('����������'),
		   ('����������� �����')
GO

GO

INSERT INTO [dbo].[Products]
     VALUES
			--1
           ('AMD Ryzen 5 3600 OEM'),
		   --�� ����� ���������
		   ('AMD Ryzen 5 5600 OEM'),
		   --3
		   ('Intel Core i5-11400F OEM'),
		   --4
		   ('Intel Core i5-12400F OEM'),

		   --5
		   ('PowerColor AMD Radeon RX 6750 XT Red Devil OC'),
		   --�� ����� ���������
		   ('Sapphire AMD Radeon RX 6650 XT NITRO+ GAMING'),
		   --7
		   ('KFA2 GeForce RTX 3070 Ti SG'),
		   --8
		   ('ASUS TUF Gaming GeForce RTX 3050 OC Edition'),

		   --9
		   ('ASUS ROG STRIX B550-XE GAMING WIFI'),
		   --�� ����� ���������
		   ('ASUS TUF GAMING B450M-PLUS II'),
		   --11
		   ('MSI MAG B560 TOMAHAWK WIFI'),
		   --12
		   ('ASUS Pro B560M-C/CSM'),
		   
		   --13
		   --�� ����� ���������
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
