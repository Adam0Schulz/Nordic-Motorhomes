package com.spring.nordicmotorhomes.Service;


import com.spring.nordicmotorhomes.Model.Customer;

import java.util.ArrayList;

public interface CustomerService {
    ArrayList<Customer> findAllCustomer();


    Customer findAllCustomerByID(Integer id);

    void addCustomer();

    void deleteCustomerByID(Integer id);

    void deleteAllCustomerData();
}
