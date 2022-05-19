package com.spring.nordicmotorhomes.Service;

import com.spring.nordicmotorhomes.Entity.*;
import com.spring.nordicmotorhomes.repository.BookingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.sql.Time;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class BookingService {

    @Autowired
    private BookingRepository bookingRepository;

    @Autowired
    private MotorhomeService motorhomeService;

    @Autowired
    private EmployeeService employeeService;

    @Autowired
    private ExtraService extraService;

    @Autowired
    private CustomerService customerService;


    //Tested
    // Create booking - creates customer if they don't exist and creates booking (return true/false depending on if everything's alright)
    public boolean addBooking(int customerCpr, String customerFirst, String customerLast, int customerPhone, Date start, Date end, int motorhomeID, Set<Integer> extraIDs, String pickUp, String dropOff, Time pickUpTime, int empID) {

        Motorhome motorhome = motorhomeService.getById((long) motorhomeID);
        Employee employee = employeeService.getById((long) empID);
        Set<Extra> extras = extraService.getExtrasByIDs(extraIDs);

        // Error handling
        if (motorhome == null
                || employee == null
                || extras == null
                || !(motorhomeService.isAvailableDuring(motorhome, start.toLocalDate(), end.toLocalDate()))
        ) { return false; }

        double total = getTotalPrice(motorhome, start.toLocalDate(), end.toLocalDate(), extras);

        // Creating Customer and Booking
        Customer c = customerService.getOrCreate(customerCpr,customerFirst,customerLast,customerPhone);
        createBooking(extras, c, motorhome, employee, start, end, pickUp, pickUpTime, dropOff, total);

        return true;
    }
    //Note: calculate total in here not just pass it in like parameter

    // Create booking - creates and saves booking
    public void createBooking( Set<Extra> extras, Customer customer, Motorhome motorhome, Employee employee, Date start, Date end, String pickUp, Time pickUpTime, String dropOff, double total) {
        Booking newBooking = Booking.builder()
                .extras(extras)
                .customer(customer)
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
    }

    // Get all the bookings
    public List<Booking> getAllBookings() {
        return bookingRepository.findAll();
    }
    //Note: we could easily overload the function above to also sort results

    public boolean isBookingContainingDate(Booking booking, LocalDate date) {
        List<Booking> bookingsContainingDate = getBookingByDate(date);
        if(bookingsContainingDate.contains(booking)) {
            return true;
        }
        return false;
    }

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

    // Get booking by motorhome id
    public List<Booking> getBookingByMotorhomeID(long motorhomeID) {
        return bookingRepository.findByMotorhomeID(motorhomeID);
    }

    // Get total price - calculates and returns total price of the booking
    public double getTotalPrice(Motorhome motorhome, LocalDate start, LocalDate end, Set<Extra> extras) {
        int days = (int) ChronoUnit.DAYS.between(start, end);
        return (motorhome.getBasePrice() * days) + extraService.getExtrasTotalPrice(extras);
    }

}
