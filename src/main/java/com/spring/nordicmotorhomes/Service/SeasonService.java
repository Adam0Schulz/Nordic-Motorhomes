package com.spring.nordicmotorhomes.Service;

import com.spring.nordicmotorhomes.Entity.Season;
import com.spring.nordicmotorhomes.repository.SeasonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

@Service
public class SeasonService {

    @Autowired
    private SeasonRepository seasonRepository;



    // Get season - returns a season on given date (start date of the booking)
    public Season getSeason(LocalDate bookingStartDate) {

        // Set up
        Season season = null;
        List<Season> seasons = getAllSeasons();

        for (Season s : seasons) {
            LocalDate startDate = s.getStartDate().toLocalDate();
            LocalDate endDate = s.getEndDate().toLocalDate();
            if((startDate.isBefore(bookingStartDate) || startDate.isEqual(bookingStartDate)) && endDate.isAfter(bookingStartDate)) {
                season = s;
            }
        }
        return season;
    }

    // Get all seasons
    public List<Season> getAllSeasons() { return seasonRepository.findAll(); }

    // Create season
    public Season createSeason(Date start, Date end, String name, double percent) {
        Season newSeason = Season.builder()
                .startDate(start)
                .endDate(end)
                .name(name)
                .percentage(percent)
                .build();
        seasonRepository.save(newSeason);
        return newSeason;
    }
}
