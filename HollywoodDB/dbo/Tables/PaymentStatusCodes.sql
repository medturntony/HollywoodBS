CREATE TABLE [dbo].[PaymentStatusCodes] (
    [PaymentStatusCode] NCHAR (2)      NOT NULL,
    [Description]       NVARCHAR (100) NULL,
    CONSTRAINT [PK_PaymentStatusCodes] PRIMARY KEY CLUSTERED ([PaymentStatusCode] ASC)
);

