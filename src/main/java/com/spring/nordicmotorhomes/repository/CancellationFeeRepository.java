package com.spring.nordicmotorhomes.repository;

import com.spring.nordicmotorhomes.Entity.CancellationFee;
import com.spring.nordicmotorhomes.Entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CancellationFeeRepository extends JpaRepository<CancellationFee,Long> {
}