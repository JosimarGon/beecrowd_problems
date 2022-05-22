/*
Uma Vídeo locadora contratou seus serviços para catalogar os filmes dela. Eles precisam que você selecione o código e o nome dos filmes cuja descrição do gênero seja 'Action'.
*/

SELECT 
    movies.id
    ,movies.name 
FROM movies
INNER JOIN genres
ON genres.id = movies.id_genres
WHERE LOWER(genres.description) = 'action'
