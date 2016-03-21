
CREATE PROC [dbo].[uspDeleteStudent]
	@Id		INT
AS
SET NOCOUNT ON
BEGIN

	DELETE FROM [dbo].[Students]
	WHERE Id = @Id

END
