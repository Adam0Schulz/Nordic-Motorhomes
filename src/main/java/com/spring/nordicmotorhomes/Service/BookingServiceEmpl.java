package com.spring.nordicmotorhomes.Service;

import com.spring.nordicmotorhomes.DAO.BookingRepository;
import com.spring.nordicmotorhomes.DAO.EmployeeRepository;
import com.spring.nordicmotorhomes.Model.Booking;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;

public class BookingServiceEmpl implements BookingService{
    @Autowired
    BookingRepository bookRepository;

    @Override
    public ArrayList<Booking> findAllBooking() {
        return null;
    }

    @Override
    public Booking findAllBookingByID(Integer id) {
        return null;
    }

    @Override
    public void addBooking() {

    }

    @Override
    public void deleteBookingByID(Integer id) {

    }

    @Override
    public void deleteAllBookingData() {

    }
}
