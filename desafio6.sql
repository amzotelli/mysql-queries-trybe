SELECT 
MIN(planos.plano_valor) AS faturamento_minimo,
MAX(planos.plano_valor) AS faturamento_maximo,
ROUND(AVG(planos.plano_valor), 2) AS faturamento_medio,
ROUND(SUM(planos.plano_valor), 2) AS faturamento_total
FROM planos
INNER JOIN usuario ON planos.plano_id = usuario.plano_id; 
