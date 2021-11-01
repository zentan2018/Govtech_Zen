-- Creation of car table
CREATE TABLE IF NOT EXISTS car (
  car_id INT NOT NULL,
  manufacturer varchar(250) NOT NULL,
  model_name varchar(250) NOT NULL,
  serial_number varchar(250) NOT NULL,
  weight varchar(250) NOT NULL,
  price DECIMAL(20,3) NOT NULL,,
  PRIMARY KEY (car_id)
);

-- Creation of transaction table
CREATE TABLE IF NOT EXISTS transaction (
  transaction_id INT NOT NULL,
  customer_name varchar(250) NOT NULL,
  customer_phone varchar(250) NOT NULL,
  salesperson_name varchar(250) NOT NULL,
  datetime_sale TIMESTAMP,
  PRIMARY KEY (transaction_id),
  CONSTRAINT fk_car_id
      FOREIGN KEY(car_id) 
	  REFERENCES car(car_id)
);


