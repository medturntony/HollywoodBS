

CREATE PROCEDURE [dbo].[uspGetActiveStudentList]
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
	FROM [dbo].[vwActiveStudentsLatestEvent] a
	WHERE NOT EXISTS (
		SELECT [Id]
			  ,[StudentNumber]
			  ,[FirstName]
			  ,[LastName]
			  ,[MiddleName]
			  ,[LatestStatus]
			  ,[LatestEventDate]
		FROM [dbo].[vwActiveStudentsLatestEvent] b
		WHERE b.[LatestEventDate] BETWEEN DATEADD(day,DATEDIFF(day,0,GETDATE()),0) AND DATEADD(day,DATEDIFF(day,-1,GETDATE()),0)
		AND b.[LatestStatus] = 'IN'	
		AND b.Id = a.Id

	)
END


