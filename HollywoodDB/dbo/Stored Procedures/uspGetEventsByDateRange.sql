
-- EXEC dbo.uspGetEventsByDateRange '2015-07-26', '2015-07-28'
CREATE PROC dbo.uspGetEventsByDateRange
	@beginDate VARCHAR(10),
	@endDate VARCHAR(10)
AS 
SET NOCOUNT ON
BEGIN

	DECLARE @date1	DATETIME, @date2  DATETIME
	 
	SET @date1 = DATEADD(day,DATEDIFF(day,0,@BeginDate),0)
	SET @date2 = DATEADD(day,DATEDIFF(day,-1,@EndDate),0)

	SELECT *
	FROM [dbo].[vwDailyEvents]
	WHERE [CreateDate] BETWEEN @date1 AND @date2
	ORDER BY CreateDate

END

