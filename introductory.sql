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