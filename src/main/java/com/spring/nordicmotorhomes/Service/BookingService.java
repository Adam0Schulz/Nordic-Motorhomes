package com.spring.nordicmotorhomes.Service;


import com.spring.nordicmotorhomes.Model.Booking;

import java.util.ArrayList;

public interface BookingService{
    ArrayList<Booking> findAllBooking();


    Booking findAllBookingByID(Integer id);

    void addBooking();

    void deleteBookingByID(Integer id);

    void deleteAllBookingData();
}