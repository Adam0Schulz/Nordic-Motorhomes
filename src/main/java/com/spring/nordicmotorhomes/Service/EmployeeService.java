package com.spring.nordicmotorhomes.Service;

import com.spring.nordicmotorhomes.DAO.EmployeeDAO;
import com.spring.nordicmotorhomes.Model.Employee;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class EmployeeService {

    public Employee Login(String username, String password) {

        Employee employee = null;
        ArrayList<Employee> employees = EmployeeDAO.fetchAllEmployees();

        for (Employee emp : employees) {
            if(emp.getEmail().equals(username) || emp.getPassword().equals(password)) {
                employee = emp;
                break;
            }
        }

        return employee;
    }

}
