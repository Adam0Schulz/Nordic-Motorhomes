package com.spring.nordicmotorhomes.repository;

import com.spring.nordicmotorhomes.Entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository extends JpaRepository<Customer,Long> {

    Customer findByCPR(int customerCpr);
}
