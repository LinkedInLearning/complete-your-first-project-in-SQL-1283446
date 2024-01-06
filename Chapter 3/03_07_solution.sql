-- Determine new customers
SELECT
FirstName,
LastName,
COUNT(OrderID) as TotalOrders
FROM Customer
LEFT OUTER JOIN Orders
ON Customer.CustomerID = Orders.CustomerID 
GROUP BY Customer.CustomerID
HAVING COUNT(OrderID) = 0;