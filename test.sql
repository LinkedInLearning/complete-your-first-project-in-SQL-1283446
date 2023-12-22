SELECT 
COUNT(DISTINCT Orders.CreationDate) date1,
COUNT(DISTINCT DATE_FORMAT(Orders.CreationDate,'%d/%m/%Y'))
FROM Orders