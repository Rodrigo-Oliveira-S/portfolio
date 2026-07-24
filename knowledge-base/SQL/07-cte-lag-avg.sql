-- CTE com LAG() e AVG() OVER() — comparação mensal com média geral
-- Projeto: Fuzzy Factory Analysis

WITH faturamento_mensal AS (
    SELECT
        TO_CHAR(oi.created_at::date, 'YYYY-MM') AS data,
        ROUND(SUM(o.price_usd)::numeric, 2) AS faturamento_mes_atual
    FROM order_items oi
    JOIN orders o ON o.order_id = oi.order_id
    WHERE oi.created_at IS NOT NULL 
        AND o.price_usd IS NOT NULL
    GROUP BY TO_CHAR(oi.created_at::date, 'YYYY-MM')
),
com_media AS (
    SELECT 
        data,
        faturamento_mes_atual,
        LAG(faturamento_mes_atual) OVER (ORDER BY data) AS faturamento_mes_anterior,
        ROUND(AVG(faturamento_mes_atual) OVER(), 2) AS media_geral
    FROM faturamento_mensal
)
SELECT 
    data,
    faturamento_mes_anterior,
    faturamento_mes_atual,
    ROUND(
        ((faturamento_mes_atual - faturamento_mes_anterior) 
        / faturamento_mes_anterior) * 100, 2
    ) AS variacao_percentual,
    media_geral AS media_mes,
    CASE
        WHEN faturamento_mes_atual > media_geral THEN 'Acima da Média'
        ELSE 'Abaixo da Média'
    END AS classificacao
FROM com_media
ORDER BY data