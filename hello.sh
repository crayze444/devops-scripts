#!/bin/bash
# Мой первый скрипт
echo "==================================="
echo "Привет, $USER!"
echo "Сегодня: $(date)"
echo "Время аптайма: $(uptime -p)"
echo "Свободно места: $(df -h / | tail -1 | awk '{print $4}')"
echo "Мой IP: $(hostname -I | awk '{print $1}')"
echo "==================================="

