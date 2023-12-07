/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
public class Product {
    int pID;
    String pName;
    double price;
    String image;
    String title;
    String description;
    int cID;
    int quantity;

    public Product() {
    }

    public Product(int pID, String pName, double price, String image, String title, String description, int cID, int quantity) {
        this.pID = pID;
        this.pName = pName;
        this.price = price;
        this.image = image;
        this.title = title;
        this.description = description;
        this.cID = cID;
        this.quantity = quantity;
    }

    public Product(String pName, double price, String image, String title, String description, int cID, int quantity) {
        this.pName = pName;
        this.price = price;
        this.image = image;
        this.title = title;
        this.description = description;
        this.cID = cID;
        this.quantity = quantity;
    }

    public int getpID() {
        return pID;
    }

    public void setpID(int pID) {
        this.pID = pID;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getcID() {
        return cID;
    }

    public void setcID(int cID) {
        this.cID = cID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "Product{" + "pID=" + pID + ", pName=" + pName + ", price=" + price + ", image=" + image + ", title=" + title + ", description=" + description + ", cID=" + cID + ", quantity=" + quantity + '}';
    }

    
    
            
}
