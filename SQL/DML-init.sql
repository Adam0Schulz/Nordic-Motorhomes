USE nordic_motorhomes;

/* ----------- System Variables -----------*/
SELECT next_val INTO @next FROM system_variable_sequence;
INSERT INTO system_variables (id, name, value)
VALUES (@next, 'additional drop-off kilometer fee', 0.7);
UPDATE system_variable_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM system_variable_sequence;
INSERT INTO system_variables (id, name, value)
VALUES (@next, 'motorhome availability buffer', 5);
UPDATE system_variable_sequence
SET next_val = @next + 1;

/* ----------- Employees -----------*/
SELECT next_val INTO @next FROM employee_sequence;
INSERT INTO employees (id, cpr, email, first_name, last_name, password, phone_number, title)
VALUES (@next, 1122336655, 'a@s.dk', 'Adam', 'Schulz', '1', 52688455, 'sales assistant');
UPDATE employee_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM employee_sequence;
INSERT INTO employees (id, cpr, email, first_name, last_name, password, phone_number, title)
VALUES (@next, 1702948665, 's@k.dk', 'Simona', 'Kardel', '1', 8968846, 'sales assistant');
UPDATE employee_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM employee_sequence;
INSERT INTO employees (id, cpr, email, first_name, last_name, password, phone_number, title)
VALUES (@next, 1003284, 'e@a.dk', 'Emie', 'Abalora', '1', 64738393, 'sales assistant');
UPDATE employee_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM employee_sequence;
INSERT INTO employees (id, cpr, email, first_name, last_name, password, phone_number, title)
VALUES (@next, 1010024567, 'w@w.dk', 'Wanesa', 'Wintmiller', '1', 74839454, 'sales assistant');
UPDATE employee_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM employee_sequence;
INSERT INTO employees (id, cpr, email, first_name, last_name, password, phone_number, title)
VALUES (@next, 1902902345, 'jonasp@gmail.com', 'Jonas', 'Petersen', '1', 83945678, 'cleaning staff');
UPDATE employee_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM employee_sequence;
INSERT INTO employees (id, cpr, email, first_name, last_name, password, phone_number, title)
VALUES (@next, 2903882345, 'mariabryde@gmail.com', 'Maria', 'Bryde', '1', 64839454, 'cleaning staff');
UPDATE employee_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM employee_sequence;
INSERT INTO employees (id, cpr, email, first_name, last_name, password, phone_number, title)
VALUES (@next, 2207903457, 'thomaswilkinson@gmail.com', 'Thomas', 'Wilkinson', '1', 83945848, 'bookkeeper');
UPDATE employee_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM employee_sequence;
INSERT INTO employees (id, cpr, email, first_name, last_name, password, phone_number, title)
VALUES (@next, 1904803456, 'dbeaver@gmail.com', 'Douglas', 'Beaver', '1', 748475432, 'owner');
UPDATE employee_sequence
SET next_val = @next + 1;

