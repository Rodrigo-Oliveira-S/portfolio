# Função para limpar colunas financeiras com símbolos e espaços

def limpar_coluna_financeira(df, coluna):
    """
    Remove símbolos, vírgulas e espaços extras, e converte para float.
    """
    df[coluna] = (
        df[coluna]
        .astype(str)
        .str.replace('$', '')
        .str.replace(',', '')
        .str.strip()
        .astype(float)
    )
    return df

# Exemplo de uso:
# df = pd.read_csv('../raw/Products.csv', encoding='latin1')
# df = limpar_coluna_financeira(df, 'Unit Cost USD')
# df = limpar_coluna_financeira(df, 'Unit Price USD')
