# 🚀 DevOps Portfolio: Полный цикл автоматизации

Проект демонстрирует навыки построения CI/CD, контейнеризации, оркестрации и мониторинга.

## 🛠️ Технологический стек
- **Linux** (Ubuntu, WSL2, Bash, Systemd)
- **Контейнеризация** (Docker, Docker Compose)
- **Оркестрация** (Kubernetes, k3s)
- **Веб-сервер** (Nginx)
- **CI/CD** (GitHub Actions)
- **Деплой** (GitHub Pages, GHCR)
- **Управление конфигурацией** (Ansible)
- **Мониторинг** (Prometheus, Grafana)
- **Система контроля версий** (Git, GitHub)

## 📂 Структура проекта
├── ansible/              # Ansible playbooks
├── kubernetes/           # Kubernetes manifests
├── monitoring/           # Prometheus & Grafana configs
├── scripts/              # Bash-скрипты автоматизации
├── docs/                 # Статический сайт (GitHub Pages)
└── logs/                 # Логи работы скриптов

## 🚀 Быстрый старт
# Сайт в Docker
docker build -t my-site . && docker run -d -p 8080:80 my-site

# Мониторинг
cd monitoring && docker compose up -d

# Ansible (установка Nginx на 5 серверов)
cd ansible && ansible-playbook -i ../ansible-lab/inventory.ini install-nginx.yml

# Kubernetes (3 реплики сайта)
kubectl apply -f kubernetes/my-site-deployment.yaml

## 🌐 Живой сайт
[https://crayze444.github.io/devops-scripts/](https://crayze444.github.io/devops-scripts/)

## 📊 Мониторинг
- Grafana: [http://localhost:3000](http://localhost:3000) (admin/admin)
- Prometheus: [http://localhost:9090](http://localhost:9090)

## 📝 Скрипты
- `hello.sh` — Информация о системе
- `install_nginx.sh` — Автоустановка Nginx
- `backup.sh` — Бэкап проекта
- `check-site.sh` — Проверка доступности сайта
- `logger.sh` — Логгер активностей (алиас `log`)
- `docker-watch.sh` — Автоперезапуск контейнеров
- `smart-push.sh` — Автокоммит и пуш изменений

---

**Автор**: [@crayze444](https://github.com/crayze444) | Старт обучения: Апрель 2026
