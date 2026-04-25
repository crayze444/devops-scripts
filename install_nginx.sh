#!/bin/bash
# Скрипт автоматической установки Nginx

echo ">>> Начинаю установку Nginx..."

echo ">>> Шаг 1: Обновляю список пакетов..."
sudo apt update

echo ">>> Шаг 2: Устанавливаю Nginx..."
sudo apt install nginx -y

echo ">>> Шаг 3: Запускаю Nginx..."
sudo systemctl start nginx

echo ">>> Шаг 4: Проверяю статус..."
sudo systemctl status nginx --no-pager -l

echo ">>> Готово! Открой http://$(hostname -I | awk '{print $1}') в браузере."

