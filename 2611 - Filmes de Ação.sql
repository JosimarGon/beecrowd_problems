SELECT 
    movies.id
    ,movies.name 
FROM movies
INNER JOIN genres
ON genres.id = movies.id_genres
WHERE LOWER(genres.description) = 'action'
