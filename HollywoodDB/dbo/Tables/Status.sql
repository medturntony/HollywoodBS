CREATE TABLE [dbo].[Status] (
    [Id]          INT          IDENTITY (1, 1) NOT NULL,
    [Code]        NCHAR (1)    NOT NULL,
    [Description] VARCHAR (25) NOT NULL,
    CONSTRAINT [PK_Status_1] PRIMARY KEY CLUSTERED ([Id] ASC)
);

