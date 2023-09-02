package com.example.model.entity;

public class Staff {
    private String id;
    private String name;
    private String address;
    private String email;
    private String phone;
    private String startDate;
    private double salary;
    private String position;
    private boolean status;
public Staff(){}
    public Staff(String id, String name, String address, String email, String phone, String startDate, double salary, String position, boolean status) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.email = email;
        this.phone = phone;
        this.startDate = startDate;
        this.salary = salary;
        this.position = position;
        this.status = status;
    }


    public Staff(String name, String address, String email, String phone, String startDate, double salary, String position, boolean status) {
        this.name = name;
        this.address = address;
        this.email = email;
        this.phone = phone;
        this.startDate = startDate;
        this.salary = salary;
        this.position = position;
        this.status = status;
    }

    public Staff(String name, String address, String email, String phone, String startDate, double salary, String position) {
        this.name = name;
        this.address = address;
        this.email = email;
        this.phone = phone;
        this.startDate = startDate;
        this.salary = salary;
        this.position = position;
    }

    public Staff(String id, String name, String address, String email, String phone, String startDate, double salary, String position) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.email = email;
        this.phone = phone;
        this.startDate = startDate;
        this.salary = salary;
        this.position = position;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}
