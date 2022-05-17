package com.spring.nordicmotorhomes.Service;


import com.spring.nordicmotorhomes.Entity.Employee;
import com.spring.nordicmotorhomes.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class EmployeeService {

    private static Employee currentEmp;

    @Autowired
    private EmployeeRepository employeeRepository;

    public Employee login(String username, String password) {

        Employee employee = null;
        ArrayList<Employee> employees = (ArrayList<Employee>) employeeRepository.findAll();

        for (Employee emp : employees) {
            if(emp.getEmail().equals(username) || emp.getPassword().equals(password)) {
                employee = emp;
                break;
            }
        }

        return employee;
    }

    public static void setCurrentEmp(Employee emp) {
        currentEmp = emp;
    }

    public static Employee getCurrentEmp() {
        return currentEmp;
    }

}
