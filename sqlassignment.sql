CREATE DATABASE OnlineBookstore;


USE OnlineBookstore;


CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Create the Books table
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);


CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATETIME NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE OrderDetails (
    order_id INT NOT NULL,
    book_id INT NOT NULL,books
    quantity INT NOT NULL,
    PRIMARY KEY (order_id, book_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
INSERT INTO Books (title, author, price) VALUES
('The Alchemist', 'Paulo Coelho', 299.99),
('The God of Small Things', 'Arundhati Roy', 399.50),
('To Kill a Mockingbird', 'Harper Lee', 499.00),
('The Great Indian Novel', 'Shashi Tharoor', 350.00),
('Chetan Bhagat Collection', 'Chetan Bhagat', 899.00);

INSERT INTO Customers (name, email) VALUES
('Rahul Sharma', 'rahul.sharma@example.com'),
('Sneha Patel', 'sneha.patel@example.com'),
('Amit Verma', 'amit.verma@example.com'),
('Anjali Kumar', 'anjali.kumar@example.com'),
('Priya Reddy', 'priya.reddy@example.com');
INSERT INTO Orders (customer_id, order_date) VALUES
(1, '2024-01-15 10:30:00'),
(2, '2024-01-16 14:00:00'),
(1, '2024-01-17 09:00:00'),
(3, '2024-01-18 16:45:00');

INSERT INTO OrderDetails (order_id, book_id, quantity) VALUES
(1, 1, 2),  
(1, 3, 1),  
(2, 2, 1), 
(3, 4, 1),  
(4, 5, 3);  

# 1. Retrieve the Top 5 Customers Who Have Purchased the Most Books Over the Last Year


SELECT c.customer_id, c.name, SUM(od.quantity) AS total_books_purchased
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderDetails od ON o.order_id = od.order_id
WHERE o.order_date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
GROUP BY c.customer_id, c.name
ORDER BY total_books_purchased DESC
LIMIT 5;


# 2.Calculate the Total Revenue Generated from Book Sales by Each Author

SELECT b.author, SUM(b.price * od.quantity) AS total_revenue
FROM Books b
JOIN OrderDetails od ON b.book_id = od.book_id
JOIN Orders o ON od.order_id = o.order_id
GROUP BY b.author
ORDER BY total_revenue DESC;

#3. Retrieve All Books That Have Been Ordered More Than 10 Times

SELECT b.author, SUM(b.price * od.quantity) AS total_revenue
FROM Books b
JOIN OrderDetails od ON b.book_id = od.book_id
JOIN Orders o ON od.order_id = o.order_id
GROUP BY b.author
ORDER BY total_revenue DESC;


