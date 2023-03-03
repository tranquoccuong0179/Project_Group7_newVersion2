/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

/**
 *
 * @author Cuong
 */
public class User extends Account {

    private String address;
    private String phone;

    public User() {
    }

    public User( int id, String email, String password, String fullName, String role, String address, String phone) {
        super(id, email, password, fullName, role);
        this.address = address;
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

}
