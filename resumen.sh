#!/bin/bash
echo "=== Resumen del repo ==="
echo "Commits totales: $(git log --oneline | wc -l)"
echo "Commits sin merges: $(git log --oneline --no-merges | wc -l)"
echo "Archivos .md: $(find . -name "*.md" -not -path "./.git/*" | wc -l)"
