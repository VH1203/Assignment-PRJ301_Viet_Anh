/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Admin
 */
public class Semester {
    public int semester_id;
    public String semester_name;

    public Semester() {
    }

    public Semester(int semester_id, String semester_name) {
        this.semester_id = semester_id;
        this.semester_name = semester_name;
    }

    public int getSemester_id() {
        return semester_id;
    }

    public void setSemester_id(int semester_id) {
        this.semester_id = semester_id;
    }

    public String getSemester_name() {
        return semester_name;
    }

    public void setSemester_name(String semester_name) {
        this.semester_name = semester_name;
    }

    @Override
    public String toString() {
        return "Semester{" + "semester_id=" + semester_id + ", semester_name=" + semester_name + '}';
    }
    
    
}
