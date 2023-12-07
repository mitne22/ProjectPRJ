/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ADMIN
 */
public class OrderDetails {
    int orderID;
    int pID;
    int quantityOrder;
    double price;

    public OrderDetails(int orderID, int pID, int quantityOrder, double price) {
        this.orderID = orderID;
        this.pID = pID;
        this.quantityOrder = quantityOrder;
        this.price = price;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public int getpID() {
        return pID;
    }

    public void setpID(int pID) {
        this.pID = pID;
    }

    public int getQuantityOrder() {
        return quantityOrder;
    }

    public void setQuantityOrder(int quantityOrder) {
        this.quantityOrder = quantityOrder;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "OrderDetails{" + "orderID=" + orderID + ", pID=" + pID + ", quantityOrder=" + quantityOrder + ", price=" + price + '}';
    }
    
    
    
}
