## 🗄️ Модель данных
Основные сущности

```mermaid
erDiagram
    USER ||--o{ SCENARIO : "Создает"
    SCENARIO ||--o{ ROUTE : "Содержит"
    ROUTE ||--o{ STOP : "Включает"
    SCENARIO ||--o{ CALCULATION : "Имеет"
    CALCULATION ||--o{ METRIC : "Генерирует"
