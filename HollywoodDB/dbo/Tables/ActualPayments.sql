CREATE TABLE [dbo].[ActualPayments] (
    [ActualPaymentId]     INT             NOT NULL,
    [StudentId]           INT             NOT NULL,
    [PeriodId]            INT             NULL,
    [ActualPaymentDate]   DATE            NULL,
    [ActualPaymentAmount] NUMERIC (18, 2) NULL,
    [Comments]            NVARCHAR (MAX)  NULL,
    [CreatedDate]         DATETIME        CONSTRAINT [DF_ActualPayments_CreatedDate] DEFAULT (getdate()) NULL,
    [CreatedBy]           INT             CONSTRAINT [DF_ActualPayments_CreatedBy] DEFAULT ((0)) NULL,
    CONSTRAINT [PK_ActualPayments] PRIMARY KEY CLUSTERED ([ActualPaymentId] ASC)
);

