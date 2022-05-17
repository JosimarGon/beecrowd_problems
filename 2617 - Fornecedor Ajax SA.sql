SELECT 
	products.name AS name
	,providers.name AS name
FROM products
INNER JOIN providers
ON products.id_providers = providers.id
WHERE LOWER(providers.name) = 'ajax sa';
