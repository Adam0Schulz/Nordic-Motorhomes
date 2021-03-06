package com.spring.nordicmotorhomes.Service;

import com.spring.nordicmotorhomes.Entity.SystemVariable;
import com.spring.nordicmotorhomes.repository.SystemVariableRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
// Adam
@Service
public class SystemVariableService {

    @Autowired
    private SystemVariableRepository systemVariableRepository;


    // Get all variables
    public List<SystemVariable> getAllVariables () {
        return systemVariableRepository.findAll();
    }

    // Get motorhome availability buffer - returns the value of the variable
    public double getMotorhomeAvailabilityBuffer() {
        return systemVariableRepository.findByName("motorhome availability buffer").get().getValue();
    }

    // Get additional kilometer fee - returns the value of the variable
    public double getAdditionalKilometerFee() {
        return systemVariableRepository.findByName("additional drop-off kilometer fee").get().getValue();
    }

    // Create variable
    public SystemVariable createVariable(String name, double value) {
        SystemVariable newVariable = SystemVariable.builder()
                .name(name)
                .value(value)
                .build();
        systemVariableRepository.save(newVariable);
        return newVariable;
    }
}
