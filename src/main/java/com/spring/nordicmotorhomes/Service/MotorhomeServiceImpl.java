package com.spring.nordicmotorhomes.Service;

import com.spring.nordicmotorhomes.DAO.EmployeeRepository;
import com.spring.nordicmotorhomes.DAO.MotorhomeRepository;
import com.spring.nordicmotorhomes.Model.Motorhome;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;

public class MotorhomeServiceImpl implements MotorhomeService{
    @Autowired
    MotorhomeRepository motorhomeRepository;

    @Override
    public ArrayList<Motorhome> findAllCustomer() {
        return null;
    }

    @Override
    public Motorhome findAllMotorhomeByID(Integer id) {
        return null;
    }

    @Override
    public void addMotorhome() {

    }

    @Override
    public void deleteMotorhomeByID(Integer id) {

    }

    @Override
    public void deleteAllMotorhomeData() {

    }
}
