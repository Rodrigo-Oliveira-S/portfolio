-- Drill-down em uma categoria específica
-- Projeto: pizzaria-analise-vendas-2015
-- Demonstra: WHERE combinado (data + categoria), análise segmentada
-- Resultado: The Classic Deluxe Pizza lidera com folga na categoria Classic

select 
	pt.name as sabores,
	sum(od.quantity) as quantidade_vendida,
	round(sum(od.quantity * p.price)::numeric, 2) as faturamento 
from order_details od 
join orders o on o.order_id = od.order_id 
join pizzas p on p.pizza_id = od.pizza_id 
join pizza_types pt on pt.pizza_type_id = p.pizza_type_id
where o.date >= '2015-07-01'
	and o.date <= '2015-07-31'
	and pt.category = 'Classic'
group by pt.name
order by faturamento desc
