CREATE DATABASE BookStoreDB;
USE BookStoreDB;

CREATE TABLE Books(
	BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT
);

CREATE TABLE Sales(
	SaleID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT,
    Quantity INT,
    SalesDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

INSERT INTO Books(Title, Author, Price, Stock)
VALUES
	('Deep Learning', 'Ian Goodfellow', 59.99, 20),
    ('Clean Code', 'Robert Matin', 45.50, 15),
    ('NLP with Transformers', 'Lewis Tunstall', 55.00, 10)
;

INSERT INTO Sales(BookID, Quantity, SalesDate)
VALUES
	(1, 2, '2025-01-01'),
    (2, 1, '2025-01-03')
;

CREATE VIEW BookSalesSummary AS 
SELECT b.BookID, b.title, SUM(s.Quantity) AS Totalsold
FROM Books b
LEFT JOIN Sales s on b.BookID = s.BookID
GROUP BY b.BookID, b.Title;

SELECT * FROM BookSalesSummary;

DELIMITER $$
CREATE TRIGGER UpdateStock
AFTER INSERT ON Sales
FOR EACH ROW
BEGIN
	UPDATE Books
    SET Stock = Stock - NEW.Quantity
    WHERE BookID = New.BookID;
END$$

INSERT INTO Sales(BookID, Quantity, SalesDate)
VALUES
	(3, 5, '2025-01-05');

INSERT INTO Sales(BookID, Quantity, SalesDate)
VALUES
	(1, 12, '2025-01-05');


SELECT * FROM Books;
