/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminBlogBean;

import com.context.DBContext;
import dal.BlogDAO;
import entity.Blog;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class BlogBean {
    int id;
   
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<Blog> selectAll() throws Exception {
        List<Blog> blogs = new ArrayList<>();
        BlogDAO dao=new BlogDAO();
        blogs=dao.select();
        return blogs;
    }
    
    public List<Blog> selectByID() throws Exception {
        List<Blog> blogs = new ArrayList<>();
        BlogDAO dao=new BlogDAO();
        blogs=dao.selectByID(id);
        return blogs;
    }
    
    public void delete() throws Exception {
        BlogDAO dao=new BlogDAO();
        dao.delete(id);
    }
   
}
