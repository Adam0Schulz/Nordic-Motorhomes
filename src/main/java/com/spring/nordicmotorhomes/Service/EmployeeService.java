package com.spring.nordicmotorhomes.Service;

import com.spring.nordicmotorhomes.DAO.EmployeeDAO;
import com.spring.nordicmotorhomes.Model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class EmployeeService {

    @Autowired
    private EmployeeDAO employeeDAO;

    public Employee login(String username, String password) {

        Employee employee = null;
        ArrayList<Employee> employees = (ArrayList<Employee>) employeeDAO.fetchAllEmployees();

        for (Employee emp : employees) {
            if(emp.getEmail().equals(username) || emp.getPassword().equals(password)) {
                employee = emp;
                break;
            }
        }

        return employee;
    }

}
