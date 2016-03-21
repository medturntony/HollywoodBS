CREATE TABLE [dbo].[Courses] (
    [Code]    NCHAR (3)    NOT NULL,
    [Display] VARCHAR (50) NULL,
    [Hours]   INT          NULL,
    CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED ([Code] ASC)
);

