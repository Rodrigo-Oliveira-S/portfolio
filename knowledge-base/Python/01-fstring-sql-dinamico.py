# 01-fstring-sql-dinamico.py
# Como usar f-string para queries SQL reutilizáveis

mes = '2017-06'

query = f"""
SELECT *
FROM sales_pipeline
WHERE TO_CHAR(close_date::date, 'YYYY-MM') = '{mes}'
"""
