/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control_Servlet;

import Dao.Dao;
import Entity.Categorie;
import Entity.Product;
import Entity.ProductCart;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ASUS-PRO
 */
public class HomeControl_Servlet extends HttpServlet {

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
        Dao dao = new Dao();
        List<Categorie> list = new ArrayList();
        //get list categories
        list = dao.listCategories();
        request.setAttribute("listC", list);
        //get new product by categorieId
        Product newSmartphone = dao.getNewProductByCategorieId("1");
        Product newLaptop = dao.getNewProductByCategorieId("2");
        Product newAppleWatch = dao.getNewProductByCategorieId("5");
        request.setAttribute("newSmartphone", newSmartphone);
        request.setAttribute("newLaptop", newLaptop);
        request.setAttribute("newAppleWatch", newAppleWatch);
        //get top 6 new Product
        List<Product> listP = dao.getNewProduct();
        request.setAttribute("listP", listP);

        //get product by pid
        Product pid_13 = dao.getProductById("13");
        request.setAttribute("pid_13", pid_13);

        HttpSession session = request.getSession();
        // tính tổng số tiền của sp có trong cart
        double totalPrice = 0;
        // Số lượng sản phẩm trong cart
        int numOfProduct = 0;
        // lấy ra session 
        HashMap<Integer, ProductCart> cart = (HashMap<Integer, ProductCart>) session.getAttribute("cart");
        // Nếu sesstion khac null
        if (cart != null) {
            for (Map.Entry<Integer, ProductCart> en : cart.entrySet()) {
                totalPrice += en.getValue().getQuantity() * en.getValue().getProduct().getPrice();
                numOfProduct += 1;
            }
        }
        
        request.setAttribute("totalPrice", totalPrice);
        
        request.setAttribute("numOfProduct", numOfProduct);

        request.getRequestDispatcher("Index_Home.jsp").forward(request, response);
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
