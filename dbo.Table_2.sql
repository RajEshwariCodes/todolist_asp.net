CREATE TABLE [dbo].[TableTodo] (
    [Id]             INT      IDENTITY (1, 1) NOT NULL,
    [Todo]           TEXT     NULL,
    [TimeOfCreation] DATETIME NULL,
    [IdOfAdder]      INT      NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

