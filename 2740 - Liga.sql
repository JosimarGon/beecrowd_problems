/*
A Liga Internacional de Escavação Subterrânea já é um sucesso entre os esportes alternativos, porém todos que trabalham na organização do evento trabalham com escavação e não computação. Então você foi contratado para solucionar o problema da Liga.

Selecione os três primeiros colocados da lista com a frase inicial Podium: e também, os dois últimos times que serão rebaixados para série B com a frase inicial Demoted:
*/

(SELECT 'Podium: ' || team AS name
FROM league
ORDER BY position ASC limit 3)
UNION ALL
(SELECT 'Demoted: ' || team 
FROM league
WHERE position  >= (SELECT 
					MAX(position) FROM league) -1);
