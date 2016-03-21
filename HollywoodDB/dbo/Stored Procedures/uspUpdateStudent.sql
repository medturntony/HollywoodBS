
CREATE PROC [dbo].[uspUpdateStudent]
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
	@Course VARCHAR(10)
AS
SET NOCOUNT ON
BEGIN

	UPDATE [dbo].[Students]
    SET	StudentNumber = @StudentNumber,
		FirstName = @FirstName,
		LastName = @LastName,
		MiddleName = @MiddleName,
		Suffix = @Suffix,
		Address1 = @Address1,
		Address2 = @Address2,
		City = @City,
		[State] = @State,
		ZipCode = @ZipCode,
		SSN = @SSN,
		Gender = @Gender,
		BirthDate = @BirthDate,
		HomePhone = @HomePhone,
		CellPhone = @CellPhone,
		Email = @Email,
		StatusId = @StatusId,
		EnrolledDate = @EnrolledDate,
		GraduationDate = @GraduationDate,
		Behavior = @Behavior,
		Course = @Course
	WHERE Id = @Id

END
