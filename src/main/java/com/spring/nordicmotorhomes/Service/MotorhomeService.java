package com.spring.nordicmotorhomes.Service;

import com.spring.nordicmotorhomes.Entity.Booking;
import com.spring.nordicmotorhomes.Entity.Motorhome;
import com.spring.nordicmotorhomes.repository.MotorhomeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class MotorhomeService {

    @Autowired
    private MotorhomeRepository motorhomeRepository;

    @Autowired
    private BookingService bookingService;

    // Get motorhome by id
    public Motorhome getById(long id) {
        return motorhomeRepository.findById(id).orElse(null);
    }

    // Get all motorhomes
    public List<Motorhome> getAllMotorhomes() { return motorhomeRepository.findAll(); }

    // Checks if given motorhome is available
    public boolean isAvailableOn(Motorhome motorhome, LocalDate date) {
        List<Motorhome> availableMotorhomes = getAllAvailableMotorhomesOn(date);
        if(availableMotorhomes.contains(motorhome)) {
            return true;
        }
        return false;
    }

    // Get all available motorhomes on specific date
    public List<Motorhome> getAllAvailableMotorhomesOn(LocalDate date) {

        List<Motorhome> availableMotorhomes = new ArrayList<Motorhome>();
        List<Motorhome> motorhomes = getAllMotorhomes();
        boolean available;

        for (Motorhome motorhome : motorhomes) {
            available = true;
            List<Booking> bookings = bookingService.getBookingByMotorhomeID(motorhome.getID());
            for (Booking booking : bookings) {
                if(bookingService.isBookingContainingDate(booking,date)) {
                    available = false;
                }
            }

            if(available) {
                availableMotorhomes.add(motorhome);
            }

        }

        return availableMotorhomes;
    }

    //Get all available motorhomes during given a period
    public List<Motorhome> getAllAvailableMotorhomesDuring(LocalDate start, LocalDate end) {
        List<Motorhome> availableMotorhomes = new ArrayList<Motorhome>();
        List<Motorhome> allMotorhomes = getAllMotorhomes();
        for(Motorhome motorhome : allMotorhomes) {
            if(isAvailableDuring(motorhome, start, end)) {
                availableMotorhomes.add(motorhome);
            }
        }
        return availableMotorhomes;
    }

    // Checks if the motorhome is available during a given period
    public boolean isAvailableDuring(Motorhome motorhome, LocalDate startDate, LocalDate endDate) {
        // Gets all dates in between two dates in a list
        List<LocalDate> dates =  startDate.datesUntil(endDate).collect(Collectors.toList());
        boolean available = true;
        for(LocalDate date : dates) {
            if(!(isAvailableOn(motorhome, date))) {
                available = false;
            }
        }

        if(available) {
            return true;
        }
        return false;
    }

}
