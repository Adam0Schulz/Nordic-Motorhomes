
CREATE DATABASE IF NOT EXISTS Nordic_Motorhomes;
/*DROP DATABASE Nordic_Motorhomes;*/

USE Nordic_Motorhomes;


ALTER TABLE motorhomes ALTER COLUMN availability boolean;

DESC motorhomes;

CREATE TABLE IF NOT EXISTS motorhomes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    brand varchar(255),
    model varchar(255),
    capacity int(10),
    availability tinyint(1),
    reg_number varchar(255),
    base_price float(10),
    mileage int(10)
);

CREATE TABLE IF NOT EXISTS extras (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    type varchar(255),
    price float(10)
);

CREATE TABLE IF NOT EXISTS customers (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    first_name varchar(255),
    last_name varchar(255),
    phone_number int(12),
    email varchar(400),
    CPR int(10)
);

CREATE TABLE IF NOT EXISTS employees (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    first_name varchar(255),
    last_name varchar(255),
    phone_number int(12),
    CPR int(10),
    title varchar(255),
    email varchar(255),
    password varchar(255)
);

CREATE TABLE IF NOT EXISTS bookings (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    customer_ID int(10),
    start_date date,
    pick_up_time time,
    end_date date,
    motorhome_ID int(10),
    employee_ID int(10),
    pick_up_loc varchar(255),
    drop_off_loc varchar(255),
    total_price float(10),
    fuel_level float(10),
    FOREIGN KEY (customer_ID) REFERENCES customers(ID),
    FOREIGN KEY (motorhome_ID) REFERENCES motorhomes(ID),
    FOREIGN KEY (employee_ID) REFERENCES employees(ID)
);

CREATE TABLE IF NOT EXISTS booking_extras (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    booking_ID int(10) ,
    extra_ID int(10),
    FOREIGN KEY (booking_ID) REFERENCES bookings(ID),
    FOREIGN KEY (extra_ID) REFERENCES extras(ID)

);

