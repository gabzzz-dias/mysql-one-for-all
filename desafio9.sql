DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN name_artist VARCHAR(100))
BEGIN

SELECT	
a.artist_name AS artista, al.album_name AS album
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS al
WHERE a.artist_id = al.artist_id
AND a.artist_name = name_artist
ORDER BY album ASC;

END $$
DELIMITER ;
