package com.spring.nordicmotorhomes.DAO;


import com.spring.nordicmotorhomes.Model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public class CustomerDAO {

    //dependency injection of JdbcTemplate to run SQL-queries
    @Autowired
    private JdbcTemplate template;

    public ArrayList<Customer> fetchAllCustomers() {
        String sql = "select ID, first_name, last_name, phone_number, email, CPR from nordic_motorhomes.customers";
        RowMapper<Customer> rowMapper = new BeanPropertyRowMapper<>(Customer.class);
        return (ArrayList<Customer>) template.query(sql, rowMapper);
    }
}
