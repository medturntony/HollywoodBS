CREATE TABLE [dbo].[PlannedPayments] (
    [PaymentPeriodId]      INT             IDENTITY (1, 1) NOT NULL,
    [StudentId]            INT             NOT NULL,
    [PaymentStatusCode]    NCHAR (2)       NULL,
    [PaymentDueDate]       DATE            NULL,
    [PlannedPaymentAmount] NUMERIC (18, 2) NULL,
    CONSTRAINT [PK_PlannedPayments] PRIMARY KEY CLUSTERED ([PaymentPeriodId] ASC)
);

