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