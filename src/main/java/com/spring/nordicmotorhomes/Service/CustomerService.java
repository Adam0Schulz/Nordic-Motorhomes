package com.spring.nordicmotorhomes.Service;

import com.spring.nordicmotorhomes.Entity.Customer;
import com.spring.nordicmotorhomes.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerService {

    @Autowired
    private CustomerRepository customerRepository;

    public Customer getByCPR(int id) {
        return customerRepository.findByCPR(id).orElse(null);
    }

    public Customer getOrCreate(int CPR,String first, String last, int phone) {
        Customer customer = getByCPR(CPR);
        if (customer == null) {
            customer = Customer.builder()
                    .CPR(CPR)
                    .firstName(first)
                    .lastName(last)
                    .phoneNumber(phone)
                    .build();

            customerRepository.save(customer);
        }

        return customer;
    }
}
