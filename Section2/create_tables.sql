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



-- insert salesperson
INSERT INTO salesPerson (name) VALUES ('John');
INSERT INTO salesPerson (name) VALUES ('Jane');
INSERT INTO salesPerson (name) VALUES ('Mary');
INSERT INTO salesPerson (name) VALUES ('Bob');

-- insert car manufacture
INSERT INTO manufacture (name) VALUES ('Ford');
INSERT INTO manufacture (name) VALUES ('Honda');
INSERT INTO manufacture (name) VALUES ('Toyota');
INSERT INTO manufacture (name) VALUES ('Nissan');



-- insert cars
INSERT INTO car (manufacture_id,model,serial,weight,price) VALUES (1,'Fiesta','12345',1000,10000);
INSERT INTO car (manufacture_id,model,serial,weight,price) VALUES (2,'Accord','54321',2000,20000);
INSERT INTO car (manufacture_id,model,serial,weight,price) VALUES (3,'Camry','98765',3000,30000);
INSERT INTO car (manufacture_id,model,serial,weight,price) VALUES (4,'Altima','45678',4000,40000);

-- insert transaction
INSERT INTO "transaction" (c_name,c_phone,salesPerson_id,car_id,date) VALUES ('Kelly','12345',1,1,NOW()); -- JOHN - FIESTA
INSERT INTO "transaction" (c_name,c_phone,salesPerson_id,car_id,date) VALUES ('Jolene','12345',1,1,NOW()); -- JOHN - FIESTA
INSERT INTO "transaction" (c_name,c_phone,salesPerson_id,car_id,date) VALUES ('Jessica','54321',2,2,NOW()); -- JANE - ACCORD
INSERT INTO "transaction" (c_name,c_phone,salesPerson_id,car_id,date) VALUES ('Bryan','98765',3,3,NOW()); -- MARY - CAMRY
INSERT INTO "transaction" (c_name,c_phone,salesPerson_id,car_id,date) VALUES ('Branson','45678',4,4,NOW()); -- BOB - ALTIMA
INSERT INTO "transaction" (c_name,c_phone,salesPerson_id,car_id,date) VALUES ('Kelly','12345',3,1,NOW()); -- MARY - FIESTA
INSERT INTO "transaction" (c_name,c_phone,salesPerson_id,car_id,date) VALUES ('Kelly','54321',4,2,NOW()); -- JANE - ACCORD
INSERT INTO "transaction" (c_name,c_phone,salesPerson_id,car_id,date) VALUES ('Jessica','45678',4,1,NOW()); -- BOB  - FIESTA
INSERT INTO "transaction" (c_name,c_phone,salesPerson_id,car_id,date) VALUES ('Branson','12345',3,2,NOW()); -- MARY - ACCORD
INSERT INTO "transaction" (c_name,c_phone,salesPerson_id,car_id,date) VALUES ('Branson','54321',4,4,NOW()); -- JANE - ALTIMA
