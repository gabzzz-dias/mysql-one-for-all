CREATE VIEW perfil_artistas AS
SELECT 
a.artist_name AS `artista`,
alb.album_name AS `album`,
(SELECT COUNT(*) FROM SpotifyClone.user_following
WHERE artist_id = a.artist_id) AS `seguidores`
FROM
SpotifyClone.albums AS alb
INNER JOIN artistas AS a
ON alb.artist_id = a.artist_id
ORDER BY `seguidores` DESC,
`artista` ASC,
`album` ASC;
