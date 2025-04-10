## Скрипт для создания базы данных (DDL).

-- Создание таблиц для пользователей, сценариев, маршрутов, расчетов и метрик

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role VARCHAR(20) NOT NULL
);

CREATE TABLE scenarios (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id INTEGER REFERENCES users(id),
  name VARCHAR(100) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE routes (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  scenario_id UUID REFERENCES scenarios(id) ON DELETE CASCADE,
  name VARCHAR(100),
  type VARCHAR(20) -- e.g. bus, tram, metro
);

CREATE TABLE stops (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  route_id UUID REFERENCES routes(id) ON DELETE CASCADE,
  name VARCHAR(100),
  lat DOUBLE PRECISION,
  lon DOUBLE PRECISION,
  stop_order INTEGER
);

CREATE TABLE calculations (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  scenario_id UUID REFERENCES scenarios(id) ON DELETE CASCADE,
  status VARCHAR(20), -- queued, done, error
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE metrics (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  calculation_id UUID REFERENCES calculations(id) ON DELETE CASCADE,
  coverage_percent NUMERIC(5,2),
  avg_travel_time NUMERIC(6,2),
  overload_score NUMERIC(4,2)
);
