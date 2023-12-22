-- Find top 3 items sold
SELECT Variety,
Size,
SUM(Quantity) as TotalQuantity
FROM OrderItem
LEFT OUTER JOIN Product
ON OrderItem.ProductID = Product.ProductID
GROUP BY Product.ProductID
ORDER BY TotalQuantity DESC
LIMIT 3;