/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import DAO.AdminDAO;
import DAO.StudentDAO;
import Model.Semester;
import Model.Subject;
import Model.Teacher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author Admin
 */
public class AdminServlet extends HttpServlet {
   
    StudentDAO dao = new StudentDAO();
    AdminDAO daoa = new AdminDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Model.Class> listClass = dao.viewClass();
        List<Semester> listSemester = dao.viewSemester();
        List<Subject> listSubject = daoa.listAllSubjectForAdmin();
        List<Teacher> listTeacher = daoa.viewTeacher();

        request.setAttribute("listTeacher", listTeacher);
        request.setAttribute("listClass", listClass);
        request.setAttribute("listSubject", listSubject);
        request.setAttribute("listSemester", listSemester);
        request.getRequestDispatcher("view/AdminHome.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("change".equals(action)) {
            int subjectId = Integer.parseInt(request.getParameter("id"));
            String currentStatus = request.getParameter("current");

            String newStatus = "active".equals(currentStatus) ? "nactive" : "active";
            
            daoa.updateSubjectStatus(subjectId, newStatus);
        }
        response.sendRedirect("admin");
    }

}
