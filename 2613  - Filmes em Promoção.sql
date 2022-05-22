/*
Antigamente a locadora fez um evento em que vários filmes estavam em promoção, queremos saber que filmes eram esses.

Seu trabalho para nós ajudar é selecionar o ID e o nome dos filmes cujo preço for menor que 2.00.
*/
SELECT 
	movies.id 
	,movies.name
FROM movies 
INNER JOIN prices
ON movies.id_prices = prices.id
WHERE prices.value < 2;
