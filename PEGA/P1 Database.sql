-- Create a new table called '[Customers]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Customers]', 'U') IS NOT NULL
DROP TABLE [dbo].[Customers]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Customers]
(
    [Customer_Id] INT IDENTITY (1,1)PRIMARY KEY, -- Primary Key column
    [First_Name] text not null,
    [Last_Name] text not null,
    [Number] text NOT NULL,
    [Email] text not null,
    [Address] text not null,
    [Zipcode] text not null, 
    [Credit_Card_Number] text not null,
    [CV2] text not null, 
    [Experation_Date] text not null, 
    [Card_Type] text not null, 
    -- Specify more columns here
);
GO
INSERT INTO [dbo].[Customers]
( -- Columns to insert data into
  [First_name], [Last_name], [Number], [Email], [Address], [Zipcode], [Credit_Card_Number], [CV2], [Experation_Date], [Card_Type]
)
VALUES
( -- First row: values for the columns in the list above
 'Christina','Torres', '206-939-3462', 'brooke_abshi@gmail.com', '4162 Mutton Town Road, Seattle, WA', '98109', '4929323232472570', '819', '7/21/2022', 'Visa'
),
( -- Second row: values for the columns in the list above
 'Ernest', 'Gilber', '702-354-0800', 'paige1989@hotmail.com', '528 Hiney Road,  Boulder City, NV', '89005', '5191728709212280', '177', '6/1/2022', 'MasterCard'
),
(
    'Betty', 'Hector', '217-343-8806', 'breana.huds@hotmail.com', '4605 University Hill Road, Effingham, IL', '62401', '4916285245971350', '330', '2/1/2020', 'Visa' 
), 
(
    'Richard','Beadudoin', '215-250-2133', 'brianne_kertzma@hotmail.com', '3245 Stone Lane, Tremont, PA', '17981', '5398361283756170', '936', '3/1/2022', 'MasterCard'
),
(
    'Joan', 'Galipeau', '443-744-8436', 'uriel1980@hotmail.com', '1228 Woodhill Avenue, Reisterstown, MD', '21136', '5272167010894510', '181', '11/1/2020', 'MasterCard'
)
-- Add more rows here
GO
select * from Customers
-- Create a new table called '[Chrisitina Shopping List]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Chrisitina Shopping List]', 'U') IS NOT NULL
DROP TABLE [dbo].[Chrisitina Shopping List]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Chrisitina Shopping List]
(
    [Id] INT IDENTITY (1,1) PRIMARY KEY, -- Primary Key column
    [Customer_ID] INT REFERENCES Customers(Customer_Id), 
    [Products] text NOT NULL,
    [Product_ID] INTEGER not null,
    [Quantitiy] INTEGER not null,
    [Price] INTEGER not NULL,
    -- Specify more columns here
);
GO
INSERT INTO [dbo].[Chrisitina Shopping List]
( -- Columns to insert data into
 [Customer_ID], [Products], [Product_ID], [Quantitiy], [Price]
)
VALUES
( -- First row: values for the columns in the list above
 1, 'Chang', 2, 1, 19
),
( -- Second row: values for the columns in the list above
 1, 'Chef Antons Gumbo Mix', 5, 1, 21.36
),
(
    1, 'Chef Antons Cajun Seasoning', 4, 2, 22
),
(
    1, 'Northwoords Cranberry Sauce', 8, 1, 40
),
(
    1, 'Steeleye Stout', 35, 2, 18
)
-- Add more rows here
GO
-- Create a new table called '[Ernest Shopping List]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Ernest Shopping List]', 'U') IS NOT NULL
DROP TABLE [dbo].[Ernest Shopping List]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Ernest Shopping List]
(
    [Id] INT IDENTITY (1,1) PRIMARY KEY, -- Primary Key column
    [Customer_ID] INT REFERENCES Customers(Customer_Id), 
    [Products] text NOT NULL,
    [Product_ID] INTEGER not null,
    [Quantitiy] INTEGER not null,
    [Price] INTEGER not NULL,
    -- Specify more columns here
);
GO
-- Insert rows into table 'Ernest Shopping List' in schema '[dbo]'
INSERT INTO [dbo].[Ernest Shopping List]
( -- Columns to insert data into
[Customer_ID], [Products], [Product_ID], [Quantitiy], [Price]
)
VALUES
( -- First row: values for the columns in the list above
 2, 'Louisiana Hot Spiced Okra', 66, 1, 17
),
( -- Second row: values for the columns in the list above
 2, 'Gula Malacca', 38, 1, 19.46
),
(
    2, 'Cote de Blaye', 38, 1, 263.5
),
(
    2, 'Lakkalikoori', 38, 1, 18
), 
(
    2, 'Chai', 1, 4, 2
)
GO
-- Create a new table called '[Betty Shopping List]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Betty Shopping List]', 'U') IS NOT NULL
DROP TABLE [dbo].[Betty Shopping List]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Betty Shopping List]
(
    [Id] INT IDENTITY (1,1) PRIMARY KEY, -- Primary Key column
    [Customer_ID] INT REFERENCES Customers(Customer_Id), 
    [Products] text NOT NULL,
    [Product_ID] INTEGER not null,
    [Quantitiy] INTEGER not null,
    [Price] INTEGER not NULL,
    -- Specify more columns here
);
GO
-- Insert rows into table 'Betty Shopping List' in schema '[dbo]'
INSERT INTO [dbo].[Betty Shopping List]
(
[Customer_ID], [Products], [Product_ID], [Quantitiy], [Price]
)
VALUES
( -- First row: values for the columns in the list above
 3, 'Chartreuse Verte', 39, 1, 18
),
( -- Second row: values for the columns in the list above
 3, 'Grandmas Boysenberry', 6, 2, 25
), 
(
    3, 'Laughing Lumberjack Lager', 67, 3, 14
), 
(
    3, 'Veggie Spread', 63, 1, 22
), 
(
    3, 'Chef Antons Cajun Seasoning', 4, 1, 22
)
-- Add more rows here
GO
-- Create a new table called '[Richard Shopping List]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Richard Shopping List]', 'U') IS NOT NULL
DROP TABLE [dbo].[Richard Shopping List]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Richard Shopping List]
(
 [Id] INT IDENTITY (1,1) PRIMARY KEY, -- Primary Key column
    [Customer_ID] INT REFERENCES Customers(Customer_Id), 
    [Products] text NOT NULL,
    [Product_ID] INTEGER not null,
    [Quantitiy] INTEGER not null,
    [Price] INTEGER not NULL,
    -- Specify more columns here
);
GO
-- Insert rows into table 'Richard Shopping List' in schema '[dbo]'
INSERT INTO [dbo].[Richard Shopping List]
( -- Columns to insert data into
[Customer_ID], [Products], [Product_ID], [Quantitiy], [Price]
)
VALUES
( -- First row: values for the columns in the list above
 4, 'Originial Frankfurter Grune SoBe', 77, 1, 12
),
( -- Second row: values for the columns in the list above
 4, 'Guarana Fantastica', 24, 2, 4.5
), 
(
    4, 'Grandmas Boysendberry Spread', 6, 2, 25
),
(
    4, 'Outback Lager', 70, 1, 15
),
(
    4, 'Chef Antons Gumnbo Mix', 5, 3, 21.36
)
-- Add more rows here
GO
-- Create a new table called '[Joan Shopping List]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Joan Shopping List]', 'U') IS NOT NULL
DROP TABLE [dbo].[Joan Shopping List]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Joan Shopping List]
(
    [Id] INT IDENTITY (1,1) PRIMARY KEY, -- Primary Key column
    [Customer_ID] INT REFERENCES Customers(Customer_Id), 
    [Products] text NOT NULL,
    [Product_ID] INTEGER not null,
    [Quantitiy] INTEGER not null,
    [Price] INTEGER not NULL,
    -- Specify more columns here
);
GO
-- Insert rows into table 'Joan Shopping List' in schema '[dbo]'
INSERT INTO [dbo].[Joan Shopping List]
( -- Columns to insert data into
[Customer_ID], [Products], [Product_ID], [Quantitiy], [Price]
)
VALUES
( -- First row: values for the columns in the list above
5, 'Anniseed Syrup', 3, 2, 10
),
( -- Second row: values for the columns in the list above
 5, 'Lakkalikoori', 76, 1, 18
), 
(
    5, 'Sasquatch Ale', 34, 3, 14
),
(
    5, 'Green Shouye', 15, 2, 15.5
),
(
    5, 'Veggie Spread', 63, 1, 43.9
)
-- Add more rows here
GO
select * from [Chrisitina Shopping List]
-- Delete rows from table '[Chrisitina Shopping List]' in schema '[dbo]'
DELETE FROM [dbo].[Chrisitina Shopping List]
WHERE products like 'Chang' /* add search conditions here */
GO
insert -- Insert rows into table 'TableName' in schema '[dbo]'
INSERT INTO [dbo].[Chrisitina Shopping List]
( -- Columns to insert data into
 [Customer_ID], [Products], [Product_ID], [Quantitiy], [Price]
)
VALUES
( -- First row: values for the columns in the list above
 1, 'Gula Malacca', 44, 1, 19.46
)

-- Add more rows here
GO
DELETE FROM [dbo].[Chrisitina Shopping List]
WHERE products like 'Steeleye Stout' /* add search conditions here */
GO
-- Insert rows into table 'TableName' in schema '[dbo]'
INSERT INTO [dbo].[Chrisitina Shopping List]
( -- Columns to insert data into
 [Customer_ID], [Products], [Product_ID], [Quantitiy], [Price]
)
VALUES
( -- First row: values for the columns in the list above
 1, 'Aniseef Syrup', 3, 1, 10
)

-- Add more rows here
GO
DELETE FROM [dbo].[Chrisitina Shopping List]
WHERE products like 'Chef Antons Gumbo Mix' /* add search conditions here */
GO
DELETE FROM [dbo].[Chrisitina Shopping List]
WHERE products like 'Chef Antons Gumbo Mix' /* add search conditions here */
GO
DELETE FROM [dbo].[Chrisitina Shopping List]
WHERE products like 'Chef Antons Gumbo Mix' /* add search conditions here */
GO
DELETE from [dbo].[Chrisitina Shopping List]
select * from [dbo].[Chrisitina Shopping List]
select * from Customers
where Customer_ID like 1
select * from [dbo].[Chrisitina Shopping List] select * from Customers where Customer_ID like 1
select * from Customers where Customer_ID like 1 select * from [dbo].[Chrisitina Shopping List] 
-- Insert rows into table 'TableName' in schema '[dbo]'
INSERT INTO [dbo].[Chrisitina Shopping List]
( -- Columns to insert data into
[Customer_ID], [Products], [Product_ID], [Quantitiy], [Price]
)
VALUES
( -- First row: values for the columns in the list above
1, "Veggie Spread", 63, 1, 63
),
( -- Second row: values for the columns in the list above, 
 1, "Chef Anton's Cajun Seasoning", 4, 1, 22
)
-- Add more rows here
GO

