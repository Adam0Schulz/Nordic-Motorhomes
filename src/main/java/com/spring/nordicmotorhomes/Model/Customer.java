package com.spring.nordicmotorhomes.Model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Customer {

    //Attributes

    @Id
    private int id;
    private String firstName;
    private String lastName;
    private int phoneNumber;
    private String email;
    private int CPR;

    //CONSTRUCTOR

    public Customer(String first_name, String last_name, int phone_number, String email, int CPR){
        this.firstName = first_name;
        this.lastName = last_name;
        this.phoneNumber = phone_number;
        this.email = email;
        this.CPR = CPR;
    }

    // SETTERS AND GETTERS

    public String getFirstName(){ return firstName;}
    public void setFirstName(String first_name){ this.firstName = first_name;}
    public String getLastName(){ return lastName;}
    public void setLastName(String last_name){ this.lastName = last_name;}
    public int getPhoneNumber(){ return phoneNumber;}
    public void setPhoneNumber(int phone_number){ this.phoneNumber = phone_number;}
    public String getEmail(){ return email;}
    public void setEmail(String email){ this.email = email;}
    public int getCPR(){ return CPR;}
    public void setCPR(int CPR){ this.CPR = CPR;}
}
