/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

/**
 *
 * @author ASUS-PRO
 */
// Thêm code lên server 11:19PM 6/2/2022
public class Warrranty {
    private int id;
    private int product_Id;

    public Warrranty() {
    }

    public Warrranty(int id, int product_Id) {
        this.id = id;
        this.product_Id = product_Id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProduct_Id() {
        return product_Id;
    }

    public void setProduct_Id(int product_Id) {
        this.product_Id = product_Id;
    }
    
}
