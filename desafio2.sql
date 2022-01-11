SELECT
(SELECT COUNT(*) FROM musicas) AS cancoes,
(SELECT COUNT(*) FROM artistas) AS artistas,
(SELECT COUNT(*) FROM albuns) AS albuns;
