-- Determine which sales people made no sales
SELECT Salesperson.SalespersonID,
FirstName,
LastName
FROM Salesperson
LEFT OUTER JOIN Orders
ON Salesperson.SalespersonID = Orders.SalespersonID 
WHERE Orders.SalespersonID IS NULL;