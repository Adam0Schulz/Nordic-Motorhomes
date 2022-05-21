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

    @Autowired
    private SeasonService seasonService;

    @Autowired
    private SystemVariableService systemVariableService;



    // Add booking - creates customer if they don't exist and creates booking (return true/false depending on if everything's alright)
    public boolean addBooking(int customerCpr, String customerFirst, String customerLast, int customerPhone, Date start, Date end, int motorhomeID, Set<Integer> extraIDs, String pickUp, String dropOff, Time pickUpTime, int empID) {

        // Set up
        Motorhome motorhome = motorhomeService.getById((long) motorhomeID);
        Employee employee = employeeService.getById((long) empID);
        Set<Extra> extras = extraService.getExtrasByIDs(extraIDs);


        // Error handling
        if (motorhome == null
                || employee == null
                || extras == null
                || !(motorhomeService.isAvailableDuring(motorhome, start.toLocalDate(), end.toLocalDate()))
        ) { return false; }

        // Calculating the total price of the booking
        double total = getTotalPrice(motorhome, start.toLocalDate(), end.toLocalDate(), extras);

        // Creating Customer and Booking
        Customer c = customerService.getOrCreate(customerCpr,customerFirst,customerLast,customerPhone);
        createBooking(extras, c, motorhome, employee, start, end, pickUp, pickUpTime, dropOff, total);

        return true;
    }

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

    // Checks if booking is containing a date
    public boolean isBookingContainingDate(Booking booking, LocalDate date) {
        List<Booking> bookingsContainingDate = getBookingByDate(date);
        if(bookingsContainingDate.contains(booking)) {
            return true;
        }
        return false;
    }

    // Checks if booking is containing a date (including a buffer)
    public boolean isBookingContainingDate(Booking booking, LocalDate date, int bufferDays) {
        List<Booking> bookingsContainingDate = getBookingByDate(date, bufferDays);
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

    // Get Booking by date - returns a list of bookings that contain the given date (adds a buffer on the end date of the booking)
    public List<Booking> getBookingByDate(LocalDate date, int bufferDays) {

        List<Booking> bookings = new ArrayList<Booking>();
        List<Booking> allBookings = bookingRepository.findAll();

        for (Booking booking : allBookings) {
            LocalDate startDate = booking.getStartDate().toLocalDate();
            LocalDate endDate = booking.getEndDate().toLocalDate().plus(bufferDays, ChronoUnit.DAYS);

            // Condition check if the date is between start and end date of the booking
            if ((startDate.isBefore(date) || startDate.isEqual(date)) && (endDate.isAfter(date) || endDate.isEqual(date))) {
                bookings.add(booking);
            }

        }


        return bookings;
    }

    // Get Booking by start date
    public List<Booking> getBookingByStartDate(Date date) {
        List<Booking> bookings = bookingRepository.findByStartDate(date);
        return bookings;
    }

    // Booking by end date
    public List<Booking> getBookingByEndDate(Date date) {
        List<Booking> bookings = bookingRepository.findByEndDate(date);
        return bookings;
    }

    // Get previous bookings - returns bookings that ended before specified date
    public List<Booking> getPreviousBookings(LocalDate date) {
        List<Booking> previousBookings = new ArrayList<Booking>();
        List<Booking> bookings = getAllBookings();
        for(Booking booking : bookings) {
            if(booking.getEndDate().toLocalDate().isBefore(date)) {
                previousBookings.add(booking);
            }
        }

        return previousBookings;
    }

    // Get booking by motorhome id
    public List<Booking> getBookingByMotorhomeID(long motorhomeID) {
        return bookingRepository.findByMotorhomeID(motorhomeID);
    }

    // Get total price - calculates and returns total price of the booking
    public double getTotalPrice(Motorhome motorhome, LocalDate start, LocalDate end, Set<Extra> extras) {
        int days = (int) ChronoUnit.DAYS.between(start, end);
        double seasonPercentage = seasonService.getSeason(start).getPercentage();
        return ((motorhome.getBasePrice() * days) + extraService.getExtrasTotalPrice(extras)) * seasonPercentage;
    }

    // Picked up - adds given booking to active bookings
    public boolean pickedUp(int bookingID) {

        Booking booking = bookingRepository.findById((long) bookingID).orElse(null);
        if(booking == null) {
            return false;
        }
        ActiveBooking activeBooking = ActiveBooking.builder()
                .booking(booking)
                .build();
        booking.setActiveBooking(activeBooking);
        bookingRepository.save(booking);

        return true;
    }

    // Dropped off - moves motorhome attached to given booking to motorhomes to be checked
    public boolean droppedOff(long bookingID) {
        Booking booking = bookingRepository.findById(bookingID).orElse(null);
        if(booking == null) {
            return false;
        }
        motorhomeService.addToCheck(booking.getMotorhome().getID());
        return true;
    }

    // Dropped off - moves motorhome attached to given booking to motorhomes to be checked (adds additional kilometers fee to the total of the booking)
    public boolean droppedOff(long bookingID, int additionalKilometers) {
        Booking booking = bookingRepository.findById(bookingID).orElse(null);
        if(booking == null) {
            return false;
        }
        motorhomeService.addToCheck(booking.getMotorhome().getID());
        double total = booking.getTotalPrice();
        total += additionalKilometers * systemVariableService.getAdditionalKilometerFee();
        booking.setTotalPrice(total);
        return true;
    }

    // calculate the additional fee for drop off

}
