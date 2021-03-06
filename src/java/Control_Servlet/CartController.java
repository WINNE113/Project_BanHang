/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control_Servlet;

import Dao.Dao;
import Entity.Product;
import Entity.ProductCart;
import Entity.UserAccount;
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
@WebServlet(name = "CartController", urlPatterns = {"/cartcontroller"})
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
        try (PrintWriter out = response.getWriter()) {
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
        int id = Integer.parseInt(request.getParameter("id"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        System.out.println("Run add to cart");
        System.out.println(" id c???a s???n ph???m l??:  " + id);
        Dao dao = new Dao();
        Product product = dao.getProductByIdisInt(id);
        System.out.println("" + product);
        HttpSession session = request.getSession();
        ProductCart productCart;
        // x??t account c?? kh??c null hay khong
        UserAccount account = (UserAccount) session.getAttribute("account");
        // n???u khac null th?? them sp v??o cart
        if (account != null) {
            HashMap<Integer, ProductCart> cart = (HashMap<Integer, ProductCart>) session.getAttribute("cart");
            if (cart == null) {
                // n???u cart tr???ng th?? t???o ra m???t ?????i t?????ng HashMap m???i 
                cart = new HashMap<Integer, ProductCart>();
                productCart = new ProductCart(quantity, product);
                cart.put(id, productCart);
            } else {
                // n???u trong cart ???? c?? th?? t??ng c??i quanlity l??n
                if (cart.containsKey(id)) {
                    productCart = cart.get(id);

                    productCart.incrementQuantity(quantity);
                } else {
                    productCart = new ProductCart(quantity, product);
                    cart.put(id, productCart);
                }
            }
            // l??u cart v??o session
            session.setAttribute("cart", cart);

            response.sendRedirect("cart");
            
        }else {
            response.sendRedirect("Login.jsp"); //n???u b???ng null th?? chuy???n t???i trong Login ????? login v??o
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
