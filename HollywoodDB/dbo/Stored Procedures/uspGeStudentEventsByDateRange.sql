
-- EXEC dbo.uspGeStudentEventsByDateRange 15, '8/9/2015', '2015-08-30'
CREATE PROC [dbo].[uspGeStudentEventsByDateRange]
	@studentId	int,
	@beginDate VARCHAR(10),
	@endDate VARCHAR(10)
AS 
SET NOCOUNT ON
BEGIN

	DECLARE @date1	DATETIME, @date2  DATETIME
	 
	SET @date1 = DATEADD(day,DATEDIFF(day,0,@BeginDate),0)
	SET @date2 = DATEADD(day,DATEDIFF(day,-1,@EndDate),0)

SELECT [DailyEventId]
      ,[StudentNumber]
      ,[StudentId]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[PunchInTime]
      ,[PunchOutTime]
      ,[DailyTotalHours]
      ,[CreateDate]
      ,[UpdatedDate]
      ,[Status]
	  ,CAST([CreateDate] AS Date) AS [DateOnly]
	  ,[ClockId]
	FROM [dbo].[vwDailyEvents]
	WHERE  StudentId = @studentId
		AND [CreateDate] BETWEEN @date1 AND @date2
	
	ORDER BY CreateDate

END

