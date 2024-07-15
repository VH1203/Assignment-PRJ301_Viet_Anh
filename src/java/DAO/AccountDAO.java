/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccountDAO extends DBConnect{

    DBConnect db = new DBConnect();
    Connection con = db.connection;
    public boolean checkLogin(User userAccount) {
        String email = userAccount.getUsername();
        String password = userAccount.getPassword();

        String query = "SELECT * FROM [dbo].[user_account] WHERE username = ? AND password = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, email);
            
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            return rs.next();

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public User getUser(String username) {
        User userAccount = new User();
        String query = " select * from user_account where username = ? ";
        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, username);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {

                    userAccount.setUser_id(rs.getInt("user_id"));
                    userAccount.setUsername(rs.getString("username"));
                    userAccount.setPassword(rs.getString("password"));

                    userAccount.setRole_id(rs.getInt("role_id"));
                    
                } else {
                    return null;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userAccount;
    }

   

    

}
