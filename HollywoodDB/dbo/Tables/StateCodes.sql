CREATE TABLE [dbo].[StateCodes] (
    [Code]      CHAR (2)     NOT NULL,
    [StateName] VARCHAR (20) NOT NULL,
    CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED ([Code] ASC)
);

