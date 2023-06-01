package com.example.demo.entity;

public class Review {
    private String productid;
    private String comment;
    private String username;

    public Review(String productid, String comment, String username) {
        this.productid = productid;
        this.comment = comment;
        this.username = username;
    }

    public String getProductid() {
        return productid;
    }

    public void setProductid(String productid) {
        this.productid = productid;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
