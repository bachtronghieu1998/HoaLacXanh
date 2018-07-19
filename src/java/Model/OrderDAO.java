/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import com.context.DBContext;
import entity.CartItem;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 *
 * @author hieu bach
 */
public class OrderDAO {

    public void addOrder(String uid, String time, int status) throws Exception {
        Connection conn = new DBContext().getConnection();
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy/MM/dd");
                java.util.Date date1 = sdf.parse(time);
                Date date_temp = new java.sql.Date(date1.getTime());
        String sql = "insert into OrderHistory values(" + uid + ",'" + date_temp + "'," + status + ")";
        conn.prepareStatement(sql).executeUpdate();
        conn.close();
    }

    public String getOrderID() throws Exception {
        String oid = "";
        Connection conn = new DBContext().getConnection();
        String sql = "select max(orderID) as 'max' from OrderHistory";
        ResultSet rs = conn.prepareStatement(sql).executeQuery();
        while (rs.next()) {
            oid = rs.getString(1);
        }
        return oid;
    }

    public void addOrderItem(String oid, List<CartItem> cart) throws Exception {
        Connection conn = new DBContext().getConnection();
        for (int i = 0; i < cart.size(); i++) {
            int pid = cart.get(i).getPid();
            int quantity = cart.get(i).getQuantity();
            String sql = "insert into OrderItemHistory values(?,?,?)";
            PreparedStatement pr = conn.prepareStatement(sql);
            pr.setInt(1, Integer.parseInt(oid));
            pr.setInt(2, pid);
            pr.setInt(3, quantity);
            pr.executeUpdate();
        }

        conn.close();
    }
}
