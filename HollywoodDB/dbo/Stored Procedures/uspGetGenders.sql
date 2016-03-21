-- EXEC dbo.uspGetGenders
CREATE PROC [dbo].[uspGetGenders]
AS
SET NOCOUNT ON
BEGIN

	SELECT [Code]
		,[Name]
	FROM [dbo].[Genders]

END
