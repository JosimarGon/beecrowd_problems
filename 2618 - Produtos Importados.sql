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
