CREATE TABLE Products (
    ProductID int,
    ProductName text,
    Price float,
    Category text
);

INSERT INTO Products (ProductID, ProductName, Price, Category) VALUES (1, 'Laptop', 1200.00, 'Electronics');
INSERT INTO Products (ProductID, ProductName, Price, Category) VALUES (2, 'Desk Chair', 250.50, 'Furniture');

SELECT * FROM Products;

CREATE TABLE Employees (
    EmployeeID int,
    FirstName text,
    LastName text,
    Department text
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Department) VALUES (1, 'Alice', 'Johnson', 'HR');
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department) VALUES (2, 'Bob', 'Smith', 'IT');

SELECT FirstName, LastName FROM Employees;

CREATE TABLE Inventory (
    ItemID int,
    ItemName text,
    UnitsInStock int
);

INSERT INTO Inventory (ItemID, ItemName, UnitsInStock) VALUES (1, 'Printer Paper', 15);
INSERT INTO Inventory (ItemID, ItemName, UnitsInStock) VALUES (2, 'Staples', 30);

SELECT * FROM Inventory WHERE UnitsInStock <20;

CREATE TABLE Books (
    BookID int,
    Title text,
    Author text,
    Price float
);

INSERT INTO Books (BookID, Title, Author, Price) VALUES (1, 'The Great Gatsby', 'F. Scott Fitzgerald', 10.99);
INSERT INTO Books (BookID, Title, Author, Price) VALUES (2, '1984', 'George Orwell', 8.99);
INSERT INTO Books (BookID, Title, Author, Price) VALUES (3, 'The Catcher in the Rye', 'J. D. Salinger', 7.99);

SELECT * FROM Books;


CREATE TABLE Courses (
    CourseID int,
    CourseName text,
    Department text,
    Credits int
    );

INSERT INTO Courses (CourseID, CourseName, Department, Credits) VALUES (101, 'Introduction to Psychology', 'Psychology', 3);
INSERT INTO Courses (CourseID, CourseName, Department, Credits) VALUES (102, 'Principles of Economics', 'Economics', 4);
INSERT INTO Courses (CourseID, CourseName, Department, Credits) VALUES (103, 'Introduction to Computer Science', 'Computer Science', 3);

SELECT CourseName, Department FROM Courses;

CREATE TABLE RestaurantReviews (
    ReviewID int,
    RestaurantName text,
    Rating text,
    Reviewer text,
    ReviewDate date
    );

INSERT INTO RestaurantReviews (ReviewID, RestaurantName, Rating, Reviewer, ReviewDate) VALUES (1, 'Cafe Mocha', 'Excellent', 'John Doe', '2022-01-15');
INSERT INTO RestaurantReviews (ReviewID, RestaurantName, Rating, Reviewer, ReviewDate) VALUES (2, 'Burger Corner', 'Good', 'Jane Smith', '2022-02-20');
INSERT INTO RestaurantReviews (ReviewID, RestaurantName, Rating, Reviewer, ReviewDate) VALUES (3, 'Pasta Place', 'Excellent', 'Alice Jones', '2022-02-22');

SELECT RestaurantName FROM RestaurantReviews WHERE Rating = 'Excellent';


CREATE TABLE Sales (
    SaleID int,
    ProductID int,
    SaleAmount decimal
);

INSERT INTO Sales (SaleID, ProductID, SaleAmount) VALUES (1, 1, 1200.00);
INSERT INTO Sales (SaleID, ProductID, SaleAmount) VALUES (2, 2, 250.50);

SELECT SUM(SaleAmount) FROM Sales;


CREATE TABLE Groceries (
    ProductID int,
    ProductName text,
    Price decimal,
    Category text
);

INSERT INTO Groceries (ProductID, ProductName, Price, Category) VALUES (1, 'Apple', 0.50, 'Fruit');
INSERT INTO Groceries (ProductID, ProductName, Price, Category) VALUES (2, 'Bread', 1.50, 'Bakery');

SELECT AVG(Price) FROM Groceries;

CREATE TABLE Cards (
    SaleID int,
    ProductID int,
    QuantitySold int,
    SaleDate date
);

INSERT INTO Cards (SaleID, ProductID, QuantitySold, SaleDate) VALUES (101, 1, 50, '2022-01-01');
INSERT INTO Cards (SaleID, ProductID, QuantitySold, SaleDate) VALUES (102, 2, 30, '2022-01-02');
INSERT INTO Cards (SaleID, ProductID, QuantitySold, SaleDate) VALUES (103, 1, 20, '2022-01-03');

SELECT ProductID, SUM(QuantitySold) FROM Cards WHERE ProductID = 1;

CREATE TABLE WeatherData (
    RecordID int,
    Date date,
    Temperature float,
    City text
    
);

INSERT INTO WeatherData (RecordID, Date, Temperature, City) VALUES (1, '2022-01-01', 35.2, 'Springfield');
INSERT INTO WeatherData (RecordID, Date, Temperature, City) VALUES (2, '2022-01-01', 28.4, 'Shelbyville');

SELECT MIN(Temperature),  MAX(Temperature) FROM WeatherData;

CREATE TABLE Orders (
    OrderID int,
    ProductID int,
    OrderDate date
);

Create TABLE Laptops (
    ProductID int,
    ProductName text
);

INSERT INTO Orders (OrderID, ProductID, OrderDate) VALUES (1, 1, '2023-01-01');
INSERT INTO Orders (OrderID, ProductID, OrderDate) VALUES (2, 2, '2023-01-02');
INSERT INTO Laptops (ProductID, ProductName) VALUES (1, 'Laptop');
INSERT INTO Laptops (ProductID, ProductName) VALUES (2, 'Desk Chair');

SELECT ProductName, OrderDate FROM Laptops INNER JOIN Orders ON Laptops.ProductID = Orders.ProductID;

CREATE TABLE Workers (
    EmployeeID int,
    FirstName text, 
    LastName text,
    DepartmentID int
);

Create Table Section (
    DepartmentID int,
    DepartmentName text
);

INSERT INTO Workers (EmployeeID, FirstName, LastName, DepartmentID) VALUES (1, 'Alice', 'Johnson', 1);
INSERT INTO Workers (EmployeeID, FirstName, LastName, DepartmentID) VALUES (2, 'Bob', 'Smith', 2);
Insert into Section (DepartmentID, DepartmentName) VALUES (1, 'HR');
Insert into Section (DepartmentID, DepartmentName) VALUES (2, 'IT');

SELECT FirstName, LastName, DepartmentName FROM Workers INNER JOIN Section ON Workers.DepartmentID = Section.DepartmentID;


