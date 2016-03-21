CREATE TABLE [dbo].[StudentType] (
    [Type]        NCHAR (10)   NOT NULL,
    [Description] VARCHAR (50) NULL,
    [Curriculum]  INT          NOT NULL,
    CONSTRAINT [PK_StudentType] PRIMARY KEY CLUSTERED ([Type] ASC)
);

