-- EXEC [dbo].[uspGetStudentDailyEvents] 1663806
CREATE PROC [dbo].[uspGetStudentDailyEvents]
	@StudentNumber				INT
AS
SET NOCOUNT ON
BEGIN

	SELECT [DailyEventId]
		  ,[StudentId]
		  ,[StudentNumber]
		  ,[FirstName]
		  ,[MiddleName]
		  ,[LastName]
		  ,[PunchInTime]
		  ,[PunchOutTime]
		  ,[DailyTotalHours]
		  ,[CreateDate]
		  ,[Status]
	  FROM [dbo].[vwDailyEvents]
	  WHERE [StudentNumber] = @StudentNumber

END