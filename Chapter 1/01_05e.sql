SELECT * 
FROM Customer
WHERE FirstName IS NULL OR 
LastName IS NULL OR 
Email IS NULL OR 
Phone IS NULL OR 
Address IS NULL OR 
City IS NULL OR
State IS NULL OR
Zipcode IS NULL;