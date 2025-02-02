-- Note: please do not use any functions which are not taught in the class. you need to solve the questions only with the concepts that have been discussed so far.
use data_db;

select*
from superstore;
-- 1- write a sql to get all the orders where customers name has "a" as second character and "d" as fourth character (58 rows)
select count(*)
from superstore
where Customer_Name like "_a_d%"
-- 2- write a sql to get all the orders placed in the month of dec 2020 (352 rows) 
select count(*)
from superstore
where Order_Date>="2020-12-1" and order_date<="2020-12-31";

-- 3- write a query to get all the orders where ship_mode is neither in 'Standard Class' nor in 'First Class' and ship_date is after nov 2020 wrong (944 rows)
select count(*)
from superstore
where (Ship_Mode <>"Standard Class" and Ship_Mode<>"First Class")
and Ship_Date>="2020-12-01"


-- 4- write a query to get all the orders where customer name neither start with "A" and nor ends with "n" (9815 rows)
select count(*)
from superstore
where Customer_Name not like "A%"
and Customer_Name not like "%n" 

-- 5- write a query to get all the orders where profit is negative (1871 rows)
select count(*)
from superstore
where profit<0
-- 6- write a query to get all the orders where either quantity is less than 3 or profit is 0 (3348)
select count(*)
from superstore
where Quantity<3 or profit=0
-- 7- your manager handles the sales for South region and he wants you to create a report of all the orders in his region where some discount is provided to the customers (815 rows)
select count(*)
from superstore
where Region="South"  and Discount<>0
-- 8- write a query to find top 5 orders with highest sales in furniture category 
select*
from superstore
where Category="Furniture"
order by Sales DESC
limit 5;

-- 9- write a query to find all the records in technology and furniture category for the orders placed in the year 2020 only   wrong(1021 rows)
select*
from superstore
where (Category ="Furniture" or Category="Technology") 
and (Order_Date between"2020-01-01"and "2020-12-31")
-- 10 -write a query to find all the orders where order date is in year 2020 but ship date is in 2021 (33 rows)
select count(*)
from superstore
where (Order_Date>="2020-01-01" and order_date<="2020-12-31")
 and (Ship_Date>="2021-01-1" and Ship_Date<="2021-12-31")