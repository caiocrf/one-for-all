SELECT
	us.user_name AS usuario,
    IF( (YEAR(max(hi.listened_date)) >= 2021),
		'Usuário ativo',
    'Usuário inativo'
    ) AS status_usuario FROM SpotifyClone.users AS us
    INNER JOIN SpotifyClone.history AS hi
        ON hi.user_id = us.user_id
    GROUP BY us.user_name
    ORDER BY us.user_name;