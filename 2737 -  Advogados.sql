(SELECT 
 	lawyers.name AS name
 	,lawyers.customers_number AS customers_number
FROM lawyers
WHERE customers_number = (SELECT MAX(customers_number)
                          FROM lawyers))
UNION ALL
(SELECT 
 	lawyers.name
 	,lawyers.customers_number
FROM lawyers
WHERE customers_number = (SELECT MIN(customers_number)
                          FROM lawyers))
UNION ALL
(SELECT 
 	'average'
 	, cast(avg(lawyers.customers_number)AS INT)
FROM lawyers)
