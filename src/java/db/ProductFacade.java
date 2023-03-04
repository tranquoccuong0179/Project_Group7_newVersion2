/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import db.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Cuong
 */
public class ProductFacade {
    private List<Product> products = null;

    public void create(Product product) throws SQLException {
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng statement
        PreparedStatement stm = con.prepareStatement("insert client values(?, ?, ?, ?, ?, ?)");
        //Thực thi lệnh sql
        stm.setString(1, user.getEmail());
        stm.setString(2, user.getPassword());
        stm.setString(3, user.getFullName());
        stm.setString(4, user.getAddress());
        stm.setString(5, user.getPhone());
        stm.setString(6, "user");
        
        
        int count = stm.executeUpdate();        
        con.close();
    }
    
    public List<Product> select(){
        return products;
    }
    
    public Product select(int id){
        for(Product product: products){
            if(product.getId() == id){
                return product;
            }
        }
        return null;
    }
}
