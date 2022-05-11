
CREATE DATABASE IF NOT EXISTS Nordic_Motorhomes;
/*DROP DATABASE Nordic_Motorhomes;*/

USE Nordic_Motorhomes;

CREATE TABLE IF NOT EXISTS motorhome (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    brand varchar(255),
    model varchar(255),
    capacity int(10),
    availability BOOLEAN,
    reg_number varchar(255),
    base_price float(10),
    mileage int(10)
);

CREATE TABLE IF NOT EXISTS extra (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    type varchar(255),
    price float(10)
);

CREATE TABLE IF NOT EXISTS customer (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    first_name varchar(255),
    last_name varchar(255),
    phone_number int(12),
    CPR int(10)
);

CREATE TABLE IF NOT EXISTS employee (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    first_name varchar(255),
    last_name varchar(255),
    phone_number int(12),
    CPR int(10),
    title varchar(255),
    email varchar(255),
    password varchar(255)
);

CREATE TABLE IF NOT EXISTS booking (
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
    FOREIGN KEY (customer_ID) REFERENCES customer(ID),
    FOREIGN KEY (motorhome_ID) REFERENCES motorhome(ID),
    FOREIGN KEY (employee_ID) REFERENCES employee(ID)
);

CREATE TABLE IF NOT EXISTS booking_extras (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    booking_ID int(10) ,
    extra_ID int(10),
    FOREIGN KEY (booking_ID) REFERENCES booking(ID),
    FOREIGN KEY (extra_ID) REFERENCES extra(ID)

);

