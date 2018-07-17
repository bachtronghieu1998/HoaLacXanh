/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import dal.BlogDAO;
import entity.Blog;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class BeanBlogDetail {
    int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public List<Blog> selectByID() throws Exception{
        BlogDAO dao=new BlogDAO();
        return dao.selectByID(id);
    }
}
