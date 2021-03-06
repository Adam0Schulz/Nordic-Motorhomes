package com.spring.nordicmotorhomes.Service;

import com.spring.nordicmotorhomes.Entity.Booking;
import com.spring.nordicmotorhomes.Entity.Motorhome;
import com.spring.nordicmotorhomes.Entity.MotorhomeToCheck;
import com.spring.nordicmotorhomes.Entity.MotorhomeToClean;
import com.spring.nordicmotorhomes.repository.MotorhomeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
// Adam Simona
@Service
public class MotorhomeService {

    @Autowired
    private MotorhomeRepository motorhomeRepository;

    @Autowired
    private BookingService bookingService;

    @Autowired
    private SystemVariableService systemVariableService;



    // Get motorhome by id
    public Motorhome getMotorhomeById(long id) {
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

        List<Motorhome> availableMotorhomes = new ArrayList<>();
        List<Motorhome> motorhomes = getAllMotorhomes();
        int bufferDays = (int) systemVariableService.getMotorhomeAvailabilityBuffer();
        boolean available;

        for (Motorhome motorhome : motorhomes) {
            available = true;
            List<Booking> bookings = bookingService.getBookingByMotorhomeID(motorhome.getID());
            for (Booking booking : bookings) {
                if(bookingService.isBookingContainingDate(booking,date, bufferDays)) {
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

    // Add to check - sets the motorhome to be checked
    public boolean addToCheck(long motorhomeID) {
        Motorhome motorhome = motorhomeRepository.findById(motorhomeID).orElse(null);
        if(motorhome == null || motorhome.getMotorhomeToClean() != null) {
            return false;
        }

        MotorhomeToCheck toCheck = MotorhomeToCheck.builder()
                .motorhome(motorhome)
                .build();
        motorhome.setMotorhomeToCheck(toCheck);
        motorhomeRepository.save(motorhome);

        return true;
    }

    // Add to clean - sets the motorhome to be clean and unsets it to be checked
    public boolean addToClean(long motorhomeID) {
        Motorhome motorhome = motorhomeRepository.findById(motorhomeID).orElse(null);
        if(motorhome == null || motorhome.getMotorhomeToCheck() == null) {
            return false;
        }

        MotorhomeToClean toClean = MotorhomeToClean.builder()
                .motorhome(motorhome)
                .build();
        motorhome.setMotorhomeToCheck(null);
        motorhome.setMotorhomeToClean(toClean);
        motorhomeRepository.save(motorhome);

        return true;
    }

    // Create a motorhome
    public Motorhome createMotorhome(double basePrice, String brand, int capacity, int mileage, String model, String regNum) {
        Motorhome newMotorhome = Motorhome.builder()
                .basePrice(basePrice)
                .brand(brand)
                .capacity(capacity)
                .mileage(mileage)
                .model(model)
                .regNumber(regNum)
                .build();
        motorhomeRepository.save(newMotorhome);
        return newMotorhome;
    }

}
