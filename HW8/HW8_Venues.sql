CREATE DATABASE VenueMgmt;
USE VenueMgmt;

CREATE TABLE Venue(
	Venue_ID INT PRIMARY KEY,
    Venue_Name VARCHAR(50),
    Address VARCHAR(100),
    Capacity INT
);

CREATE TABLE Event(
	Event_ID INT PRIMARY KEY,
    Event_Name VARCHAR(30),
    Event_Date DATE,
    Venue_ID INT,
    FOREIGN KEY (Venue_ID) REFERENCES Venue(Venue_ID)
);

CREATE TABLE Artist(
	Artist_ID INT PRIMARY KEY,
    Artist_Name VARCHAR(30),
    Event_ID INT,
    FOREIGN KEY (Event_ID) REFERENCES Event(Event_ID)
);

CREATE TABLE Customer(
	Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(30)
);

CREATE TABLE Ticket(
	Ticket_ID INT PRIMARY KEY,
    Purchase_DATE DATE,
    Price VARCHAR(10),
    Event_ID INT,
    Customer_ID INT,
    FOREIGN KEY (Event_ID) REFERENCES Event(Event_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

INSERT INTO Venue (Venue_ID, Venue_Name, Address, Capacity)
VALUES
	(1, 'BJCC Concert Hall', '2100 Richard Arlington Jr. Blvd. N.', 2835),
    (2, 'Shoals Theater', '123 N Seminary St', 700)
;

INSERT INTO Event (Event_ID, Event_Name, Event_Date, Venue_ID)
VALUES
	(1, 'Ghostbusters Afterlife', '2025-10-30', 1),
    (2, 'Clue by Broadway', '2025-11-11', 2)
;

INSERT INTO Artist (Artist_ID, Artist_Name, Event_ID)
VALUES
	(1, 'Bill Murray', 1),
    (2, 'Dan Aykroyd', 1),
    (3, 'Mckenna Grace', 1),
    (4, 'Prof. Plum', 2),
    (5, 'Miss Scarlet', 2)
;
	
INSERT INTO Customer (Customer_ID, Customer_Name)
VALUES
	(1, 'Devin'),
    (2, 'Olivia'),
    (3, 'Max')
;

INSERT INTO Ticket (Ticket_ID, Purchase_Date, Price, Event_ID, Customer_ID)
VALUES
	(1, '2025-09-06', '$50.00', 1, 1),
    (2, '2025-09-06', '$75.00', 2, 1),
    (3, '2025-07-06', '$40.00', 1, 3),
    (4, '2025-11-02', '$75.00', 2, 2),
    (5, '2025-10-01', '$50.00', 2, 3)
;

SELECT * FROM Venue;
SELECT * FROM Event;
SELECT * FROM Artist;
SELECT * FROM Customer;
SELECT * FROM Ticket;
