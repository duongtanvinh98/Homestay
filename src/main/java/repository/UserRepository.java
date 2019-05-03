/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository;

import entity.Users;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


/**
 *
 * @author PC
 */
@Repository
public interface UserRepository extends CrudRepository<Users, Integer>{
    @Query(value = "Select * from Users where userName=?1 and password=?2",nativeQuery = true)
    Users userLogin(String username,String password);
}
