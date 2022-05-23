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
VALUES (@next, 1122336655, 'a@s.sk', 'Adam', 'Schulz', '1', 52688455, 'sales assistant');
UPDATE employee_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM employee_sequence;
INSERT INTO employees (id, cpr, email, first_name, last_name, password, phone_number, title)
VALUES (@next, 772288665, 's@k.sk', 'Simona', 'Kardel', '1', 8968846, 'sales assistant');
UPDATE employee_sequence
SET next_val = @next + 1;

/* ----------- Motorhomes -----------*/
SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 1001, 'Ford', 5, 11550, 'F-150', 'PP 87 256', 'B');
UPDATE motorhome_sequence
SET next_val = @next + 1;

SELECT next_val INTO @next FROM motorhome_sequence;
INSERT INTO motorhomes (id, base_price, brand, capacity, mileage, model, reg_number, vehicle_category)
VALUES (@next, 9050, 'Scania', 10, 12360, 'Mansland', 'PP 87 256', 'X');
UPDATE motorhome_sequence
SET next_val = @next + 1;
