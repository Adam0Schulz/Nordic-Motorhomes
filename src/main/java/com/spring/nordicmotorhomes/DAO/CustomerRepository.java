package com.spring.nordicmotorhomes.DAO;


import com.spring.nordicmotorhomes.Model.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

// @Repository is a Spring annotation that
// indicates that the decorated class is a repository.
@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer>{
}