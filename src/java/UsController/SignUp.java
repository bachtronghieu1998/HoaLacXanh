/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UsController;

import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hieu bach
 */
public class SignUp extends HttpServlet {

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
           String uname= request.getParameter("uname");
           String address= request.getParameter("address");
           String phone= request.getParameter("phone");
           String psw= request.getParameter("psw");
           String cfpsw= request.getParameter("cfpsw");
           String email=request.getParameter("email");
           String exitedError="";
            List<User> ls = new dal.UserDAO().selectAllUser();
            for(int i=0;i<ls.size();i++){
                if(uname.equals(ls.get(i).getName())){
                    exitedError="this user name is exited";
                }
            }
            String lengthError="";
            if(psw.replaceAll(" ", "").length()<6){
                lengthError="Password length must > 6";
            }
            String checkSameError="";
            if(psw.compareTo(cfpsw)!=0){
                checkSameError="confirmpass word is incorrect";
            }
            if(checkSameError.length()!=0 || lengthError.length()!=0|| exitedError.length()!=0){
                String url="Elements/SignUp.jsp?exitedError="+exitedError+"&lengthError="+lengthError+"&checkSameError="+checkSameError;
                response.sendRedirect(url);
            }else{
                new dal.UserDAO().addNewUser(uname, address, email, phone, psw);
                response.sendRedirect("Elements/TrangChu.jsp?addNew=success");
            }
        } catch (Exception ex) {
            Logger.getLogger(SignUp.class.getName()).log(Level.SEVERE, null, ex);
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
