#CREATE DATABASE BookPublisher;
#USE BookPublisher;

#CREATE TABLE Author(
#	Author_ID INT PRIMARY KEY NOT NULL,
#    Author_Name VARCHAR(50),
#    Author_Email VARCHAR(150)
#);

#CREATE TABLE Publisher(
#	Publisher_ID INT PRIMARY KEY NOT NULL,
#    Pub_Name VARCHAR(50),
#    Pub_Address VARCHAR(150)
#);

#CREATE TABLE Book(
#	ISBN INT PRIMARY KEY NOT NULL UNIQUE,
#    Book_Title VARCHAR(255),
#    Price VARCHAR(10),
#    Publisher_ID INT,
#    Author_ID INT,
#    FOREIGN KEY (Publisher_ID) REFERENCES Publisher(Publisher_ID),
#    FOREIGN KEY (Author_ID) REFERENCES Author(Author_ID)
#);

#INSERT INTO Author(Author_ID, Author_Name, Author_Email)
#VALUES
#	(1, 'Bob Alan', 'AnEmail@gmail.com'),
#    (2, 'Robert Alexander', 'AnotherEmail@outlook.com'),
#    (3, 'John Doe', 'AVeryLongEmailBecauseWhyNot@gmail.com'),
#    (4, 'Alexis Quinn', 'AYahooEmail@yahooo.com'),
#    (5, 'Daisy Oak', 'AnAOLEmail@aol.com')
#;

#INSERT INTO Publisher(Publisher_ID, Pub_Name, Pub_Address)
#VALUES
#	(1, 'Whitman Publishing, LLC', '4001 Helton Dr. Building A'),
#    (2, 'Riddle Creek Publishing', '252 Cypress Creek Dr.'),
#    (3, 'Asgardis Publishing', '807 N Wood Ave.')
#;

#INSERT INTO Book(ISBN, Book_Title, Price, Publisher_ID, Author_ID)
#VALUES
#	(10284, 'Intro to Python Programming', '$69.99', 1, 1),
#    (94730, 'Advanced C++', '$119.99', 3, 2),
#    (78320, 'Intro to Database Systems', '$43,85', 2, 3),
#    (92641, 'Creating Your First Website', '$29.99', 2, 4),
#    (56196, 'Computer Architecture Basics', '$75.00', 1, 5)
#;

SELECT * FROM Author;
SELECT * FROM Publisher;
SELECT * FROM Book;
