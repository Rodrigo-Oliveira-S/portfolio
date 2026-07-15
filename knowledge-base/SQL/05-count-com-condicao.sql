-- Conta quantos negócios foram fechados (Won) por vendedor
-- Demonstra: COUNT com WHERE condicional

SELECT
    sp.sales_agent AS representante_de_vendas,
    COUNT(sp.opportunity_id) AS quantidade_de_vendas
FROM sales_pipeline sp
WHERE sp.deal_stage = 'Won'
GROUP BY sp.sales_agent
ORDER BY quantidade_de_vendas DESC
    