SELECT 
    products.name,
    providers.name
FROM providers
INNER JOIN (products 
inner JOIN categories
ON products.id_categories = categories.id)
ON providers.id = products.id_providers
WHERE categories.id = 6;
