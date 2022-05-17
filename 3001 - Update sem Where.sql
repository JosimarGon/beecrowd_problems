((SELECT 
	products.name AS type
	,price + 20.0 AS price
  FROM products 
  WHERE type = 'A'
  ORDER BY id DESC)
       UNION ALL
 (SELECT 
  	products.name AS type
  	,price + 70.0 
  FROM products 
  WHERE type = 'B'
  ORDER BY id DESC)
       UNION ALL
(SELECT 
	products.name AS type
	,price + 530.5 
  FROM products 
  WHERE type = 'C'
  ORDER BY id DESC))
