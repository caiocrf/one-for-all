SELECT 
	art.artist_name AS artista, 
	alb.album_name AS album,
    count(foll.user_id) AS seguidores
FROM SpotifyClone.artist as art
INNER JOIN SpotifyClone.album AS alb 
ON alb.artist_id = art.artist_id
INNER JOIN SpotifyClone.follow AS foll 
ON foll.artist_id = art.artist_id
GROUP BY alb.album_name, artist_name
ORDER BY seguidores DESC, artista, album;