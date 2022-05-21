package com.spring.nordicmotorhomes.Service;

import com.spring.nordicmotorhomes.Entity.Customer;
import com.spring.nordicmotorhomes.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerService {

    @Autowired
    private CustomerRepository customerRepository;

    public Customer getByDLN(int num) {
        return customerRepository.findByDrivingLicenceNumber(num).orElse(null);
    }

    public Customer getOrCreate(int dln,String first, String last, int phone) {
        Customer customer = getByDLN(dln);
        if (customer == null) {
            customer = Customer.builder()
                    .drivingLicenceNumber(dln)
                    .firstName(first)
                    .lastName(last)
                    .phoneNumber(phone)
                    .build();

            customerRepository.save(customer);
        }

        return customer;
    }
}
