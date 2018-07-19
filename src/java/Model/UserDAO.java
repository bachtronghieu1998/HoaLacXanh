/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import com.context.DBContext;
import java.sql.Connection;
import java.sql.ResultSet;

/**
 *
 * @author hieu bach
 */
public class UserDAO {
    
    public String getID(String name) throws Exception{
        Connection conn = new DBContext().getConnection();
        String sql="select userID from UserWebsite where name= '"+name+"'";
        ResultSet rs = conn.prepareStatement(sql).executeQuery();
        String id="";
        while(rs.next()){
            id=rs.getString(1);
        }
        return id;
    }
    
   
    
    
}
