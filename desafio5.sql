SELECT 
	musicas.musica_titulo AS cancao, 
    COUNT(historico_reproducao.musica_id) AS reproducoes
FROM musicas
JOIN historico_reproducao 
	ON musicas.musica_id = historico_reproducao.musica_id
GROUP BY cancao
ORDER BY 
reproducoes DESC, 
cancao LIMIT 2; 
