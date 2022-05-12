package com.spring.nordicmotorhomes.DAO;


import com.spring.nordicmotorhomes.Model.Motorhome;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

// @Repository is a Spring annotation that
// indicates that the decorated class is a repository.
@Repository
public interface MotorhomeRepository extends JpaRepository<Motorhome, Integer>{
}