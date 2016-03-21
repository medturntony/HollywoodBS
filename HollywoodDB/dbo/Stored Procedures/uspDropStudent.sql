CREATE PROC dbo.uspDropStudent
	@Id	INT
AS
SET NOCOUNT ON
BEGIN

	UPDATE [dbo].[Students]
	SET [StatusId] = 3
	WHERE [Id] = @Id

END