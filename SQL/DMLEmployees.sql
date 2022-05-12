USE nordic_motorhomes;

/* Edit the username and password later,
   make username and password outside the employee? */


INSERT INTO nordic_motorhomes.employees
    (first_name, last_name, phone_number, CPR, title, email, password)
    VALUES ('Simona', 'Kardel', 42345678, 12345678, 'Sales Assistant',
            'simonakardel@gmail.com', '1111');

INSERT INTO nordic_motorhomes.employees
    VALUES (ID, 'Adam', 'Schulz', 42353636, 12234442, 'Owner',
        'adamschulz@gmail.com', '1112');

INSERT INTO nordic_motorhomes.employees
VALUES(ID, 'Wanesa', 'Wintmiller', 42555656, 12525625, 'Bookkeeper',
       'wanesawintmiller@gmail.com', '1113');

INSERT INTO nordic_motorhomes.employees
VALUES(ID, 'Carl', 'Lund', 42555656, 12525625, 'Sales Assistant1',
       'carllund@gmail.com', '1116');

INSERT INTO nordic_motorhomes.employees
VALUES(ID, 'Samantha', 'Hansen', 42555656, 12525625, 'Sales Assistant2',
       'samanthahansen@gmail.com', '1117');

INSERT INTO nordic_motorhomes.employees
VALUES(ID, 'Mathilde', 'Simonsen', 42555656, 12525625, 'Sales Assistant3',
       'mathildesimonsen@gmail.com', '1118');

INSERT INTO nordic_motorhomes.employees
VALUES (ID, 'Emie', 'Abalora', 42342526, 1222114, 'Cleaning Staff1',
        'emieabalora@gmail.com', '1114');

INSERT INTO nordic_motorhomes.employees
VALUES (ID, 'James','Prat', 42356635, 12334255, 'Cleaning Staff2',
        'jamesprat@gmail.com', '1115');

INSERT INTO nordic_motorhomes.employees
VALUES(ID, 'Thomas', 'Villumsen', 42256635, 13242536, 'Auto Mechanic',
       'thomasvillumnse@gmail.com', '1119');

/* UPDATE nordic_motorhomes.employees
SET CPR = 11222114
WHERE email = 'emieabalora@gmail.com'; */
