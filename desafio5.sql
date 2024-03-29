CREATE VIEW top_2_hits_do_momento AS
SELECT s.song_name AS 'cancao',
COUNT(h.song_id) AS 'reproducoes'
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.user_history AS h
ON h.song_id = s.song_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC,
`cancao` ASC
LIMIT 2;
