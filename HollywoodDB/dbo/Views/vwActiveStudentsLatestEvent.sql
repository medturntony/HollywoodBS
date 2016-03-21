
CREATE VIEW [dbo].[vwActiveStudentsLatestEvent]
AS
SELECT 
	   [Id]
      ,[StudentNumber]
      ,[FirstName]
      ,[LastName]
      ,[MiddleName]
	  ,CASE 
		WHEN de.[PunchInTime] IS NOT NULL AND de.[PunchOutTime] IS NULL THEN 'IN' 
		WHEN de.[PunchInTime] IS NULL AND de.[PunchOutTime] IS NULL THEN 'OUT'
		WHEN de.[PunchInTime] IS NULL AND de.[PunchOutTime] IS NOT NULL THEN 'OUT'
		WHEN de.[PunchInTime] IS NOT NULL AND de.[PunchOutTime] IS NOT NULL THEN 'OUT'
		ELSE 'OUT' 
		END AS [LatestStatus]
      ,de.CreateDate AS [LatestEventDate] 
	  ,de.[DailyEventId]
FROM [dbo].[Students] s
OUTER APPLY(
	SELECT TOP 1 *
	FROM [dbo].[DailyEvent] de
	WHERE s.[Id] = de.[StudentId]
	ORDER BY de.CreateDate desc
) de
WHERE [StatusId] = 1
