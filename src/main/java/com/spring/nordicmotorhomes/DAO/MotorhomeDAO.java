package com.spring.nordicmotorhomes.DAO;

import com.spring.nordicmotorhomes.Model.Employee;
import com.spring.nordicmotorhomes.Model.Motorhome;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public class MotorhomeDAO {

    //dependency injection of JdbcTemplate to run SQL-queries
    @Autowired
    private JdbcTemplate template;

    public ArrayList<Motorhome> fetchAllMotorhomes() {
        String sql = "select ID, brand, model, capacity, availability, reg_number, base_price, mileage from nordic_motorhomes.motorhome";
        RowMapper<Motorhome> rowMapper = new BeanPropertyRowMapper<>(Motorhome.class);
        return (ArrayList<Motorhome>) template.query(sql, rowMapper);
    }
}
