create database SalesProject
select * 
from  [sales training 1]

--retrieving the total sales for each product category
select sum (Tota_Revenue) as total_sales FROM [sales training 1]
group by Product;

---to find number of sales by region 
select sum (Quantity) AS TOTAL_SALES, PRODUCT FROM [sales training 1]
GROUP BY Product
ORDER BY 1 DESC

------the highest selling product of total sales  value(revenue)
Select Product, sum (Quantity*unitprice)
from [sales training 1]
group by product 

----QUESTION 5
Select MONTH(orderdate) AS month, sum(quantity * unitprice) AS monthly_sales
from [sales training 1]
WHERE YEAR(OrderDate)=
YEAR(GETDATE())
GROUP BY Month(OrderDate);




----QUESTION 8
SELECT PRODUCT
FROM [sales training 1]
WHERE Product NOT IN (
SELECT Product
FROM [sales training 1]
WHERE OrderDate>=DATEADD(quarter,-1,GETDATE())
AND  OrderDate>=DATEADD(quarter,-1,GETDATE();

...Question 7...
select distinct product
from [dbo].[sales training 1]
where product Not In(
select product 
from [dbo].[sales training 1]
where OrderDate>= DATEADD(quarter, -1,
GetDate()) and OrderDate< GetDate());
