# Verifica se arquivos CSV não estão vazios
# Projeto: Bank Customer Churn

import pandas as pd

def check_nao_vazio(arquivo):
    df = pd.read_csv(arquivo)
    if len(df) == 0:
        print(f"ALERTA: {arquivo} está vazio!")
    else:
        print(f"OK: {arquivo} - {len(df)} linhas")
