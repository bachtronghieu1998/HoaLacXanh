/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import com.context.DBContext;
import entity.Order;
import entity.ProductOrder;
import entity.Status;
import entity.User;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author This PC
 */
public class OrderBean {

    String orderID;

    public String getOrderID() {
        return orderID;
    }

    public void setOrderID(String orderID) {
        this.orderID = orderID;
    }

    public List<Order> selectAll() throws Exception {

        List<Order> orders = new ArrayList<>();

        String sql = "Select * from OrderHistory a\n"
                + "  left join StatusOrder b ON a.statusID=b.statusID";
        Connection connection = new DBContext().getConnection();
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            int orderID = rs.getInt(1);
            int userID = rs.getInt(2);
            Date time = rs.getDate(3);
            int statusID = rs.getInt(4);
            String statusName = rs.getString(6);

            orders.add(new Order(orderID, userID, time, statusID, statusName));

        }

        rs.close();
        connection.close();
        return orders;
    }

    public void updateStatus(int orderID, int statusID) throws Exception {
        Connection conn = new DBContext().getConnection();
        String query = "update OrderHistory set statusID= " + statusID + " where orderID = " + orderID;
        conn.prepareStatement(query).executeUpdate();
        conn.close();
    }
   public List<Status> selectStatus() throws Exception
   {
       List<Status> listStt = new ArrayList<>();

        String query = "select * from StatusOrder ";
        Connection connection = new DBContext().getConnection();
        PreparedStatement ps = connection.prepareCall(query);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            int statusID = rs.getInt(1);
            String statusName = rs.getString(2);
            
            listStt.add(new Status(statusID, statusName));

        }

        rs.close();
        connection.close();
        return listStt;
   }
    public List<ProductOrder> sellectOrderDetail() throws SQLException, Exception {
        List<ProductOrder> list = new ArrayList<>();
        String sql = "Select * from OrderItemHistory a\n"
                + "	left join Product b ON a.productID=b.productID";
        Connection connection = new DBContext().getConnection();
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            int orderID = rs.getInt(1);
            int productID = rs.getInt(2);
            int quantity = rs.getInt(3);

            double price = rs.getDouble(6);
            list.add(new ProductOrder(orderID,productID, quantity, price));

        }

        rs.close();
        connection.close();
        return list;
    }
}