/* ----------- Motorhomes -----------*/
SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 550, 'Ford', 5, 11550, 'F-150', 'PP 87 256', 'B', 'src\main\resources\static\images\motorhome1.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 220, 'Scania', 2, 12360, 'Mansland', 'PP 87 256', 'X', 'src\main\resources\static\images\motorhome2.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 220, 'Roller Team', 2, 53747, 'Kronos', 'AB 44 887', 'B');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 220, 'Roller Team', 2, 53747, 'Kronos', 'AB 44 887', 'B', 'src\main\resources\static\images\motorhome3.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 315, 'Roller Team', 4, 103854, 'Zepiro', 'AC 45 877', 'B', 'src\main\resources\static\images\motorhome4.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 450, 'Roller Team', 5, 153858, 'Granduca', 'AD 46 868', 'B', 'src\main\resources\static\images\motorhome5.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 550, 'Roller Team', 6, 50576, 'Livingstone Advance', 'AE 46 857', 'B', 'src\main\resources\static\images\motorhome6.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 200, 'Auto-Sleeper', 2, 32456, 'Compact Plus', 'BA 35 107', 'B', 'src\main\resources\static\images\motorhome7.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 210, 'Auto-Sleeper', 4, 55384, 'Premium Luxury', 'BB 36 108', 'B', 'src\main\resources\static\images\motorhome8.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 250, 'Auto_Sleeper', 5, 113483, 'California Automatic', 'BC 37 108', 'B', 'src\main\resources\static\images\motorhome9.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 210, 'Carthago', 2, 65465, 'Urban Plus', 'CA 51 234', 'B', 'src\main\resources\static\images\motorhome11.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 190, 'Carthago', 4, 44567, 'Urban Luxury', 'CB 52 244', 'B', 'src\main\resources\static\images\motorhome12.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 210, 'Carthago', 5, 86754, 'Family Pax 5', 'CC 53 264', 'B', 'src\main\resources\static\images\motorhome1.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 350, 'Carthago', 6, 76457, 'Family Luxury', 'CD 55 134', 'B', 'src\main\resources\static\images\motorhome2.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 225, 'Adria', 2, 34757, 'Adria Manual', 'DA 61 133', 'A', 'src\main\resources\static\images\motorhome3.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 245, 'Adria', 4, 34656, 'Sunlight A70', 'DB 66 144', 'C', 'src\main\resources\static\images\motorhome4.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 380, 'Adria', 5, 85867, 'Adria Matrix Plus', 'DC 67 122', 'C', 'src\main\resources\static\images\motorhome5.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 450, 'Adria', 6, 75689, 'Family Plus', 'DD 69 111', 'C', 'src\main\resources\static\images\motorhome6.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 260, 'Malibu', 3, 64578, 'Compact Plus', 'EA 44 203', 'A', 'src\main\resources\static\images\motorhome7.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 300, 'Malibu', 4, 48586, 'Marco Polo', 'EB 41 213', 'A', 'src\main\resources\static\images\motorhome8.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 400, 'Malibu', 5, 37565, 'Atlas', 'EC 40 503', 'C', 'src\main\resources\static\images\motorhome9.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 550, 'Malibu', 6, 37575, 'California', 'ED 49 206', 'C', 'src\main\resources\static\images\motorhome10.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 200, 'McLuis Fusion', 2, 37455, 'California Automatic', 'FA 22 010', 'A', 'src\main\resources\static\images\motorhome11.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 400, 'McLuis Fusion', 4, 38458, 'Sporty', 'FB 21 020', 'C', 'src\main\resources\static\images\motorhome12.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 420, 'McLuis Fusion', 5, 84564, 'Atlas', 'FC 24 030', 'C', 'src\main\resources\static\images\motorhome1.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 550, 'McLuis Fusion', 6, 46564, 'Family Group D', 'FD 25 040', 'C', 'src\main\resources\static\images\motorhome2.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 250, 'Ecoline', 2, 99876, 'Ecoline 2', 'JA 71 301', 'A', 'src\main\resources\static\images\motorhome3.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 320,'Ecoline', 4, 85865, '4 Camper Auto', 'JB 72 321', 'C', 'src\main\resources\static\images\motorhome4.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 410, 'Ecoline', 4, 34567, 'Ecoline 4', 'JC 73 331', 'A', 'src\main\resources\static\images\motorhome5.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 480, 'Ecoline', 6, 46574, 'Ecoline 6', 'JD 74 341', 'C', 'src\main\resources\static\images\motorhome6.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 180, 'Winnebago Ekko', 2, 46574, 'Nomad', 'HA 80 611', 'A', 'src\main\resources\static\images\motorhome7.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 250, 'Winnebago Ekko', 4, 64758, 'Dawn Patrol', 'HB 83 621', 'C', 'src\main\resources\static\images\motorhome8.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 320, 'Winnebago Ekko', 5, 74653, 'Compact Luxury', 'HC 85 661', 'C', 'src\main\resources\static\images\motorhome9.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category, image)
VALUES (@next, 410, 'Winnebago Ekko', 6, 74654, 'Family Standard', 'HD 86 681', 'C', 'src\main\resources\static\images\motorhome10.png');
UPDATE motorhome_sequence
SET next_val = @next + 1;

