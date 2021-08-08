CREATE VIEW historico_reproducao_usuarios AS
SELECT u.user_name AS 'usuario', s.song_name AS 'nome'
FROM SpotifyClone.users u, SpotifyClone.songs s
INNER JOIN SpotifyClone.user_history uh
WHERE u.user_id = uh.user_id AND s.song_id = uh.song_id
ORDER BY u.user_name ASC,
s.song_name ASC;
