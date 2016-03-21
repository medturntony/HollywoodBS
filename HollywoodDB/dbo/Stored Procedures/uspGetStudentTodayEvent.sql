-- EXEC [dbo].[uspGetStudentTodayEvent] 123456
CREATE PROC [dbo].[uspGetStudentTodayEvent]
	@StudentNumber			INT
AS
SET NOCOUNT ON
BEGIN

	SELECT TOP 1
		   [DailyEventId]
		  ,[StudentNumber]
		  ,[FirstName]
		  ,[MiddleName]
		  ,[LastName]
		  ,[PunchInTime]
		  ,[PunchOutTime]
		  ,ISNULL([DailyTotalHours],0.0)
		  ,[CreateDate]
		  ,[UpdatedDate]
		  ,[Status]
	  FROM [dbo].[vwDailyEvents]
	  WHERE [StudentNumber] = @StudentNumber
		AND CreateDate BETWEEN DATEADD(day,DATEDIFF(day,0,GETDATE()),0) AND DATEADD(day,DATEDIFF(day,-1,GETDATE()),0)
	  ORDER BY CreateDate DESC

END
