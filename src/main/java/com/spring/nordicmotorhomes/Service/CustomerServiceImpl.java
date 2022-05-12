package com.spring.nordicmotorhomes.Service;

import com.spring.nordicmotorhomes.DAO.CustomerRepository;
import com.spring.nordicmotorhomes.DAO.EmployeeRepository;
import com.spring.nordicmotorhomes.Model.Customer;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;

public class CustomerServiceImpl implements CustomerService{
    @Autowired
    CustomerRepository customerRepository;

    @Override
    public ArrayList<Customer> findAllCustomer() {
        return null;
    }

    @Override
    public Customer findAllCustomerByID(Integer id) {
        return null;
    }

    @Override
    public void addCustomer() {

    }

    @Override
    public void deleteCustomerByID(Integer id) {

    }

    @Override
    public void deleteAllCustomerData() {

    }
}
