SELECT 
	products.name
	,providers.name
	,products.price
FROM providers
INNER JOIN 
	(products INNER JOIN categories 
     	ON products.id_categories = categories.id)
ON products.id_providers = providers.id
WHERE products.price > 1000 AND
    LOWER(categories.name) = 'super luxury';
