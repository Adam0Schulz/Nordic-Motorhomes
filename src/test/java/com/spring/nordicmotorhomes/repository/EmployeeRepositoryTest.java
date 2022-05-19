package com.spring.nordicmotorhomes.repository;

import com.spring.nordicmotorhomes.Entity.Employee;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class EmployeeRepositoryTest {
    @Autowired
    private EmployeeRepository employeeRepository;

    @Test
    public void saveEmployee(){
        Employee employee = Employee.builder()
                .CPR(439288654)
                .email("adam@gmail.com")
                .firstName("Adam")
                .lastName("Schulz")
                .password("schulz123")
                .phoneNumber(64270804)
                .title("Owner")
                .build();

        employeeRepository.save(employee);
    }
}