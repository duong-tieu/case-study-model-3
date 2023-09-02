package com.example.model.dto;

public class StaffDto {
    private String id;
    private String name;
    private String email;
    private String address;
    private String phone;
    private String startDate;
    private double salary;
    private String position;
    private boolean status;
    public StaffDto() {
    }

    public StaffDto(String id, String name, String email, String address, String phone,String startDate, double salary, String position,boolean status) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.address = address;
        this.phone = phone;
        this.startDate=startDate;
        this.salary = salary;
        this.position = position;
this.status=status;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public StaffDto(String name, String email, String address, String phone, String startDate, double salary, String position, boolean status)  {
        this.name = name;
        this.email = email;
        this.address = address;
        this.phone = phone;
        this.startDate=startDate;
        this.salary = salary;
        this.position = position;
        this.status=status;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public StaffDto(String id, String name, String email, String address, String phone, String startDate, double salary, String position) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.address = address;
        this.phone = phone;
        this.startDate = startDate;
        this.salary = salary;
        this.position = position;
    }

    public StaffDto(String id, String name, String address, String position) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.position = position;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}


