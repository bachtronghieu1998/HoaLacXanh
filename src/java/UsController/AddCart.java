/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UsController;

import entity.Cart;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hieu bach
 */
public class AddCart extends HttpServlet {

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
            System.out.println("*************");
            String pname = request.getParameter("pname");
            String price = request.getParameter("price");
            String quantity = request.getParameter("quantity");
            String imageName = request.getParameter("imageName");
            System.out.println(request.getParameter("id"));
            System.out.println(request.getParameter("quan"));
            Cart c = (Cart) request.getSession().getAttribute("Cart");
            if (c == null) {
                request.getSession().setAttribute("Cart", new Cart());
            }
            c = (Cart) request.getSession().getAttribute("Cart");
            String action = request.getParameter("action");
            if (action.equals("add")) {
                c.addItem(Integer.parseInt(request.getParameter("pid")), request.getParameter("pname"), Double.parseDouble(price), Integer.parseInt(quantity), request.getParameter("imageName"));
            }else{
                c.updateItem(Integer.parseInt(request.getParameter("pid")), Integer.parseInt(request.getParameter("quantity")));
            }
            request.getSession().setAttribute("Cart", c);
            String url = "Elements/Cart.jsp?pid=" + request.getParameter("pid") + "&pname=" + pname + "&price=" + price + "&quantity=" + quantity + "&imageName=" + imageName;
            response.sendRedirect(url);
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
