#!/bin/bash
# Персональный логгер активностей

LOG_FILE=~/my-awesome-site/logs/activity.log
ACTION="$1"
NOTE="$2"

# Если аргументов нет - показать помощь
if [ -z "$ACTION" ]; then
    echo "Использование: logger.sh <действие> [заметка]"
    echo "Пример: logger.sh started 'Начал работу над проектом'"
    exit 0
fi

# Формируем запись
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
if [ -n "$NOTE" ]; then
    echo "[$TIMESTAMP] $ACTION - $NOTE" >> "$LOG_FILE"
else
    echo "[$TIMESTAMP] $ACTION" >> "$LOG_FILE"
fi

echo "✅ Записано в лог: $ACTION"
tail -1 "$LOG_FILE"
