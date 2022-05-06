package com.spring.nordicmotorhomes;

public class Employee {

    private int employee_ID;
    private String first_name;
    private String last_name;
    private int phone_number;
    private int CPR;
    private String title;
    private String email;

    //constructor

    public Employee(int employee_ID, String first_name, String last_name, int phone_number, int CPR, String title, String email) {
        this.employee_ID = employee_ID;
        this.first_name = first_name;
        this.last_name = last_name;
        this.phone_number = phone_number;
        this.CPR = CPR;
        this.title = title;
        this.email = email;
    }


    //setters and getters

    public int getEmployee_ID() {
        return employee_ID;
    }

    public void setEmployee_ID(int employee_ID) {
        this.employee_ID = employee_ID;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public int getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(int phone_number) {
        this.phone_number = phone_number;
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
}
