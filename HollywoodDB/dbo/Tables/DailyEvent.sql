CREATE TABLE [dbo].[DailyEvent] (
    [DailyEventId] INT          IDENTITY (1, 1) NOT NULL,
    [StudentId]    INT          NOT NULL,
    [PunchInTime]  DATETIME     NULL,
    [PunchOutTime] DATETIME     NULL,
    [CreateDate]   DATETIME     CONSTRAINT [DF_DailyEvent_CreateDate] DEFAULT (getdate()) NOT NULL,
    [UpdatedDate]  DATETIME     NULL,
    [ClockId]      VARCHAR (20) NULL,
    CONSTRAINT [PK_DailyEvent] PRIMARY KEY CLUSTERED ([DailyEventId] ASC)
);

