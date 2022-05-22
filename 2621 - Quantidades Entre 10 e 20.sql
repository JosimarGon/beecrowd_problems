/*
Na hora de entregar o relatório de quantos produtos a empresa tem em estoque, uma parte do relatório ficou corrompida, por isso o responsável do estoque lhe pediu uma ajuda, ele quer que você exiba os seguintes dados para ele.

Exiba o nome dos produtos cujas quantidades estejam entre 10 e 20 e cujo nome do fornecedor inicie com a letra ‘P’.
*/

SELECT 
	products.name
FROM products 
JOIN providers
ON products.id_providers = providers.id
WHERE LOWER(providers.name) LIKE'p%'
    AND products.amount BETWEEN  10 and 20;
