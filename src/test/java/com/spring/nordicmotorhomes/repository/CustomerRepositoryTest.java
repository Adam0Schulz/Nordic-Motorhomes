package com.spring.nordicmotorhomes.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;
@SpringBootTest

class CustomerRepositoryTest {
    @Autowired
    CustomerRepository customerRepository;
}