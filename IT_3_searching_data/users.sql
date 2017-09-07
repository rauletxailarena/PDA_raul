DROP TABLE IF EXISTS users;

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age INT,
  country VARCHAR(255)
);

INSERT INTO users (name, age, country) VALUES ('Raul', 29, 'Spain');
INSERT INTO users (name, age, country) VALUES ('Clark', 20, 'UK');
INSERT INTO users (name, age, country) VALUES ('Baker', 30, 'Germany');
INSERT INTO users (name, age, country) VALUES ('Evans', 19, 'UK');
INSERT INTO users (name, age, country) VALUES ('Frank', 30, 'France');
INSERT INTO users (name, age, country) VALUES ('Ghosh', 27, 'Norway');
INSERT INTO users (name, age, country) VALUES ('Hills', 25, 'US');
INSERT INTO users (name, age, country) VALUES ('Irwin', 36, 'Australia');
INSERT INTO users (name, age, country) VALUES ('Jones', 29, 'Germany');
INSERT INTO users (name, age, country) VALUES ('Klein', 40, 'Australia');
INSERT INTO users (name, age, country) VALUES ('Reily', 29, 'New Zeland');
INSERT INTO users (name, age, country) VALUES ('Trott', 24, 'Italy');
INSERT INTO users (name, age, country) VALUES ('Usman', 29, 'Austria');
INSERT INTO users (name, age, country) VALUES ('Valdo', 50, 'Italy');
INSERT INTO users (name, age, country) VALUES ('Zafar', 42, 'Morocco');
INSERT INTO users (name, age, country) VALUES ('Alvaro', 24, 'Spain');
INSERT INTO users (name, age, country) VALUES ('Vladimir', 18, 'Russia');
