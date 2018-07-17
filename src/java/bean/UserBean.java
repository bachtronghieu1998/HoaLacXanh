/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import com.context.DBContext;


import entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author This PC
 */
public class UserBean {

    String userID;

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public List<User> selectAll() throws Exception {

        List<User> users = new ArrayList<>();

        String sql = "SELECT * FROM UserWebsite";
        Connection connection = new DBContext().getConnection();
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            int userID = rs.getInt(1);
            String name = rs.getString(2);
            String image = rs.getString(3);
            String email = rs.getString(4);
            String address = rs.getString(5);
            String phone = rs.getString(6);
            users.add(new User(userID, name, image, email, address, phone));

        }
        rs.close();
        connection.close();
        return users;
    }
    public void deleteUser() throws Exception
    {
        Connection conn = new DBContext().getConnection();
        String query = "Delete b from OrderHistory a left join OrderItemHistory b on a.orderID=b.orderID where a.userId="+userID+" \n" +
"delete from OrderHistory where userID="+userID+"\n" +
"delete from Cart where userID="+userID+"\n" +
"Delete from UserWebsite where userID="+userID+"";
        conn.prepareStatement(query).executeUpdate();
        conn.close();
    }
    

}
