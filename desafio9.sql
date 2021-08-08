DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(100))
BEGIN

SELECT	
a.artist_name AS artista, al.album_name AS album
FROM albums AS al
INNER JOIN artistas AS a ON al.artist_id = a.artist_id
WHERE a.artist_name = artista
ORDER BY al.album_name;

END $$
DELIMITER ;
