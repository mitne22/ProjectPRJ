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

public class CartController extends HttpServlet {

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
            out.println("<title>Servlet CartController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CartController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        Cookie[] c = request.getCookies();
//        Cookie cartCookie = null;
//        if (c != null) {
//            for (Cookie cookie : c) {
//                if (cookie.getName().equals("cart")) {
//                    cartCookie = cookie;
//                    break;
//                }
//            }
//        }
//        HashMap<Integer, Cart> cartMap = new HashMap<>();
//        
//        ProductDAO dao = new ProductDAO();
//        if (!cartCookie.getValue().equals("")) {
//            String[] pair = cartCookie.getValue().split("_");
//            for (String p : pair) {
//                String[] entry = p.split("=");
//                int productId = Integer.parseInt(entry[0]);
//                int quantity = Integer.parseInt(entry[1]);
//                cartMap.put(productId, new Cart(dao.getProductById(String.valueOf(productId)), quantity));
//            }
//        }
//        
//        double totalMoney = 0;
//        for (Map.Entry<Integer, Cart> entry : cartMap.entrySet()) {
//            int productId = entry.getKey();
//            Cart cart = entry.getValue();
//            int quantity = cart.getQuantity();
//            totalMoney += quantity * cart.getProduct().getPrice() * 1.5;
//        }
//        request.setAttribute("totalMoney", totalMoney);
//        request.setAttribute("dao", dao);
//        request.setAttribute("cart", cartMap);
//        request.getRequestDispatcher("cart.jsp").forward(request, response);
        HttpSession session = request.getSession();
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

        request.getRequestDispatcher("cart.jsp").forward(request, response);
    }

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
