package com.spring.nordicmotorhomes.Service;

import com.spring.nordicmotorhomes.Model.Motorhome;

import java.util.ArrayList;

public interface MotorhomeService {
    ArrayList<Motorhome> findAllCustomer();


    Motorhome findAllMotorhomeByID(Integer id);

    void addMotorhome();

    void deleteMotorhomeByID(Integer id);

    void deleteAllMotorhomeData();
}
