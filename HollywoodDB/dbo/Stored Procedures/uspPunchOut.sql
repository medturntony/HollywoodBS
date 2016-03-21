
-- EXEC dbo.uspPunchOut @DailyEventId=2
CREATE PROC [dbo].[uspPunchOut]
	@DailyEventId	INT
AS
SET NOCOUNT ON
BEGIN

	UPDATE [dbo].[DailyEvent]
	SET [PunchOutTime] = getdate()
		,[UpdatedDate] = getdate()		
	WHERE [DailyEventId] = @DailyEventId

END

