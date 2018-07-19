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
public class ULoginController extends HttpServlet {

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
            String uname = request.getParameter("uname");
            String psw = request.getParameter("psw");
            List<User> uls = new dal.UserDAO().selectAllUser();
            int checkExited = 0;
            int checkPsw = 0;
            String error = "";
            for (int i = 0; i < uls.size(); i++) {
                if (uls.get(i).getName().equals(uname)) {
                    checkExited = 1;
                    if (uls.get(i).getPsw().equals(psw)) {
                        checkPsw = 1;
                    }
                }
            }
            String url = "";
            if (checkExited == 0) {
                error = "account is not exited";
            } else {
                if (checkPsw == 0) {
                    error = "password is incorrect";
                }
            }
            if (error.length() == 0) {
                 request.getSession().setAttribute("uname", uname);
                 request.getSession().setAttribute("psw",psw);
                 request.getSession().setAttribute("error", "");
                  url = "Elements/TrangChu.jsp?result=Success";
                  response.sendRedirect(url);
            } else {
                 request.getSession().setAttribute("error", error);
                url = "Elements/TrangChu.jsp?error=" + error;
                response.sendRedirect(url);
            }
        } catch (Exception ex) {
            Logger.getLogger(ULoginController.class.getName()).log(Level.SEVERE, null, ex);
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
