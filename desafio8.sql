SELECT 
	art.artist_name AS artista, 
	al.album_name AS album
FROM SpotifyClone.artist as art
INNER JOIN SpotifyClone.album AS al 
ON al.artist_id = art.artist_id
GROUP BY album_name, artist_name
HAVING artist_name = 'Elis Regina'
ORDER BY album;