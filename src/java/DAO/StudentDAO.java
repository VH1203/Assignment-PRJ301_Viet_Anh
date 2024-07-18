/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Semester;
import Model.Student;
import Model.Subject;
import Model.Class;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class StudentDAO {

    DBConnect db = new DBConnect();
    Connection con = db.connection;

    public List<Subject> viewSubjectByIdClassAndSesmester(int id_class, int id_semester, int student_id) {
        List<Subject> sub = new ArrayList<>();
        String query
                = "SELECT \n"
                + "    MIN(subject_id) as subject_id,\n"
                + "    subject_name,\n"
                + "    student_id,class_id,semester_id\n"
                + "FROM \n"
                + "    dbo.Subject\n"
                + "WHERE \n"
                + "    class_id = ? \n"
                + "    AND semester_id = ? \n"
                + "    AND student_id = ? \n"
//                + "    AND status = 'active'\n"
                + "GROUP BY \n"
                + "    subject_name, student_id,class_id,semester_id";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            // Setting the parameters for the query
            ps.setInt(1, id_class);
            ps.setInt(2, id_semester);
            ps.setInt(3, student_id);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Subject s = new Subject();
                    s.setSubject_id(rs.getInt("subject_id"));
                    s.setSubject_name(rs.getString("subject_name"));
                    s.setStudent_id(rs.getInt("student_id"));
                    s.setClass_id(rs.getInt("class_id"));
                    s.setSemester_id(rs.getInt("semester_id"));
                    sub.add(s);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return sub;
    }

    public List<Subject> viewSubject(int student_id) {
        List<Subject> sub = new ArrayList<>();
        String query
                = "SELECT [subject_id]\n"
                + "      ,[subject_name]\n"
                + "      ,[pt1],[pt2],[fe]\n"
                + "      ,[student_id]\n"
                + "  FROM [dbo].[Subject] where [student_id] = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            // Setting the parameters for the query
            ps.setInt(1, student_id);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Subject s = new Subject();
                    s.setSubject_id(rs.getInt("subject_id"));
                    s.setSubject_name(rs.getString("subject_name"));

                    s.setPt1(rs.getFloat("pt1"));
                    s.setPt2(rs.getFloat("pt2"));
                    s.setFe(rs.getFloat("fe"));
                    s.setStudent_id(rs.getInt("student_id"));

                    sub.add(s);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return sub;
    }

    public Student getStudent(int id) {
        Student s = new Student();
        String query = " select * from Student where user_id = ? ";
        try (PreparedStatement ps = con.prepareStatement(query)) {
            // Setting the parameters for the query
            ps.setInt(1, id);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {

                    s.setStudent_id(rs.getInt("student_id"));
                    s.setStudent_name(rs.getString("student_name"));
                    s.setStudent_roll_number(rs.getString("student_roll_number"));
                    s.setRole_id(rs.getInt("role_id"));

                } else {

                    return null;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return s;
    }

    public List<Class> viewClass() {
        List<Class> clas = new ArrayList<>();
        String query
                = "select * from class ";

        try (PreparedStatement ps = con.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Class c = new Class();
                c.setClass_id(rs.getInt("class_id"));
                c.setClass_name(rs.getString("class_name"));

                clas.add(c);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return clas;
    }

    public List<Semester> viewSemester() {
        List<Semester> semester = new ArrayList<>();
        String query
                = "select * from semester ";

        try (PreparedStatement ps = con.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Semester s = new Semester();
                s.setSemester_id(rs.getInt("semester_id"));
                s.setSemester_name(rs.getString("semester_name"));

                semester.add(s);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return semester;
    }

    public List<Subject> listAllMarkInClassByInfomationInput(int modalIdCl, int modalIdSe, int stu_id, String modalNameSub) {
        List<Subject> sub = new ArrayList<>();
        String query
                = "SELECT *\n"
                + "  FROM [dbo].[Subject] where [subject_name] = ? AND [student_id] = ? AND [class_id] = ? AND [semester_id] = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            // Setting the parameters for the query
            ps.setString(1, modalNameSub);
            ps.setInt(2, stu_id);
            ps.setInt(3, modalIdCl);
            ps.setInt(4, modalIdSe);

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Subject s = new Subject();
                    s.setSubject_id(rs.getInt("subject_id"));
                    s.setSubject_name(rs.getString("subject_name"));
                    s.setPt1(rs.getFloat("pt1"));
                    s.setPt2(rs.getFloat("pt2"));
                    s.setFe(rs.getFloat("fe"));
                    s.setStudent_id(rs.getInt("student_id"));
                    s.setClass_id(rs.getInt("class_id"));
                    s.setSemester_id(rs.getInt("semester_id"));

                    sub.add(s);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return sub;
    }

    public Subject getMarkForSubject(int id_class, int id_semester, int studentID, String sub_name) {
        Subject subject = null;
        String query
                = "SELECT *\n"
                + "FROM dbo.Subject\n"
                + "WHERE subject_name = ? AND student_id = ? AND class_id = ? AND semester_id = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            // Setting the parameters for the query
            ps.setString(1, sub_name);
            ps.setInt(2, studentID);
            ps.setInt(3, id_class);
            ps.setInt(4, id_semester);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    subject = new Subject();
                    subject.setSubject_id(rs.getInt("subject_id"));
                    subject.setSubject_name(rs.getString("subject_name"));
                    subject.setPt1(rs.getFloat("pt1"));
                    subject.setPt2(rs.getFloat("pt2"));
                    subject.setWs1(rs.getFloat("ws1"));
                    subject.setWs2(rs.getFloat("ws2"));
                    subject.setPp(rs.getFloat("pp"));
                    subject.setMt(rs.getFloat("mt"));
                    subject.setAssignment(rs.getFloat("assignment"));
                    subject.setAssignment_1(rs.getFloat("assignment_1"));
                    subject.setAssignment_2(rs.getFloat("assignment_2"));
                    subject.setCp(rs.getFloat("cp"));
                    subject.setPe(rs.getFloat("pe"));
                    subject.setFe(rs.getFloat("fe"));
                    subject.setTe(rs.getFloat("te"));
                    subject.setStudent_id(rs.getInt("student_id"));
                    subject.setClass_id(rs.getInt("class_id"));
                    subject.setSemester_id(rs.getInt("semester_id"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return subject;
    }

}
