/*
O setor financeiro da nossa empresa, está querendo saber os menores e maiores valores dos produtos, que vendemos.

Para isso exiba somente o maior e o menor preço da tabela produtos.
*/

SELECT 
	MAX(price) as max_price
	,MIN(price) as min_price
FROM products;
ORDER BY city;
