package com.spring.nordicmotorhomes.repository;

import com.spring.nordicmotorhomes.Entity.SystemVariable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;


@Repository
public interface SystemVariableRepository extends JpaRepository<SystemVariable,Long> {

    Optional<SystemVariable> findByName(String motorhome_availability_buffer);
}
