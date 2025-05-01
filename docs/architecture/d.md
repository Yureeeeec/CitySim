# 🔍 Детализированная архитектура CitySim

```mermaid
graph TD
    subgraph "Клиентский слой"
        A[Web UI] -->|React 18| B[Map Component]
        A -->|Redux Toolkit| C[State Management]
        A -->|WebSocket| D[Real-Time Updates]
    end

    subgraph "Серверный слой"
        E[API Gateway] -->|gRPC| F[Scenario Service]
        E -->|REST| G[Auth Service]
        E -->|AMQP| H[Calculation Workers]
    end

    subgraph "Инфраструктура"
        I[(PostgreSQL)] --> F
        J[(MinIO)] --> H
        K[(Redis Cluster)] --> H
        L[Prometheus] -->|Метрики| M[Grafana]
    end
```

## 2.1 Технологический стек

### Frontend
| Компонент          | Технологии                  | Назначение                     |
|--------------------|-----------------------------|--------------------------------|
| Картография        | Deck.gl, OpenLayers         | Визуализация транспортных сетей |
| Аналитика          | Chart.js, D3.js             | Построение графиков и диаграмм  |
| State Management   | Redux Toolkit               | Управление сложными состояниями |

### Backend
```mermaid
flowchart LR
    A[Запрос] --> B{API Gateway}
    B -->|Авторизация| C[Auth Service]
    B -->|Данные| D[Scenario Service]
    B -->|Расчеты| E[Calculation Service]
    E --> F[Redis]
    E --> G[RabbitMQ]
```

## 2.2 Производительность
- **Обработка запросов**: ≤500 мс (p99)
- **Параллелизм**: 1000+ одновременных сессий
- **Нагрузка**: 10k RPM на кластере из 3 нод
