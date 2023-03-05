/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import utils.Hasher;

/**
 *
 * @author Cuong
 */
public class AccountFacade {
    public Account login(String email, String password) throws SQLException, NoSuchAlgorithmException{
        Account account = null;
        User user=null;
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("select * from client where email = ? and password = ?");
        stm.setString(1, email);
        stm.setString(2, Hasher.hash(password));
        ResultSet rs = stm.executeQuery();
        if (rs.next()) {
            user = new User();
            user.setId(rs.getInt("id"));
            user.setEmail(rs.getString("email"));
            user.setPassword(rs.getString("password"));
            user.setFullName(rs.getString("fullName"));
            user.setPhone(rs.getString("phone"));
            user.setAddress(rs.getString("address"));
        }
        con.close();
        return user;
    }
    
    
    
    public void create(User user) throws SQLException {
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
    public void update(User user) throws SQLException {
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng statement
        PreparedStatement stm = con.prepareStatement("update client set email = ?, fullName = ?, address = ?, phone = ? where id = ?");
        //Thực thi lệnh sql
        stm.setString(1, user.getEmail());
        stm.setString(2, user.getFullName());
        stm.setString(3, user.getAddress());
        stm.setString(4, user.getPhone());
        stm.setInt(5, user.getId());
        int count = stm.executeUpdate();        
        con.close();
    }
    
    public void changePassword(int id, String newPass) throws SQLException, NoSuchAlgorithmException{
        User user= new User();
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng statement
        PreparedStatement stm = con.prepareStatement("update client set password = ? where id = ?");
        // hashing password va xac nhan password
        newPass= Hasher.hash(newPass);
        stm.setString(1, newPass);
        // xac nhan id
        stm.setInt(2, id);
        int count = stm.executeUpdate();   
        con.close();
        
    }
}


