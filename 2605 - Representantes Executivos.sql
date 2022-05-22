
/*
O setor financeiro precisa de um relatório sobre os fornecedores dos produtos que vendemos. Os relatórios contemplam todas as categorias, mas por algum motivo, os fornecedores dos produtos cuja categoria é a executiva, não estão no relatório.

Seu trabalho é retornar os nomes dos produtos e dos fornecedores cujo código da categoria é 6.
*/

SELECT 
    products.name,
    providers.name
FROM providers
INNER JOIN (products 
INNER JOIN categories
ON products.id_categories = categories.id)
ON providers.id = products.id_providers
WHERE categories.id = 6;
