package com.spring.nordicmotorhomes.repository;

import com.spring.nordicmotorhomes.Entity.Booking;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.sql.Date;
import java.util.List;

@Repository
public interface BookingRepository extends JpaRepository<Booking,Long> {
    List<Booking> findByStartDate(Date date);
    List<Booking> findByEndDate(Date date);
}
