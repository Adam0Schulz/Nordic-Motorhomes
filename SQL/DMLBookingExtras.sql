USE nordic_motorhomes;

INSERT INTO nordic_motorhomes.booking_extras
    (ID, booking_ID, extra_ID)
    SELECT booking_extras.ID,  booking_ID, extra_ID
    FROM bookings, booking_extras
INNER JOIN bookings b on booking_extras.booking_ID = b.ID;

