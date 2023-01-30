SELECT 
	COUNT(hi.user_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.history AS hi
	INNER JOIN SpotifyClone.users AS us
		ON us.user_id = hi.user_id
GROUP BY us.user_name
HAVING us.user_name = 'Barbara Liskov';