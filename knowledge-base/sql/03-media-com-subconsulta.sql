-- Subconsulta + AVG — cálculo de média a partir de agrupamento

select 
	round(avg(faturamento_bruto), 2) as media_bruto,
	round(avg(faturamento_liquido), 2) as media_liquido
from (

select 
	to_char(s."Date"::date, 'YYYY-MM-DD') as data_venda,
	round(sum(s."Units" * replace(p."Product_Price", '$', ' ')::numeric)::numeric, 2) as faturamento_bruto,
	round(sum(s."Units" * (replace(p."Product_Price", '$', ' ')::numeric - replace(p."Product_Cost", '$', ' ')::numeric))::numeric, 2) as faturamento_Liquido
from sales s 
join stores s1 on s1."Store_ID" = s."Store_ID"
join products p on p."Product_ID" = s."Product_ID"
where s."Date"::date between '2023-03-01'
	and '2023-03-31'
group by data_venda
order by data_venda

) sub;