SELECT usuario.nome AS usuario,
	count(historico_reproducao.usuario_id) AS qtde_musicas_ouvidas,
	round(sum(musicas.duracao_segundos) / 60,2) AS total_minutos
FROM usuario
JOIN historico_reproducao ON usuario.usuario_id=historico_reproducao.usuario_id
JOIN musicas ON musicas.musica_id=historico_reproducao.musica_id
GROUP BY usuario
ORDER BY usuario ASC; 
