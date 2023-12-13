/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.LoginDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Account;
import model.Email;

/**
 *
 * @author ADMIN
 */
public class ForgotPassController extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ForgotPassController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ForgotPassController at " + request.getContextPath() + "</h1>");
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
    private boolean isValidEmail(String email) {
        String regex = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Z|a-z]{2,}$";
        return email.matches(regex);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        LoginDAO loginDAO = new LoginDAO();
        Account a = loginDAO.checkExistAccount(username);

        if (!isValidEmail(email)) {
            request.setAttribute("mess", "Email invalid!");
            request.getRequestDispatcher("forgotPass.jsp").forward(request, response);
            return;
        }

        if (a != null) {
            Email e = new Email();
            String newPass = e.generateRandomOTP(6);
            boolean emailSent = e.sendEmail(email, "[Furni Shop] RESET PASSWORD",
                    "<html><body>"
                    + "<p>Dear user,</p>"
                    + "<p>We have received a request to reset the password for your account.</p>"
                    + "<p>Here is your new password: <strong>" + newPass + "</strong></p>"
                    + "<p>Thank you for using our services.</p>"
                    + "<p>Best regards,<br/>Furni.</p>"
                    + "</body></html>");

            if (emailSent) {
                request.setAttribute("mess", "Check your mailbox for a new password!");
                loginDAO.update(newPass, username);
            } else {
                request.setAttribute("mess", "Failed to send email...");
            }
        } else {
            request.setAttribute("mess", "Username does not exist!");
        }

        request.getRequestDispatcher("forgotPass.jsp").forward(request, response);

//        String email = request.getParameter("email");
//        if (!isValidEmail(email)) {
//            request.setAttribute("mess", "Email invalid!");
//            request.getRequestDispatcher("forgotPass.jsp").forward(request, response);
//        }
//        Email e = new Email();
//        String newPass = e.generateRandomOTP(6);
//        boolean emailSent = e.sendEmail(email, "NEW PASSWORD: ", newPass);
//        if (emailSent) {
//            request.setAttribute("mess", "Check your mailbox for a new password!");
//            request.getRequestDispatcher("forgotPass.jsp").forward(request, response);
//        } else {
//            request.setAttribute("mess", "Fail to sent mail...");
//            request.getRequestDispatcher("forgotPass.jsp").forward(request, response);
//        }
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
