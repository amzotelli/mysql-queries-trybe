SELECT 
artistas.artista_nome AS artista,
albuns.album_titulo AS album,
COUNT(seguindo_artistas.artista_id) AS seguidores
FROM artistas
JOIN albuns ON artistas.artista_id = albuns.artista_id
JOIN seguindo_artistas ON artistas.artista_id = seguindo_artistas.artista_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album; 
