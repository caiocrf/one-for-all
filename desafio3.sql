SELECT 
	us.user_name AS usuario,
    COUNT(hi.music_id) AS qt_de_musicas_ouvidas,
    SUM(ROUND((mu.duration / 60), 2)) AS total_minutos
FROM SpotifyClone.users AS us
	INNER JOIN SpotifyClone.history AS hi 
    ON us.user_id = hi.user_id
	INNER JOIN SpotifyClone.music AS mu 
    ON mu.music_id = hi.music_id
GROUP BY us.user_id
ORDER BY us.user_name;