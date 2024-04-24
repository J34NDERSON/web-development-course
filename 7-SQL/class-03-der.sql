DROP TABLE IF EXISTS clients;
CREATE TABLE IF NOT EXISTS clients (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR NOT NULL,
  cpf VARCHAR UNIQUE NOT NULL,
  street VARCHAR,
  neighborhood VARCHAR,
  city VARCHAR
);

DROP TABLE IF EXISTS phones;
CREATE TABLE IF NOT EXISTS phones (
  number VARCHAR NOT NULL,
  id_client INTEGER NOT NULL,
  PRIMARY KEY (number, id_client),
  FOREIGN KEY (id_client) REFERENCES clients(id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS products;
CREATE TABLE IF NOT EXISTS products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR NOT NULL,
  price INTEGER NOT NULL,
  description VARCHAR
);

DROP TABLE IF EXISTS sales;
CREATE TABLE IF NOT EXISTS sales (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  id_client INTEGER NOT NULL,
  id_product INTEGER NOT NULL,
  amount INTEGER NOT NULL,
  date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (id_client) REFERENCES clients(id) ON DELETE CASCADE
  FOREIGN KEY (id_product) REFERENCES products(id)
);

INSERT INTO clients (name, cpf) VALUES  ('Mateus', '000.000.000-01'),
('Pablo', '000.000.000-02'),
('Ant Carlos', '000.000.000-03');

SELECT *  FROM phones;
INSERT INTO phones (number, id_client) VALUES 
('(88) 9900-3555', 1),
('(88) 9900-3888', 2),
('(88) 9900-3999', 3);

SELECT * FROM products;
INSERT INTO products (name, price) VALUES ('PC Gamer', 4000),
('Gabinete', 350),
('Monitor', 1000),
('Cadeira', 1500),
('Ram 16GB', 200),
('SSD', 250),
('RTX', 300),
('Mouse', 200);

SELECT * FROM sales;
INSERT INTO sales (id_client, id_product, amount) VALUES
(1, 2, 3),
(1, 2, 3),
(1, 2, 3);

SELECT clients.name, phones.number
FROM clients INNER JOIN phones
ON clients.id == phones.id_client;

SELECT clients.name, products.name, sales.amount, products.price, sales.amount * products.price as Total
FROM clients
INNER JOIN sales ON sales.id_client == clients.id
INNER JOIN products on sales.id_product == products.id;