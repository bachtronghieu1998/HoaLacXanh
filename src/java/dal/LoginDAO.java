/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import com.context.DBContext;
import entity.AdminAccount;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author This PC
 */
public class LoginDAO {
    public List<AdminAccount> selectAccount() throws Exception {
        try {
            List<AdminAccount> list = new ArrayList<>();
           
            String sql = "SELECT * FROM AdminWebsite";
             Connection connection = new DBContext().getConnection();
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();          
            while (rs.next()) {
                String userName=rs.getString(2);
                String password=rs.getString(3);
            list.add(new AdminAccount(userName, password));  
            }
             rs.close();
            connection.close();
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(LoginDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
}
}