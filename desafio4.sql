SELECT usuario.nome AS usuario,
	IF(MAX(YEAR(historico_reproducao.data_reproducao)) = 2021, "Usuário ativo", "Usuário inativo") AS condicao_usuario
FROM usuario
INNER JOIN historico_reproducao ON usuario.usuario_id = historico_reproducao.usuario_id
GROUP BY usuario
ORDER BY usuario; 
