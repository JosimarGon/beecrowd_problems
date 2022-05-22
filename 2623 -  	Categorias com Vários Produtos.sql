/*
O setor de vendas precisa de um relatório para saber quais produtos estão sobrando em estoque.

Para você ajudar o setor de vendas, exiba o nome do produto e o nome da categoria, para os produtos cuja quantidade seja maior que 100 e o código da categoria seja 1,2,3,6 ou 9. Mostre essas informações em ordem crescente pelo código da categoria.
*/

SELECT 
	products.name
	,categories.name
 FROM products
 INNER JOIN categories
 ON products.id_categories = categories.id
 WHERE products.amount > 100
 	AND categories.id in (1, 2, 3, 6, 9)
 ORDER BY categories.id ASC;
