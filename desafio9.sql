SELECT COUNT(*) AS "quantidade_musicas_no_historico" FROM historico_reproducao
JOIN usuario ON historico_reproducao.usuario_id = usuario.usuario_id
WHERE usuario.nome = "Bill";
SELECT COUNT(*) AS "quantidade_musicas_no_historico" FROM historico_reproducao
JOIN usuario ON historico_reproducao.usuario_id = usuario.usuario_id
WHERE usuario.nome = "Bill";
