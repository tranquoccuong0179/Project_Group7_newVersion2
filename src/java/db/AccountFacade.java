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
        Connection con = DBContext.getConnection();
        PreparedStatement stm = con.prepareStatement("select * from client where email = ? and password = ?");
        stm.setString(1, email);
        stm.setString(2, Hasher.hash(password));
        ResultSet rs = stm.executeQuery();
        if (rs.next()) {
            account = new Account();
            account.setId(rs.getInt("id"));
            account.setEmail(rs.getString("email"));
            account.setPassword(rs.getString("password"));
        }
        con.close();
        return account;
    }
    
    
    
    public void create(User user) throws SQLException {
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng statement
        PreparedStatement stm = con.prepareStatement("insert client values(?, ?, ?, ?, ?, ?)");
        //Thực thi lệnh sql
        stm.setInt(1, 2);
        stm.setString(2, user.getEmail());
        stm.setString(3, user.getPassword());
        stm.setString(4, user.getFullName());
        stm.setString(5, user.getAddress());
        stm.setString(6, user.getPhone());
        
        
        int count = stm.executeUpdate();        
        con.close();
    }
}
