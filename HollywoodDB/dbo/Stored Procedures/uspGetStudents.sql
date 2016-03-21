-- EXEC dbo.uspGetStudents null,null,null
CREATE PROC [dbo].[uspGetStudents]
	@StudentNumber		INT				= null
	,@FirstName			VARCHAR(50)		= NULL
	,@LastName			VARCHAR(50)		= NULL
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
	  ,[Type]
  FROM [dbo].[Students]
  WHERE [StatusId] = 1
	AND (@StudentNumber IS NULL OR [StudentNumber] = @StudentNumber)
	AND (ISNULL(@FirstName,'')='' OR [FirstName] = @FirstName)
	AND (ISNULL(@LastName,'')='' OR [LastName] = @LastName)

END