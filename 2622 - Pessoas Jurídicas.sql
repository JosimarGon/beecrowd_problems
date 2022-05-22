/*
O setor de vendas quer fazer uma promoção para todos os clientes que são pessoas jurídicas. Para isso você deve exibir o nome dos clientes que sejam pessoa jurídica.
*/

SELECT 
	name AS name FROM customers
JOIN legal_person 
ON customers.id = legal_person.id_customers;
