package com.example.demo.entity;

import java.time.LocalDate;

public class Invoice {

    private int id_In;
    private String date;
    private String uID;
    private double totalMoney;
    private String phone;
    private String address;

    public Invoice(int id_In, String date, String uID, double totalMoney, String phone, String address) {
        this.id_In = id_In;
        this.date = date;
        this.uID = uID;
        this.totalMoney = totalMoney;
        this.phone = phone;
        this.address = address;
    }

    public int getId_In() {
        return id_In;
    }

    public void setId_In(int id_In) {
        this.id_In = id_In;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getuID() {
        return uID;
    }

    public void setuID(String uID) {
        this.uID = uID;
    }

    public double getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(double totalMoney) {
        this.totalMoney = totalMoney;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
