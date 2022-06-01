DROP DATABASE IF EXISTS Nordic_Motorhomes;
CREATE DATABASE IF NOT EXISTS Nordic_Motorhomes;

USE Nordic_Motorhomes;

CREATE TABLE IF NOT EXISTS motorhomes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    brand varchar(255),
    model varchar(255),
    capacity int(10),
    reg_number varchar(255),
    base_price float(10),
    mileage int(10),
    category varchar(255),
    image varchar(500)
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
    driving_licence_number varchar(12)
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
    customer_ID INT,
    start_date date,
    pick_up_time time,
    end_date date,
    motorhome_ID INT,
    employee_ID INT,
    pick_up_location varchar(255),
    drop_off_location varchar(255),
    total_price float(10),
    fuel_level float(10),
    FOREIGN KEY (customer_ID) REFERENCES customers(ID),
    FOREIGN KEY (motorhome_ID) REFERENCES motorhomes(ID),
    FOREIGN KEY (employee_ID) REFERENCES employees(ID)
);

CREATE TABLE IF NOT EXISTS booking_extras (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    booking_ID INT,
    extra_ID INT,
    FOREIGN KEY (booking_ID) REFERENCES bookings(ID),
    FOREIGN KEY (extra_ID) REFERENCES extras(ID)

);

CREATE TABLE IF NOT EXISTS seasons (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    name varchar(10),
    start_month int,
    end_month int,
    percentage float
);

CREATE TABLE IF NOT EXISTS cancellation_fees (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    name varchar(255),
    max_days_before INT,
    min_days_before INT,
    percentage double,
    minimum double
);

CREATE TABLE IF NOT EXISTS motorhomes_to_check (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    motorhome_ID INT,
    FOREIGN KEY (motorhome_ID) REFERENCES motorhomes(ID)
);

CREATE TABLE IF NOT EXISTS motorhomes_to_clean (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    motorhome_ID INT,
    FOREIGN KEY (motorhome_ID) REFERENCES motorhomes(ID)
);

CREATE TABLE IF NOT EXISTS past_bookings (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    booking_ID INT,
    FOREIGN KEY (booking_ID) REFERENCES bookings(ID)
);

CREATE TABLE IF NOT EXISTS active_bookings (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    booking_ID INT,
    FOREIGN KEY (booking_ID) REFERENCES bookings(ID)
);

CREATE TABLE IF NOT EXISTS future_bookings (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    booking_ID INT,
    FOREIGN KEY (booking_ID) REFERENCES bookings(ID)
);

CREATE TABLE IF NOT EXISTS cancelled_bookings (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    booking_ID INT,
    fee_ID INT,
    FOREIGN KEY (fee_ID) REFERENCES cancellation_fees(ID),
    FOREIGN KEY (booking_ID) REFERENCES bookings(ID)
);

CREATE TABLE IF NOT EXISTS system_variables (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    name varchar(255),
    value INT
);


