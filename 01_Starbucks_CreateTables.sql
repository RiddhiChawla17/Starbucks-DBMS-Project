Create database StarbucksDB;
Use StarbucksDB;
Create table Outlet (
       outlet_id INT PRIMARY KEY,
       outlet_name VARCHAR(50),
       city VARCHAR(30),
       location VARCHAR(50),
       contact_no CHAR(10),
       opening_date DATE
);

Create table Customer (
       customer_id INT PRIMARY KEY,
	   customer_name VARCHAR(40),
       phone CHAR(10),
       email VARCHAR(50),
	   loyalty_member BOOLEAN
);

Create Table Category (
       category_id INT PRIMARY KEY,
       category_name VARCHAR(30)
);

Create Table Menu_Item (
       item_id INT PRIMARY KEY,
       category_id INT,
       item_name VARCHAR(50),
       size VARCHAR(10),
       price DECIMAL(6,2),
       available BOOLEAN,
       FOREIGN KEY (category_id) REFERENCES Category(category_id)
);

Create Table Staff (
       staff_id INT PRIMARY KEY,
       outlet_id INT,
       staff_name VARCHAR(40),
       staff_role VARCHAR(30),
       salary DECIMAL(8,3),
       join_date DATE,
       FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id)
);

Create Table Orders (
       order_id INT PRIMARY KEY,
       outlet_id INT,
       customer_id INT,
       order_date DATETIME,
       order_type VARCHAR(10),
       total_amount DECIMAL(7,2),
       FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id),
       FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

Create Table Order_Item (
       order_item_id INT PRIMARY KEY,
       order_id INT,
       item_id INT,
       quantity INT,
       item_price DECIMAL(6,2),
       FOREIGN KEY (order_id) REFERENCES Orders(order_id),
       FOREIGN KEY (item_id) REFERENCES Menu_Item(item_id)
);

Create Table Payment (
       payment_id INT PRIMARY KEY,
       order_id INT,
       payment_mode VARCHAR(15),
       payment_date DATETIME,
       payment_status VARCHAR(15),
       FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

Use StarbucksDB;

  ALTER TABLE Staff
DROP FOREIGN KEY staff_ibfk_1;

DESCRIBE Staff;
