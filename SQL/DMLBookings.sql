USE nordic_motorhomes;

#ALTER TABLE bookings ADD pick_up_time time AFTER start_date;

INSERT INTO nordic_motorhomes.bookings
   (ID, customer_ID, start_date, pick_up_time, end_date, motorhome_ID,
     employee_ID, pick_up_loc, drop_off_loc, total_price, fuel_level)
VALUES(ID, 1, date(10/10/2022), time(10),date(10/20/2022), 1, 1, 'Hellerup', 'Gentofte',5000, 400);

