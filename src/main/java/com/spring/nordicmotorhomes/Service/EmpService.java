package com.spring.nordicmotorhomes.Service;

import java.util.ArrayList;
import com.spring.nordicmotorhomes.Model.Employee;

public interface EmpService {
    ArrayList<Employee> findAllEmployee();


    Employee findAllEmployeeByID(Integer id);

    void addEmployee();

    void deleteByID(Integer id);

    void deleteAllData();
}