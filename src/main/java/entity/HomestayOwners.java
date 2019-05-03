/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author PC
 */
@Entity
@Table(name ="ChuNha")
public class HomestayOwners {
    @Id
    private int id;
    private String hoTen;
    private String sdt;
    private String cmnd;
    private String email;
    private String diaChi;
    private String tenHomestay;
    
    @OneToOne(mappedBy="homestayOwners")
    private Users users;
    
    @OneToMany(mappedBy = "homestayOwners",fetch = FetchType.LAZY)
    private List<Phong> phong;

    public HomestayOwners() {
    }

    public List<Phong> getPhong() {
        return phong;
    }

    public void setPhong(List<Phong> phong) {
        this.phong = phong;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getCmnd() {
        return cmnd;
    }

    public void setCmnd(String cmnd) {
        this.cmnd = cmnd;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getTenHomestay() {
        return tenHomestay;
    }

    public void setTenHomestay(String tenHomestay) {
        this.tenHomestay = tenHomestay;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }
    
     
}
