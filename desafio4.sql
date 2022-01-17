SELECT usuario.nome AS usuario,
	IF(MAX(historico_reproducao.data_reproducao) LIKE "2021", "Usuário ativo", "Usuário inativo") AS condicao_usuario
FROM usuario
JOIN historico_reproducao ON usuario.usuario_id = historico_reproducao.usuario_id
GROUP BY usuario
ORDER BY usuario; 
