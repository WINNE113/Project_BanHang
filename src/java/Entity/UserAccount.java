/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.util.Date;

/**
 *
 * @author ASUS-PRO
 */
public class UserAccount {
    private int id;
    private String fullName;
    private String email;
    private String phone_number;
    private String addr;
    private String user;
    private String pass;
    private Date created_at;
    private Date updated_at;
    private int deleted;
    private int role_id;

    public UserAccount() {
    }

    public UserAccount(int id, String fullName, String email, String phone_number, String addr, String user, String pass, Date created_at, Date updated_at, int deleted, int role_id) {
        this.id = id;
        this.fullName = fullName;
        this.email = email;
        this.phone_number = phone_number;
        this.addr = addr;
        this.user = user;
        this.pass = pass;
        this.created_at = created_at;
        this.updated_at = updated_at;
        this.deleted = deleted;
        this.role_id = role_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public Date getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(Date updated_at) {
        this.updated_at = updated_at;
    }

    public int getDeleted() {
        return deleted;
    }

    public void setDeleted(int deleted) {
        this.deleted = deleted;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    @Override
    public String toString() {
        return "UserAccount{" + "id=" + id + ", fullName=" + fullName + ", email=" + email + ", phone_number=" + phone_number + ", addr=" + addr + ", user=" + user + ", pass=" + pass + ", created_at=" + created_at + ", updated_at=" + updated_at + ", deleted=" + deleted + ", role_id=" + role_id + '}';
    }
    
    
}
