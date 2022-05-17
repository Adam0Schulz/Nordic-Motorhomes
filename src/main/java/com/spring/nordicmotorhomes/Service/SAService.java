package com.spring.nordicmotorhomes.Service;

import com.spring.nordicmotorhomes.Model.Customer;
import org.apache.tomcat.jni.Time;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class SAService {

    // potential problem with the Date datatype (start / end)
    public boolean createBooking(int customerCpr, String customerFirst, String customerLast, int customerPhone, Date start, Date end, int motorhomeID, List extras, String pickUp, String dropOff, Time pickUpTime, int empID, double total) {

        return true;
    }

}
