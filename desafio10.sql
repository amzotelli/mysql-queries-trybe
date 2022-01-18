SELECT musicas.musica_titulo AS nome,
COUNT(historico_reproducao.musica_id) AS reproducoes FROM musicas
INNER JOIN historico_reproducao ON musicas.musica_id = historico_reproducao.musica_id
INNER JOIN usuario ON historico_reproducao.usuario_id = usuario.usuario_id
INNER JOIN planos ON usuario.plano_id = planos.plano_id
WHERE planos.plano_id IN (1, 4)
GROUP BY musicas.musica_titulo
ORDER BY musicas.musica_titulo; 
