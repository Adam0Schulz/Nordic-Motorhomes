package com.spring.nordicmotorhomes.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity

public class Motorhome {

    //ATTRIBUTES
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private int id;
    private String brand;
    private String model;
    private int capacity;
    private boolean availability;
    private String reg_number;
    private double base_price;
    private int mileage;

    //CONSTRUCTOR

    public Motorhome(String brand, String model, int capacity, boolean availability, String reg_number, double base_price, int mileage) {
        this.brand = brand;
        this.model = model;
        this.capacity = capacity;
        this.availability = availability;
        this.reg_number = reg_number;
        this.base_price = base_price;
        this.mileage = mileage;
    }

    public Motorhome() {

    }

    //SETTERS AND GETTERS

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getCapacity() {
        return capacity;
    }

    public void setCapacity(int capacity) {
        this.capacity = capacity;
    }

    public boolean isAvailability() {
        return availability;
    }

    public void setAvailability(boolean availability) {
        this.availability = availability;
    }

    public String getReg_number() {
        return reg_number;
    }

    public void setReg_number(String reg_number) {
        this.reg_number = reg_number;
    }

    public double getBase_price() {
        return base_price;
    }

    public void setBase_price(double base_price) {
        this.base_price = base_price;
    }

    public int getMileage() {
        return mileage;
    }

    public void setMileage(int mileage) {
        this.mileage = mileage;
    }
}
