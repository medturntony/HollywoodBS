
--EXEC dbo.uspAddDailyEvent @StudentId=12345, getdate()
CREATE PROC [dbo].[uspAddDailyEvent]
	@StudentId			INT,
	@Timestamp			DATETIME
AS
SET NOCOUNT ON
BEGIN

	INSERT INTO [dbo].[DailyEvent] ([StudentId], [PunchInTime], [CreateDate], [UpdatedDate])
	VALUES(@StudentId, @Timestamp, @Timestamp, @Timestamp)

	SELECT SCOPE_IDENTITY()

END
