/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminBean;

import com.context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author hieu bach
 */
public class TypeProduct {
    
    public String getTypeName(int id) throws Exception{
        Connection conn = new DBContext().getConnection();
        String query="select * from TypeProduct where typeID = "+ id;
        ResultSet rs = conn.prepareStatement(query).executeQuery();
        String name="";
        while(rs.next()){
          name=  rs.getString(2);
        }
        return name;
    }
    
     public int getTypeID(String name) throws Exception{
        Connection conn = new DBContext().getConnection();
        String query="select * from TypeProduct where typeName = '"+name+"'";
        ResultSet rs = conn.prepareStatement(query).executeQuery();
        String id="";
        while(rs.next()){
          id=  rs.getString(1);
        }
        return Integer.parseInt(id);
    }
}
