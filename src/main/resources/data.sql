DROP TABLE IF EXISTS employee;

CREATE TABLE employee (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  first_name VARCHAR(250) NOT NULL,
  last_name VARCHAR(250) NOT NULL,
  salary INT DEFAULT NULL
);

INSERT INTO employee (first_name, last_name, salary) VALUES
  ('John', 'Mathew', '20000'),
  ('Ashi', 'C', '30000'),
  ('Diana', 'Martin', '28000');