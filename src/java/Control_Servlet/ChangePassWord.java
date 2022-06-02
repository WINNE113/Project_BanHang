/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control_Servlet;

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
import org.apache.tomcat.jni.SSLContext;

/**
 *
 * @author ASUS-PRO
 */
@WebServlet(name = "ChangePassWord", urlPatterns = {"/changepass"})
public class ChangePassWord extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ChangePassWord</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChangePassWord at " + request.getContextPath() + "</h1>");
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
        String user = request.getParameter("account-user");
        String oldPass = request.getParameter("account-mkcu");
        String newPass = request.getParameter("account-mkmoi");
        String confirmPass = request.getParameter("account-xacnhan-mkmoi");
        Dao dao = new Dao();
        UserAccount acc = dao.checkUserExit(user);
        HttpSession session = request.getSession();
        UserAccount pass = (UserAccount) session.getAttribute("account");
        int id = pass.getId();
        if (acc != null) {
            request.setAttribute("mess", "User is exits!");
            request.getRequestDispatcher("Profile.jsp").forward(request, response);
        } else {
            if (oldPass.equals(pass.getPass())) {
                if (newPass.equals(confirmPass)) {
                    dao.updateUserPass(user, newPass, id);
                    request.setAttribute("mess", "Update successful!");
                    session.removeAttribute("account");
//                   session.setAttribute("account", account);
                    request.getRequestDispatcher("Profile.jsp").forward(request, response);
                } else {
                    request.setAttribute("mess", "password must match confirm password!");
                    request.getRequestDispatcher("Profile.jsp").forward(request, response);
                }
            } else {
                request.setAttribute("mess", "old password is invalid");
                request.getRequestDispatcher("Profile.jsp").forward(request, response);
            }
        }
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
