import sys
from pathlib import Path

def parse_log_file(file_path: str):
    path = Path(file_path)
    
    if not path.is_file():
        print(f"Erro: O arquivo '{file_path}' não foi encontrado.")
        sys.exit(1)

    errors = []
    warnings = []
    
    with open(path, "r", encoding="utf-8") as file:
        for line_number, line in enumerate(file, 1):
            clean_line = line.strip()
            if "ERROR" in clean_line or "status: 500" in clean_line:
                errors.append((line_number, clean_line))
            elif "WARNING" in clean_line or "status: 4" in clean_line:
                warnings.append((line_number, clean_line))

    print("=== RELATÓRIO DE DIAGNÓSTICO DE LOGS ===")
    print(f"Arquivo analisado: {path.name}\n")
    
    print(f"[!] Erros Críticos ({len(errors)}):")
    for line_num, log in errors:
        print(f"  Linha {line_num}: {log}")

    print(f"\n[?] Alertas / Client Errors ({len(warnings)}):")
    for line_num, log in warnings:
        print(f"  Linha {line_num}: {log}")

if __name__ == "__main__":
    target_file = sys.argv[1] if len(sys.argv) > 1 else "../data/sample.log"
    parse_log_file(target_file)
