SELECT
	mu.music_name AS cancao,
    COUNT(hi.user_id) AS reproducoes
	FROM SpotifyClone.music AS mu
    INNER JOIN SpotifyClone.history AS hi
        ON mu.music_id = hi.music_id 
	GROUP BY mu.music_name
    ORDER BY COUNT(user_id) DESC, mu.music_name
    LIMIT 2;