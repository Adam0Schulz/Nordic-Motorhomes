package com.spring.nordicmotorhomes.Model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Employee {

    //ATTRIBUTES

    @Id
    private int id;
    private String firstName;
    private String lastName;
    private int phoneNum;
    private int CPR;
    private String title;
    private String email;
    private String password;

    //CONSTRUCTOR

    public Employee(String first_name, String last_name, int phone_number, int CPR, String title, String email) {
        this.firstName = first_name;
        this.lastName = last_name;
        this.phoneNum = phone_number;
        this.CPR = CPR;
        this.title = title;
        this.email = email;
    }


    //SETTERS AND GETTERS

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String first_name) {
        this.firstName = first_name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String last_name) {
        this.lastName = last_name;
    }

    public int getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(int phone_number) {
        this.phoneNum = phone_number;
    }

    public int getCPR() {
        return CPR;
    }

    public void setCPR(int CPR) {
        this.CPR = CPR;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() { return password; }


}
