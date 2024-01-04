-- Calculate customer repeat rate
SELECT
(SELECT
Customer.CustomerID
FROM Orders
LEFT OUTER JOIN Customer
ON Orders.CustomerID = Customer.CustomerID
GROUP BY Customer.CustomerID
HAVING COUNT(OrderID) = 1
LIMIT 1),
COUNT(Customer.CustomerID)
as InfrequentCustomer
FROM Customer
LEFT OUTER JOIN Orders
ON Customer.CustomerID = Orders.CustomerID 
GROUP BY Customer.CustomerID;