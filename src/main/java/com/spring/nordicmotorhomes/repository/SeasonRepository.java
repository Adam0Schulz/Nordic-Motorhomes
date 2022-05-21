package com.spring.nordicmotorhomes.repository;

import com.spring.nordicmotorhomes.Entity.Employee;
import com.spring.nordicmotorhomes.Entity.Season;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SeasonRepository extends JpaRepository<Season,Long> {
}
