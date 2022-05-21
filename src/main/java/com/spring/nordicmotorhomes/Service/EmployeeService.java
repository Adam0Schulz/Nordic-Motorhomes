package com.spring.nordicmotorhomes.Service;


import com.spring.nordicmotorhomes.Entity.Employee;
import com.spring.nordicmotorhomes.Entity.Motorhome;
import com.spring.nordicmotorhomes.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class EmployeeService {

    private static Employee currentEmp;

    @Autowired
    private EmployeeRepository employeeRepository;

    private PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();


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

    public Employee getById(long id) {
        return employeeRepository.findById((long) id).orElse(null);
    }

    // Test method - create employee
    public void createEmployee(int cpr, String email, String first, String last, String password, int phone, String title) {
        Employee newEmployee = Employee.builder()
                .CPR(cpr)
                .email(email)
                .firstName(first)
                .lastName(last)
                .password(password)
                .phoneNumber(phone)
                .title(title)
                .build();
        save(newEmployee);
    }

    public Employee save(Employee employee) {
        String hashedPassword = passwordEncoder.encode(employee.getPassword());
        employee.setPassword(hashedPassword);
        return employeeRepository.save(employee);
    }
}
