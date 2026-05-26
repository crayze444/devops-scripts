#!/bin/bash
if curl -s --head http://localhost:8080 | grep -q "200 OK"; then
    echo "✅ Сайт жив"
else
    echo "❌ Сайт упал"
fi
