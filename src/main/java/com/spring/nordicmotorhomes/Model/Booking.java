package com.spring.nordicmotorhomes.Model;

import javax.persistence.*;
import java.sql.Date;
import java.sql.Time;

@Entity

public class Booking {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int ID;
    private int customerID;
    private Date startDate;
    private Time pickUpTime;
    private Date endDate;
    private int motorhomeID;
    private int employeeID;
    private String pickUpLocation;
    private String dropOffLocation;
    private double totalPrice;
    private double fuelLevel;

    public Booking(Date startDate, Time pickUpTime, Date endDate, int motorhomeID, int employeeID, String pickUpLocation, String dropOffLocation, double totalPrice, double fuelLevel) {
        this.startDate = startDate;
        this.pickUpTime = pickUpTime;
        this.endDate = endDate;
        this.motorhomeID = motorhomeID;
        this.employeeID = employeeID;
        this.pickUpLocation = pickUpLocation;
        this.dropOffLocation = dropOffLocation;
        this.totalPrice = totalPrice;
        this.fuelLevel = fuelLevel;
    }

    public Booking(){

    }

    public int getID() {
        return ID;
    }

    public void setID(int id) {
        this.ID = id;
    }


    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Time getPickUpTime() {
        return pickUpTime;
    }

    public void setPickUpTime(Time pickUpTime) {
        this.pickUpTime = pickUpTime;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getPickUpLocation() {
        return pickUpLocation;
    }

    public void setPickUpLocation(String pickUpLocation) {
        this.pickUpLocation = pickUpLocation;
    }

    public String getDropOffLocation() {
        return dropOffLocation;
    }

    public void setDropOffLocation(String dropOffLocation) {
        this.dropOffLocation = dropOffLocation;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public double getFuelLevel() {
        return fuelLevel;
    }

    public void setFuelLevel(double fuelLevel) {
        this.fuelLevel = fuelLevel;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public int getMotorhomeID() {
        return motorhomeID;
    }

    public void setMotorhomeID(int motorhomeID) {
        this.motorhomeID = motorhomeID;
    }

    public int getEmployeeID() {
        return employeeID;
    }

    public void setEmployeeID(int employeeID) {
        this.employeeID = employeeID;
    }
}
