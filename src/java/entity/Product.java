/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import com.context.DBContext;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hieu bach
 */
public class Product {
    int pid;
    String pname;
    double price;
    String imageName;
    String content;
    int typeID;
    String typeName;

    public String getTypeName() {
        String name="";
        try {
            name=new adminBean.TypeProduct().getTypeName(typeID);
        } catch (Exception ex) {
            Logger.getLogger(Product.class.getName()).log(Level.SEVERE, null, ex);
        }
        return name;
    }
    
    
    
    public Product(int pid, String pname, double price, String imageName, String content, int typeID) {
        this.pid = pid;
        this.pname = pname;
        this.price = price;
        this.imageName = imageName;
        this.content = content;
        this.typeID = typeID;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getTypeID() {
        return typeID;
    }

    public void setTypeID(int typeID) {
        this.typeID = typeID;
    }
    
    
}
