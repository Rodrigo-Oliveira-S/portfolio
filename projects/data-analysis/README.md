## bridge-project — Versão Android (v1-android)

Esta versão é um protótipo desenvolvido no Termux (Android), utilizando GNUCOBOL, Python e MariaDB. 
O objetivo é validar a integração entre COBOL (processamento) e Python (ETL) em um ambiente móvel, 
com saída dos dados para visualização no Google Planilhas.

## Tecnologias utilizadas

- GNUCOBOL (no Termux)
- Python 3
- MariaDB
- Google Sheets (via exportação CSV ou API)

## Estrutura

- `cobol/` — Programas COBOL que geram dados (ex: cálculos, relatórios)
- `python/` — Scripts Python que leem os dados gerados e os carregam no banco ou planilha
- `data/` — Arquivos CSV temporários (se houver)
- `docs/` — Anotações e prints de execução

## Como executar

(Detalhes futuros)
