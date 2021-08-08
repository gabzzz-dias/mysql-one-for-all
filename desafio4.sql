CREATE VIEW top_3_artistas AS
SELECT a.artist_name AS 'artista',
COUNT(uf.artist_id) AS 'seguidores'
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.user_following AS uf
ON a.artist_id = uf.artist_id
GROUP BY uf.artist_id
ORDER BY `seguidores` DESC,
`artista` ASC
LIMIT 3;
