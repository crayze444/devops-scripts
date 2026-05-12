# 🚀 Личный DevOps-проект

[![Website](https://img.shields.io/badge/Site-Live-brightgreen)](https://crayze444.github.io/devops-scripts/)
[![Docker Image](https://img.shields.io/badge/Docker%20Image-ghcr.io-blue)](https://github.com/crayze444/devops-scripts/pkgs/container/devops-scripts%2Fmy-site)

Полный цикл автоматизации: от кода до деплоя и мониторинга.

## 🛠️ Стек
Linux (Ubuntu 24.04), Bash, Nginx, Docker, GitHub Actions, GitHub Pages, Prometheus, Grafana.

## 🚀 Быстрый старт
git clone https://github.com/crayze444/devops-scripts.git && cd devops-scripts && docker build -t my-site . && docker run -d -p 8080:80 my-site

## 🌐 Сайт
[crayze444.github.io/devops-scripts](https://crayze444.github.io/devops-scripts/)

## 📊 Мониторинг
Grafana: http://localhost:3000 (admin/admin)  
Prometheus: http://localhost:9090/targets

## 📝 Автоматизация
- hello.sh — приветствие и инфо о системе.
- install_nginx.sh — автоустановка Nginx.
- logger.sh — логгер активностей (алиас log).

---

**Автор**: [@crayze444](https://github.com/crayze444) | Старт обучения: Апрель 2026
