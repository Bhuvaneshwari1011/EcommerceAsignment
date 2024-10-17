# E-Commerce System

## Overview
This project implements a simplified e-commerce system that manages users, products, orders, payments, and inventory management.

## Features
- User management for creating, viewing, and managing orders.
- Orders can contain multiple products.
- Inventory management to track stock levels and restock items as needed.

## Java Files
The following Java files are included in this project:

1. **User.java**
   - Manages user information and allows users to create and manage orders.

2. **Product.java**
   - Represents product details, including title, author, price, and stock management.

3. **InventoryManager.java**
   - Contains methods to process orders, update stock levels, and restock items.

4. **Main.java**
   - The entry point of the application to run the e-commerce system.

## Package Structure
The Java files are organized in the following package structure:

# Online Bookstore

## Overview
This project implements an online bookstore system, allowing customers to view, order, and manage books. The system tracks customers, books, orders, and order details.

## Features
- Customer management for creating and viewing orders.
- Book management with detailed information about titles, authors, and prices.
- Order management to track which books have been purchased by customers.
- Ability to analyze customer purchase behavior and revenue generation by authors.

## Database Structure
The following tables are created in the database:

1. **Customers**
   - `customer_id`: Unique identifier for each customer.
   - `name`: Customer's name.
   - `email`: Customer's email address (unique).

2. **Books**
   - `book_id`: Unique identifier for each book.
   - `title`: Title of the book.
   - `author`: Author of the book.
   - `price`: Price of the book.

3. **Orders**
   - `order_id`: Unique identifier for each order.
   - `customer_id`: Foreign key referencing the customer placing the order.
   - `order_date`: Date and time when the order was placed.

4. **OrderDetails**
   - `order_id`: Foreign key referencing the order.
   - `book_id`: Foreign key referencing the book.
   - `quantity`: Number of copies ordered for each book.







