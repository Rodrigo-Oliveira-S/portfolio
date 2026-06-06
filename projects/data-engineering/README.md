## bridge-project — Versão WSL (v2-wsl)

Versão completa do projeto, desenvolvida no WSL (Ubuntu) com container Podman para o banco de dados e 
visualização profissional no Metabase/Tableau. Aqui o foco é a escalabilidade e a integração com ferramentas de BI.

## Tecnologias utilizadas

- GNUCOBOL (no WSL)
- Python 3
- Podman com MariaDB
- Metabase ou Tableau para dashboards

## Estrutura

- `cobol/` — Programas COBOL (mesma lógica da v1, mas adaptada)
- `python/` — Scripts ETL que conectam ao banco em container
- `sql/` — Scripts de criação do banco e consultas
- `dashboards/` — Prints ou arquivos de configuração dos dashboards
- `docker/` — Arquivos de configuração do container (se houver)

## Como executar

(Detalhes futuros)
