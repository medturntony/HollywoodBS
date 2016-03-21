-- EXEC dbo.uspPunchIn @StudentId=12345
-- EXEC dbo.uspPunchIn @StudentId=12345, 'KITCHENAIO'
CREATE PROC [dbo].[uspPunchIn]
	@StudentId		INT,
	@ClockId	VARCHAR(20) = NULL
AS
SET NOCOUNT ON
BEGIN

	INSERT INTO [dbo].[DailyEvent] ([StudentId], [PunchInTime],[UpdatedDate], [ClockId])
	VALUES(@StudentId, getdate(), getdate(), @ClockId)

	SELECT SCOPE_IDENTITY()

END
