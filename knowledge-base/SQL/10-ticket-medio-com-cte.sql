with faturamento_geral as (
    select
        count(distinct s."Order Number") as qtde_pedidos,
        round(sum(s."Quantity" * p."Unit Price USD")::numeric, 2) as faturamento_bruto
    from "Sales" s
    join "Products" p on p."ProductKey" = s."ProductKey"
)
select
    qtde_pedidos,
    faturamento_bruto,
    round((faturamento_bruto / qtde_pedidos)::numeric, 2) as ticket_medio
from faturamento_geral;
