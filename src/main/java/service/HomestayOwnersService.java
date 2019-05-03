/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import entity.HomestayOwners;
import entity.Users;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.HomestayOwnersRepository;
import repository.UserRepository;

/**
 *
 * @author PC
 */
@Service
public class HomestayOwnersService {
    @Autowired
    private UserRepository userRepo;
    
    @Autowired
    private HomestayOwnersRepository homestayOwnersRepo;
    
    @Transactional (rollbackOn = Exception.class)
    public void registerUser(Users user)throws Exception{
       Users newUser = null;
       HomestayOwners homestayOwners = user.getHomestayOwners();
       user.setHomestayOwners(null);
       newUser = userRepo.save(user);
       homestayOwners.setId(newUser.getId());
       HomestayOwners newHomestayOwners = homestayOwnersRepo.save(homestayOwners);
       newUser.setHomestayOwners(newHomestayOwners);
    }
    public Users login(String userName,String password){
        return userRepo.userLogin(userName, password);
    }
    
    public Users getUserOwners(int id){
        return userRepo.findOne(id);
    }
    public HomestayOwners getHomestayOwners(int id){
        return homestayOwnersRepo.findOne(id);
    }
    public HomestayOwners updateHomestayOwners(HomestayOwners homestayOwners){
        return homestayOwnersRepo.save(homestayOwners);
    }
}
