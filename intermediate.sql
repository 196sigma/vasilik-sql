-- Problem 20
-- select top(1) * from products;
-- select * from Categories;

-- select b.categoryname, count(*) as TotalProducts
-- from products a 
-- left join categories b 
-- on a.CategoryID = b.CategoryID
-- group by b.CategoryName
-- order by TotalProducts desc;

-- Problem 21
-- select customers.Country,
--     customers.City,
--     count(*) as TotalCustomers
-- from Customers
-- group by country, city
-- order by TotalCustomers desc;

-- Problem 22
-- select top(1) * from Products;
-- SELECT Products.ProductID, 
--     Products.ProductName,
--     Products.UnitsInStock,
--     Products.ReorderLevel
-- FROM Products
-- where unitsinstock < reorderlevel;

-- Problem 23
-- select productid, 
--     productname,
--     unitsinstock,
--     unitsonorder,
--     reorderlevel,
--     discontinued
-- from Products
-- where UnitsInStock + UnitsOnOrder <= ReorderLevel
--     and Discontinued = 0;

-- Problem 24
-- select Customers.CustomerID,
--     Customers.CompanyName,
--     Customers.Region,
--     Case 
--         when Region is NULL then 1
--         else 0
--     END as REGION_NULL
-- from customers 
-- order by region_null, region;

-- Problem 25:
-- select top(3) Orders.ShipCountry, 
--     avg(Orders.Freight) as AverageFreight
-- from Orders
-- group by ShipCountry
-- order by AverageFreight desc;

-- Problem 26:
-- select top(3) orders.ShipCountry,
--     avg(orders.Freight) as AverageFreight
--     from Orders
--     where year(Orders.OrderDate) = 2015
--     group by ShipCountry
--     order by AverageFreight desc;

-- Problem 27
-- select top 3 shipcountry, averagefreight = avg(freight)
-- from Orders
-- where orderdate between '1/1/2015' and '12/31/2016'
-- group by ShipCountry
-- order by averagefreight desc;

-- select top 3 shipcountry, averagefreight = avg(freight)
-- from Orders
-- where orderdate between '1/1/2015' and '1/1/2016'
-- group by ShipCountry
-- order by averagefreight desc;

-- select Orders.OrderId, Freight, OrderDate from orders 
-- where OrderDate between '12/31/2015' and '1/1/2016'
-- ;

-- Problem 28
-- select dateadd(yy, -1, max(orders.OrderDate)) as last_orderdate from orders;

-- select top(3) shipcountry,
--     avg(freight) as AverageFreight
-- from Orders
-- where OrderDate >= dateadd(yy, -1, (Select max(OrderDate) from Orders))
-- group by ShipCountry
-- order by AverageFreight desc;

-- Problem 29
-- Select Employees.EmployeeID,
--     Employees.LastName,
--     Orders.OrderID,
--     Products.ProductName,
--     OrderDetails.Quantity
-- from Orders, Employees, Products, OrderDetails
-- WHERE employees.EmployeeID = orders.EmployeeID
-- and orders.OrderID = OrderDetails.OrderID
-- and OrderDetails.ProductID = products.ProductID;

-- Problem 30
-- select customers.CustomerID as Customers_CustomerID,
--     Orders.CustomerID as Orders_CustomerID
-- from Customers
-- LEFT outer join Orders
-- on customers.customerID = orders.customerID
-- where Orders.CustomerID is NULL;

-- select customerid from customers WHERE
-- customerid not in (select customerid from orders);

-- Problem 31
select customerid from customers where customerid not in
(select CustomerID from Orders where EmployeeID = 4);