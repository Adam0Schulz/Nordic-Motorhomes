package com.spring.nordicmotorhomes.Model;

import javax.persistence.*;
import java.sql.Date;
import java.sql.Time;


public class Booking {

    private int id;
    private Customer customer;
    private Date startDate;
    private Time pickUpTime;
    private Date endDate;
    private Motorhome motorhome;
    private Employee employee;
    private String pickUpLocation;
    private String dropOffLocation;
    private double totalPrice;
    private double fuelLevel;

    public Booking(int id, Customer customer, Date startDate, Time pickUpTime, Date endDate, Motorhome motorhome, Employee employee, String pickUpLocation, String dropOffLocation, double totalPrice, double fuelLevel) {
        this.id = id;
        this.customer = customer;
        this.startDate = startDate;
        this.pickUpTime = pickUpTime;
        this.endDate = endDate;
        this.motorhome = motorhome;
        this.employee = employee;
        this.pickUpLocation = pickUpLocation;
        this.dropOffLocation = dropOffLocation;
        this.totalPrice = totalPrice;
        this.fuelLevel = fuelLevel;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
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

    public Motorhome getMotorhome() {
        return motorhome;
    }

    public void setMotorhome(Motorhome motorhome) {
        this.motorhome = motorhome;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
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
}
