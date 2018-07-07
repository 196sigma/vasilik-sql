-- Problem 1: Return all fields from all the shippers
-- select * from shippers;


-- Problem 2: Certain fields from Categories
-- select categories.CategoryName, Categories.Description from categories;

-- Problem 3: Sales Representatives
/*
select distinct title from Employees;
select firstname, lastname, hiredate
from employees 
where title = 'Sales Representative';
*/

-- Problem 4: Sales Representatives in the United States
/*
select firstname, lastname, hiredate 
from Employees
where country = 'USA'
and employees.Title = 'Sales Representative';
*/

-- Problem 5: Orders placed by specific EmployeeID
/*
select orders.orderid, orders.OrderDate
from orders
where orders.EmployeeID = 5;
*/

-- Problem 6: Suppliers and ContactTitles
/*
select SupplierID, 
    ContactName,
    ContactTitle
from Suppliers
where ContactTitle <> 'Marketing Manager';
*/

-- Problem 7: Products with "queso" in the ProductName
/*
select productid,
    productname
from Products
where productname like '%queso%';
*/

-- Problem 8: Orders shipping to France or Belgium
/*
select orderid,
    customerid,
    shipcountry
from Orders
where shipcountry = 'France' or shipcountry = 'Belgium';
*/
-- alternate
/*
select orderid,
    customerid,
    shipcountry
from Orders
where shipcountry in ('France', 'Belgium');
*/

-- Problem 9: Orders shipping to any country in Latin America
/*
select orderid, 
    customerid,
    shipcountry
from Orders
where shipcountry in ('Brazil', 'Mexico', 'Argentina', 'Venezuela');
*/

-- Problem 10: Employees, in order of age
/*
select firstname, 
    lastname, 
    title,
    birthdate
from Employees
order by birthdate;
*/

-- Problem 11: Showng only the Date with a DateTime field
-- select firstname, 
--     lastname, 
--     title,
--     convert(date, BirthDate) as DateOnlyBirthDate
-- from Employees
-- order by birthdate;

-- Problem 12:
-- select Employees.FirstName, Employees.LastName, 
-- CONCAT(Employees.FirstName, ' ', Employees.LastName) as Fullname
-- from Employees;

-- Problem 13:
-- select orderid, 
-- productid,
-- unitprice,
-- quantity,
-- (unitprice*quantity) as totalprice 
-- from OrderDetails;

-- Problem 14:
-- select count(customers.CustomerID) as totalcustomers from customers;

-- Problem 15:
-- select min(orders.OrderDate) as firstorder
-- from  orders;

-- Problem 16:
-- select distinct(customers.Country) from customers;

-- Problem 17:
-- select distinct(customers.ContactTitle),
-- count(*) as totalcontacttitle
-- from customers
-- group by ContactTitle
-- order by totalcontacttitle desc;

-- Problem 18:
-- select a.productID, a.productname, 
-- b.companyname as supplier
-- from products a
-- left join suppliers b 
-- on a.SupplierID = b.SupplierID;



-- Problem 19:
-- select a.orderID, 
--     convert(date, a.OrderDate) as OrderDate, 
--     b.CompanyName as Shipper
-- from orders a 
-- left JOIN Shippers b 
-- on a.ShipVia = b.ShipperID
-- where a.OrderID < 10270;