/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.HashMap;
import model.Cart;

/**
 *
 * @author ADMIN
 */
public class RemoveFromCartController extends HttpServlet {

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
            out.println("<title>Servlet RemoveFromCartController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RemoveFromCartController at " + request.getContextPath() + "</h1>");
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
//        String pid = request.getParameter("pid");
//        try {
//            int pid_int = Integer.parseInt(pid);
//            Cookie[] c = request.getCookies();
//            Cookie cartCookie = null;
//            if (c != null) {
//                for (Cookie cookie : c) {
//                    if (cookie.getName().equals("cart")) {
//                        cartCookie = cookie;
//                        break;
//                    }
//                }
//            }
//            int startIndex = cartCookie.getValue().indexOf(pid + "=");
//            int endIndex = cartCookie.getValue().indexOf("_", startIndex);
//            String result = cartCookie.getValue().substring(0, startIndex) + cartCookie.getValue().substring(endIndex + 1);
//            Cookie updatedCookie = new Cookie("cart", result);
//            response.addCookie(updatedCookie);
//        } catch (Exception e) {
//            System.out.println(e);
//        }
//        response.sendRedirect("cart");

        String pid = request.getParameter("pid");

        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("user");

// Lấy giỏ hàng của người dùng từ userCarts
        HashMap<String, HashMap<Integer, Cart>> userCarts = (HashMap<String, HashMap<Integer, Cart>>) session.getAttribute("userCarts");

        if (userCarts != null && userCarts.containsKey(username)) {
            HashMap<Integer, Cart> cartMap = userCarts.get(username);

            // Xóa sản phẩm khỏi giỏ hàng dựa trên pid
            int pid_int = Integer.parseInt(pid);
            if (cartMap.containsKey(pid_int)) {
                cartMap.remove(pid_int);
            }

            // Cập nhật giỏ hàng của người dùng
            userCarts.put(username, cartMap);
            session.setAttribute("userCarts", userCarts);
        }

        response.sendRedirect("cart");

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
        doGet(request, response);
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
