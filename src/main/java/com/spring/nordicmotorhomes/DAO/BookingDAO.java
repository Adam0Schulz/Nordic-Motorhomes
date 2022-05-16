package com.spring.nordicmotorhomes.DAO;

import com.spring.nordicmotorhomes.Model.Booking;
import com.spring.nordicmotorhomes.Model.Motorhome;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public class BookingDAO {

    //dependency injection of JdbcTemplate to run SQL-queries
    @Autowired
    private JdbcTemplate template;

    public ArrayList<Booking> fetchAllBookings() {
        String sql = "select ID, brand, model, capacity, availability, reg_number, base_price, mileage from nordic_motorhomes.motorhome";
        RowMapper<Booking> rowMapper = new BeanPropertyRowMapper<>(Booking.class);
        return (ArrayList<Booking>) template.query(sql, rowMapper);
    }

}
