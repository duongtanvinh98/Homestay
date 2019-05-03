/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.time.LocalDate;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author PC
 */
@Entity
@Table(name="ThongTinPhong")
public class ThongTinPhong {
    @Id
    private int id;
    private String cLuong;
    private int slNguoiO;
    private String nguoiO;
    private String giuong;
    private String tTrang;
    private int giaPhong;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private LocalDate thueTu;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private LocalDate thueDen;
    private String moTa;
    
    @OneToOne(mappedBy="thongTinPhong")
    private Phong phong;

    public ThongTinPhong() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getcLuong() {
        return cLuong;
    }

    public void setcLuong(String cLuong) {
        this.cLuong = cLuong;
    }

    public int getSlNguoiO() {
        return slNguoiO;
    }

    public void setSlNguoiO(int slNguoiO) {
        this.slNguoiO = slNguoiO;
    }

    public String getNguoiO() {
        return nguoiO;
    }

    public void setNguoiO(String nguoiO) {
        this.nguoiO = nguoiO;
    }

    public String getGiuong() {
        return giuong;
    }

    public void setGiuong(String giuong) {
        this.giuong = giuong;
    }

    public String gettTrang() {
        return tTrang;
    }

    public void settTrang(String tTrang) {
        this.tTrang = tTrang;
    }

    public int getGiaPhong() {
        return giaPhong;
    }

    public void setGiaPhong(int giaPhong) {
        this.giaPhong = giaPhong;
    }

    public Phong getPhong() {
        return phong;
    }

    public void setPhong(Phong phong) {
        this.phong = phong;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public LocalDate getThueTu() {
        return thueTu;
    }

    public void setThueTu(LocalDate thueTu) {
        this.thueTu = thueTu;
    }

    public LocalDate getThueDen() {
        return thueDen;
    }

    public void setThueDen(LocalDate thueDen) {
        this.thueDen = thueDen;
    }
    
    public String fomartGiaPhong(){
        NumberFormat df = new DecimalFormat("###,###,###");
        return df.format(giaPhong);
    }
    
}
