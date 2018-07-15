/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminBean;

import com.context.DBContext;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hieu bach
 */
public class ProductBean {

    String pid;
   
    
    
    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public List<Product> selectAllProduct() throws Exception {
        List<Product> ls = new ArrayList<>();
        Connection conn = new DBContext().getConnection();
        String query = "select * from Product";
        ResultSet rs = conn.prepareStatement(query).executeQuery();
        while (rs.next()) {
            int id = rs.getInt(1);
            String pname = rs.getString(2);
            double price = rs.getDouble(3);
            String imageName = rs.getString(4);
            String context = rs.getString(5);
            int typeID = rs.getInt(6);
            ls.add(new Product(id, pname, price, imageName, context, typeID));

        }
        return ls;
    }

    public void deleteProduct() throws Exception {
        Connection conn = new DBContext().getConnection();
        String query = "delete from Product where productID = " + pid;
        conn.prepareStatement(query).executeUpdate();
        conn.close();
    }

    public void UpdateProduct(int pid, String pname, double price, String imgName, int typeID, String content) throws Exception {
        Connection conn = new DBContext().getConnection();
        String query = "update Product\n"
                + "set name='" + pname + "', price= " + price + ", image='" + imgName + "',content='" + content + "', typeID= " + typeID + "\n"
                + "where productID= " + pid;
        conn.prepareStatement(query).executeUpdate();
        conn.close();
    }
    
    public void InsertProduct(String pname,double price,String imgName,int typeID,String content) throws Exception{
         Connection conn = new DBContext().getConnection();
         String query="insert into Product values(?,?,?,?,?)";
        PreparedStatement pr = conn.prepareStatement(query);
        pr.setString(1, pname);
        pr.setDouble(2, price);
        pr.setString(3, imgName);
        pr.setString(4, content);
        pr.setInt(5, typeID);
        pr.executeUpdate();
        conn.close();
    }
    
   
}
