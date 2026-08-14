# Python — Scripts e Automação

Scripts Python para automatizar pipelines de análise e preparação de dados, integrando bancos PostgreSQL, validação de qualidade e geração de CSVs.

Cada script resolve uma etapa específica do pipeline, substituindo tarefas manuais e garantindo reprodutibilidade.

## Ferramentas utilizadas

- **pandas** — Manipulação e transformação de dados
- **SQLAlchemy** — Conexão e execução de consultas SQL
- **psycopg2-binary** — Driver PostgreSQL
- **python-dotenv** — Gestão de variáveis de ambiente
- **Jupyter Notebook** — Análise exploratória e rascunho de consultas

## Scripts disponíveis

- **`database.py`** — Conexão modular com PostgreSQL
- **`queries.py`** — Consultas SQL organizadas por função
- **`pipeline.py`** — Orquestração completa do fluxo de dados
- **`quality_checks.py`** — Validação automática de CSVs gerados