/* ----------- Customers -----------*/

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Tonya', 'Hudak', 5023906183, 'TonyaTHudak@dayrep.com', 'U6292721184238');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Amber', 'Gardner', 9068424357, 'AmberJGardner@dayrep.com','S04381914');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Tonya', 'Almasi', 5963912383, 'TAlmasi@dayrep.com', 'U124921184271');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Jonathon', 'Cannon', 6143241306, 'eduecureti@jagomail.com','S07985128');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Kristie', 'Curtis', 6182679669, 'KristieECurtis@jourrapide.com','5128523261');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Karen', 'Steffan', 7404160104, 'KarenJSteffan@teleworm.us','J713152314749');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'John', 'Hamby', 9033225697, 'JohnEHamby@dayrep.com','53835678');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Mary', 'Baez', 9702010292, 'Theigs41@cuvox.de','P37780848');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Wayne', 'Hargis', 50677549, 'enumeram@dimana.live','109465194');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Tanya', 'Shepard', 52468734, 'rotm10@gmailiz.com','VYG400613');
UPDATE customer_sequence
SET next_val = @next + 1;


SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Sawa', 'Voronov', 54578732, 'kiltie@gkqil.com','478774238');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Ksenia', 'Czarnecka', 696601426, 'KseniaCzarnecka@rhyta.com','15MUT21502');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Jolanta', 'Kucharska', 663470396, 'JolantaKucharska@armyspy.com','K57831779');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Andrzej', 'Nowicki', 531788438, 'tbasuk@dmxs8.com','789708666');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Ania', 'Walczak', 692515854, 'jkjk@nproxi.com','VC077725');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Sada', 'Robnik', 041150355, 'SadaRobnik@armyspy.com','0792329262765');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Huska', 'Gazdek', 040713380, 'clubbers@cuedigy.com','88LQH94540');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Luba', 'Soukup', 51854156, 'thebza10@osmye.com','GXEVVPT26940');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Ingrid', 'Simensen', 97732793, 'Simensen@teleworm.com','SQQ522867');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Sibal', 'Handal', 49639182, 'du3ki6@dimana.live','57DBX25640');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Qatadah', 'Masih', 46546538, 'neoromantik23@gre.com','9213001');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Ruwaid', 'Bishara', 606996997982, 'mannixbb@kangsua.com','ZKO292405');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Rafael', 'Pereira', 21973820, 'imegasuper@gmailvn.net','12BTU31758');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Leonor', 'Ferreira', 601692716, 'auto215827@cuedigy.com','SC044281E');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Manuela', 'Cardoso', 6018253895, 'placdday@gmailiz.com','E22170591');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Camila', 'Gomes', 36463584, 'Gomes123@armyspy.com','FUHRWIU00931');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Jens', 'Wirtz', 6853139967, 'WirtzJ@gmail.com','293882759');
UPDATE customer_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM customer_sequence;
INSERT INTO employees (id, first_name, last_name, phone_number, email, driving_license_number)
VALUES (@next, 'Ulrike', 'Eberhart', 040668945, 'suava69@gmailni.com','E51568026');
UPDATE customer_sequence
SET next_val = @next + 1;

/* ----------- Extras -----------*/

SELECT next_val INTO @next FROM extra_sequence;
INSERT INTO extras (id, type, price)
VALUES (@next,'bike rack' ,100);
UPDATE extra_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM extra_sequence;
INSERT INTO extras (id, type, price)
VALUES (@next,'bed linen' ,50);
UPDATE extra_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM extra_sequence;
INSERT INTO extras (id, type, price)
VALUES (@next,'child seat' ,10);
UPDATE extra_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM extra_sequence;
INSERT INTO extras (id, type, price)
VALUES (@next,'picnic table' ,70);
UPDATE extra_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM extra_sequence;
INSERT INTO extras (id, type, price)
VALUES (@next,'chairs' ,70);
UPDATE extra_sequence
SET next_val = @next + 1;

