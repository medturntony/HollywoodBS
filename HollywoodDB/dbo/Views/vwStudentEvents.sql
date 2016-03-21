CREATE VIEW [dbo].[vwStudentEvents]
AS
SELECT s.[Id], s.[StudentNumber], s.[FirstName], s.[LastName], s.[MiddleName], s.[HomePhone], MAX(e.[CreateDate]) AS LastEvent
FROM [dbo].[Students] s
	LEFT OUTER JOIN [dbo].[DailyEvent] e ON e.[StudentId] = s.[Id]
GROUP BY s.[Id], s.[StudentNumber], s.[FirstName], s.[LastName], s.[MiddleName], s.[HomePhone]


