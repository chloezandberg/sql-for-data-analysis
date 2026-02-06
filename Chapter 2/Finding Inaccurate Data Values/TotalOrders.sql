WITH PriceDifferences (OrderID, TotalDue, VerifiedTotalDue) AS
(SELECT os.OrderID, os.TotalDue, SUM(o.Quantity*p.Price)
FROM Orders os
JOIN OrderItem o ON o.OrderID = os.OrderID
JOIN Product p ON p.ProductID = o.ProductID
GROUP BY os.OrderID)
SELECT (TotalDue-VerifiedTotalDue) AS Difference
FROM PriceDifferences
WHERE (TotalDue-VerifiedTotalDue) > 0.1
ORDER BY Difference DESC;