/* ----------- Bookings -----------*/

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-01-05','083000', '2022-01-15',1,1, 'Copenhagen Airport', 'Korsdalsvej 90', 2500, 0.7);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-01-06','103000', '2022-01-20',2,2, 'Copenhagen Airport', 'Vognporten 14', 2300, 0.9);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-02-03','120000', '2022-02-13',3,3, 'Ishøj Strand Camping', 'Ishøj Strand Camping', 2100, 0.75);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-02-04','120000', '2022-02-10',4,4, 'Damhusengen', 'Nordic Motorhomes Office', 1900, 0.55);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-02-08','080000', '2022-02-20',5,1, 'Brøndby Ny Rideklub', 'Nordic Motorhomes Office', 2800 , 0.55);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-02-09','083000', '2022-02-30',6,3, 'Brøndby Ny Rideklub', 'Nordic Motorhomes Office', 3500, 0.25);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-02-11','083000', '2022-02-15',7,2, 'Nordic Motorhomes Office', 'Nordic Motorhomes Office', 1900, 0.35);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-02-17','080000', '2022-02-30',8,4, 'Nordic Motorhomes Office', 'Nordic Motorhomes Office', 2750, 0.95);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-02-22','083000', '2022-02-28',9,4, 'Copenhagen Airport', 'Nordic Motorhomes Office', 3250, 0.2);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-02-28','123000', '2022-03-20',10,1, 'Copenhagen Airport', 'Geels Skov', 6700, 0.15);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-03-12','080000', '2022-03-20',11,3, 'Øster Allé 60', 'Raadvad', 4510, 0.38);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-03-16','090000', '2022-03-29',12,2, 'Øster Allé 60', 'Ishøj Strand Camping', 3720, 0.35);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-04-01','100000', '2022-04-15',13,1, 'Vestbad', 'Vestskoven', 2640, 0.93);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-04-03','110000', '2022-04-15',14,2, 'Egeparken', 'Egelundsparken', 3140, 0.71);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-04-06','120000', '2022-04-12',15,4, 'Copenhagen Airport', 'Hareskoven', 4210, 0.95);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-05-01','120000', '2022-05-28',16,1, 'Copenhagen Airport', 'Hareskovhytten', 6220, 0.4);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-05-05','060000', '2022-06-01',17,1, 'Salvadparken', 'Bumlebjerg', 4530, 0.55);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-05-06','093000', '2022-05-30',19,2, 'Nordic Motorhomes Office', 'Nordic Motorhomes Office', 7720, 0.6);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-05-11','083000', '2022-05-24',20,3, 'Nordic Motorhomes Office', 'Nordic Motorhomes Office', 2910, 0.91);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-05-20','140000', '2022-06-16',21,4, 'Copenhagen Airport', 'Sophienholm', 7100, 0.72);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-05-25','120000', '2022-06-12',22,2, 'Copenhagen Airport', 'Hareskoven', 3830, 0.66);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-06-06','073000', '2022-06-16',23,1, 'Keld Tørnqvist', 'Baunesletten Hundeskov', 4230, 0.8);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-06-11','113000', '2022-06-30',24,1, 'Edith Rodes Vej 6', 'Nordic Motorhomes Office', 8700, 0.81);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-06-12','153000', '2022-06-20',25,3, 'Nordic Motorhomes Office', 'Nordic Motorhomes Office', 6100, 0.3);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-06-18','073000', '2022-07-10',26,4, 'Copenhagen Airport', 'Judithsvej 7', 9100, 0.28);
UPDATE booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_sequence;
INSERT INTO bookings (id, customer_id, start_date, pick_up_date, end_date, motorhome_id, employee_id, pick_up_location, drop_off_location, total_price, fuel_level)
VALUES (@next,1 ,'2022-06-18','123000', '2022-07-20',27,4, 'Copenhagen Airport', 'Ishøj Strand Camping', 6700, 0.1);
UPDATE booking_sequence
SET next_val = @next + 1;

/* ----------- booking_extras -----------*/

