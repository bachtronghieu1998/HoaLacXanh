/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdController;

import java.io.IOException;
import java.io.PrintWriter;
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
public class UpdatePSW extends HttpServlet {

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
            String oldPsw = request.getParameter("oldPsw");
            String newPsw = request.getParameter("newPsw");
            String cfPsw = request.getParameter("cfPsw");
            String oldPswError="";
            String psw = (String) request.getSession().getAttribute("psw");
             String uname = (String) request.getSession().getAttribute("username");
            if(!oldPsw.equals(psw)){
                oldPswError="Old password is incorrect";
            }
            String passLengthError = "";
            if (newPsw.replace(" ", "").length() < 6) {
                passLengthError = "Pass length must >6";
            }
            String checkSameInput="";
            if(!newPsw.equals(cfPsw)){
                checkSameInput="New password and confirm password is not the same";
            }
             if (oldPswError.length() != 0 || passLengthError.length() != 0 || checkSameInput.length() != 0) {
                String str = "Admin/ChangePassWord.jsp?oldPswError=" + oldPswError + "&passLengthError=" + passLengthError + "&sameInputError=" + checkSameInput;
                response.sendRedirect(str);

            } else {
                new adminBean.AdminBean().UpdatePassWord(uname, newPsw);
                response.sendRedirect("Admin/ChangePassWord.jsp?result=Add+successflul");
            }
        } catch (Exception ex) {
            Logger.getLogger(UpdatePSW.class.getName()).log(Level.SEVERE, null, ex);
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
