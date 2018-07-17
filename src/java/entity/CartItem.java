/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author hieu bach
 */
public class CartItem {
    int pid;
    String productName;
    double price;
    String imageName;
    int quantity;
    double total;
    public CartItem(int pid,String productName, double price, String imageName, int quantity) {
        this.productName = productName;
        this.price = price;
        this.imageName = imageName;
        this.quantity = quantity;
        this.pid=pid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotal() {
        return quantity*price;
    }

    public void setTotal(double total) {
        this.total = total;
    }
    
    
    
    
}
