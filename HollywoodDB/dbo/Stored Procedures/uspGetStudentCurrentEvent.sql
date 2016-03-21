--  EXEC dbo.uspGetStudentCurrentEvent 123456
CREATE PROC [dbo].[uspGetStudentCurrentEvent]
	@StudentNumber			INT
AS
SET NOCOUNT ON
BEGIN

	DECLARE @StudentId INT

	-- Student Output
	SELECT s.[Id]
		  ,s.[StudentNumber]
		  ,s.[FirstName]
		  ,s.[MiddleName]
		  ,s.[LastName]
		  ,s.[StatusId]
	FROM [dbo].[Students] s
	WHERE s.[StudentNumber] = @StudentNumber


	SELECT 
		[DailyEventId]
		,[PunchInTime]
		,[PunchOutTime]
		, CASE 
				WHEN [PunchInTime] IS NULL AND [PunchOutTime] IS NULL THEN 'OUT'
				WHEN [PunchInTime] IS NOT NULL AND [PunchOutTime] IS NULL THEN 'IN'
				WHEN [PunchInTime] IS NULL AND [PunchOutTime] IS NOT NULL THEN 'OUT'
				WHEN [PunchInTime] IS NOT NULL AND [PunchOutTime] IS NOT NULL THEN 'OUT'
		  END AS [Status]

	FROM [dbo].[DailyEvent] d
		INNER JOIN [dbo].[Students] s ON s.Id = d.[StudentId]
	WHERE s.[StudentNumber] = @StudentNumber
		AND CreateDate BETWEEN DATEADD(day,DATEDIFF(day,0,GETDATE()),0) AND DATEADD(day,DATEDIFF(day,-1,GETDATE()),0)
		
END
