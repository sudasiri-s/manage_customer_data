-- Create the Customers Table:
CREATE TABLE customers (
	CustomerID		integer	NOT NULL PRIMARY KEY,
	FirstName		varchar(100)	NOT NULL,
	LastName		varchar(100),
	Email			varchar(100),
	Phone			varchar(10),
	Address			varchar(200),
	CreateDate		Datetime,
	ModifyDate		Datetime
	);