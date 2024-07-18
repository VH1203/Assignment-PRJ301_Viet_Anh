/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

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
public class AdminDAO {

    DBConnect db = new DBConnect();
    Connection con = db.connection;

    public List<Subject> listAllSubjectForAdmin() {
        List<Subject> sub = new ArrayList<>();
        String query = "SELECT * FROM ("
                + "  SELECT *, ROW_NUMBER() OVER (PARTITION BY subject_name ORDER BY subject_id) AS rn "
                + "  FROM [dbo].[Subject]"
                + ") AS subquery "
                + "WHERE rn in (1,3,5)";
        try (PreparedStatement ps = con.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Subject s = new Subject();
                s.setSubject_id(rs.getInt("subject_id"));
                s.setSubject_name(rs.getString("subject_name"));
                s.setClass_id(rs.getInt("class_id"));
                s.setSemester_id(rs.getInt("semester_id"));
                s.setTeacher_id(rs.getInt("teacher_id"));
                s.setStatus(rs.getString("status"));
                sub.add(s);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return sub;
    }

    public List<Teacher> viewTeacher() {
        List<Teacher> teachers = new ArrayList<>();
        String query
                = "select * from teacher ";

        try (PreparedStatement ps = con.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Teacher t = new Teacher();
                t.setTeacher_id(rs.getInt("teacher_id"));
                t.setTeacher_name(rs.getString("teacher_name"));

                teachers.add(t);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return teachers;
    }

    public void updateSubjectStatus(int subjectId, String newStatus) {
        String query = "UPDATE Subject SET status = ? WHERE subject_id = ?";

        try (PreparedStatement ps = con.prepareStatement(query)) {
            ps.setString(1, newStatus);
            ps.setInt(2, subjectId);

            int rowsUpdated = ps.executeUpdate();
            if (rowsUpdated > 0) {
                System.out.println("Subject status updated successfully.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
