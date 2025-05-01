# 🧩 Компоненты системы

## 1. Сервис сценариев
- **Назначение**: Управление маршрутами и остановками
- **API**:
  ```http
  POST /scenarios {file: GTFS}
  GET /scenarios/{id}/routes
Хранилище: PostgreSQL (с PostGIS для геоданных)

2. Сервис расчетов
Метрики:

Время в пути

Загруженность транспорта

Зоны покрытия

Оптимизация: Кэширование в Redis

Масштабирование: Celery Worker + RabbitMQ

3. Интеграции
Diagram
Code
flowchart LR
    A[GTFS-провайдер] --> B[Сервис сценариев]
    B --> C[OpenStreetMap]
    C --> D[Клиент]
