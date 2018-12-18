/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.DataAccess;

import Model.Domain.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Thomas
 */
public class UserMapper {
    
    public void createUser(){}
    //public User getUser(int id){}
    
    public List<User> getAllUsers() throws SQLException{
        List<User> users = new ArrayList();
        String sql = "select id, user_name, first_name, last_name, password, email from user";
        Connection con = DB.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                String username = rs.getString("user_name");
                String password = rs.getString("password");
                String firstname = rs.getString("first_name");
                String lastname = rs.getString("last_name");
                String email = rs.getString("email");
                User user = new User(id, username, firstname, lastname, password, email);
                users.add(user);
            }
        return users;
    }
//    public void deleteUser(int id){}
//    public void editUser(User user){}
    public boolean authenticateUser(String username, String password){
        try {
            String sql = "select user_name, password from user where user_name = ?";
            Connection con = DB.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setString(1, username);
            ResultSet rs = pstmt.executeQuery();
            if(rs.next()){
                String passwordFromDB = rs.getString("password");
                if(passwordFromDB.equals(password)){
                    return true;
                }
            }else{
                return false;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
        return false;
    }
    
}
