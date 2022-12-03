CREATE TABLE [dbo].[Table]
(
	[Id] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [Todo] TEXT NULL, 
    [TimeOfCreation] DATETIME NULL, 
    [IdOfAdder] INT NULL
)
