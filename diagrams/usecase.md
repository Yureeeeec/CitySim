# Диаграмма вариантов использования (Use Cases)

![image](https://github.com/user-attachments/assets/c2e23dcb-52f9-45a9-b852-f7f776986382)

## 👤 Роль: **Аналитик**

### 🔹 Use Case 1: Импорт данных (GTFS/CSV)
- **Основной поток**:
  1. Загрузка файла через интерфейс.
  2. Автоматическая валидация формата и структуры данных.
  3. Отображение предпросмотра данных на карте.
- **Альтернативный поток**:
  - Если файл некорректный → система показывает ошибку с описанием проблемы (например, "Отсутствует поле 'stop_id'").

### 🔹 Use Case 2: Редактирование маршрутов
- **Детализация**:
  - Добавление остановки: выбор координат на карте или ввод вручную.
  - Удаление остановки: проверка на "висячие" маршруты (если осталась 1 остановка → предупреждение).
  - Настройка параметров: 
    - Валидация интервалов (например, "Интервал не может быть меньше 1 минуты").

### 🔹 Use Case 3: Моделирование сценариев
- **Подшаги**:
  1. Задание условий (рост пассажиропотока, закрытие улиц).
  2. Запуск симуляции с прогресс-баром.
  3. Просмотр промежуточных результатов в реальном времени.
  4. Возможность остановки/паузы расчета.

### 🔹 Use Case 4: Генерация отчетов
- **Расширение**:
  - Выбор формата (PDF/Excel/CSV).
  - Настройка шаблонов отчетов (логотип, заголовки).
  - Автоматическая отправка на email с подтверждением доставки.

---

## 👤 Роль: **Администратор**

### 🔹 Use Case 1: Управление пользователями
- **Детализация**:
  - Назначение ролей с гибкими правами (например, "Аналитик-стажер" → только просмотр).
  - Аудит действий: журнал изменений (кто, когда, что изменил).
  - Восстановление удаленных учетных записей (корзина с TTL=30 дней).

### 🔹 Use Case 2: Настройка системы
- **Дополнения**:
  - Конфигурация интеграций: API-ключи для картографических сервисов.
  - Настройка квот: 
    - Максимальный размер файла для импорта (например, 100 МБ).
    - Лимит одновременных симуляций на пользователя.

### 🔹 Use Case 3: Безопасность
- **Новые сценарии**:
  - Принудительная смена пароля каждые 90 дней.
  - Двухфакторная аутентификация для администраторов.
  - Блокировка IP при подозрительной активности (например, 5 неудачных попыток входа).

---

## 👤 Роль: **Наблюдатель**

### 🔹 Use Case 1: Просмотр отчетов
- **Улучшения**:
  - Сравнение нескольких сценариев в одном представлении (слайдер для выбора версий).
  - Фильтрация данных по дате, типу транспорта, району.

### 🔹 Use Case 2: Экспорт данных
- **Дополнения**:
  - Выбор диапазона данных для экспорта (например, "Только пиковые часы").
  - Экспорт сырых метрик в CSV для стороннего анализа.

### 🔹 Use Case 3: Комментирование
- **Новый функционал**:
  - Добавление комментариев к отчетам (видимых для Аналитика и Администратора).
  - Прикрепление файлов к комментариям (например, скриншоты проблемных зон).
