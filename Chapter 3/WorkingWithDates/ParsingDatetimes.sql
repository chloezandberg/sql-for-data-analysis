SELECT CreationDate, OrderID
FROM Orders
WHERE Year(CreationDate) > (Year(NOW() - 13));