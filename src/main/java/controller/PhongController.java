package controller;

import entity.HomestayOwners;
import entity.Phong;
import entity.ThongTinPhong;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import service.HomestayOwnersService;
import service.PhongService;

@Controller
public class PhongController {
    @Autowired
    private PhongService phongService;
    
    @Autowired
    private HomestayOwnersService homestayOwn;
    
    @RequestMapping("/addPhongPage/{id}")
    public String addPhongPage(@PathVariable int id,Model model){
        HomestayOwners homestayOwners = homestayOwn.getHomestayOwners(id);
        model.addAttribute("phong",new Phong());
        model.addAttribute("homestayOwnerById",homestayOwners);
        return "member/addPhong";
    }
    @RequestMapping("/addNewPhong")
    public String addPhong(Phong phong, Model model){
          Phong newPhong = null;
            try {
                newPhong = phongService.addPhong(phong);
            } catch (Exception ex) {
                Logger.getLogger(PhongController.class.getName()).log(Level.SEVERE, null, ex);
            }
           if(newPhong!=null){
                model.addAttribute("message","Đăng phòng thành công ");
                return "member/addPhong";
           }
           else {
               model.addAttribute("error","Mã phòng đã tồn tại");
               return "member/addPhong";
           }
    }
    @RequestMapping("/listPhong/{id}")
    public String listPhong(@PathVariable int id,Model model){
        List<Phong> list = phongService.listPhong(id);
        model.addAttribute("list", list);
        return "member/listPhong";
    }

    @RequestMapping("/editPhong/{idPhong}")
    public String moreDetails(@PathVariable int idPhong,Model model){
        Phong phong = phongService.getPhongbyId(idPhong);
        model.addAttribute("phong", phong);
        return "member/editPhong";
    }
    @RequestMapping("/excuteEdit")
    public String excuteEdit(Phong phong,Model model){
        Phong phongEdit = null;
        try {
            phongEdit = phongService.updatePhong(phong);
        } catch (Exception ex) {
            Logger.getLogger(PhongController.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(phongEdit!=null){
            model.addAttribute("message", "Cập nhật phòng thành công");
            return "member/editPhong";
        }
        else {
             model.addAttribute("error", "Cập nhật phòng không thành công");
            return "member/editPhong";
        }
    }
    
    
}
