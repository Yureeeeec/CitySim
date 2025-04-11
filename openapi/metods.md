## 📋 Таблица методов API

| Метод | Путь                         | Описание                   | Параметры                   | Тело запроса                        | Ответы                        |
|-------|------------------------------|----------------------------|-----------------------------|-------------------------------------|-------------------------------|
| POST  | /auth/login                  | Авторизация пользователя   | -                           | `{ "username": "", "password": "" }`| 200: `{ "access_token": "" }` |
| POST  | /users                       | Создание пользователя      | -                           | `{ "username": "", "role": "" }`    | 201: Created                  |
| DELETE| /users/{user_id}            | Удаление пользователя      | `user_id` (UUID)            | -                                   | 204: No Content               |
| GET   | /scenarios                   | Список сценариев           | `transport_type=[bus,tram...]` | -                              | 200: ScenarioList             |
| POST  | /scenarios/{id}/restore     | Восстановление версии      | `version`                   | -                                   | 200: OK                       |
| POST  | /simulation                  | Запуск симуляции           | -                           | `{ "scenario_id": "", "parameters": {} }` | 202: CalculationStatus |

