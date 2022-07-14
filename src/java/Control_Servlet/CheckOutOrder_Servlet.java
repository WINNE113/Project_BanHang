/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control_Servlet;

import Dao.Dao;
import Entity.Order;
import Entity.OrderDetail;
import Entity.ProductCart;
import Entity.UserAccount;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
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
@WebServlet(name = "CheckOutOrder_Servlet", urlPatterns = {"/checkout"})
public class CheckOutOrder_Servlet extends HttpServlet {

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
            out.println("<title>Servlet CheckOutOrder_Servlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckOutOrder_Servlet at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession();
        UserAccount account = (UserAccount) session.getAttribute("account");
        if (account != null) {
            int userId = account.getId();
            String fullName = request.getParameter("fullName");
            String email = request.getParameter("email");
            String address = request.getParameter("address");
            String tell = request.getParameter("tel");
            String note = request.getParameter("note");
            // Lấy ngày hiện tại khi user đặt order

            Order order = new Order();
            Date date = new Date();

            // Lấy tổng giá tiền order
            double totalPrice = 0;
            HashMap<Integer, ProductCart> cart = (HashMap<Integer, ProductCart>) session.getAttribute("cart");
            for (Map.Entry<Integer, ProductCart> en : cart.entrySet()) {
                totalPrice += en.getValue().getQuantity() * en.getValue().getProduct().getPrice();
            }

            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            Dao dao = new Dao();
            // add info order -> SQL 
             int orderId =  dao.addOrder(userId, fullName, email, tell, address, note, dao.convertDate(date), totalPrice); //new java.sql.Date(order.getOrderDate().getTime())

            // add order vao trong orderdetail
            for (Map.Entry<Integer, ProductCart> productCar : cart.entrySet()) {
               OrderDetail orderDetail = new OrderDetail(orderId,productCar.getValue().getProduct().getId(),productCar.getValue().getProduct().getPrice(),productCar.getValue().getQuantity() , productCar.getValue().getProduct().getPrice() * productCar.getValue().getQuantity() );
               dao.addOrderDetail(orderDetail);
            }
            
            // Nếu checkout thành công thì gán giá trị null cho sesstion car
            session.setAttribute("cart", null);
            
            response.sendRedirect("load");
            ArrayList list = new ArrayList();

            // test case
            System.out.println(" java.util.Date:" + date);
            System.out.println(" java.Sql.Date:" + dao.convertDate(date));
            System.out.println(" java.util.Date:" + fullName);
            System.out.println(" java.util.Date:" + email);
            System.out.println(" java.util.Date:" + address);
            System.out.println(" java.util.Date:" + tell);
            System.out.println(" java.util.Date:" + note);

            System.out.println(" list oder detail: " + list.toString());
            
            System.out.println("ID of Order: " + orderId);

        } else {
            response.sendRedirect("Login.jsp");
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
