CREATE TABLE [dbo].[StudentLoans] (
    [StudentLoanId]      INT             IDENTITY (1, 1) NOT NULL,
    [LoanStatusCode]     NCHAR (2)       NOT NULL,
    [StudentId]          INT             NOT NULL,
    [LoanAmount]         NUMERIC (18, 2) NULL,
    [LoanPeriod]         INT             NULL,
    [FirstRepaymentDate] DATE            NULL,
    [LastRepaymentDate]  DATE            NULL,
    [Comments]           NVARCHAR (MAX)  NULL,
    [CreatedDate]        DATETIME        CONSTRAINT [DF_StudentLoans_CreatedDate] DEFAULT (getdate()) NULL,
    CONSTRAINT [PK_StudentLoans] PRIMARY KEY CLUSTERED ([StudentLoanId] ASC)
);

