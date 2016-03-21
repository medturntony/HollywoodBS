
-- EXEC dbo.uspUpdateDailyEvent 1, getdate()
CREATE PROC [dbo].[uspUpdateDailyEvent]
	@DailyEventId			INT,
	@Timestamp				DATETIME
AS
SET NOCOUNT ON
BEGIN

	UPDATE [dbo].[DailyEvent]
	SET [PunchOutTime] = @Timestamp
		,[UpdatedDate] = @Timestamp
	WHERE [DailyEventId] = @DailyEventId

END