INSERT INTO [dbo].[Chrisitina Shopping List]
( -- Columns to insert data into
 [Customer_ID], [Products], [Product_ID], [Quantitiy], [Price]
)
VALUES
( -- First row: values for the columns in the list above
 1, 'Veggie Spread', 62, 1, 63
)
GO
INSERT INTO [dbo].[Chrisitina Shopping List]
( -- Columns to insert data into
 [Customer_ID], [Products], [Product_ID], [Quantitiy], [Price]
)
VALUES
( -- First row: values for the columns in the list above
 1, 'Chef Antons Seasoning', 4, 1, 22
)
GO
select * from [dbo].[Chrisitina Shopping List] JOIN [Customers] on Customer_ID 
Select * From [Customers] Where Customer_ID Like 1

SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID; 
DELETE from [Chrisitina Shopping List]
where Price = 22
-- Insert rows into table 'Chrisitina Shopping List' in schema '[dbo]'
INSERT INTO [dbo].[Chrisitina Shopping List]
( -- Columns to insert data into
  [Customer_ID], [Products], [Product_ID], [Quantitiy], [Price]
)
VALUES
( -- First row: values for the columns in the list above
 1, 'Louisiana Hot Spiced Okra', 66, 1, 17
)
-- Add more rows here
GO
-- Create a new table called '[INVOICE]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[INVOI]', 'U') IS NOT NULL
DROP TABLE [dbo].[INVOI]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[INVOICE]
(
    [Id] INT NOT NULL PRIMARY KEY, -- Primary Key column
    [Customer_ID] INT REFERENCES Customers(Customer_Id), 
    [Order_Number] NVARCHAR (50) Not NULL, 
    [First_Name] NVARCHAR(50) NOT NULL,
    [Last_Name] NVARCHAR(50) Not NULL, 

    -- Specify more columns here
);
GO

