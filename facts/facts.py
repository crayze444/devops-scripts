import http.server
import json
import random

FACTS = [
    "Docker был выпущен в 2013 году.",
    "80% контейнеров в облаке — Docker.",
    "Nginx обрабатывает более 500 миллионов сайтов.",
    "CI/CD уменьшает время деплоя с дней до минут.",
    "Первая система контроля версий — SCCS, 1972 год."
]

class Handler(http.server.BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-Type", "application/json; charset=utf-8")
        self.end_headers()
        self.wfile.write(json.dumps({"fact": random.choice(FACTS)}, ensure_ascii=False).encode())

http.server.HTTPServer(("0.0.0.0", 8081), Handler).serve_forever()
