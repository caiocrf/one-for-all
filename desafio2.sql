SELECT COUNT(DISTINCT mus.music_id) AS cancoes,
    COUNT(DISTINCT art.artist_id) AS artistas,
    COUNT(DISTINCT alb.album_id) AS albuns
FROM SpotifyClone.music AS mus
    INNER JOIN SpotifyClone.artist as art
    INNER JOIN SpotifyClone.album as alb;