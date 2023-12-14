/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import model.Cart;
import model.Product;

/**
 *
 * @author ADMIN
 */
public class AddToCartController extends HttpServlet {

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
            out.println("<title>Servlet AddToCartController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddToCartController at " + request.getContextPath() + "</h1>");
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
    HashMap<Integer, Cart> cart = new HashMap<>();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

//        ProductDAO dao = new ProductDAO();
//        String pid = request.getParameter("pID");
//        int pid_int = Integer.parseInt(pid);
//        if (cart.containsKey(pid_int)) {
//            int oldQuantity = cart.get(pid_int).getQuantity();
//            cart.get(pid_int).setQuantity(oldQuantity + 1);
//        } else {
//            cart.put(pid_int, new Cart(dao.getProductById(pid), 1));
//        }
//        String cartStr = "";
//        for (Map.Entry<Integer, Cart> entry : cart.entrySet()) {
//            int productId = entry.getKey();
//            Cart c = entry.getValue();
//            int quantity = c.getQuantity();
//            cartStr += productId + "=" + quantity + "_";
//        }
//        Cookie cookieCart = new Cookie("cart", cartStr);
//        response.addCookie(cookieCart);
//        response.sendRedirect("shop");
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("user");

        HashMap<String, HashMap<Integer, Cart>> userCarts = (HashMap<String, HashMap<Integer, Cart>>) session.getAttribute("userCarts");
        if (userCarts == null) {
            userCarts = new HashMap<>();
        }

        ProductDAO dao = new ProductDAO();
        String pid = request.getParameter("pID");
        int pid_int = Integer.parseInt(pid);

        HashMap<Integer, Cart> cart = userCarts.getOrDefault(username, new HashMap<>());

        if (cart.containsKey(pid_int)) {
            int oldQuantity = cart.get(pid_int).getQuantity();
            cart.get(pid_int).setQuantity(oldQuantity + 1);
        } else {
            cart.put(pid_int, new Cart(dao.getProductById(pid), 1));
        }

        userCarts.put(username, cart);
        session.setAttribute("userCarts", userCarts);

//cookie
        String cartStr = "";
        for (Map.Entry<Integer, Cart> entry : cart.entrySet()) {
            int productId = entry.getKey();
            Cart c = entry.getValue();
            int quantity = c.getQuantity();
            cartStr += productId + "=" + quantity + "_";
        }
        
        Cookie cookieCart = new Cookie("cart", cartStr);
        cookieCart.setMaxAge(24*24);
        response.addCookie(cookieCart);

        response.sendRedirect("shop");

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
