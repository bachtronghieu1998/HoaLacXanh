/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import com.context.DBContext;
import entity.Blog;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class BlogDAO {
    public List<Blog> select() throws Exception
    {
        List<Blog> blogs=new ArrayList<>();
        String query="select * from Blog";
        Connection conn=new DBContext().getConnection();        
        ResultSet rs=conn.prepareStatement(query).executeQuery();
        
        while(rs.next()){
            int id=rs.getInt(1);
            String name=rs.getString(2);
            String image=rs.getString(3);
            String content=rs.getString(4);
            Date time=rs.getDate(5);
            blogs.add(new Blog(id, name, image, content, time));  
            
        }
        conn.close();
        return blogs;
    }
    
    public List<Blog> selectByID(int id) throws Exception
    {
        List<Blog> blogs=new ArrayList<>();
        String query="select * from Blog where blogID="+id;
        Connection conn=new DBContext().getConnection();        
        ResultSet rs=conn.prepareStatement(query).executeQuery();
        
        while(rs.next()){
            
            String name=rs.getString(2);
            String image=rs.getString(3);
            String content=rs.getString(4);
            Date time=rs.getDate(5);
            blogs.add(new Blog(id, name, image, content, time));  
            
        }
        conn.close();
        return blogs;
    }
    
    public void delete(int id) throws Exception{
        String query="DELETE FROM Blog WHERE blogID="+id;
        Connection conn=new DBContext().getConnection();
        conn.prepareStatement(query).executeUpdate();
        conn.close();
    }
    public void add(String name, String content, String time) throws Exception{
        String query="insert into Blog values(N'"+name+"',null,N'"+content+"','"+time+"')";
        Connection conn=new DBContext().getConnection();
        conn.prepareStatement(query).executeUpdate();
        conn.close();
    }
    public void update(int id,String name, String content, String time) throws Exception{
        
        String query="update Blog set [name]=N'"+name+"', content=N'"+content+"', [time]='"+time+"' where blogId="+id;
        Connection conn=new DBContext().getConnection();
        conn.prepareStatement(query).executeUpdate();
        conn.close();
    }
}
