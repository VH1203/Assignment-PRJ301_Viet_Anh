/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Admin
 */
public class Teacher {
    public int teacher_id;
    public String teacher_name;
    public int role_id;
    public int user_id;    

    public Teacher() {
    }

    public Teacher(int teacher_id, String teacher_name, int role_id) {
        this.teacher_id = teacher_id;
        this.teacher_name = teacher_name;
        this.role_id = role_id;
    }

    public int getTeacher_id() {
        return teacher_id;
    }

    public void setTeacher_id(int teacher_id) {
        this.teacher_id = teacher_id;
    }

    public String getTeacher_name() {
        return teacher_name;
    }

    public void setTeacher_name(String teacher_name) {
        this.teacher_name = teacher_name;
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
        return "Teacher{" + "teacher_id=" + teacher_id + ", teacher_name=" + teacher_name + ", role_id=" + role_id + ", user_id=" + user_id + '}';
    }
    
    
   
    
    
}
