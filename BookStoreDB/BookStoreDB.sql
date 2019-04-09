USE [BookStoreDB]
IF OBJECT_ID(N'Book', N'U') IS NULL
BEGIN 
    CREATE TABLE [dbo].[Book](
	[Id] [int] NOT NULL,
	[Article] [nvarchar](6) NOT NULL,
	[Author] [nvarchar](30) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Genre] [nvarchar](20) NOT NULL,
	[Price] [decimal](16, 2) NOT NULL,
   CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED ([Id] ASC))
END
GO

USE [BookStoreDB]
IF NOT EXISTS (SELECT * FROM dbo.Book) 
BEGIN 		 
USE BookStoreDB
	INSERT [dbo].[Book] ([Id], [Article], [Author], [Title], [Genre], [Price]) VALUES (3, N'111111', N'Yuval Noah Harari', N'Sapiens: A Brief History of Humankind', N'Science', CAST(14.02 AS Decimal(16, 2)))
	INSERT [dbo].[Book] ([Id], [Article], [Author], [Title], [Genre], [Price]) VALUES (4, N'012784', N'Walter Isaacson', N'Steve Jobs', N'Biography & Memoir', CAST(24.00 AS Decimal(16, 2)))
	INSERT [dbo].[Book] ([Id], [Article], [Author], [Title], [Genre], [Price]) VALUES (5, N'024509', N'Benjamin Graham', N'The Intelligent Investor, Rev. Ed', N'Entrepreneurship', CAST(28.80 AS Decimal(16, 2)))
	INSERT [dbo].[Book] ([Id], [Article], [Author], [Title], [Genre], [Price]) VALUES (6, N'033983', N'Tayari Jones', N'An American Marriage (Oprah''s Book Club): A Novel', N'Contemporary Fiction', CAST(10.25 AS Decimal(16, 2)))
	INSERT [dbo].[Book] ([Id], [Article], [Author], [Title], [Genre], [Price]) VALUES (7, N'074521', N'Cynthia D''Aprix Sweeney', N'The Nest', N'Contemporary Fiction', CAST(11.00 AS Decimal(16, 2)))
	INSERT [dbo].[Book] ([Id], [Article], [Author], [Title], [Genre], [Price]) VALUES (8, N'103556', N'Corrie ten Boom', N'The Hiding Place', N'Biography & Memoir', CAST(17.60 AS Decimal(16, 2)))
END
GO
