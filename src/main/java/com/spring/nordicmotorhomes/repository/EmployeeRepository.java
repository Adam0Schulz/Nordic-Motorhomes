package com.spring.nordicmotorhomes.repository;

import com.spring.nordicmotorhomes.Entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
// Wanesa
@Repository
public interface EmployeeRepository extends JpaRepository<Employee,Long> {
}
