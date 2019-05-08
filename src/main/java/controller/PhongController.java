package controller;

import entity.HinhAnh;
import entity.HomestayOwners;
import entity.Phong;
import java.io.File;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
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
    @RequestMapping("/addImgPage")
    public String pageAddImg(@RequestParam int idPhong,Model model){
        List<HinhAnh> listHinh = phongService.listHinh(idPhong);
//        HinhAnh hinh = phongService.getHinh(idPhong);
        Phong phong = phongService.getPhongbyId(idPhong);
        model.addAttribute("list", listHinh);   
//        model.addAttribute("hinh", hinh);
        model.addAttribute("phong", phong);
        return "member/addImg";
    }
    @RequestMapping("/numberImg")
    public String numberImg(@RequestParam int number,@RequestParam int idPhong,Model model){
        List<HinhAnh> listHinh = phongService.listHinh(idPhong);
        Phong phong = phongService.getPhongbyId(idPhong);
        model.addAttribute("list", listHinh);
        model.addAttribute("phong", phong);
        model.addAttribute("number",number);
        return "member/addImg";
    }
    @RequestMapping("/showImg")
    public String showImg(Model model){
//        List<HinhAnh> list = phongService.listHinh(idPhong);
//        model.addAttribute("list", list);
        return "member/kq";
    }
    @RequestMapping(value = "/doUpload")
    public String handleFileUpload(HttpServletRequest request,
            @RequestParam CommonsMultipartFile[] fileUpload,@RequestParam int idPhong,Model model) throws Exception {
        String url = "C:/Users/PC/Desktop/Homestay/src/main/webapp/images";
        Phong phong = phongService.getPhongbyId(idPhong);
        String firstLine = String.valueOf(idPhong);
        if (fileUpload != null && fileUpload.length > 0) {
            for (CommonsMultipartFile aFile : fileUpload){               
                HinhAnh newimg = new HinhAnh();
                newimg.setName(firstLine+aFile.getOriginalFilename());
                newimg.setUrlHinh(aFile.getBytes());
                newimg.setPhong(phong);
                File file = new File(url,firstLine+aFile.getOriginalFilename());
                aFile.transferTo(file);
                phongService.saveImg(newimg);
                model.addAttribute("success","Đăng ảnh thành công");
            }
        }
        return "member/addImg";
    }  
    
}
