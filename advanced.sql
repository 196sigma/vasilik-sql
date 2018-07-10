-- Problem 32
select Orders.CustomerID, 
    Customers.CompanyName, 
    Orders.OrderID, 
    OrderDetails.Quantity*OrderDetails.UnitPrice as TotalOrderAmount
from OrderDetails, 
    Orders, 
    Customers
where Orders.OrderID = OrderDetails.OrderID
    and Orders.CustomerID = Customers.CustomerID
    and year(Orders.OrderDate) = 2016
order by TotalOrderAmount desc;