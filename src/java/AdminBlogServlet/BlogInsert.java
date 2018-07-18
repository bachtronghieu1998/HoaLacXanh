/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminBlogServlet;

import dal.BlogDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
public class BlogInsert extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            String action=request.getParameter("insert");
            if(action!=null){
            String name=request.getParameter("name");
            String content=request.getParameter("content");
            String time=request.getParameter("time");
            if(name.isEmpty()||content.isEmpty()||time.isEmpty())
            {
                String message = "Title/Date/Content can not be empty";
                response.sendRedirect("Admin/InsertBlog.jsp?message=" + URLEncoder.encode(message, "UTF-8"));
            }
            else{
            BlogDAO dao=new BlogDAO();
            dao.add(name, content, time);}
            response.sendRedirect("Admin/AdminBlog.jsp");
            }
            String cancel=request.getParameter("cancel");
            if(cancel!=null){
                response.sendRedirect("Admin/AdminBlog.jsp");
            }
            
            /*RequestDispatcher rd=request.getRequestDispatcher("AdminBlog.jsp");
            rd.forward(request, response);*/
           
        } catch (Exception ex) {
            Logger.getLogger(BlogInsert.class.getName()).log(Level.SEVERE, null, ex);
            /*String message = "Validate error in Title/Date/Content";
            response.sendRedirect("InsertBlog.jsp?message=" + URLEncoder.encode(message, "UTF-8"));*/
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
