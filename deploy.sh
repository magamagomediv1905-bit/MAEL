#!/bin/bash
# MAEL — публикация сайта на GitHub Pages одним скриптом
cd "$(dirname "$0")" || exit 1
echo "→ Отправляю изменения на GitHub..."
git add -A
git commit -m "update $(date '+%Y-%m-%d %H:%M')" || { echo "Нет изменений для публикации."; exit 0; }
git push origin main && echo "✓ Готово. Сайт обновится через ~1 минуту." || echo "✗ Ошибка при push (проверь авторизацию)."
