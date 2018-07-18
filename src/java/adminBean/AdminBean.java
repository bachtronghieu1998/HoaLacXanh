/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminBean;

import com.context.DBContext;
import java.sql.Connection;

/**
 *
 * @author hieu bach
 */
public class AdminBean {

    public void InsertAdmin(String adName, String pass) throws Exception {
        Connection conn = new DBContext().getConnection();
        String sql = "insert into AdminWebsite(username,password)\n"
                + "values('" + adName + "','" + pass + "')";
        conn.prepareStatement(sql).executeUpdate();
        conn.close();
    }

    public void UpdatePassWord(String name, String newPsw) throws Exception {
        Connection conn = new DBContext().getConnection();
        String sql = "update AdminWebsite \n"
                + "set password='"+newPsw+"'\n"
                + "where username='"+name+"'";
        conn.prepareStatement(sql).executeUpdate();
        conn.close();
    }
}
