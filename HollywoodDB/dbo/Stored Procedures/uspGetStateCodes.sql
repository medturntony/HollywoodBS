-- EXEC dbo.uspGetStateCodes
-- TNGO 03/19/2016
CREATE PROC [dbo].[uspGetStateCodes]
AS
SET NOCOUNT ON
BEGIN
	
	SELECT [Code],
		[StateName]
	FROM [dbo].[StateCodes]

END
