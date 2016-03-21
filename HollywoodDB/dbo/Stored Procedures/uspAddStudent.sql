
CREATE PROC [dbo].[uspAddStudent]
	@Id	INT,
    @StudentNumber int,
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @MiddleName VARCHAR(50),
    @Suffix VARCHAR(50),
    @Address1 VARCHAR(100),
    @Address2 VARCHAR(100),
    @City VARCHAR(50),
    @State VARCHAR(50),
    @ZipCode VARCHAR(10),
    @SSN VARCHAR(11),
    @Gender VARCHAR(1),
    @BirthDate Date,
    @HomePhone VARCHAR(12),
    @CellPhone VARCHAR(12),
    @Email VARCHAR(50),
    @StatusId int,
    @EnrolledDate Date,
    @GraduationDate Date,
    @Behavior int,
	@Course	VARCHAR(10)
AS
SET NOCOUNT ON
BEGIN

	IF NOT EXISTS(SELECT 1 FROM [dbo].[Students] WHERE [StudentNumber] = @StudentNumber)
	BEGIN

		INSERT INTO [dbo].[Students](
		  [StudentNumber]
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
		  ,[Course]
		)
		VALUES (
		  @StudentNumber,
		  @FirstName,
		  @LastName,
		  @MiddleName,
		  @Suffix,
		  @Address1,
		  @Address2,
		  @City,
		  @State,
		  @ZipCode,
		  @SSN,
		  @Gender,
		  @BirthDate,
		  @HomePhone,
		  @CellPhone,
		  @Email,
		  @StatusId,
		  @EnrolledDate,
		  @GraduationDate,
		  @Behavior, 
		  @Course	
		);		

		SELECT CAST(SCOPE_IDENTITY() AS int)

	END;

END;
