# Task: Create a Stored Procedure for Customer Management
================================================================
## Objective: 
Write a stored procedure to manage customer data in a database. The stored procedure should allow the following functionalities:

    1. Add a New Customer:
        Input parameters: @FirstName, @LastName, @Email, @Phone, and @Address.
        Insert the new customer into the Customers table.

    2. Update Customer Information:
        Input parameters: @CustomerID, @FirstName, @LastName, @Email, @Phone, @Address.
        Update the existing customer details based on the @CustomerID.

    3. Delete a Customer:
        Input parameter: @CustomerID.
        Delete the customer from the Customers table.

    4. Retrieve Customer Details:
        Input parameter: @CustomerID.
        Return the customer details as a result set.

Steps to Follow:

    1. Create the Customers Table:
        Define a table with appropriate fields such as CustomerID, FirstName, LastName, Email, Phone, and Address. Make sure CustomerID is a primary key.

    2. Write the Stored Procedure:
        Use the provided functionalities to implement the procedure. Consider using IF statements to handle the different operations (Add, Update, Delete, Retrieve).

    . Test Your Procedure:
        Insert sample data, update it, retrieve it, and finally delete it to ensure that your procedure works correctly.

## Bonus Challenge:

    Add error handling to your stored procedure to manage situations like trying to update or delete a non-existent customer.