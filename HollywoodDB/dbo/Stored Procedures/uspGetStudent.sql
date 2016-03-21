
-- EXEC dbo.uspGetStudent 1
-- TNGO 03/19/2016
CREATE PROC [dbo].[uspGetStudent]
	@Id		INT	
AS
SET NOCOUNT ON
BEGIN

	SELECT [Id]
		  ,[StudentNumber]
		  ,[FirstName]
		  ,[LastName]
		  ,[MiddleName]
		  ,[Suffix]
		  ,[Address1]
		  ,[Address2]
		  ,[City]
		  ,[State]
		  ,[ZipCode]
		  ,[SSN]
		  ,[Gender]
		  ,[BirthDate]
		  ,[HomePhone]
		  ,[CellPhone]
		  ,[Email]
		  ,[StatusId]
		  ,[EnrolledDate]
		  ,[GraduationDate]
		  ,[Behavior]
		  ,[CreatedDate]
		  ,[CreatedBy]
	  FROM [dbo].[Students]	
	  WHERE [Id] = @Id

END
