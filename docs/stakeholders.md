# 👥 Заинтересованные стороны проекта CitySim

## 1. Муниципальный транспортный департамент
📌 **Роль**: Основной заказчик системы  
🎯 **Ключевые цели**:
- Оптимизация маршрутной сети для снижения перегруженности
- Сокращение времени согласования изменений на 40%
- Получение аналитических отчетов для бюджетного планирования
- Тестирование гипотез до их внедрения в реальную инфраструктуру

## 2. Транспортные аналитики / урбанисты
📌 **Роль**: Основные пользователи системы  
🎯 **Ключевые цели**:
- Проведение what-if анализа с разными параметрами
- Визуализация транспортных потоков в динамике
- Сравнение альтернативных сценариев маршрутизации
- Экспорт данных для научных исследований

## 3. ИТ-команда (внедрение)
📌 **Роль**: Технические интеграторы  
🎯 **Ключевые цели**:
- Интеграция с муниципальными системами через API
- Настройка автоматического импорта GTFS-данных
- Обеспечение отказоустойчивости системы
- Мониторинг производительности в production-среде

## 4. Горожане / Пассажиры
📌 **Роль**: Конечные бенефициары  
🎯 **Ключевые цели**:
- Сокращение времени в пути на 15-20%
- Уменьшение переполненности транспорта
- Улучшение доступности отдаленных районов
- Прозрачность изменений маршрутной сети

## 5. Команда разработки CitySim
📌 **Роль**: Создатели системы  
🎯 **Ключевые цели**:
- Реализация модуля динамического моделирования
- Обеспечение обработки 100+ параллельных сценариев
- Достижение 99.9% uptime системы
- Интеграция с open-source экосистемой (OpenStreetMap, GTFS)

## 🔄 Диаграмма взаимодействия стейкхолдеров CitySim

## 1. Mermaid-диаграмма
```mermaid
graph TD
    A[Муниципальный транспортный департамент] -->|Предоставляет требования| B(CitySim)
    B -->|Формирует отчеты| A
    C[Транспортные аналитики] -->|Используют для моделирования| B
    B -->|Дает инструменты анализа| C
    D[ИТ-команда] -->|Интегрирует и поддерживает| B
    B -->|Предоставляет API/логи| D
    E[Горожане] -->|Косвенно влияют через обратную связь| A
    A -->|Улучшает маршруты на основе данных| E
    F[Команда разработки] -->|Развивает систему| B
    B -->|Предоставляет метрики использования| F
