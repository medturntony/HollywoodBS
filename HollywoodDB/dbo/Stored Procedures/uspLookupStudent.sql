--  EXEC dbo.uspLookupStudent 123456
CREATE PROC [dbo].[uspLookupStudent]
	@StudentNumber		INT
AS
SET NOCOUNT ON
BEGIN

	-- Student Output
	SELECT s.[Id]
		  ,s.[StudentNumber]
		  ,s.[FirstName]
		  ,s.[MiddleName]
		  ,s.[LastName]
		  ,s.[Address1]
		  ,s.[Address2]
		  ,s.[City]
		  ,s.[State]
		  ,s.[Zipcode]
		  ,s.[HomePhone]
		  ,s.[CellPhone]
		  ,s.[StatusId]
		  ,MAX(ISNULL(e.[UpdatedDate],GETDATE())) AS [LastActivityDate]
	FROM [dbo].[Students] s
		LEFT OUTER JOIN [dbo].[DailyEvent] e ON e.[StudentId] = s.[Id]
	WHERE s.[StudentNumber] = @StudentNumber
	GROUP BY s.[Id]
			,s.[StudentNumber]
			,s.[FirstName]
			,s.[MiddleName]
			,s.[LastName]
			,s.[StatusId]
			,s.[Address1]
			,s.[Address2]
			,s.[City]
			,s.[State]
			,s.[Zipcode]
			,s.[HomePhone]
			,s.[CellPhone]	  
		
END
