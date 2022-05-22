/*
A vídeo locadora está fazendo seu relatório semestral e precisa da sua ajuda. Basta você selecionar o nome dos clientes e a data de locação, das locações realizadas no mês de setembro de 2016.
*/
SELECT 
	customers.name
	,rentals.rentals_date
FROM customers
INNER JOIN rentals
ON customers.id = rentals.id_customers
WHERE  
	EXTRACT (month from rentals.rentals_date) = 9 and 
	EXTRACT (year from rentals.rentals_date) = 2016;
