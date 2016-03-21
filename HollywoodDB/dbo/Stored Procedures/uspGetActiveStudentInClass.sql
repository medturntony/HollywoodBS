-- EXEC [dbo].[uspGetActiveStudentInClass]
CREATE PROCEDURE [dbo].[uspGetActiveStudentInClass]
AS
SET NOCOUNT ON
BEGIN
	SELECT [Id]
		  ,[StudentNumber]
		  ,[FirstName]
		  ,[LastName]
		  ,[MiddleName]
		  ,[LatestStatus]
		  ,[LatestEventDate]
		  ,[DailyEventId]
	FROM [dbo].[vwActiveStudentsLatestEvent]
	WHERE [LatestEventDate] BETWEEN DATEADD(day,DATEDIFF(day,0,GETDATE()),0) AND DATEADD(day,DATEDIFF(day,-1,GETDATE()),0)
	AND [LatestStatus] = 'IN'
END