-- Create a new table called '[Profit]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Profit]', 'U') IS NOT NULL
DROP TABLE [dbo].[Profit]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Profits]
(
    [Id] INT NOT NULL PRIMARY KEY, -- Primary Key column
    [Customer_ID] INT REFERENCES Customers(Customer_Id),
    [Subtotal] DECIMAL,
    [Base] Decimal, 
    [Commisson] Decimal DEFAULT .20,
    [Profit] DECIMAL,
    -- Specify more columns here
);
GO

select * FROM Invoice
select * from [Chrisitina Shopping List]
select * from [dbo].[Chrisitina Shopping List]
delete from Invoice where Customer_ID like 1
select * from [Ernest Shopping List]
delete from [Ernest Shopping List] where Product_ID like 5
-- Insert rows into table 'Ernest Shopping List' in schema '[dbo]'
INSERT INTO [dbo].[Ernest Shopping List]
( -- Columns to insert data into
 [Customer_ID], [Products], [Product_ID], [Quantitiy], [Price]
)
VALUES
( -- First row: values for the columns in the list above
 2, 'Rhonbrau Klosterbier', 75, 1, 7.76
),
( -- Second row: values for the columns in the list above
 2, 'Laughing Lumberjack Lager', 67, 1, 7
)
-- Add more rows here
GO
select* from [Ernest Shopping List]
select* from [dbo].[Ernest Shopping List]
Select * From [Customers] Where Customer_ID Like 2
SELECT * from [dbo].[Customers] Where Customer_Id like 2
-- Insert rows into table 'TableName' in schema '[dbo]'
INSERT INTO [dbo].[TableName]
( -- Columns to insert data into
 [ColumnName1], [ColumnName2], [ColumnName3]
)
VALUES
( -- First row: values for the columns in the list above
 ColumnValue1, ColumnValue2, ColumnValue3
),
( -- Second row: values for the columns in the list above
 ColumnValue1, ColumnValue2, ColumnValue3
)
-- Add more rows here
GO
Select * From [Customers] Where Customer_ID Like 1
select * from [Betty Shopping List]
-- Delete rows from table '[TableName]' in schema '[dbo]'
DELETE FROM [dbo].[TableName]
WHERE /* add search conditions here */
GO
de
-- Delete rows from table '[Betty Shopping Lost]' in schema '[dbo]'
DELETE FROM [dbo].[Betty Shopping Lost]
WHERE Product_ID like 4/* add search conditions here */
GO
DELETE FROM [dbo].[Betty Shopping List]
WHERE Product_ID LIKE 4 /* add search conditions here */
GO
-- Insert rows into table 'Betty Shopping List' in schema '[dbo]'
INSERT INTO [dbo].[Betty Shopping List]
( -- Columns to insert data into
[Customer_ID], [Products], [Product_ID], [Quantitiy], [Price]
)
VALUES
( -- First row: values for the columns in the list above
 2, 'Ipoh Coffee', 43, 2, 23
)
-- Add more rows here
GO
INSERT INTO [dbo].[Chrisitina Shopping List]
( -- Columns to insert data into
  [Customer_ID], [Products], [Product_ID], [Quantitiy], [Price]
)
VALUES
( -- First row: values for the columns in the list above
 1, 'Louisiana Hot Spiced Okra', 66, 1, 17
)
-- Add more rows here
GO
SELECT * from [Betty Shopping List]
DELETE FROM [dbo].[Betty Shopping List]
WHERE Product_ID like 6 /* add search conditions here */
GO
DELETE FROM [dbo].[Betty Shopping List]
WHERE Product_ID like 63 /* add search conditions here */
GO

