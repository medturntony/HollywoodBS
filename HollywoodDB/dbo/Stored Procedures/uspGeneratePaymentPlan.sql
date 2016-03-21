-- EXEC dbo.uspGeneratePaymentPlan @StudentId=123456
CREATE PROC dbo.uspGeneratePaymentPlan
	@StudentId			INT
AS
SET NOCOUNT ON
BEGIN

	DECLARE	@LoanId				INT
	DECLARE @LoanAmt			numeric(18,2)
	DECLARE	@LoanPeriod			INT
	DECLARE	@FirstRepaymentDate	Date	

	SELECT @LoanId = [StudentLoanId]
		,@LoanAmt = [LoanAmount]
		,@LoanPeriod = [LoanPeriod]
		,@FirstRepaymentDate = [FirstRepaymentDate]
	
	FROM [dbo].[StudentLoans]
	WHERE [StudentId] = @StudentId


	DECLARE @i	INT = 1
	DECLARE @PaymentDueDate	Date = @FirstRepaymentDate

	WHILE @i < @LoanPeriod 
	BEGIN
		INSERT INTO [dbo].[PlannedPayments]
		(
			  [StudentId]
			, [PaymentStatusCode]
			, [PaymentDueDate]
			, [PlannedPaymentAmount]
		)
		VALUES
		(
			 @StudentId
			,'PP'
			,@PaymentDueDate
			,@LoanAmt/@LoanPeriod  
		)

		SET @i = @i + 1
		SET @PaymentDueDate = DATEADD(month,1,@PaymentDueDate)
	END

	-- Last Payment
	DECLARE @TotalPaid	numeric(18,2)
	SELECT @TotalPaid = SUM([PlannedPaymentAmount])
	FROM [dbo].[PlannedPayments]
	WHERE [StudentId] = @StudentId

	INSERT INTO [dbo].[PlannedPayments]
	(
		[StudentId]
		, [PaymentStatusCode]
		, [PaymentDueDate]
		, [PlannedPaymentAmount]
	)
	VALUES
	(
		@StudentId
		,'PP'
		,@PaymentDueDate
		,@LoanAmt -  @TotalPaid
	)

END