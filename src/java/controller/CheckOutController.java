/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.CustomerDAO;
import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;
import model.Account;
import model.Cart;
import model.Customer;

/**
 *
 * @author ADMIN
 */
public class CheckOutController extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CheckOutController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckOutController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        HttpSession session = request.getSession();
        Account userAccount = (Account) session.getAttribute("acc");
        CustomerDAO cusdao = new CustomerDAO();
        
        String id = request.getParameter("id");
        //hdjswief hư h
        if (id != null && id.matches("\\d+")) {
            int userID = Integer.parseInt(id);

            if (userAccount != null && userAccount.getuID() == userID) {
                Customer c = cusdao.getCustomerById(userID);
                request.setAttribute("pro", c);
                //request.getRequestDispatcher("checkout.jsp").forward(request, response);
            } else {
                //response.sendRedirect("login.jsp");
            }
        } else {
            //response.sendRedirect("login.jsp");
        }
        
        String username = (String) session.getAttribute("user");

        HashMap<String, HashMap<Integer, Cart>> userCarts = (HashMap<String, HashMap<Integer, Cart>>) session.getAttribute("userCarts");

        if (userCarts != null && userCarts.containsKey(username)) {

            HashMap<Integer, Cart> cartMap = userCarts.get(username);

            ProductDAO dao = new ProductDAO();

            double totalMoney = 0;
            for (Map.Entry<Integer, Cart> entry : cartMap.entrySet()) {
                int productId = entry.getKey();
                Cart cart = entry.getValue();
                int quantity = cart.getQuantity();
                totalMoney += quantity * cart.getProduct().getPrice() * 1.5;
            }

            request.setAttribute("totalMoney", totalMoney);
            request.setAttribute("dao", dao);
            request.setAttribute("cart", cartMap);
        } else {
            
            request.setAttribute("totalMoney", 0); 
            request.setAttribute("dao", new ProductDAO());
            request.setAttribute("cart", new HashMap<Integer, Cart>());
        }
        request.getRequestDispatcher("checkout.jsp").forward(request, response);

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
        response.setContentType("text/html;charset=UTF-8");
        
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
