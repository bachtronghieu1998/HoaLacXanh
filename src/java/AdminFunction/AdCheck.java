/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminFunction;

import com.context.DBContext;
import java.sql.Connection;
import java.sql.ResultSet;

/**
 *
 * @author hieu bach
 */
public class AdCheck {
    
    public boolean isExitedAdName(String name) throws Exception{
        Connection conn = new DBContext().getConnection();
        String query="select count(*) as row from AdminWebsite where username= '"+name+"' ";
        ResultSet rs = conn.prepareStatement(query).executeQuery();
        int count =0;
        while(rs.next()){
            count = rs.getInt(1);
        }
        if(count==0){
            return false;
        }else{
            return true;
        }
        
    }
}
