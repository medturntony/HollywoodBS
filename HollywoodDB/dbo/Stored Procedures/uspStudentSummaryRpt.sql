-- EXEC [dbo].[uspStudentSummaryRpt]
CREATE PROC [dbo].[uspStudentSummaryRpt]
AS
SET NOCOUNT ON
BEGIN
	SELECT s.[Id]
		, s.[StudentNumber]
		, MAX(s.[FirstName]) AS [FirstName]
		, MAX(s.[LastName]) AS [LastName]
		, MAX(ISNULL(s.[MiddleName],'')) AS [MiddleName]
		, MAX(ISNULL(s.[Suffix],'')) AS [Suffix]
		, MAX(s.[CreatedDate]) AS [StartDate]
		, MAX(s.[Course]) AS [Course]
		, MAX(ISNULL(c.[Hours],0)) AS [CourseHours]
		, MAX(ISNULL(s.[XferHours],0)) AS [XferHours]
		, SUM(ISNULL([DailyTotalHours],0)) AS [HoursAttend]
		, (SUM(ISNULL([DailyTotalHours],0)) + SUM(ISNULL(s.XferHours,0))) AS [TotalHours]
		, ((SUM(ISNULL([DailyTotalHours],0)) + SUM(ISNULL(s.XferHours,0))) / MAX(ISNULL(c.[Hours],0))) * 100 AS [CompletionPCt]
	FROM [dbo].[Students] s
		INNER JOIN [dbo].[Courses] c ON c.[Code] = s.[Course]
		LEFT OUTER JOIN [dbo].[vwDailyEvents] e ON e.[StudentId] = s.[Id]
	WHERE [StatusId] = 1
	GROUP BY s.[Id], s.[StudentNumber]
	ORDER BY MAX(s.[LastName]), MAX(s.[FirstName]) 
END




