/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import com.context.DBContext;
import entity.User;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hieu bach
 */
public class UserDAO {
    
    
    public List<User> selectAllUser() throws Exception{
        List<User> ls=new ArrayList();
        Connection conn = new DBContext().getConnection();
        String query="select * from UserWebsite";
        ResultSet rs = conn.prepareStatement(query).executeQuery();
        while(rs.next()){
            String username=rs.getString(2);
            String psw=rs.getString(7);
            ls.add(new User(username, psw));
        }
        return ls;
    }
    
   public void addNewUser(String uname,String address,String email,String phone,String psw) throws Exception{
        Connection conn = new DBContext().getConnection();
        String sql="insert into UserWebsite values('"+uname+"',null,'"+email+"','"+address+"','"+phone+"','"+psw+"')";
        conn.prepareStatement(sql).executeUpdate();
        conn.close();
   }
   
   public String getName(int userID) throws Exception{
        Connection conn = new DBContext().getConnection();
        String query="select name from UserWebsite where userID ="+userID;
        ResultSet rs = conn.prepareStatement(query).executeQuery();
        String name="";
        while(rs.next()){
           name= rs.getString(1);
        }
        return name;
   }
}
