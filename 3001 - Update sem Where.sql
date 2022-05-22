/*
Seu amigo Zé Maria se encontra em uma emboscada porque fez um update sem where e acabou zerando todos os valores da coluna price. Para sua sorte, o preço pode ser calculado novamente sabendo o tipo do produto.

    Se o tipo do produto é igual A, o preço será 20.0
    Se o tipo do produto é igual B, o preço será 70.0
    Se o tipo do produto é igual C, o preço será 530.5

O seu trabalho é mostrar o nome e o preço de todos os produtos. Você também deve mostrar os produtos em conjuntos com a seguinte ordem: primeiro todos os produtos do tipo A, segundo o tipo B, e por último o tipo C. Além disso, os produtos de cada um dos conjuntos (A,B,C), devem está ordenados pelo seu ID de forma decrescente.
*/


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
