/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.sql.Date;

/**
 *
 * @author ASUS-PRO
 */
public class Product {

    private int id;
    private int sell_id;
    private int categorieId;
    private String title;
    private double price;
    private int discount;
    private String thumbnail;
    private String desc;
    private Date date;
    private Date update;
    private int deleted;
    private String detail_desc;
    private int brandId;

    public Product() {
    }

    public Product(int id, int sell_id, int categorieId, String title, double price, int discount, String thumbnail, String desc, Date date, Date update, int deleted, String detail_desc, int brandId) {
        this.id = id;
        this.sell_id = sell_id;
        this.categorieId = categorieId;
        this.title = title;
        this.price = price;
        this.discount = discount;
        this.thumbnail = thumbnail;
        this.desc = desc;
        this.date = date;
        this.update = update;
        this.deleted = deleted;
        this.detail_desc = detail_desc;
        this.brandId = brandId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSell_id() {
        return sell_id;
    }

    public void setSell_id(int sell_id) {
        this.sell_id = sell_id;
    }

    public int getCategorieId() {
        return categorieId;
    }

    public void setCategorieId(int categorieId) {
        this.categorieId = categorieId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Date getUpdate() {
        return update;
    }

    public void setUpdate(Date update) {
        this.update = update;
    }

    public int getDeleted() {
        return deleted;
    }

    public void setDeleted(int deleted) {
        this.deleted = deleted;
    }

    public String getDetail_desc() {
        return detail_desc;
    }

    public void setDetail_desc(String detail_desc) {
        this.detail_desc = detail_desc;
    }

    public int getBrandId() {
        return brandId;
    }

    public void setBrandId(int brandId) {
        this.brandId = brandId;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", sell_id=" + sell_id + ", categorieId=" + categorieId + ", title=" + title + ", price=" + price + ", discount=" + discount + ", thumbnail=" + thumbnail + ", desc=" + desc + ", date=" + date + ", update=" + update + ", deleted=" + deleted + ", detail_desc=" + detail_desc + ", brandId=" + brandId + '}';
    }
    

}
