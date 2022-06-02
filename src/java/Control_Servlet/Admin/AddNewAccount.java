/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control_Servlet.Admin;

import Dao.Dao;
import Entity.UserAccount;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ASUS-PRO
 */
@WebServlet(name = "AddNewAccount", urlPatterns = {"/addaccount"})
public class AddNewAccount extends HttpServlet {

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
            out.println("<title>Servlet AddNewAccount</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddNewAccount at " + request.getContextPath() + "</h1>");
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
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String fullName = request.getParameter("fullname");
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        String confirmPass = request.getParameter("confirmpass");
        String email = request.getParameter("email");
        String addr = request.getParameter("addr");
        String phonenumber = request.getParameter("phonenumber");
        String role = request.getParameter("role");
        Dao dao = new Dao();
        UserAccount acc = dao.checkUserExit(user);
        HttpSession session = request.getSession();
        UserAccount account = (UserAccount) session.getAttribute("account");
        int id = account.getId();
        if (acc != null) {
            request.setAttribute("mess", "User is exits!");
            request.getRequestDispatcher("Admin_Add_account.jsp").forward(request, response);
        } else {
            if (pass.equals(confirmPass)) {
                dao.addAccount(fullName, user, pass, email, addr, phonenumber, role);
               response.sendRedirect("loadaccount");
            } else {
                request.setAttribute("mess", "password must match confirm password!");
                request.getRequestDispatcher("Admin_Add_account.jsp").forward(request, response);
            }
        }
    }

}


