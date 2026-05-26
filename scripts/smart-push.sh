#!/bin/bash
cd ~/my-awesome-site
if [[ -n $(git status --porcelain) ]]; then
    git add .
    git commit -m "Автокоммит: $(date '+%Y-%m-%d %H:%M:%S')"
    git push origin main
    echo "✅ Изменения запушены на GitHub"
else
    echo "📭 Нечего пушить"
fi
