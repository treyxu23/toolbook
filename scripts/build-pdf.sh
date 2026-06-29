#!/bin/bash
# 一键生成 PDF
# 依赖: pandoc, xelatex, 中文字体

set -e
export PATH="/usr/local/texlive/2026basic/bin/universal-darwin:$PATH"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
BOOK_DIR="$(dirname "$SCRIPT_DIR")"
OUTPUT="$BOOK_DIR/写给普通人的-Hermes-Agent-工具书.pdf"

echo "📖 正在生成 PDF..."
python3 "$HOME/Code/huashu-bookwriter/scripts/export_pdf.py" "$BOOK_DIR/book.md" -o "$OUTPUT" -v

echo ""
echo "✅ 完成: $OUTPUT"
