/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import entity.Phong;
import entity.ThongTinPhong;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.PhongRepository;
import repository.TTPhongRepository;

/**
 *
 * @author PC
 */
@Service
public class PhongService {
    @Autowired
    private PhongRepository phongRepo;
    
    @Autowired
    private TTPhongRepository tPhongRepository;
    
    public List<Phong> listPhong(int id){
        return (List<Phong>) phongRepo.listPhong(id);
    }
    @Transactional (rollbackOn = Exception.class)
    public Phong addPhong(Phong phong)throws Exception{
        List<Phong> list = (List<Phong>) phongRepo.findAll();
        Phong newPhong=null;
        ThongTinPhong thongTinPhong = phong.getThongTinPhong();
        phong.setThongTinPhong(null);
        newPhong = phongRepo.save(phong);
        for(Phong room : list){
            if(newPhong.getMaPhong().equalsIgnoreCase(room.getMaPhong()))
            {
              newPhong = null;
              newPhong.setThongTinPhong(null);
            }
            else {
                thongTinPhong.setId(newPhong.getId());
                ThongTinPhong newTTP = tPhongRepository.save(thongTinPhong);
                newPhong.setThongTinPhong(newTTP);
            }
        }
        return newPhong;
    }
    
    public Phong getPhongbyId(int idPhong){
       return phongRepo.findOne(idPhong);
    }
    
    @Transactional (rollbackOn = Exception.class)
    public Phong updatePhong(Phong phong)throws Exception{
        ThongTinPhong thongTinPhong = phong.getThongTinPhong();
        phong.setThongTinPhong(null);
        phong = phongRepo.save(phong);
        thongTinPhong.setId(phong.getId());
        thongTinPhong = tPhongRepository.save(thongTinPhong);
        phong.setThongTinPhong(thongTinPhong);
        return phong;
    }
}
