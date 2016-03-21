CREATE TABLE [dbo].[LoanStatusCodes] (
    [LoanStatusCode] NCHAR (2)      NOT NULL,
    [Description]    NVARCHAR (100) NULL,
    CONSTRAINT [PK_LoanStatusCodes] PRIMARY KEY CLUSTERED ([LoanStatusCode] ASC)
);

