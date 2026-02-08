SELECT UPPER(CONCAT(FirstName, " ", LastName)) AS FullNameUpper
FROM Customer
WHERE FirstName IS NOT NULL AND LastNAME IS NOT NULL;