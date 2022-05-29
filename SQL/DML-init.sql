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
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 550, 'Ford', 5, 11550, 'F-150', 'PP 87 256', 'B');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 220, 'Scania', 2, 12360, 'Mansland', 'PP 87 256', 'X');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 220, 'Roller Team', 2, 53747, 'Kronos', 'AB 44 887', 'B');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 315, 'Roller Team', 4, 103854, 'Zepiro', 'AC 45 877', 'B');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 450, 'Roller Team', 5, 153858, 'Granduca', 'AD 46 868', 'B');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 550, 'Roller Team', 6, 50576, 'Livingstone Advance', 'AE 46 857', 'B');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 200, 'Auto-Sleeper', 2, 32456, 'Compact Plus', 'BA 35 107', 'B');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 210, 'Auto-Sleeper', 4, 55384, 'Premium Luxury', 'BB 36 108', 'B');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 250, 'Auto_Sleeper', 5, 113483, 'California Automatic', 'BC 37 108', 'B');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 310, 'Auto_Sleeper', 6, 95768, 'Comfort Standard', 'BD 38 109', 'B');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 210, 'Carthago', 2, 65465, 'Urban Plus', 'CA 51 234', 'B');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 190, 'Carthago', 4, 44567, 'Urban Luxury', 'CB 52 244', 'B');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 210, 'Carthago', 5, 86754, 'Family Pax 5', 'CC 53 264', 'B');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 350, 'Carthago', 6, 76457, 'Family Luxury', 'CD 55 134', 'B');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 225, 'Adria', 2, 34757, 'Adria Manual', 'DA 61 133', 'A');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 245, 'Adria', 4, 34656, 'Sunlight A70', 'DB 66 144', 'C');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 380, 'Adria', 5, 85867, 'Adria Matrix Plus', 'DC 67 122', 'C');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 450, 'Adria', 6, 75689, 'Family Plus', 'DD 69 111', 'C');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 260, 'Malibu', 3, 64578, 'Compact Plus', 'EA 44 203', 'A');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 300, 'Malibu', 4, 48586, 'Marco Polo', 'EB 41 213', 'A');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 400, 'Malibu', 5, 37565, 'Atlas', 'EC 40 503', 'C');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 550, 'Malibu', 6, 37575, 'California', 'ED 49 206', 'C');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 200, 'McLuis Fusion', 2, 37455, 'California Automatic', 'FA 22 010', 'A');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 400, 'McLuis Fusion', 4, 38458, 'Sporty', 'FB 21 020', 'C');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 420, 'McLuis Fusion', 5, 84564, 'Atlas', 'FC 24 030', 'C');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 550, 'McLuis Fusion', 6, 46564, 'Family Group D', 'FD 25 040', 'C');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 250, 'Ecoline', 2, 99876, 'Ecoline 2', 'JA 71 301', 'A');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 320,'Ecoline', 4, 85865, '4 Camper Auto', 'JB 72 321', 'C');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 410, 'Ecoline', 4, 34567, 'Ecoline 4', 'JC 73 331', 'A');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 480, 'Ecoline', 6, 46574, 'Ecoline 6', 'JD 74 341', 'C');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 180, 'Winnebago Ekko', 2, 46574, 'Nomad', 'HA 80 611', 'A');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 250, 'Winnebago Ekko', 4, 64758, 'Dawn Patrol', 'HB 83 621', 'C');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 320, 'Winnebago Ekko', 5, 74653, 'Compact Luxury', 'HC 85 661', 'C');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 410, 'Winnebago Ekko', 6, 74654, 'Family Standard', 'HD 86 681', 'C');
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
