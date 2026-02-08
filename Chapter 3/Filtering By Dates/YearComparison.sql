SELECT Year(CreationDate), OrderID
FROM Orders
WHERE Year(CreationDate) > 2015;