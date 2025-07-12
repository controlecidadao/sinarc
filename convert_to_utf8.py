"""
Converte qualquer arquivo HTML para UTF-8 (in-place, com backup .bak).
Script usado para converter arquivos de grafo (grafo_final.html) para ser disponibilizado online no Github.

COMO USAR:
1) Abrir o Terminal do Windows
2) Ativar um ambiente virtual que contenha a biblioteca "chardet"
3) Digitar no Terminal:
   python <caminho_para>\convert_to_utf8.py "<caminho_para>\grafo_final.html"

EXEMPLO DE SAÍDA NO TERMINAL:
[INFO] Codificação detectada: Windows-1252
[BACKUP] Criado: F:\SINARC\sinarc-main\grafo_final.html.bak
[OK] Arquivo convertido para UTF-8: F:\SINARC\sinarc-main\grafo_final.html

"""


from pathlib import Path
import chardet
import sys

def convert_html_to_utf8(input_path: Path) -> None:
    raw_bytes = input_path.read_bytes()

    # 1. Detecta a codificação (Windows-1252, ISO-8859-1, etc.)
    detected = chardet.detect(raw_bytes)
    encoding = detected.get("encoding") or "utf-8"
    print(f"[INFO] Codificação detectada: {encoding}")

    # 2. Decodifica com a codificação correta
    try:
        text = raw_bytes.decode(encoding)
    except UnicodeDecodeError:
        print("[WARN] Falha ao decodificar com", encoding, "→ usando latin1 como fallback")
        text = raw_bytes.decode("latin1")

    # 3. Força charset=utf-8 no HTML
    text = (
        text
        .replace(f'charset={encoding.lower()}', 'charset=utf-8')
        .replace(f'charset={encoding.upper()}', 'charset=utf-8')
    )

    # 4. Cria backup
    backup = input_path.with_suffix(input_path.suffix + ".bak")
    backup.write_bytes(raw_bytes)
    print(f"[BACKUP] Criado: {backup}")

    # 5. Salva em UTF-8
    input_path.write_text(text, encoding="utf-8")
    print(f"[OK] Arquivo convertido para UTF-8: {input_path}")

# ---- CLI ----
if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Uso: python convert_to_utf8.py arquivo.html")
        sys.exit(1)

    file = Path(sys.argv[1])
    if not file.exists():
        print("Arquivo não encontrado:", file)
        sys.exit(1)

    convert_html_to_utf8(file)