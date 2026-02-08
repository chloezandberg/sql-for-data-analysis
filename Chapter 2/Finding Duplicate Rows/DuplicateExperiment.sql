SELECT c.CustomerID,
c.FirstName,
c.LastName,
c.Zipcode,
COUNT(*) AS TotalAppearances
FROM Customer c
GROUP BY c.FirstName, c.LastName, c.Zipcode
HAVING COUNT(*) > 1
ORDER BY TotalAppearances DESC;