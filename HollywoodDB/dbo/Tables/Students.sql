﻿CREATE TABLE [dbo].[Students] (
    [Id]             INT           IDENTITY (1, 1) NOT NULL,
    [StudentNumber]  INT           NOT NULL,
    [FirstName]      VARCHAR (50)  NOT NULL,
    [LastName]       VARCHAR (50)  NOT NULL,
    [MiddleName]     VARCHAR (50)  NULL,
    [Suffix]         VARCHAR (50)  NULL,
    [Address1]       VARCHAR (100) NULL,
    [Address2]       VARCHAR (100) NULL,
    [City]           VARCHAR (50)  NULL,
    [State]          CHAR (2)      NULL,
    [ZipCode]        CHAR (10)     NULL,
    [SSN]            VARCHAR (11)  NULL,
    [Gender]         CHAR (1)      NULL,
    [BirthDate]      DATE          NULL,
    [HomePhone]      VARCHAR (12)  NULL,
    [CellPhone]      VARCHAR (12)  NULL,
    [Email]          VARCHAR (50)  NULL,
    [StatusId]       INT           CONSTRAINT [DF_Students_StatusId] DEFAULT ((1)) NOT NULL,
    [EnrolledDate]   DATE          NULL,
    [GraduationDate] DATE          NULL,
    [Behavior]       INT           NULL,
    [CreatedDate]    DATETIME2      CONSTRAINT [DF_Students_CreatedDate] DEFAULT (getdate()) NULL,
    [CreatedBy]      VARCHAR (50)  CONSTRAINT [DF_Students_CreatedBy] DEFAULT ('System') NULL,
    [Type]           NCHAR (10)    NULL,
    [Course]         CHAR (3)    NULL,
    [XferHours]      INT           CONSTRAINT [DF_Students_XferHours] DEFAULT ((0)) NULL,
    [TuitionPaid] BIT NULL DEFAULT 0, 
    CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED ([Id] ASC)
);