SELECT next_val INTO @next FROM booking_extras_sequence;
INSERT INTO booking_extras (id, booking_id, extra_id)
VALUES (@next, 10, 1 );
UPDATE booking_extras_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_extras_sequence;
INSERT INTO booking_extras (id, booking_id, extra_id)
VALUES (@next, 15, 2 );
UPDATE booking_extras_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_extras_sequence;
INSERT INTO booking_extras (id, booking_id, extra_id)
VALUES (@next, 16, 3 );
UPDATE booking_extras_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_extras_sequence;
INSERT INTO booking_extras (id, booking_id, extra_id)
VALUES (@next, 21, 4 );
UPDATE booking_extras_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM booking_extras_sequence;
INSERT INTO booking_extras (id, booking_id, extra_id)
VALUES (@next, 24, 1 );
UPDATE booking_extras_sequence
SET next_val = @next + 1;



/* ----------- seasons -----------*/

SELECT next_val INTO @next FROM season_sequence;
INSERT INTO seasons (id, name, start_date, end_date, percentage, minimum)
VALUES (@next, 'spring','2022-03-01','2022-05-31', 50, 180);
UPDATE season_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM season_sequence;
INSERT INTO seasons (id, name, start_date, end_date, percentage, minimum)
VALUES (@next, 'summer','2022-06-01','2022-08-31', 80, 200);
UPDATE season_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM season_sequence;
INSERT INTO seasons (id, name, start_date, end_date, percentage, minimum)
VALUES (@next, 'autumn','2022-09-01','2022-11-30', 50, 100);
UPDATE season_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM season_sequence;
INSERT INTO seasons (id, name, start_date, end_date, percentage, minimum)
VALUES (@next, 'winter','2022-12-01','2023-02-28', 20, 150);
UPDATE season_sequence
SET next_val = @next + 1;

/* ----------- cancellation_fees -----------*/

SELECT next_val INTO @next FROM cancellation_fees_sequence;
INSERT INTO cancellation_fees (id, name, max_days_before, min_days_before, percentage, minimum)
VALUES (@next,'fee20%', 50, 0, 20, 200);
UPDATE cancellation_fees_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM cancellation_fees_sequence;
INSERT INTO cancellation_fees (id, name, max_days_before, min_days_before, percentage, minimum)
VALUES (@next,'fee50%', 15, 49, 50, 200);
UPDATE cancellation_fees_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM cancellation_fees_sequence;
INSERT INTO cancellation_fees (id, name, max_days_before, min_days_before, percentage, minimum)
VALUES (@next,'fee80%' ,1, 14, 80, 200);
UPDATE cancellation_fees_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM cancellation_fees_sequence;
INSERT INTO cancellation_fees (id, name, max_days_before, min_days_before, percentage, minimum)
VALUES (@next,'fee95%', 0, 0, 95, 200);
UPDATE cancellation_fees_sequence
SET next_val = @next + 1;

/* ----------- past_bookings -----------*/

SELECT next_val INTO @next FROM past_bookings_sequence;
INSERT INTO past_bookings (id, booking_id)
VALUES (@next,1);
UPDATE past_booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM past_bookings_sequence;
INSERT INTO past_bookings (id, booking_id)
VALUES (@next,2);
UPDATE past_booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM past_bookings_sequence;
INSERT INTO past_bookings (id, booking_id)
VALUES (@next,3);
UPDATE past_booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM past_bookings_sequence;
INSERT INTO past_bookings (id, booking_id)
VALUES (@next,4);
UPDATE past_booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM past_bookings_sequence;
INSERT INTO past_bookings (id, booking_id)
VALUES (@next,5);
UPDATE past_booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM past_bookings_sequence;
INSERT INTO past_bookings (id, booking_id)
VALUES (@next,6);
UPDATE past_booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM past_bookings_sequence;
INSERT INTO past_bookings (id, booking_id)
VALUES (@next,7);
UPDATE past_booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM past_bookings_sequence;
INSERT INTO past_bookings (id, booking_id)
VALUES (@next,8);
UPDATE past_booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM past_bookings_sequence;
INSERT INTO past_bookings (id, booking_id)
VALUES (@next,9);
UPDATE past_booking_sequence
SET next_val = @next + 1;


