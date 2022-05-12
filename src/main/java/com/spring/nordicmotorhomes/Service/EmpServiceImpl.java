package com.spring.nordicmotorhomes.Service;
import java.util.ArrayList;
import java.util.Optional;

import com.spring.nordicmotorhomes.DAO.EmployeeRepository;
import com.spring.nordicmotorhomes.Model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.stereotype.Service;

@Service
public class EmpServiceImpl implements EmpService {
    @Autowired
    EmployeeRepository employeeRepository;

    @Override
    public ArrayList<Employee> findAllEmployee() {
        return (ArrayList<Employee>) employeeRepository.findAll();
    }


    @Override
    public Employee findAllEmployeeByID(Integer id) {
        Optional<Employee> opt = employeeRepository.findById(id);
        return opt.orElse(null);
    }

    @Override
    public void addEmployee() {
        ArrayList<Employee> emp = new ArrayList<>();
        emp.add(new Employee("waa","aaa",123,123,"adad","asdasdad","adadad"));
        employeeRepository.saveAll(emp);

    }
    @Override
    public void deleteByID(Integer id) {
        employeeRepository.deleteById(id);
    }

    @Override
    public void deleteAllData() {
        employeeRepository.deleteAll();
    }

}