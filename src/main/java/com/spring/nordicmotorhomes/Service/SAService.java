package com.spring.nordicmotorhomes.Service;


import com.spring.nordicmotorhomes.Entity.*;
import com.spring.nordicmotorhomes.repository.*;

import java.sql.Time;

import org.apache.tomcat.jni.Local;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.time.LocalDate;
import java.time.Period;
import java.util.*;

@Service
public class SAService {

    @Autowired
    CustomerRepository customerRepository;
    @Autowired
    MotorhomeRepository motorhomeRepository;
    @Autowired
    EmployeeRepository employeeRepository;
    @Autowired
    ExtraRepository extraRepository;
    @Autowired
    BookingRepository bookingRepository;

    //Tested
    // Create booking - creates customer if they don't exist and creates booking (return true/false depending on if everything's alright)
    public boolean createBooking(int customerCpr, String customerFirst, String customerLast, int customerPhone, Date start, Date end, int motorhomeID, Set<Integer> extraIDs, String pickUp, String dropOff, Time pickUpTime, int empID, double total) {

        Motorhome motorhome = motorhomeRepository.findById((long) motorhomeID).orElse(null);
        Employee employee = employeeRepository.findById((long) empID).orElse(null);
        Set<Extra> extras = new HashSet<>();

        // Error handling
        if (motorhome == null || employee == null || !(motorhome.isAvailability())) {
            return false;
        }
        for (int id : extraIDs) {
            Extra extra = extraRepository.findById((long) id).orElse(null);
            if (extra == null) {
                return false;
            }
            extras.add(extra);
        }

        // Sets the motorhome as not available
        motorhome.setAvailability(false);

        // Creation of customer
        Customer c = customerRepository.findByCPR(customerCpr);
        if (c == null) {
            c = Customer.builder()
                    .CPR(customerCpr)
                    .firstName(customerFirst)
                    .lastName(customerLast)
                    .phoneNumber(customerPhone)
                    .build();
        }

        // Creation of the new booking
        Booking newBooking = Booking.builder()
                .extras(extras)
                .customer(c)
                .motorhome(motorhome)
                .employee(employee)
                .startDate(start)
                .endDate(end)
                .pickUpLocation(pickUp)
                .pickUpTime(pickUpTime)
                .dropOffLocation(dropOff)
                .totalPrice(total)
                .build();

        // saving data to database
        bookingRepository.save(newBooking);
        customerRepository.save(c);

        return true;
    }
    //Note: calculate total in here not just pass it in like parameter

    // Get all the bookings
    public List<Booking> getAllBookings() {
        return bookingRepository.findAll();
    }
    //Note: we could easily overload the function above to also sort results

    // Get Booking by date - returns a list of bookings that contain the given date
    public List<Booking> getBookingByDate(LocalDate date) {

        List<Booking> bookings = new ArrayList<Booking>();
        List<Booking> allBookings = bookingRepository.findAll();

        for (Booking booking : allBookings) {
            LocalDate startDate = booking.getStartDate().toLocalDate();
            LocalDate endDate = booking.getEndDate().toLocalDate();

            // Condition check if the date is between start and end date of the booking
            if ((startDate.isBefore(date) || startDate.isEqual(date)) && (endDate.isAfter(date) || endDate.isEqual(date))) {
                bookings.add(booking);
            }

        }


        return bookings;
    }

    // Get Booking by start date
    public List<Booking> getBookingbyStartDate(Date date) {
        List<Booking> bookings = bookingRepository.findByStartDate(date);
        return bookings;
    }

    // Booking by end date
    public List<Booking> getBookingbyEndDate(Date date) {
        List<Booking> bookings = bookingRepository.findByEndDate(date);
        return bookings;
    }

    // Get all motorhomes
    public List<Motorhome> getAllMotorhomes() { return motorhomeRepository.findAll(); }

}