IF OBJECT_ID('[dbo].[Betty Shopping Lists]', 'U') IS NOT NULL
DROP TABLE [dbo].[Betty Shopping Lists]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Betty Shopping Lists]
(
    [Id] INT IDENTITY (1,1) PRIMARY KEY, -- Primary Key column
    [Customer_ID] INT REFERENCES Customers(Customer_Id), 
    [Products] text NOT NULL,
    [Product_ID] INTEGER not null,
    [Quantitiy] INTEGER not null,
    [Price] INTEGER not NULL,
    -- Specify more columns here
);
GO
-- Insert rows into table 'Betty Shopping List' in schema '[dbo]'
INSERT INTO [dbo].[Betty Shopping List]
( -- Columns to insert data into
 [Customer_ID], [Products], [Product_ID], [Quantitiy], [Price]
)
VALUES
( -- First row: values for the columns in the list above
 2 , 'Steeleye Stout', 35, 4, 9
),
( -- Second row: values for the columns in the list above
 2, 'Sasquatch Ale', 34, 5, 7
)
-- Add more rows here
GO
select * from Invoice

SELECT * from [Richard Shopping List]
-- Delete rows from table '[Richard Shopping List]' in schema '[dbo]'
DELETE FROM [dbo].[Richard Shopping List]
WHERE Product_ID like 61/* add search conditions here */
GO
-- Insert rows into table 'Richard Shopping List' in schema '[dbo]'
INSERT INTO [dbo].[Richard Shopping List]
( -- Columns to insert data into
  [Customer_ID], [Products], [Product_ID], [Quantitiy], [Price]
)
VALUES
( -- First row: values for the columns in the list above
 4 , 'Aniseed Syrup', 3, 3, 5
)

-- Add more rows here

SELECT * from Invoice
SELECT * from [Joan Shopping List]
-- Delete rows from table '[Richard Shopping List]' in schema '[dbo]'
DELETE FROM [dbo].[Joan Shopping List]
WHERE Product_ID like 34/* add search conditions here */
GO
INSERT INTO [dbo].[Joan Shopping List]
( -- Columns to insert data into
  [Customer_ID], [Products], [Product_ID], [Quantitiy], [Price]
)
VALUES
( -- First row: values for the columns in the list above
 5, 'Northwoods Cranberry Sauce', 8, 1, 20
)

DELETE FROM [Chrisitina Shopping List]
WHERE Product_ID like 8/* add search conditions here */
GO
select * from [Chrisitina Shopping List]
-- Insert rows into table 'Christina Shopping List' in schema '[dbo]'
INSERT INTO [dbo].[Christina Shopping List]
( -- Columns to insert data into
 [Customer_ID], [Products], [Product_ID], [Quantitiy], [Price]
)
VALUES
( -- First row: values for the columns in the list above
 ColumnValue1, ColumnValue2, ColumnValue3
),
( -- Second row: values for the columns in the list above
 ColumnValue1, ColumnValue2, ColumnValue3
)
-- Add more rows here
GO
-- Insert rows into table 'Christina Shopping List' in schema '[dbo]'
INSERT INTO [dbo].[Christina Shopping List]
( -- Columns to insert data into
 [Customer_ID], [Products], [Product_ID], [Quantitiy], [Price]
)
VALUES
( -- First row: values for the columns in the list above
 ColumnValue1, ColumnValue2, ColumnValue3
),
( -- Second row: values for the columns in the list above
 ColumnValue1, ColumnValue2, ColumnValue3
)
-- Add more rows here
GO
INSERT INTO [dbo].[Chrisitina Shopping List]
( -- Columns to insert data into
 [Customer_ID], [Products], [Product_ID], [Quantitiy], [Price]
)
VALUES
( -- First row: values for the columns in the list above
 1 , 'Northwoods Cranberry Sauce', 8, 1, 20
)
-- Add more rows here
GO
select * FROM [Chrisitina Shopping List]
SELECT * From Invoice
-- Delete rows from table '[Invoice]' in schema '[dbo]'
DELETE FROM [dbo].[Invoice]
WHERE Customer_ID like 5/* add search conditions here */
GO
SELECT * from [Customers]

select * from Invoice
