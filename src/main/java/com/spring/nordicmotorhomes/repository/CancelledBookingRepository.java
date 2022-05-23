package com.spring.nordicmotorhomes.repository;

import com.spring.nordicmotorhomes.Entity.CancelledBooking;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CancelledBookingRepository extends JpaRepository<CancelledBooking,Long> {
}