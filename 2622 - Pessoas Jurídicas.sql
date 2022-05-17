SELECT 
	name AS name FROM customers
JOIN legal_person 
ON customers.id = legal_person.id_customers;
