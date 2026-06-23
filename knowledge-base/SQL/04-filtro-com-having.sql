-- HAVING - filtro sobre função de agregação

select 
	to_char(s."Date"::date, 'YYYY-MM') as data_venda,
	s1."Store_Name" as loja,
	round(sum(s."Units" * replace(p."Product_Price", '$', ' ')::numeric)::numeric, 2) as faturamento_bruto,
	round(sum(s."Units" * (replace(p."Product_Price", '$', ' ')::numeric - replace(p."Product_Cost", '$', ' ')::numeric))::numeric, 2) as faturamento_Liquido
from sales s 
join stores s1 on s1."Store_ID" = s."Store_ID"
join products p on p."Product_ID" = s."Product_ID"
group by data_venda, loja
having 	round(sum(s."Units" * replace(p."Product_Price", '$', ' ')::numeric)::numeric, 2) >= 30570.93
order by data_venda;
