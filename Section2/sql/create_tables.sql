CREATE DATABASE car_dealership;
\c car_dealership;

-- Creation of salesperson table
CREATE TABLE IF NOT EXISTS salesPerson (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL
);

-- Creation of manufacture table
CREATE TABLE IF NOT EXISTS manufacture (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL
);

-- Creation of car table
CREATE TABLE IF NOT EXISTS car (
    id SERIAL PRIMARY KEY,
    manufacture_id INTEGER NOT NULL,
    model VARCHAR NOT NULL,
    serial VARCHAR NOT NULL,
    weight INTEGER NOT NULL,
    price INTEGER NOT NULL,
    CONSTRAINT fk_manufacture
      FOREIGN KEY(manufacture_id)
	  REFERENCES manufacture(id)
);

-- Creation of transaction table
CREATE TABLE IF NOT EXISTS transaction (
    id SERIAL PRIMARY KEY,
    c_name VARCHAR NOT NULL,
    c_phone VARCHAR NOT NULL,
    salesPerson_id INTEGER NOT NULL,
    car_id INTEGER NOT NULL,
    date TIMESTAMP NOT NULL,
    CONSTRAINT fk_salesPerson
      FOREIGN KEY(salesPerson_id)
      REFERENCES salesPerson(id),
    CONSTRAINT fk_car
      FOREIGN KEY (car_id)
      REFERENCES car(id)
);


