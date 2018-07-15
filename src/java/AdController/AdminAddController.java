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
public class AdminAddController extends HttpServlet {

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
            String name = request.getParameter("adname");
            String adpass = request.getParameter("adpass");
            String adConf = request.getParameter("adconf");
            String sameInputError = "";
            System.out.println("addpass=" + adpass);
            System.out.println("adconf=" + adConf);
            if (adpass.compareTo(adConf) != 0) {
                sameInputError = "Not input the same";
            }
            System.out.println(sameInputError);

            String passLengthError = "";
            if (adpass.replace(" ", "").length() < 6) {
                passLengthError = "Pass length must >6";
            }
            String exitedAdminError = "";
            boolean isExited = new AdminFunction.AdCheck().isExitedAdName(name);
            if (isExited) {
                exitedAdminError = "This admin name is exited";
            }
            if (sameInputError.length() != 0 || passLengthError.length() != 0 || exitedAdminError.length() != 0) {
                String str = "Admin/Admin_Add_New_Admin.jsp?sameInputError=" + sameInputError + "&passLengthError=" + passLengthError + "&exitedAdminError=" + exitedAdminError;
                response.sendRedirect(str);

            } else {
                new adminBean.AdminBean().InsertAdmin(name, adpass);
                response.sendRedirect("Admin/Admin_Add_New_Admin.jsp?result=Add+successflul");
            }

        } catch (Exception ex) {
            Logger.getLogger(AdminAddController.class.getName()).log(Level.SEVERE, null, ex);
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
