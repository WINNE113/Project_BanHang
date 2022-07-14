/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control_Servlet;

import Dao.Dao;
import Entity.Product;
import Entity.ProductCart;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "UpdateQuantityCart_Servlet", urlPatterns = {"/updatequantity"})
public class UpdateQuantityCart_Servlet extends HttpServlet {

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
            out.println("<title>Servlet UpdateQuantityCart_Servlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateQuantityCart_Servlet at " + request.getContextPath() + "</h1>");
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
        Dao dao = new Dao();
        int id = Integer.parseInt(request.getParameter("id"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        Product product = dao.getProductByIdisInt(id);
        double totalPrice = 0;
        HttpSession session = request.getSession();
        ProductCart productCart;

        HashMap<Integer, ProductCart> cart = (HashMap<Integer, ProductCart>) session.getAttribute("cart");
        for (Map.Entry<Integer, ProductCart> en : cart.entrySet()) {
            totalPrice += en.getValue().getQuantity() * en.getValue().getProduct().getPrice();
        }
        if (cart == null) {
            // nếu cart trống thì tạo ra một đối tượng HashMap mới 
            cart = new HashMap<Integer, ProductCart>();
            productCart = new ProductCart(quantity, product);
            cart.put(id, productCart);
        } else {
            // nếu trong cart đã có thì tăng cái quanlity lên
            if (cart.containsKey(id)) {
                if (quantity == 0) {
                    cart.remove(id);
                } else {
                    productCart = cart.get(id);
                    productCart.setQuantity(quantity);
                }

            } else {
                productCart = new ProductCart(quantity, product);
                cart.put(id, productCart);
            }
        }
        // lưu cart vào session
        
        request.setAttribute("totalPrice",totalPrice);
        session.setAttribute("cart", cart);
        request.getRequestDispatcher("Cart.jsp").forward(request, response);

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