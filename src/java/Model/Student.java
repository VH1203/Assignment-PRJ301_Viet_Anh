/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Admin
 */
public class Student {
    public int student_id;
    public String student_name;
    public String student_roll_number;
    public int role_id;
    public int user_id;

    public Student() {
    }

    public Student(int student_id, String student_name, String student_roll_number, int role_id) {
        this.student_id = student_id;
        this.student_name = student_name;
        this.student_roll_number = student_roll_number;
        this.role_id = role_id;
    }

    public int getStudent_id() {
        return student_id;
    }

    public void setStudent_id(int student_id) {
        this.student_id = student_id;
    }

    public String getStudent_name() {
        return student_name;
    }

    public void setStudent_name(String student_name) {
        this.student_name = student_name;
    }

    public String getStudent_roll_number() {
        return student_roll_number;
    }

    public void setStudent_roll_number(String student_roll_number) {
        this.student_roll_number = student_roll_number;
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
        return "Student{" + "student_id=" + student_id + ", student_name=" + student_name + ", student_roll_number=" + student_roll_number + ", role_id=" + role_id + '}';
    }
    
}
