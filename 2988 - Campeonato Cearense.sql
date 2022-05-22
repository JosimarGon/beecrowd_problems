/*
O Campeonato Cearense de Futebol atrai milhares de torcedores todos os anos, você trabalha em um jornal e está encarregado de calcular a tabela de pontuação dos times. Mostre uma tabela com as seguintes colunas: o nome do time, número de partidas, vitórias, derrotas, empates e pontuação. Sabendo que a pontuação é calculada com cada vitória valendo 3 pontos, empate vale 1 e derrota rende 0. No final mostre sua tabela com a pontuação ordenada do maior para o menor. 
*/

SELECT
	name
    ,matches
    ,victories
    ,defeats
    ,draw
    ,(SUM(victories) * 3 + SUM(draw)) AS score
    FROM(
SELECT
	teams.name AS name
    ,COUNT (name) matches
    ,COUNT(CASE
           	WHEN (m1.team_1_goals> m1.team_2_goals AND teams.id = team_1) 
           OR  (m1.team_1_goals< m1.team_2_goals AND teams.id = team_2)
           THEN 1 end) AS victories
    ,COUNT(CASE
           	WHEN (m1.team_1_goals< m1.team_2_goals AND teams.id = team_1) 
           OR  (m1.team_1_goals> m1.team_2_goals AND teams.id = team_2)
           THEN 1 end) AS defeats
    ,COUNT(CASE
           	WHEN (m1.team_1_goals= m1.team_2_goals AND teams.id = team_1) 
           OR  (m1.team_1_goals= m1.team_2_goals AND teams.id = team_2)
           THEN 1 end) AS draw
    FROM teams
    JOIN matches AS m1 
    ON teams.id = m1.team_1 OR teams.id = m1.team_2
 	GROUP BY teams.name) 
 		AS t2
    GROUP by t2.name, t2.matches, t2.victories,  t2.defeats, t2.draw
    ORDER by score desc;
