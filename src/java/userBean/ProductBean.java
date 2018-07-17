/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package userBean;

import com.context.DBContext;
import entity.Product;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hieu bach
 */
public class ProductBean {
     int typeID;
     double from;
     double to;
     int page;
     int pageSize;
     
     
     
     
    public ProductBean() {
        this.typeID = 1;
        this.page=1;
        this.pageSize=6;
    }

    public double getFrom() {
        return from;
    }

    public void setFrom(double from) {
        this.from = from;
    }

    public double getTo() {
        return to;
    }

    public void setTo(double to) {
        this.to = to;
    }

     
     
    public int getTypeID() {
        return typeID;
    }

    public void setTypeID(int typeID) {
        this.typeID = typeID;
    }
    
    
    
     public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPagesByID() throws Exception {
        int rows = getRowsCountByID();
        if (rows % pageSize == 1 || rows<pageSize) {
            return 1 + rows / pageSize;
        }else{
             return rows / pageSize;
        }
    }
    
     public int getPagesByPrice() throws Exception {
        int rows = getRowsCountByPrice();
        if (rows % pageSize == 1 || rows<pageSize) {
            return 1 + rows / pageSize;
        }else{
             return rows / pageSize;
        }
    }

     //return total number of records of product
    public int getRowsCountByID() throws Exception {
        String select = "select count(*) from Product where typeID = "+typeID ;
        Connection conn = new DBContext().getConnection();
        ResultSet rs = conn.prepareStatement(select).executeQuery();
        int p = 0;
        if (rs.next()) {
            p = rs.getInt(1);
        }
        rs.close();
        conn.close();
        return p;
    }
    
     public int getRowsCountByPrice() throws Exception {
        String select = "select count(*) from Product  where price>= "+from+" and price <= "+to+"  and typeID= "+typeID ;
        Connection conn = new DBContext().getConnection();
        ResultSet rs = conn.prepareStatement(select).executeQuery();
        int p = 0;
        if (rs.next()) {
            p = rs.getInt(1);
        }
        rs.close();
        conn.close();
        return p;
    }
    
    public List<Product> selectAllByTypeID() throws Exception {
        //calculate begin to the end
        int fromTemp = (page - 1) * pageSize + 1;
        int toTemp = page * pageSize;
        String sql = "{call getProductByID(?,?,?)}";
        Connection conn = new DBContext().getConnection();
        CallableStatement cs = conn.prepareCall(sql);
        cs.setInt(1, fromTemp);
        cs.setInt(2, toTemp);
        cs.setInt(3, typeID);
        ResultSet rs = cs.executeQuery();
        List<Product> p = new ArrayList<>();
        while (rs.next()) {
           int id = rs.getInt(1);
            String pname = rs.getString(2);
            double price = rs.getDouble(3);
            String imageName = rs.getString(4);
            String context = rs.getString(5);
            typeID = rs.getInt(6);
            p.add(new Product(id, pname, price, imageName, context, typeID));
        }
        rs.close();
        conn.close();
        return p;
    }
    
      public List<Product> selectProductByPrice() throws Exception {
        //calculate begin to the end
        int fromTemp = (page - 1) * pageSize + 1;
        int toTemp = page * pageSize;
        String sql = "{call [getProductByPrice](?,?,?,?,?)}";
        Connection conn = new DBContext().getConnection();
        CallableStatement cs = conn.prepareCall(sql);
        cs.setInt(1, fromTemp);
        cs.setInt(2, toTemp);
        cs.setDouble(3, from);
        cs.setDouble(4, to);
        cs.setInt(5, typeID);
        ResultSet rs = cs.executeQuery();
        List<Product> p = new ArrayList<>();
        while (rs.next()) {
           int id = rs.getInt(1);
            String pname = rs.getString(2);
            double price = rs.getDouble(3);
            String imageName = rs.getString(4);
            String context = rs.getString(5);
            typeID = rs.getInt(6);
            p.add(new Product(id, pname, price, imageName, context, typeID));
        }
        rs.close();
        conn.close();
        return p;
    }
    
}
