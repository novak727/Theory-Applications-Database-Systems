#CREATE DATABASE Customers;
#USE Customers;
#CREATE TABLE Customer_Details(
#CustomerID INT PRIMARY KEY,
#CustomerName VARCHAR(50),
#ContactName VARCHAR(30),
#Address VARCHAR(40),
#City VARCHAR(20),
#PostalCode VARCHAR(20),
#Country VARCHAR(15)
#);

#INSERT INTO Customer_Details(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
#VALUES
#(1, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
#(2, "B's Beverages", 'Victoria Ashworth', 'Fauntleroy Circus', 'London', 'EC2 5NT', 'UK'),
#(3, 'Consolidated Holdings', 'Elizabeth Brown', 'Berkeley Gardens 12 Brewery', 'London', 'WX1 6LT', 'UK'),
#(4, 'Eastern Connection', 'Ann Devon', '35 King George', 'London', 'WX3 6FW', 'UK'),
#(5, 'Great Lakes Food Market', 'Howard Snyder', '2732 Baker Blvd.', 'Eugene', '97403', 'USA');

SELECT * FROM Customer_Details;
