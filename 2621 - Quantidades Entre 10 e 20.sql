SELECT 
	products.name
FROM products 
JOIN providers
ON products.id_providers = providers.id
WHERE LOWER(providers.name) LIKE'p%'
    AND products.amount BETWEEN  10 and 20;
