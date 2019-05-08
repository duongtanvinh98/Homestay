/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.HomestayOwners;
import entity.Users;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;
import org.springframework.web.bind.annotation.RequestParam;
import service.HomestayOwnersService;

/**
 *
 * @author PC
 */
@Controller
public class HomeStayController {
    @Autowired
    private HomestayOwnersService userService;
    
    @RequestMapping(value = "/")
    public String homePage(){
        return "account/loginPage";
    }
    @RequestMapping(value = "/member")
    public String memberPage(){
        return "member/home";
    }
    
    @RequestMapping(value = "/registerPage",method = GET)
    public String memberRegisterPage(Model model){
        model.addAttribute("user",new Users());
        return "member/register";  
    }
    
    @RequestMapping(value = "/memberRegister",method = POST,produces = "application/x-www-form-urlencoded;charset=UTF-8")
    public String memberRegister(Users user,Model model){
        try {
            userService.registerUser(user);
        } catch (Exception ex) {
            Logger.getLogger(HomeStayController.class.getName()).log(Level.SEVERE, null, ex);
        }
        model.addAttribute("user",user);
        return "member/wellcome";
    }
    @RequestMapping(value = "/login",method = GET)
    public String loginPage(Model model){
        return "member/login";
    }
    @RequestMapping(value = "/memberLogin",method = POST)
    public String memberLogin(HttpServletRequest request,@RequestParam String username,@RequestParam String password,Model model){
        Users userLogin = userService.login(username,password);
        if(userLogin == null){
            model.addAttribute("error","Tài khoản hoặc mật khẩu không đúng");
            return "member/login";
        }
        if(userLogin.getRoleName().equalsIgnoreCase("Member")){
            HttpSession session = request.getSession();
            session.setAttribute("user",userLogin);
//            model.addAttribute("user", user );
            return "member/wellcome";
        }
        if(userLogin.getRoleName().equalsIgnoreCase("Admin")){
            return "admin/home";
        }
        else return "member/error";
     }
    @RequestMapping(value = "updatePersonalInformation/{id}",method = GET)
    public String memberUpdatePersonalInformation(@PathVariable int id,Model model){
//        Users user = userService.getUserOwners(id);
        HomestayOwners homestayOwners = userService.getHomestayOwners(id);
        model.addAttribute("homestayOwners",homestayOwners);
        return "member/UpdatePersonalInformation";  
    }
    @RequestMapping(value = "/editHomestayOwners",method = POST)
    public String editUsers(HomestayOwners homestayOwners,Model model){
        HomestayOwners editHomestayOwners = userService.updateHomestayOwners(homestayOwners);
        if(editHomestayOwners!=null){
            model.addAttribute("message","Cập nhật thành công");
            return "member/UpdatePersonalInformation";  
        }
        else {
            model.addAttribute("message","Cập nhật thành công");
            return "member/UpdatePersonalInformation";  
        }
    }
}
