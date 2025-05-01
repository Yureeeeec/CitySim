# 🔍 Детализированная и унифицированная архитектура CitySim

```mermaid
flowchart TD
    subgraph Клиентский_слой
        A[Веб-интерфейс SPA] -->|React 18 / TypeScript| B[Компонент карты]
        A -->|Deck.gl| C[Визуализация маршрутов]
        A -->|Chart.js| D[Графики и отчеты]
        A -->|WebSocket| E[Реальное обновление данных]
    end

    subgraph Серверный_слой
        F[API Gateway] -->|FastAPI, REST| G[Auth Service (JWT)]
        F -->|gRPC| H[Scenario Service]
        F -->|AMQP| I[Calculation Service (Celery)]
        I --> J[Очереди задач RabbitMQ]
    end

    subgraph Data_слой
        K[(PostgreSQL + PostGIS)] --> H
        L[(Redis Cluster)] --> I
        M[(MinIO)] --> I
        N[Prometheus] -->|Метрики| O[Grafana]
    end
```

## Технологический стек

| Слой              | Компонент               | Технологии                         |
|-------------------|-------------------------|------------------------------------|
| Клиентский слой   | SPA                     | React 18, TypeScript               |
|                   | Карта                   | Deck.gl, OpenLayers                |
|                   | Графики и отчеты        | Chart.js, D3.js                    |
|                   | Real-Time Updates       | WebSocket                          |
| Серверный слой    | API Gateway             | FastAPI, OpenAPI 3.0               |
|                   | Auth Service            | JWT, OAuth2                        |
|                   | Scenario Service        | Python 3.10, SQLAlchemy, gRPC      |
|                   | Calculation Service     | Celery, Pandas                     |
|                   | Очереди задач           | RabbitMQ                           |
| Data слой         | Основная БД             | PostgreSQL + PostGIS               |
|                   | In-Memory Cache         | Redis Cluster                      |
|                   | Объектное хранилище     | MinIO                              |
|                   | Мониторинг              | Prometheus, Grafana                |

## Ключевые метрики и производительность

- **Время отклика API**: ≤500 мс (p99)  
- **Параллелизм**: до 1000 одновременных сессий  
- **Пропускная способность**: до 10k RPM на кластере из 3 нод  
- **Стабильность**: 99.9% SLA  

## Основные принципы

- **Микросервисы**: независимое масштабирование и развертывание  
- **Event-Driven**: асинхронная обработка задач через RabbitMQ  
- **Security-by-Design**:
  - Аутентификация через JWT с коротким TTL (15 мин)  
  - Шифрование данных на уровне хранилищ (AES-256)  
- **High Availability**:
  - Репликация PostgreSQL  
  - Распределенное хранилище MinIO
