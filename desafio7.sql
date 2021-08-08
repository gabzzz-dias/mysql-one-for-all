CREATE VIEW perfil_artistas AS
SELECT a.artist_name AS artista,
alb.album_name AS album,
COUNT(uf.artist_id) AS seguidores
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS al
ON a.artist_id = al.artist_id
INNER JOIN SpotifyClone.user_following AS uf
ON al.artist_id = uf.artist_id
GROUP BY al.album_id
ORDER BY seguidores DESC,
artista ASC,
album ASC;
