CREATE TABLE IF NOT EXISTS CONFIG (
  CONFIG_KEY VARCHAR(128) PRIMARY KEY,
  CONFIG_VALUE VARCHAR(512));

CREATE TABLE IF NOT EXISTS EVENTS (
  id          MEDIUMINT    NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name        VARCHAR(256) NOT NULL,
  description TEXT,
  start_time  DATETIME,
  finish_time DATETIME,
  image_url   VARCHAR(128)
);

CREATE TABLE IF NOT EXISTS categories (
  NAME VARCHAR(128) PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS events_categories (
  event_ext_id MEDIUMINT,
  event_system_id VARCHAR(64),
  categories_name VARCHAR(128)
);

docker run --name mysql --net=eventsnet -e MYSQL_ROOT_PASSWORD=rootPassword mysql --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci