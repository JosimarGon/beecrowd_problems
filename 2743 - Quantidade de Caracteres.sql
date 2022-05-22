/*
A Organização Mundial de Caracteres em Nomes de Pessoas (OMCNP) está fazendo um censo para saber qual é a quantidade de caracteres que as pessoas têm em seus nomes.

Para ajudar a OMCNP, você deve mostrar a quantidade de caracteres de cada nome em ordem decrescente pela quantidade de caracteres.
*/
SELECT 
	name
	,LENGTH(name) AS length
FROM people
ORDER BY length DESC;
