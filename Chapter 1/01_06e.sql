SELECT *,
MONTH(CreationDate) as MonthNumber,
MONTHNAME(CreationDate) as MonthName  
FROM Orders;