-- CASE WHEN para traduzir valores de coluna para linguagem de negócio
-- Projeto: Fuzzy Factory Analysis

SELECT 
    CASE 
        WHEN utm_source = 'gsearch' THEN 'Google Ads'
        WHEN utm_source = 'bsearch' THEN 'Bing Ads'
        WHEN utm_source = 'socialbook' THEN 'Facebook Ads'
        WHEN utm_source IS NULL THEN 'Tráfego Direto'
        ELSE utm_source
    END AS origem_trafego,
    ROUND(SUM(o.price_usd)::numeric, 2) AS faturamento
FROM orders o
JOIN website_sessions ws ON ws.website_session_id = o.website_session_id
GROUP BY origem_trafego
ORDER BY faturamento DESC