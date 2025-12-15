Use StarbucksDB;
INSERT INTO outlet
(outlet_id, outlet_name, city, location, contact_no, opening_date)
VALUES
(1, 'Starbucks CP', 'Delhi', 'Connaught Place', '9876543210', '2018-05-12'),
(2, 'Starbucks Select', 'Mumbai', 'Bandra', '9123456789', '2019-08-20');

INSERT INTO category
(category_id, category_name)
VALUES
(1, 'Coffee'),
(2, 'Tea'),
(3, 'Bakery');

INSERT INTO menu_item
(item_id, category_id, item_name, size, price, available)
VALUES
(101, 1, 'Caffe Latte', 'Tall', 295.00, 1),
(102, 1, 'Cappuccino', 'Grande', 345.00, 1),
(103, 3, 'Chocolate Croissant', 'Regular', 220.00, 1);

INSERT INTO customer
(customer_id, customer_name, phone, email, loyalty_member)
VALUES
(201, 'Riddhi Chawla', '9000011111', 'riddhi@gmail.com', 1),
(202, 'Pearl Jauhari', '9000022222', 'pearl@gmail.com', 0),
(203, 'Hardik Khuntia', '9000033333', 'hardik@gmail.com', 1);

INSERT INTO staff
(staff_id, outlet_id, staff_name, staff_role, salary, join_date)
VALUES
(301, 1, 'Neha Singh', 'Barista', 25000.00, '2021-01-15'),
(302, 2, 'Rahul Mehta', 'Store Manager', 45000.00, '2020-07-10');

INSERT INTO orders
(order_id, outlet_id, customer_id, order_date, order_type, total_amount)
VALUES
(401, 1, 201, '2025-12-10 10:30:00', 'Dine-in', 640.00),
(402, 2, 202, '2025-12-10 17:45:00', 'Takeaway', 345.00);

INSERT INTO order_item
(order_item_id, order_id, item_id, quantity, item_price)
VALUES
(1, 401, 101, 1, 295.00),
(2, 401, 102, 1, 345.00),
(3, 402, 102, 1, 345.00);

INSERT INTO payment
(payment_id, order_id, payment_mode, payment_date, payment_status)
VALUES
(501, 401, 'UPI', '2025-12-10 10:35:00', 'Success'),
(502, 402, 'Card', '2025-12-14 17:50:00', 'Success');

SELECT * FROM orders;