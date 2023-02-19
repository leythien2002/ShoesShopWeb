/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Asus
 */
public class Product {

    private String id;
    private String name;
    private int price;
    private String type;
    private int size;
    private String image1;
    private String image2;
    private String image3;

    private String description;

    public Product() {
    }

    public Product(String id, String name, int price, String type, int size, String image1, String description) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.size = size;
        this.image1 = image1;
        this.type = type;
        this.description = description;
    }

    public Product(String id, String name, int price, String type, int size, String image1, String image2, String image3, String description) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.type = type;
        this.size = size;
        this.image1 = image1;
        this.image2 = image2;
        this.image3 = image3;
        this.description = description;
    }

    public String getImage2() {
        return image2;
    }

    public void setImage2(String image2) {
        this.image2 = image2;
    }

    public String getImage3() {
        return image3;
    }

    public void setImage3(String image3) {
        this.image3 = image3;
    }

    public String getDescription() {
        return description;
    }

    public String getId() {
        return id;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public int getPrice() {
        return price;
    }

    public String getType() {
        return type;
    }

    public int getSize() {
        return size;
    }

    public String getImage1() {
        return image1;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public void setImage1(String image1) {
        this.image1 = image1;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", price=" + price + ", type=" + type + ", size=" + size + ", image1=" + image1 + ", image2=" + image2 + ", image3=" + image3 + ", description=" + description + '}';
    }

    

}