SELECT next_val INTO @next FROM past_bookings_sequence;
INSERT INTO past_bookings (id, booking_id)
VALUES (@next,11);
UPDATE past_booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM past_bookings_sequence;
INSERT INTO past_bookings (id, booking_id)
VALUES (@next,12);
UPDATE past_booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM past_bookings_sequence;
INSERT INTO past_bookings (id, booking_id)
VALUES (@next,13);
UPDATE past_booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM past_bookings_sequence;
INSERT INTO past_bookings (id, booking_id)
VALUES (@next,14);
UPDATE past_booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM past_bookings_sequence;
INSERT INTO past_bookings (id, booking_id)
VALUES (@next,15);
UPDATE past_booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM past_bookings_sequence;
INSERT INTO past_bookings (id, booking_id)
VALUES (@next,17);
UPDATE past_booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM past_bookings_sequence;
INSERT INTO past_bookings (id, booking_id)
VALUES (@next,18);
UPDATE past_booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM past_bookings_sequence;
INSERT INTO past_bookings (id, booking_id)
VALUES (@next,20);
UPDATE past_booking_sequence
SET next_val = @next + 1;

/* ----------- active_bookings -----------*/


SELECT next_val INTO @next FROM active_booking_sequence;
INSERT INTO active_bookings (id, booking_id)
VALUES (@next,21);
UPDATE active_booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM active_booking_sequence;
INSERT INTO active_bookings (id, booking_id)
VALUES (@next,22);
UPDATE active_booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM active_booking_sequence;
INSERT INTO active_bookings (id, booking_id)
VALUES (@next,23);
UPDATE active_booking_sequence
SET next_val = @next + 1;

/* ----------- future_bookings -----------*/

SELECT next_val INTO @next FROM future_booking_sequence;
INSERT INTO future_bookings (id, booking_id)
VALUES (@next,24);
UPDATE future_booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM future_booking_sequence;
INSERT INTO future_bookings (id, booking_id)
VALUES (@next,25);
UPDATE future_booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM future_booking_sequence;
INSERT INTO future_bookings (id, booking_id)
VALUES (@next,26);
UPDATE future_booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM future_booking_sequence;
INSERT INTO future_bookings (id, booking_id)
VALUES (@next,27);
UPDATE future_booking_sequence
SET next_val = @next + 1;

/* ----------- cancelled_bookings -----------*/

SELECT next_val INTO @next FROM cancelled_booking_sequence;
INSERT INTO cancelled_bookings (id, booking_id, fee_id)
VALUES (@next,10,1);
UPDATE cancelled_booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM cancelled_booking_sequence;
INSERT INTO cancelled_bookings (id, booking_id, fee_id)
VALUES (@next,16,2);
UPDATE cancelled_booking_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM cancelled_booking_sequence;
INSERT INTO cancelled_bookings (id, booking_id, fee_id)
VALUES (@next,19,4);
UPDATE cancelled_booking_sequence
SET next_val = @next + 1;

/* ----------- motorhomes-to-chcek -----------*/

SELECT next_val INTO @next FROM motorhomes_to_check_sequence;
INSERT INTO motorhomes_to_check (id, motorhome_id)
VALUES (@next,17,4);
UPDATE motorhome_to_check_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhomes_to_check_sequence;
INSERT INTO motorhomes_to_check (id, motorhome_id)
VALUES (@next,18,4);
UPDATE motorhome_to_check_sequence
SET next_val = @next + 1;

/* ----------- motorhomes-to-clean -----------*/

SELECT next_val INTO @next FROM motorhomes_to_clean_sequence;
INSERT INTO motorhomes_to_clean (id, motorhome_id)
VALUES (@next,16);
UPDATE motorhome_to_clean_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhomes_to_clean_sequence;
INSERT INTO motorhomes_to_clean (id, motorhome_id)
VALUES (@next,20);
UPDATE motorhome_to_clean_sequence
SET next_val = @next + 1;
