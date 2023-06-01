package com.example.demo.entity;

public class Detail_Invoice {
    private int ID_In;
    private String ID_P;
    private int amount;

    public Detail_Invoice(int ID_In, String ID_P, int amount) {
        this.ID_In = ID_In;
        this.ID_P = ID_P;
        this.amount = amount;
    }

    public int getID_In() {
        return ID_In;
    }

    public void setID_In(int ID_In) {
        this.ID_In = ID_In;
    }

    public String getID_P() {
        return ID_P;
    }

    public void setID_P(String ID_P) {
        this.ID_P = ID_P;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }


    @Override
    public String toString() {
        return "Detail_Invoice{" +
                "ID_In=" + ID_In +
                ", ID_P='" + ID_P + '\'' +
                ", amount=" + amount +
                '}';
    }
}
