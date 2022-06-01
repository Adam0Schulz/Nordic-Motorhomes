package com.spring.nordicmotorhomes.repository;

import com.spring.nordicmotorhomes.Entity.CancellationFee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
// Wanesa
@Repository
public interface CancellationFeeRepository extends JpaRepository<CancellationFee,Long> {
}