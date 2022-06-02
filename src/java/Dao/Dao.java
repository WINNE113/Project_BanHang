/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Entity.Product;
import Context.DBContext;
import Entity.Brand;
import Entity.Categorie;
import Entity.Galery;
import Entity.UserAccount;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ASUS-PRO
 */
public class Dao {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Categorie> listCategories() {
        String query = "select * from Category";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            List<Categorie> list = new ArrayList<>();
            rs = ps.executeQuery();
            while (rs.next()) {
                Categorie c = new Categorie(rs.getInt(1), rs.getString(2));
                list.add(c);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public Product getNewProductByCategorieId(String cid) {
        String query = "select top 1 * from Product where category_id = ? order by created_at desc";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getDate(9),
                        rs.getDate(10),
                        rs.getInt(11),
                        rs.getString(12),
                        rs.getInt(13));
            }

        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getAllProduct() {
        String query = "select * from Product";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            List<Product> list = new ArrayList<>();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getDate(9),
                        rs.getDate(10),
                        rs.getInt(11),
                        rs.getString(12),
                        rs.getInt(13));
                list.add(p);
            }
            return list;

        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getProductBySellId(int sell_id) {
        String query = "select * from [Product] where sell_id = ? ";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, sell_id);
            rs = ps.executeQuery();
            List<Product> list = new ArrayList<>();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getDate(9),
                        rs.getDate(10),
                        rs.getInt(11),
                        rs.getString(12),
                        rs.getInt(13));
                list.add(p);
            }
            return list;

        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> searchProduct(String txtSearch) {
        String query = "select * from product where title like ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            List<Product> list = new ArrayList<>();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getDate(9),
                        rs.getDate(10),
                        rs.getInt(11),
                        rs.getString(12),
                        rs.getInt(13));
                list.add(p);
            }
            return list;

        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getListProductByCategorieId(String cid) {
        String query = "select * from Product where category_id = ? order by created_at desc";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            List<Product> list = new ArrayList<>();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getDate(9),
                        rs.getDate(10),
                        rs.getInt(11),
                        rs.getString(12),
                        rs.getInt(13));
                list.add(p);
            }
            return list;

        } catch (Exception e) {
        }
        return null;
    }

    public Product getProductById(String pid) {
        String query = "select * from Product where id = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getDate(9),
                        rs.getDate(10),
                        rs.getInt(11),
                        rs.getString(12),
                        rs.getInt(13));
            }

        } catch (Exception e) {
        }
        return null;
    }

    public List<Galery> getGaleryByPid(String pid) {
        String query = "select * from galery where product_id = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, pid);
            rs = ps.executeQuery();
            List<Galery> listG = new ArrayList<>();
            while (rs.next()) {
                Galery galery = new Galery(rs.getInt(1), rs.getInt(2), rs.getString(3));
                listG.add(galery);
            }
            return listG;
        } catch (Exception e) {
        }

        return null;
    }

    public List<Product> getNewProduct() {
        String query = "select top 6 * from Product order by created_at desc";
        List<Product> list = new ArrayList<>();
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getDouble(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getDate(9),
                        rs.getDate(10),
                        rs.getInt(11),
                        rs.getString(12),
                        rs.getInt(13));
                list.add(p);
            }
            return list;

        } catch (Exception e) {
        }
        return null;
    }

    public List<Brand> getListBrand() {
        String query = "Select * from Brand";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            List<Brand> listB = new ArrayList<>();
            while (rs.next()) {
                Brand brand = new Brand(rs.getInt(1), rs.getString(2));
                listB.add(brand);
            }
            return listB;
        } catch (Exception e) {
        }
        return null;
    }

    public UserAccount login(String user, String pass) {
        String query = "select * from [user] where [user] = ? and [password] = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new UserAccount(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(11),
                        rs.getString(6),
                        rs.getDate(8),
                        rs.getDate(9),
                        rs.getInt(10),
                        rs.getInt(7));
            }
        } catch (Exception e) {

        }

        return null;
    }

    public UserAccount checkUserExit(String user) {
        String query = "select * from [user] where [user] = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new UserAccount(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(11),
                        rs.getString(6),
                        rs.getDate(8),
                        rs.getDate(9),
                        rs.getInt(10),
                        rs.getInt(7));
            }
        } catch (Exception e) {

        }

        return null;
    }

    public UserAccount checkPassExit(String pass) {
        String query = "select * from [user] where [password] = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new UserAccount(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(11),
                        rs.getString(6),
                        rs.getDate(8),
                        rs.getDate(9),
                        rs.getInt(10),
                        rs.getInt(7));
            }
        } catch (Exception e) {

        }

        return null;
    }

    public UserAccount checkPhoneExit(String phone) {
        String query = "select * from [User] where phone_number = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, phone);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new UserAccount(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(11),
                        rs.getString(6),
                        rs.getDate(8),
                        rs.getDate(9),
                        rs.getInt(10),
                        rs.getInt(7));
            }
        } catch (Exception e) {

        }

        return null;
    }

    public void signUp(String user, String pass, String fullName, String phone) {
        String query = "insert into [User] ([user],[password],[deleted],[role_id],[fullname],[phone_number])"
                + " values\n"
                + "(? , ? , 0 , 3 , ? , ?) ";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, fullName);
            ps.setString(4, phone);
            ps.executeUpdate();
        } catch (Exception e) {

        }

    }

    public void updateUserPass(String user, String pass, int id) {
        String query = "Update [User] set [user] = ? , [password] = ? where id = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setInt(3, id);
            ps.executeUpdate();
        } catch (Exception e) {

        }

    }

    public void deleteProduct(String pid) {
        String query = "delete from Product where id = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {

        }

    }

    public void deleteAccount(String aid) {
        String query = "delete from [User] where id = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, aid);
            ps.executeUpdate();
        } catch (Exception e) {

        }

    }

    public void addProduct(int sell_id, String title, String thunbnail, String price, String discount, String desc, String detail_des, String category, String brand) {

        String query = "insert into Product(sell_id,title,thumbnail,price,discount,[description],detail_Decs,category_id,brand_id) \n"
                + "values (? , ? , ? , ? , ? , ? , ? , ? , ? )";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, sell_id);
            ps.setString(2, title);
            ps.setString(3, thunbnail);
            ps.setString(4, price);
            ps.setString(5, discount);
            ps.setString(6, desc);
            ps.setString(7, detail_des);
            ps.setString(8, category);
            ps.setString(9, brand);
            ps.executeUpdate();
        } catch (Exception e) {

        }

    }

    public void editProductBySeller(String title, String thunbnail, String price, String discount, String desc, String detail_des, String category, String brand, String pid) {
        String query = "Update Product set title = ? , \n"
                + "thumbnail =?, \n"
                + "price = ?,\n"
                + "discount = ? ,\n"
                + " [description] = ?,\n"
                + " detail_Decs = ?,\n"
                + " category_id = ?, \n"
                + " brand_id = ? \n"
                + " where id = ?";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, title);
            ps.setString(2, thunbnail);
            ps.setString(3, price);
            ps.setString(4, discount);
            ps.setString(5, desc);
            ps.setString(6, detail_des);
            ps.setString(7, category);
            ps.setString(8, brand);
            ps.setString(9, pid);
            ps.executeUpdate();
        } catch (Exception e) {

        }

    }

    public List<UserAccount> loadAllAccount() {
        String query = "select * from [user]";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            List<UserAccount> litsAcc = new ArrayList<>();
            while (rs.next()) {
                UserAccount acc = new UserAccount(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(11),
                        rs.getString(6),
                        rs.getDate(8),
                        rs.getDate(9),
                        rs.getInt(10),
                        rs.getInt(7));
                litsAcc.add(acc);
            }
            return litsAcc;

        } catch (Exception e) {

        }

        return null;
    }

    public void addAccount(String fullname, String user, String passWord, String email, String address, String phone, String admin) {
        String query = "insert into [User](fullname,[user],[password],email,[address],phone_number,role_id) \n"
                + "values(? , ? , ? , ? , ? , ? , ?)";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, fullname);
            ps.setString(2, user);
            ps.setString(3, passWord);
            ps.setString(4, email);
            ps.setString(5, address);
            ps.setString(6, phone);
            ps.setString(7, admin);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void updateInforAdmin(String fullName, String email, String pass, String phone, String address, int id) {
        String query = "Update [User] set [fullname] = ? , [email] = ?, \n"
                + "[password] = ? , phone_number = ? , [address] = ?\n"
                + "where id = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, fullName);
            ps.setString(2, email);
            ps.setString(3, pass);
            ps.setString(4, phone);
            ps.setString(5, address);
            ps.setInt(6, id);
            ps.executeUpdate();
        } catch (Exception e) {

        }

    }

    public int totalAccount() {
        String query = "select id from [User] order by id ";
        try {
            int i = 0;
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                i++;
            }
            return i;
        } catch (Exception e) {

        }
        return 0;
    }
     public int totalProduct() {
        String query = "select id from [Product] order by id";
        try {
            int i = 0;
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                i++;
            }
            return i;
        } catch (Exception e) {

        }
        return 0;
    }
      public int totalSeller() {
        String query = "select id from [User] where role_id = 2";
        try {
            int i = 0;
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                i++;
            }
            return i;
        } catch (Exception e) {

        }
        return 0;
    }

    public static void main(String[] args) {
        Dao dao = new Dao();
        System.out.println("total account is:" + dao.totalAccount());
//        List<Product> list = new ArrayList();
//        list = dao.searchProduct("oppo");
//        for (Product p : list) {
//            System.out.println("Search:" + p);
//        }
//        List<Galery> listG = new ArrayList<>();
//        listG = dao.getGaleryByPid("1");
//        for (Galery galery : listG) {
//            System.out.println("galery" + galery);
//        }
//        Product p = dao.getProductById("4");
//        System.out.println("Product" + p);
       Product pid_13 = dao.getProductById("13");
        System.out.println("p_id13:"+pid_13);
//        List<Product> listP = dao.getProductBySellId(6);
//        for (Product product : listP) {
//            System.out.println("List product: " + product);
//        }
    }
}
