/*
O setor de importação da nossa empresa precisa de um relatório sobre a importação de produtos do nosso fornecedor Sansul.

Sua tarefa é exibir o nome dos produtos, o nome do fornecedor e o nome da categoria, para os produtos fornecidos pelo fornecedor ‘Sansul SA’ e cujo nome da categoria seja 'Imported'.
*/


SELECt 
	products.name 
	,providers.name
	,categories.name
FROM providers
INNER JOIN 
	(products 
     INNER join categories
     ON products.id_categories = categories.id)       
ON providers.id = products.id_providers
WHERE lower(categories.name) = 'imported'
	and lower(providers.name) = 'sansul sa';
