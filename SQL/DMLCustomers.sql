USE nordic_motorhomes;

#ALTER TABLE customers DROP email;
#ALTER TABLE customers ADD email varchar(400) AFTER phone_number;

INSERT INTO nordic_motorhomes.customers
    (first_name, last_name, phone_number,email, CPR)
    VALUES('Kristian', 'Jakob', 43677267, 'kristianjakob@gmail.com', 211334414);

INSERT INTO nordic_motorhomes.customers
VALUES(ID, 'Jasper', 'Hansen', 43674355, 'jasperhansen@gmail.com',  275887586);

INSERT INTO nordic_motorhomes.customers
VALUES(ID, 'Carolina', 'Holm', 44657887, 'carolinaholm@gmail.com', 1087766577);

INSERT INTO nordic_motorhomes.customers
VALUES(ID, 'Jason', 'Noun', 45647647, 'jasonnoun@gmail.com', 0544355377);

INSERT INTO nordic_motorhomes.customers
VALUES(ID, 'Johanes', 'Munk', 42554477, 'johanesmunk@gmail.com', 1394988978);

INSERT INTO nordic_motorhomes.customers
VALUES(ID, 'Christine', 'Lund', 42554476, 'christinelund@gmail.com', 1064977897);

INSERT INTO nordic_motorhomes.customers
VALUES(ID, 'Kasper', 'Valby', 42514257, 'kaspervalby@gmail.com', 293958578);

INSERT INTO nordic_motorhomes.customers
VALUES(ID, 'Nicolaj', 'Jansen',43214477, 'nicojansen@gmail.com', 251465812);

INSERT INTO nordic_motorhomes.customers
VALUES(ID, 'Lea', 'Lyngby',44554466, 'lealyngby@gmail.com', 102458193);

INSERT INTO nordic_motorhomes.customers
VALUES(ID, 'Mathias', 'Skov', 43152497, 'mathiasskov@gmail.com', 031477665);

INSERT INTO nordic_motorhomes.customers
VALUES(ID, 'Nana', 'Juul', 45057407, 'nanajuul@gmail.com', 020689331);

INSERT INTO nordic_motorhomes.customers
VALUES(ID, 'Ditte', 'Martinsen', 42152621, 'dittemartinsen@gmail.com', 122420175);

INSERT INTO nordic_motorhomes.customers
VALUES(ID, 'Kristiane', 'Paulsen', 42151195, 'kristianepaulsen@gmail.com', 101417161);

INSERT INTO nordic_motorhomes.customers
VALUES(ID, 'Janus', 'Riis', 42155421, 'janusriis@gmail.com', 091200124);