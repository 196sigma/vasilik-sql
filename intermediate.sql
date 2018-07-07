-- Problem 20
-- select top(1) * from products;
-- select * from Categories;

select b.categoryname, count(*) as TotalProducts
from products a 
left join categories b 
on a.CategoryID = b.CategoryID
group by b.CategoryName
order by TotalProducts desc;