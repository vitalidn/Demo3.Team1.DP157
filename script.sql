USE [Shopdb]
IF OBJECT_ID(N'Foodstuffs', N'U') IS NULL
BEGIN 
CREATE TABLE [Foodstuffs] (
    [Id]     INT            NOT NULL,
    [Name]   NVARCHAR (MAX) NULL,
    [Price]  FLOAT (53)     NOT NULL,
    [Weight] FLOAT (53)     NOT NULL,
    [Cost]   FLOAT (53)     NOT NULL,
    CONSTRAINT [PK_Foodstuffs] PRIMARY KEY CLUSTERED ([Id] ASC))
END

    
    
USE [Shopdb]
IF NOT EXISTS (SELECT * FROM dbo.Foodstuffs) 
BEGIN 
INSERT INTO [dbo.Foodstuffs] 
VALUES (1, 'Apples', 1.5, 2.5, 3.75),
(2, 'Pears', 2.5, 3.2, 8),
(3, 'Strawberry', 3.5, 3.6, 12.6),
(4, 'Cabbage', 2, 1.5, 3),
(5, 'Cucumber', 2.5, 2, 5),
(6, 'Sweets', 3.6, 3.4, 12.24),
(7, 'Trout', 19.2, 5, 96),
(8, 'Lamb', 20.5, 3.6, 73.8),
(9, 'Turkey', 36.5, 2.5, 91.25),
(10, 'Tequila', 15.5, 1, 15.5)
END
