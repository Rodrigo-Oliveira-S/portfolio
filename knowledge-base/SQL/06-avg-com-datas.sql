-- Calcula a média de dias entre o início e o fechamento de uma venda
-- Demonstra: AVG com subtração de datas

SELECT
    sp.sales_agent AS representante_de_vendas,
    ROUND(AVG(sp.close_date::date - sp.engage_date::date), 0) AS media_de_dias
FROM sales_pipeline sp
WHERE sp.deal_stage = 'Won'
    AND sp.close_date IS NOT NULL
    AND sp.close_date != ''
    AND sp.engage_date IS NOT NULL
    AND sp.engage_date != ''
GROUP BY sp.sales_agent
ORDER BY media_de_dias ASC

    