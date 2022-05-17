USE nordic_motorhomes;

#ALTER TABLE bookings ADD pick_up_time time AFTER start_date;

INSERT INTO nordic_motorhomes.bookings
   (ID, customer_ID, start_date, pick_up_time, end_date, motorhome_ID,
     employee_ID, pick_up_loc, drop_off_loc, total_price, fuel_level)
         (SELECT * FROM nordic_motorhomes.bookings as b
         LEFT JOIN customers c on b.customer_ID = c.ID
         LEFT JOIN nordic_motorhomes.motorhomes as m on b.motorhome_ID = m.ID
         LEFT JOIN nordic_motorhomes.employees as e on b.employee_ID = e.ID);


