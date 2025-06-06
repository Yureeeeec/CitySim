# 🏗 Концептуальная архитектура CitySim

```mermaid
graph TD
    A[Клиент] --> B[API Gateway]
    B --> C[Сервис аутентификации]
    B --> D[Сервис сценариев]
    B --> E[Сервис расчетов]
    B --> F[Сервис отчетности]
    D --> G[(PostgreSQL)]
    E --> H[(Redis)]
    F --> I[(MinIO)]
    E --> J[Очереди задач]
    J --> K[RabbitMQ]
```

## Основные характеристики системы

### 1.1 Компоненты ядра
| Компонент              | Назначение                                  | Технологии             |
|------------------------|---------------------------------------------|------------------------|
| **API Gateway**        | Единая точка входа для всех запросов        | FastAPI, OpenAPI 3.0   |
| **Сервис сценариев**   | Управление транспортными схемами            | Python 3.10, PostGIS   |
| **Сервис расчетов**    | Выполнение симуляций                        | Celery, Pandas         |
| **Сервис отчетности**  | Генерация аналитических выводов             | Chart.js, PDFKit       |

### 1.2 Ключевые принципы
- **Микросервисная архитектура**: Независимое масштабирование компонентов
- **Event-Driven**: Асинхронная обработка через RabbitMQ
- **Security-by-Design**: 
  - JWT с 15-минутным TTL
  - Шифрование данных AES-256
- **High Availability**:
  - Кластеризация PostgreSQL
  - Репликация в MinIO
