/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author ADMIN
 */
public class Orders {
    int orderID;
    Date orderDate;
    double totalPrices;
    int customerID;

    public Orders() {
    }

    public Orders(int orderID, Date orderDate, double totalPrices, int customerID) {
        this.orderID = orderID;
        this.orderDate = orderDate;
        this.totalPrices = totalPrices;
        this.customerID = customerID;
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public double getTotalPrices() {
        return totalPrices;
    }

    public void setTotalPrices(double totalPrices) {
        this.totalPrices = totalPrices;
    }

    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    @Override
    public String toString() {
        return "Orders{" + "orderID=" + orderID + ", orderDate=" + orderDate + ", totalPrices=" + totalPrices + ", customerID=" + customerID + '}';
    }
    
    
}
