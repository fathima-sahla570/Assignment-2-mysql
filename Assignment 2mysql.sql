create database sales;
use sales;
-- 2. Create a new table named "Orders" in the Sales database with specified columns and constraints
create table orders( 
order_Id int primary key,
 Customer_name varchar(20) not null,
 Product_Category varchar(20), 
 Ordered_item varchar(20) not null,
 Contact_No varchar(20)not null  unique);
desc orders;
-- 3. Add a new column named "order_quantity" to the "Orders" table.
alter table orders add order_quantity varchar(20);
select * from orders;
-- 4. Rename the "Orders" table to "sales_orders".
rename table orders to sales_orders;
-- 5. Insert 10 rows into the "sales_orders" table.
INSERT INTO sales_orders (Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No, order_quantity)
VALUES 
(1, 'Alice', 'Electronics', 'Laptop', '1234567890', 1),
(2, 'Bob', 'Furniture', 'Chair', '1234567891', 4),
(3, 'Charlie', 'Groceries', 'Rice', '1234567892', 10),
(4, 'David', 'Clothing', 'Shirt', '1234567893', 2),
(5, 'Eve', 'Stationery', 'Notebook', '1234567894', 5),
(6, 'Frank', 'Electronics', 'Mobile Phone', '1234567895', 1),
(7, 'Grace', 'Furniture', 'Table', '1234567896', 1),
(8, 'Hannah', 'Groceries', 'Sugar', '1234567897', 8),
(9, 'Ivan', 'Clothing', 'Jeans', '1234567898', 2),
(10, 'Jack', 'Stationery', 'Pen', '1234567899', 15);
-- 6. Retrieve customer_name and Ordered_Item from the "sales_orders" table.
SELECT Customer_name, Ordered_item
FROM sales_orders;
-- 7. Use the update command to change the name of the product for any row.
UPDATE sales_orders
SET Ordered_item = 'Smartphone'
WHERE Order_Id = 7;
select*from sales_orders;
-- 8. Delete the "sales_orders" table from the database.
DROP TABLE sales_orders;




