# 🏗 Концептуальная архитектура CitySim🔍 Детализированная архитектура CitySim

```mermaid
graph TD
    subgraph Frontend
        A[Веб-интерфейс] -->|React/TypeScript| B[Карта]
        A -->|Deck.gl| C[Графики]
        A -->|Chart.js| D[Отчеты]
    end

    subgraph Backend
        E[API Gateway] -->|FastAPI| F[Сервис сценариев]
        E -->|JWT| G[Сервис аутентификации]
        E -->|Celery| H[Сервис расчетов]
        E -->|Pandas| I[Сервис аналитики]
    end

    subgraph Хранилища
        J[(PostgreSQL)] -->|Основные данные| F
        K[(MinIO)] -->|Файлы GTFS/CSV| H
        L[(Redis)] -->|Кэш| H
        M[RabbitMQ] -->|Очереди задач| H
    end

    subgraph Интеграции
        N[OpenStreetMap] -->|Картографические данные| B
        O[GTFS-провайдеры] -->|Импорт данных| F
    end

    A -->|HTTPS| E
    H -->|WebSocket| A
```

Технологический стек:
Компонент	Технологии
Frontend	React, TypeScript, Deck.gl, Chart.js
API Gateway	FastAPI, OpenAPI 3.0
Сервисы	Python 3.10+, SQLAlchemy, Celery
Хранилища	PostgreSQL, Redis, MinIO
