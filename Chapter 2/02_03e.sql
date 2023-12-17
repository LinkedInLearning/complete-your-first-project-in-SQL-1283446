-- Determine which sales people made no sales
SELECT Salesperson.SalespersonID
FROM Salesperson
LEFT OUTER JOIN Orders
ON Salesperson.SalespersonID = Orders.SalespersonID 
WHERE Orders.SalespersonID IS NULL
GROUP BY Salesperson.SalespersonID;