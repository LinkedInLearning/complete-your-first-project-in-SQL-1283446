-- Find top product size sold
SELECT Size,
SUM(Quantity) as TotalQuantity
FROM OrderItem
LEFT JOIN Product
ON OrderItem.ProductID = Product.ProductID
GROUP BY Size
ORDER BY SUM(Quantity) DESC;