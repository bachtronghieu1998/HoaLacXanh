/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import com.context.DBContext;
import dal.BlogDAO;
import entity.Blog;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class BeanBlog {
    private int page;
    private int pageSize;
    public BeanBlog() {
        page=1;
        pageSize=4;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        //int i=8;
        this.pageSize = pageSize;
    }
    
    public int getPages() throws Exception
    {
        int rows=getRowCount();
        if(rows%pageSize==0) return rows/pageSize;
        return rows/(pageSize) +1;
    }
    
    //return total records of product table
    public int getRowCount() throws Exception{
        String select="Select count(*) from Blog";
        Connection conn=new DBContext().getConnection();
        ResultSet rs=conn.prepareStatement(select).executeQuery();
        int p=0;
        if(rs.next()) p=rs.getInt(1);
        rs.close();
        conn.close();
        return p;
    }
    public List<Blog> getBlogs() throws Exception{
        //calculate from and to
        int from =(page-1)*pageSize+1;
        int to=page*pageSize;      
        String select="{call GetBlogs(?,?)}";
        Connection conn=new DBContext().getConnection();
        CallableStatement cs=conn.prepareCall(select);
        cs.setInt(1,from); cs.setInt(2,to);
        ResultSet rs=cs.executeQuery();
        List<Blog> p =new ArrayList<>();
        while(rs.next())
        {        
            int id=rs.getInt(1);
            String name=rs.getString(2);
            Date time=rs.getDate(3);
            String content =rs.getString(4);
            p.add(new Blog(id, name, null, content, time));
        }
        rs.close();
        conn.close();
        return p;
    }
}
