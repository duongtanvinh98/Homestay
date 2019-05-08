/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package repository;

import entity.HinhAnh;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author PC
 */
@Repository
public interface HinhAnhRepository extends CrudRepository<HinhAnh,Integer>{
    @Query(value = "Select * from HinhAnh where idPhong=?1",nativeQuery = true)
    List<HinhAnh> list (int idPhong);
}
