-- =============================================
-- Author:		Sudasiri
-- Create date: 2024-10-24
-- Description:	<Description,,>
-- =============================================
-- Write the Stored Procedure:

CREATE PROCEDURE [dbo].[InsertCustomerData]
	-- Add the parameters for the stored procedure here
	@CustomerID	integer = NULL
	, @FirstName	varchar(100)
	, @LastName	varchar(100)
	, @Email		varchar(100)
	, @Phone 		varchar(100)
	, @Address		varchar(100)
	, @Status		varchar(6)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @CreateDate Datetime, @ModifyDate Datetime;
	SET @CreateDate = GETDATE();
	SET @ModifyDate = GETDATE();

	-- Add a New Customer:
	IF LOWER(@Status) = 'insert' AND @CustomerID IS NULL
	BEGIN
		-- Set new CustomerID and Insert
		SELECT @CustomerID = ISNULL(MAX(CustomerID), 0) + 1 FROM customers;

		INSERT INTO customers (CustomerID, FirstName, LastName, Email, Phone, Address, CreateDate, ModifyDate) 
		VALUES (@CustomerID, @FirstName, @LastName, @Email, @Phone, @Address, @CreateDate, @ModifyDate);
	END

	-- Update Customer Information:
	ELSE IF LOWER(@Status) = 'update' AND @CustomerID IS NOT NULL
	BEGIN
		UPDATE customers 
		SET FirstName = @FirstName, 
			LastName = @LastName, 
			Email = @Email, 
			Phone = @Phone, 
			Address = @Address, 
			ModifyDate = @ModifyDate
		WHERE CustomerID = @CustomerID;
	END

	-- Delete a Customer:
	ELSE IF LOWER(@Status) = 'delete' AND @CustomerID IS NOT NULL
	BEGIN
		DELETE FROM customers
		WHERE CustomerID = @CustomerID;
	END

	-- If no valid operation is passed
	ELSE
	BEGIN
    	RAISERROR('Invalid Status', 16, 1);
		RETURN;
	END
END
