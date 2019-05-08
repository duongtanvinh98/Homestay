/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

/**
 *
 * @author PC
 */
@Entity
@Table(name ="Phong")
public class Phong {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private int id;
    private String maPhong;
    private String lPhong;
    private int dTich;
    private String diaChi;
    private String diaDiem;
    @ManyToOne
    @JoinColumn(name="idChu")
    private HomestayOwners homestayOwners;

    @OneToOne(cascade = {CascadeType.ALL})
    @PrimaryKeyJoinColumn
    private ThongTinPhong thongTinPhong;
    
    @OneToMany(mappedBy = "phong",fetch = FetchType.LAZY)
    private List<HinhAnh> hinhAnh;
    
    public Phong() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getlPhong() {
        return lPhong;
    }

    public void setlPhong(String lPhong) {
        this.lPhong = lPhong;
    }

    public int getdTich() {
        return dTich;
    }

    public void setdTich(int dTich) {
        this.dTich = dTich;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getDiaDiem() {
        return diaDiem;
    }

    public void setDiaDiem(String diaDiem) {
        this.diaDiem = diaDiem;
    }

    public HomestayOwners getHomestayOwners() {
        return homestayOwners;
    }

    public void setHomestayOwners(HomestayOwners homestayOwners) {
        this.homestayOwners = homestayOwners;
    }

    public ThongTinPhong getThongTinPhong() {
        return thongTinPhong;
    }

    public void setThongTinPhong(ThongTinPhong thongTinPhong) {
        this.thongTinPhong = thongTinPhong;
    }
    
    public String getMaPhong() {
        return maPhong;
    }

    public void setMaPhong(String maPhong) {
        this.maPhong = maPhong;
    }
    
    public List<HinhAnh> getHinhAnh() {
        return hinhAnh;
    }

    public void setHinhAnh(List<HinhAnh> hinhAnh) {
        this.hinhAnh = hinhAnh;
    }


    

}
