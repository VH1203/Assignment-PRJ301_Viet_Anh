/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Student;
import Model.Subject;
import Model.Teacher;
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
public class TeacherDao {

    DBConnect db = new DBConnect();
    Connection con = db.connection;

    public List<Subject> viewSubjectByIdClassAndSesmester(int id_class, int id_semester, int teacher_id) {
        List<Subject> sub = new ArrayList<>();
        String query
                = "SELECT * FROM ("
                + "    SELECT\n"
                + "        subject_id,\n"
                + "        subject_name,\n"
                + "        teacher_id,\n"
                + "        class_id,\n"
                + "        semester_id,\n"
                + "        ROW_NUMBER() OVER(PARTITION BY subject_name ORDER BY subject_id) as rn\n"
                + "    FROM\n"
                + "        dbo.Subject\n"
                + "    WHERE\n"
                + "        class_id = ?\n"
                + "        AND semester_id = ?\n"
                + "        AND teacher_id = ?\n"
                + "        AND status = 'active'\n"
                + ") AS ranked\n"
                + "WHERE rn = 1";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            // Setting the parameters for the query
            ps.setInt(1, id_class);
            ps.setInt(2, id_semester);
            ps.setInt(3, teacher_id);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Subject s = new Subject();
                    s.setSubject_id(rs.getInt("subject_id"));
                    s.setSubject_name(rs.getString("subject_name"));
                    s.setTeacher_id(rs.getInt("teacher_id"));

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

    public List<Subject> listAllMarkInClass(int id_class, int id_semester, int teacherID, String sub_name) {
        List<Subject> sub = new ArrayList<>();
        String query
                = "SELECT *\n"
                + "FROM dbo.Subject\n"
                + "WHERE subject_name = ? AND teacher_id = ? AND class_id = ? AND semester_id = ? AND status = 'active'";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            // Setting the parameters for the query
            ps.setString(1, sub_name);
            ps.setInt(2, teacherID);
            ps.setInt(3, id_class);
            ps.setInt(4, id_semester);

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Subject subject = new Subject();
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
                    subject.setTeacher_id(rs.getInt("teacher_id"));
                    sub.add(subject);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return sub;
    }

    public List<Subject> listAllMarkForSubject(String sub_name) {
        List<Subject> sub = new ArrayList<>();
        String query
                = "SELECT *\n"
                + "FROM dbo.Subject\n"
                + "WHERE subject_name = ? AND status = 'active'";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            // Setting the parameters for the query
            ps.setString(1, sub_name);

            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Subject subject = new Subject();
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
                    subject.setTeacher_id(rs.getInt("teacher_id"));
                    sub.add(subject);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return sub;
    }

    public List<Student> viewStudent() {
        List<Student> student = new ArrayList<>();
        String query
                = "select * from student ";

        try (PreparedStatement ps = con.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Student s = new Student();
                s.setStudent_id(rs.getInt("student_id"));
                s.setStudent_name(rs.getString("student_name"));
                s.setStudent_roll_number(rs.getString("student_roll_number"));

                student.add(s);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return student;
    }

    public Teacher getTeacher(int id) {
        Teacher acc = new Teacher();
        String query = " select * from teacher where user_id = ? ";
        try (PreparedStatement ps = con.prepareStatement(query)) {
            // Setting the parameters for the query
            ps.setInt(1, id);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {

                    acc.setTeacher_id(rs.getInt("teacher_id"));
                    acc.setTeacher_name(rs.getString("teacher_name"));
                    acc.setRole_id(rs.getInt("role_id"));
                    acc.setUser_id(rs.getInt("user_id"));

                } else {
                    // If no result is found, return null or handle as per your requirements
                    return null;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return acc;
    }

    public boolean editMarkForPRJ(Subject su) {
        String query
                = "UPDATE [dbo].[Subject] SET [pt1] = ? ,[pt2] = ? ,[ws1] = ?,[ws2] = ?,[assignment] = ?,[pe] =?,"
                + "[fe] = ? WHERE subject_id = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {

            ps.setFloat(1, su.getPt1());
            ps.setFloat(2, su.getPt2());
            ps.setFloat(3, su.getWs1());
            ps.setFloat(4, su.getWs2());
            ps.setFloat(5, su.getAssignment());
            ps.setFloat(6, su.getPe());
            ps.setFloat(7, su.getFe());
            ps.setInt(8, su.getSubject_id());

            int rowAffected = ps.executeUpdate();
            return rowAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean editMarkForJPD(Subject su) {
        String query
                = "UPDATE [dbo].[Subject] SET [pp] = ? ,[pt1] = ? ,[pt2] = ?,[mt] = ?,"
                + "[fe] = ? WHERE subject_id = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            
            ps.setFloat(1, su.getPp());
            ps.setFloat(2, su.getPt1());
            ps.setFloat(3, su.getPt2());
            ps.setFloat(4, su.getMt());
            ps.setFloat(5, su.getFe());
           
            ps.setInt(6, su.getSubject_id());

            int rowAffected = ps.executeUpdate();
            return rowAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public boolean editMarkForCSD(Subject su) {
        String query
                = "UPDATE [dbo].[Subject] SET [pt1] = ? ,[pt2] = ? ,[assignment_1] = ?,[assignment_2] = ?,[pe] = ?,"
                + "[fe] = ? WHERE subject_id = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            
            ps.setFloat(1, su.getPt1());
            ps.setFloat(2, su.getPt2());
            ps.setFloat(3, su.getAssignment_1());
            ps.setFloat(4, su.getAssignment_2());
            ps.setFloat(5, su.getPe());
            ps.setFloat(6, su.getFe());
            ps.setInt(7, su.getSubject_id());

            int rowAffected = ps.executeUpdate();
            return rowAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public boolean editMarkForMAS(Subject su) {
        String query
                = "UPDATE [dbo].[Subject] SET [pt1] = ? ,[pt2] = ? ,[assignment_1] = ?,[assignment_2] = ?,"
                + "[cp] = ?,[fe] = ? WHERE subject_id = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            
            ps.setFloat(1, su.getPt1());
            ps.setFloat(2, su.getPt2());
            ps.setFloat(3, su.getAssignment_1());
            ps.setFloat(4, su.getAssignment_2());
            ps.setFloat(5, su.getCp());
            ps.setFloat(6, su.getFe());
            ps.setInt(7, su.getSubject_id());

            int rowAffected = ps.executeUpdate();
            return rowAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public boolean editMarkForWED(Subject su) {
        String query
                = "UPDATE [dbo].[Subject] SET [pe] = ? ,[te] = ? WHERE subject_id = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            
            ps.setFloat(1, su.getPe());
            ps.setFloat(2, su.getTe());
            
           
            ps.setInt(3, su.getSubject_id());

            int rowAffected = ps.executeUpdate();
            return rowAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<Subject> listAllMarkInClassByInfomationInput(int modalIdCl, int modalIdSe, String modalNameSub) {
        List<Subject> sub = new ArrayList<>();
        String query
                = "SELECT *\n"
                + "  FROM [dbo].[Subject] where [subject_name] = ? AND [class_id] = ? AND [semester_id] = ? AND [status] = 'active'";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            // Setting the parameters for the query
            ps.setString(1, modalNameSub);
            ps.setInt(2, modalIdCl);
            ps.setInt(3, modalIdSe);

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

}
