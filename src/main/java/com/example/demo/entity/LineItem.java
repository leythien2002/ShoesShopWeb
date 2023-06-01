/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.demo.entity;

/**
 *
 * @author thien
 */
public class LineItem {
    private Product product;
    private int   amount;

    public LineItem() {
    }

    public LineItem(Product product, int amount) {
        this.product = product;
        this.amount = amount;
    }

    public Product getProduct() {
        return product;
    }

    public int getAmount() {
        return amount;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
     public double getTotal(){
        double total = product.getPrice() * amount;
        return total;
    }
     

   
     
}
