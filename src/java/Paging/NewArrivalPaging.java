/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Paging;

import com.context.DBContext;
import entity.Product;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hieu bach
 */
public class NewArrivalPaging {

     private int page, pageSize;
     
    public NewArrivalPaging() {
        page = 1;
        pageSize = 5;
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

    public int getPages() throws Exception {
        int rows = getRowsCount();
        if (rows % pageSize == 1) {
            return 1 + rows / pageSize;
        }else{
             return rows / pageSize;
        }
    }

    public List<Product> selectNewProduct() throws Exception {
        //calculate begin to the end
        int rows = getRowsCount();
        int from = (page - 1) * pageSize + 1;
        int to = page * pageSize;
        String sql = "{call getNewProduct(?,?)}";
        Connection conn = new DBContext().getConnection();
        CallableStatement cs = conn.prepareCall(sql);
        cs.setInt(1, from);
        cs.setInt(2, to);
        ResultSet rs = cs.executeQuery();
        List<Product> p = new ArrayList<>();
        while (rs.next()) {
           int id = rs.getInt(1);
            String pname = rs.getString(2);
            double price = rs.getDouble(3);
            String imageName = rs.getString(4);
            String context = rs.getString(5);
            int typeID = rs.getInt(6);
            p.add(new Product(id, pname, price, imageName, context, typeID));
        }
        rs.close();
        conn.close();
        return p;
    }
    
    public List<Product> selectNewProduct2() throws Exception {
        //calculate begin to the end
        String select = "select top(15) * from Product";
        Connection conn = new DBContext().getConnection();
        ResultSet rs = conn.prepareStatement(select).executeQuery();
         List<Product> p = new ArrayList<>();
        while (rs.next()) {
           int id = rs.getInt(1);
            String pname = rs.getString(2);
            double price = rs.getDouble(3);
            String imageName = rs.getString(4);
            String context = rs.getString(5);
            int typeID = rs.getInt(6);
            p.add(new Product(id, pname, price, imageName, context, typeID));
        }
        rs.close();
        conn.close();
        return p;
    }
    

    //return total number of records of product
    public int getRowsCount() throws Exception {
        String select = "select count(*) from Product";
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
}
