--פרטי הלקוחות ושם עיר
select cus.*,cit.CityName
from Customers cus join Cities cit on cus.CityId=cit.CityId

--שם מוצר, מחיר , קוד קטגוריה ושם קטגוריה למוצרים מעל 500 ש"ח
select p.ProductName,p.Price,p.CategoryId,c.CategoryName
from Products p join Categories c on p.CategoryId=c.CategoryId
where p.Price>500

-- הזמנות ופרטי הזמנות להזמנות שבוצעו ב2022
select *
from orders o join OrderDetails od on o.OrderId=od.OrderId
where year(o.OrderDateTime)=2022

--כמה לקוחות גרים בכל עיר
select cit.CityName, COUNT(cus.CustomerId) as 'מספר לקוחות בעיר'
from Customers cus join Cities cit on cus.CityId=cit.CityId
group by cit.CityName

--כמה לקוחות גרים בכל עיר כולל ערים שאין בהם לקוחות
select cit.CityName, COUNT(cus.CustomerId) as 'מספר לקוחות בעיר'
from Customers cus right join Cities cit on cus.CityId=cit.CityId
group by cit.CityName

--ממוצע מחיר תכשיט
select avg(price)
from Products

--ממוצע מחיר תכשיט לקטגוריה
select CategoryId, avg(price)
from Products
group by CategoryId

-- ממוצע מחיר תכשיט לקטגוריה במקרה והממוצע גדול מ500
select CategoryId, avg(price)
from Products
group by CategoryId
having avg(price)>500

--מחיר סופי של קניה
select od.OrderId, sum(od.Amount*p.Price)
from OrderDetails od join Products p on od.ProductId=p.ProductId
group by od.OrderId

-------------------------------------------
--שמות העובדים ושמות הלקוחות
select FirstName+' '+LastName as 'שם','עובדת' as 'תפקיד'
from Employees
union
select FirstName+' '+LastName,'לקוחה'
from Customers
order by [תפקיד] desc
--שמות הערים בהם גרים לקוחות וערים בהם גרים עובדים
select cit.CityName
from Customers cus join Cities cit on cus.CityId=cit.CityId
union 
select cit.CityName
from Employees e join Cities cit on e.CityId=cit.CityId

--כולל כפילויות
select cit.CityName
from Customers cus join Cities cit on cus.CityId=cit.CityId
union all
select cit.CityName
from Employees e join Cities cit on e.CityId=cit.CityId

--שמות הערים בהם גרים גם לקוחות וגם עובדים
select cit.CityName
from Customers cus join Cities cit on cus.CityId=cit.CityId
intersect
select cit.CityName
from Employees e join Cities cit on e.CityId=cit.CityId

--שמות הערים בהם גרים לקוחות ולא גרים עובדים
select cit.CityName
from Customers cus join Cities cit on cus.CityId=cit.CityId
except
select cit.CityName
from Employees e join Cities cit on e.CityId=cit.CityId

--5. הציגי קודי מוצרים שלא נקנו.
select ProductId
from Products
except
select ProductId
from OrderDetails

