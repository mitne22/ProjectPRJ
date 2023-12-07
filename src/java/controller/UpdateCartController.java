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
import java.util.HashMap;
import java.util.Map;
import model.Cart;

/**
 *
 * @author ADMIN
 */
public class UpdateCartController extends HttpServlet {

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
            out.println("<title>Servlet UpdateCartController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateCartController at " + request.getContextPath() + "</h1>");
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
//        String pid = request.getParameter("pID");
//        String action = request.getParameter("action");
//        Cookie[] cookies = request.getCookies();
//        Cookie cartCookie = null;
//
//        // Tìm cookie giỏ hàng trong danh sách các cookies
//        if (cookies != null) {
//            for (Cookie cookie : cookies) {
//                if (cookie.getName().equals("cart")) {
//                    cartCookie = cookie;
//                    break;
//                }
//            }
//        }
//
//        HashMap<Integer, Cart> cartMap = new HashMap<>();
//        ProductDAO dao = new ProductDAO();
//        String cartStr = "";
//        if (!cartCookie.getValue().equals("")) {
//            String[] pair = cartCookie.getValue().split("_");
//            for (String p : pair) {
//                String[] entry = p.split("=");
//                int productId = Integer.parseInt(entry[0]);
//                int quantity = Integer.parseInt(entry[1]);
//                if (productId == Integer.parseInt(pid)) {
//                    if ("increase".equals(action)) {
//                        quantity++;
//                    } else if ("decrease".equals(action)) {
//                        quantity--;
//                    }
//                }
//                if (quantity > 0) {
//                    cartStr += productId + "=" + quantity + "_";
//                }
//            }
//        }
//
//        // Tạo cookie mới với giỏ hàng đã cập nhật
//        cartCookie.setValue(cartStr.toString());
//        response.addCookie(cartCookie);
//
//        // Chuyển hướng người dùng đến trang giỏ hàng sau khi cập nhật
//        response.sendRedirect("cart");
        String pid = request.getParameter("pID");
        String action = request.getParameter("action");
        HttpSession session = request.getSession();

// Lấy giỏ hàng của người dùng từ session
        String username = (String) session.getAttribute("user");
        HashMap<String, HashMap<Integer, Cart>> userCarts = (HashMap<String, HashMap<Integer, Cart>>) session.getAttribute("userCarts");

        if (userCarts != null && userCarts.containsKey(username)) {
            // Lấy giỏ hàng của tài khoản đăng nhập
            HashMap<Integer, Cart> cartMap = userCarts.get(username);
            ProductDAO dao = new ProductDAO();

            // Tìm sản phẩm trong giỏ hàng và cập nhật số lượng
            int productId = Integer.parseInt(pid);
            if (cartMap.containsKey(productId)) {
                Cart cart = cartMap.get(productId);
                int quantity = cart.getQuantity();
                if ("increase".equals(action)) {
                    quantity++;
                } else if ("decrease".equals(action)) {
                    if (quantity > 1) {
                        quantity--;
                    } else {
                        // Nếu số lượng là 1 và người dùng muốn giảm, hãy xóa sản phẩm ra khỏi giỏ hàng
                        cartMap.remove(productId);
                    }
                }
                cart.setQuantity(quantity);
            }

            // Tính lại tổng tiền trong giỏ hàng sau cập nhật
            double totalMoney = 0;
            for (Cart cart : cartMap.values()) {
                totalMoney += cart.getQuantity() * cart.getProduct().getPrice() * 1.5;
            }

            // Lưu lại giỏ hàng và tổng tiền vào session
            userCarts.put(username, cartMap);
            session.setAttribute("userCarts", userCarts);
            session.setAttribute("totalMoney", totalMoney);
        }

// Chuyển hướng người dùng đến trang giỏ hàng sau khi cập nhật
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
