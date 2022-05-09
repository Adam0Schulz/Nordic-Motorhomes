package com.spring.nordicmotorhomes.DAO;

import com.spring.nordicmotorhomes.Model.Employee;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import org.springframework.stereotype.Repository;

import java.util.List;

/*the class provides the mechanism for
storage, retrieval, update, delete and
search operation on objects @Repository*/
@Repository
public class EmployeeRepo {

    //dependency injection of JdbcTemplate to run SQL-queries
    @Autowired
    private JdbcTemplate template;

    public List<Employee> fetchAllEmployees() {
        String sql = "select ID, first_name, last_name, phone_number, CPR, title,email, password from employee";
        RowMapper<Employee> rowMapper = new BeanPropertyRowMapper<>(Employee.class);
        return template.query(sql, rowMapper);
    }
}