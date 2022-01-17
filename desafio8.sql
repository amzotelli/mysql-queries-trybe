SELECT artistas.artista_nome AS artista,
albuns.album_titulo AS album FROM artistas
JOIN albuns ON artistas.artista_id = albuns.artista_id 
WHERE artistas.artista_nome = "Walter Phoenix";
