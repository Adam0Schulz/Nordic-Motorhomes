package com.spring.nordicmotorhomes.Service;


import com.spring.nordicmotorhomes.Entity.*;
import com.spring.nordicmotorhomes.repository.*;

import java.sql.Time;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

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

    // Creates customer if they don't exist and creates booking (return true/false depending on if everything's alright)
    public boolean createBooking(int customerCpr, String customerFirst, String customerLast, int customerPhone, Date start, Date end, int motorhomeID, Set<Integer> extraIDs, String pickUp, String dropOff, Time pickUpTime, int empID, double total) {

        Motorhome motorhome = motorhomeRepository.findById((long) motorhomeID).orElse(null);
        Employee employee = employeeRepository.findById((long) empID).orElse(null);
        Set<Extra> extras = new HashSet<>();

        // Error handling
        if(motorhome == null || employee == null || motorhome.isAvailability()) {
            return false;
        }
        for (int id : extraIDs) {
            Extra extra = extraRepository.findById((long) id).orElse(null);
            if(extra == null) {
                return false;
            }
            extras.add(extra);
        }

        // Sets the motorhome as not available
        motorhome.setAvailability(false);

        // Creation of customer
        Customer c = customerRepository.findByCPR(customerCpr);
        if(c == null) {
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

    // return all the bookings
    public List<Booking> getAllBookings() {
        return bookingRepository.findAll();
    }
    //Note: we could easily overload the function above to also sort results
    //Note: calculate total in here not just pass it in like parameter
    //Note: not tested yet :(
}
