/*
Os vírus estão evoluindo, porém uma nova pesquisa tem provado que trocando algumas proteínas a vacina se torna imbatível. A proteína H1 (Hemaglutinina) quando é substituída pela proteína X (Xenomorphina) tem efeitos interessantes no combate de quase todas as doenças virais. Alguns conspiracionistas dizem que após a descoberta dessa vacina algumas criaturas de 3 metros de altura foram vistas perto do laboratório, mas claro, isso é mentira.

Portanto você deve substituir todo caractere 'H1' ( Hemaglutinina ) por 'X' ( Xenomorphina ).
*/
SELECT 
	REPLACE(name, 'H1', 'X') AS name
FROM virus;
