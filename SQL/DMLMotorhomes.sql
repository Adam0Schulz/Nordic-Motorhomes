USE nordic_motorhomes;
/*base price is in euro*/

#UPDATE motorhomes SET availability = true WHERE model = 'Kronos';

/*SELECT  nordic_motorhomes.motorhomes.ID, brand, IF(availability, 'true', 'false')
    availability FROM motorhomes;*/

/*UPDATE motorhomes
SET mileage = 100000
WHERE ID = 2;*/

INSERT INTO nordic_motorhomes.motorhomes
    (ID, brand, model, capacity, availability, reg_number, base_price, mileage)
    VALUES (ID, 'Roller Team', 'Kronos', 2, true, 'AB 44 887', 220, 50000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Roller Team', 'Zepiro', 4, true, 'AC 45 877', 315, 100000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID,'Roller Team', 'Granduca', 5, false, 'AD 46 868', 470, 150000 );

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Roller Team', 'Livingstone Advance', 6, true, 'AE 46 857', 550, 150000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Auto-Sleeper', 'Compact Plus', 2, true, 'BA 35 107', 130, 50000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Auto-Sleeper', 'Premium Luxury', 4, false, 'BB 36 108', 210, 50000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Auto_Sleeper', 'California Automatic', 5, true, 'BC 37 108', 250, 100000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Auto_Sleeper', 'Comfort Standard', 6, true, 'BD 38 109', 310, 100000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Carthago', 'Urban Plus', 2, true, 'CA 51 234', 160, 50000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Carthago', 'Urban Luxury', 4, false, 'CB 52 244', 190, 100000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Carthago', 'Family Pax 5', 5, true, 'CC 53 264', 210, 150000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Carthago', 'Family Luxury', 6, true, 'CD 55 134', 280, 150000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Adria', 'Adria Manual', 2, false, 'DA 61 133', 225, 50000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Adria', 'Sunlight A70', 4, true, 'DB 66 144', 245, 100000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Adria', 'Adria Matrix Plus', 5, true, 'DC 67 122', 380, 150000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Adria', 'Family Plus', 6, true, 'DD 69 111', 450, 150000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Malibu', 'Group A', 3, true, 'EA 44 203', 185, 75000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Malibu', 'Marco Polo', 4, true, 'EB 41 213', 215, 100000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Malibu', 'Atlas', 5, false, 'EC 40 503', 245, 150000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Malibu', 'Group C', 6, false, 'ED 49 206', 305, 200000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'McLuis Fusion', 'California Automatic', 2, true, 'FA 22 010', 150, 50000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'McLuis Fusion', 'Sporty', 4, true, 'FB 21 020', 200, 75000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'McLuis Fusion', 'Atlas', 5, true, 'FC 24 030', 250, 150000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'McLuis Fusion', 'Family Group D', 7, false, 'FD 25 040', 350, 200000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Ecoline', 'Ecoline 2', 2, true, 'JA 71 301', 365, 60000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Ecoline', '4x4 Camper Auto', 3, false, 'JB 72 321', 380, 80000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Ecoline', 'Ecoline 4', 4, true, 'JC 73 331', 410, 100000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Ecoline', 'Ecoline 6', 6, true, 'JD 74 341', 480, 180000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Winnebago Ekko', 'Nomad', 2, true, 'HA 80 611', 180, 50000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Winnebago Ekko', 'Dawn Patrol', 4, true, 'HB 83 621', 250, 75000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Winnebago Ekko', 'Compact Luxury', 5, true, 'HC 85 661', 320, 100000);

INSERT INTO nordic_motorhomes.motorhomes
VALUES (ID, 'Winnebago Ekko', 'Family Standard', 6, false, 'HD 86 681', 410, 175000);