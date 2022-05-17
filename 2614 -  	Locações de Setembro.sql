SELECT 
	customers.name
	,rentals.rentals_date
FROM customers
INNER JOIN rentals
ON customers.id = rentals.id_customers
WHERE  
	EXTRACT (month from rentals.rentals_date) = 9 and 
	EXTRACT (year from rentals.rentals_date) = 2016;
