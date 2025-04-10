# CitySim 

**CitySim** — система для моделирования и анализа городских транспортных систем. Проект предоставляет инструмент для оптимизации работы общественного транспорта через детальное моделирование маршрутов и анализ их эффективности.

[![OpenAPI Specification](https://img.shields.io/badge/OpenAPI-3.0-success?style=flat&logo=openapi)](./openapi/openapi.yaml)
[![ER Diagram](./diagrams/er.png)](./diagrams/er.png)

## 🚀 Основные возможности
- **Импорт данных**: Загрузка маршрутов в форматах GTFS и CSV с валидацией схемы
- **Динамическое моделирование**: 
  - Симуляция транспортных потоков с настраиваемыми параметрами (интервалы, скорость, пассажиропоток)
  - Анализ узких мест в маршрутных сетях
- **Аналитика**:
  - Визуализация метрик эффективности (загруженность, время в пути, эквивалент CO₂)
  - Генерация отчетов в формате PDF/CSV

## 📚 Документация
- [Видение проекта](./docs/vision.md) - долгосрочные цели и roadmap
- [Техническое задание](./docs/tech-spec.md) - архитектура и используемые технологии
- [Требования](./docs/requirements/)
  - [Бизнес-требования](./docs/requirements/business.md)
  - [Пользовательские сценарии](./docs/requirements/user.md)
  - [Нефункциональные аспекты](./docs/requirements/non-functional.md)

## 🛠️ Быстрый старт

### Предварительные требования
- Python 3.10+
- PostgreSQL 14+ или SQLite3
- JWT-ключ для аутентификации

```bash
# Установка зависимостей
pip install -r requirements.txt

# Инициализация БД
psql -f database/schema.sql
