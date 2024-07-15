/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Admin
 */
public class Admin {

    public int admin_id;
    public String admin_name;
    public int role_id;
    public int user_id;

    public Admin() {
    }

    public Admin(int admin_id, String admin_name, int role_id, int user_id) {
        this.admin_id = admin_id;
        this.admin_name = admin_name;
        this.role_id = role_id;
        this.user_id = user_id;
    }

    public int getAdmin_id() {
        return admin_id;
    }

    public void setAdmin_id(int admin_id) {
        this.admin_id = admin_id;
    }

    public String getAdmin_name() {
        return admin_name;
    }

    public void setAdmin_name(String admin_name) {
        this.admin_name = admin_name;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    @Override
    public String toString() {
        return "Admin{" + "admin_id=" + admin_id + ", admin_name=" + admin_name + ", role_id=" + role_id + ", user_id=" + user_id + '}';
    }
    
    
}
