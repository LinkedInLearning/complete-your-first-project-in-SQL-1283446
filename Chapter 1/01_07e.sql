-- Create new month columns
SELECT *,
MONTH(CreationDate) as MonthNumber,
MONTHNAME(CreationDate) as MonthName  
FROM Orders;