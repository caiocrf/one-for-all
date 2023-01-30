SELECT 
	mu.music_name AS nome,
    COUNT(hi.music_id) AS reproducoes
FROM SpotifyClone.music AS mu
	INNER JOIN SpotifyClone.history AS hi
		ON hi.music_id = mu.music_id
	INNER JOIN SpotifyClone.users AS us
		ON hi.user_id = us.user_id
	INNER JOIN SpotifyClone.plans AS pl
		ON pl.plan_id = us.plan_id
WHERE pl.plan_type IN ('gratuito', 'pessoal')
GROUP BY mu.music_name
ORDER BY mu.music_name;