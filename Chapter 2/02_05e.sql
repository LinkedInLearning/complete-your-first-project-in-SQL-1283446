-- Find top 3 items sold
SELECT Variety,
Size,
SUM(Quantity) as TotalQuantity
FROM OrderItem
LEFT JOIN Product
ON OrderItem.ProductID = Product.ProductID
GROUP BY Variety, Size
ORDER BY SUM(Quantity) DESC
LIMIT 3;