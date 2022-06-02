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
public class Galery {
    private int id;
    private int pid;
    private String thumbnail;

    public Galery() {
    }

    public Galery(int id, int pid, String thumbnail) {
        this.id = id;
        this.pid = pid;
        this.thumbnail = thumbnail;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    @Override
    public String toString() {
        return "Galery{" + "id=" + id + ", pid=" + pid + ", thumbnail=" + thumbnail + '}';
    }
    
    
}
