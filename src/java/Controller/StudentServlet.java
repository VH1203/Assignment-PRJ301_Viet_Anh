/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.StudentDAO;
import Model.Semester;
import Model.Student;
import Model.Subject;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author Admin
 */
public class StudentServlet extends HttpServlet {

    public class StudentDashBoardController extends HttpServlet {

        StudentDAO daos = new StudentDAO();

        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
            HttpSession session = request.getSession();
            User userAccount = (User) session.getAttribute("acc");
            Student s = daos.getStudent(userAccount.getUser_id());
            List<Subject> listSubject = daos.viewSubject(s.getStudent_id());
            List<Model.Class> listClass = daos.viewClass();
            List<Semester> listSemester = daos.viewSemester();

            request.setAttribute("listClass", listClass);
            request.setAttribute("listSemester", listSemester);
            session.setAttribute("student", s);
            request.setAttribute("listSubject", listSubject);
            request.getRequestDispatcher("/view/StudentHome.jsp").forward(request, response);
        }

        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
            HttpSession session = request.getSession();
            String action = request.getParameter("action");

            switch (action) {
                case "viewSubject":
                    int id_semester = Integer.parseInt(request.getParameter("semesteridd"));
                    int id_class = Integer.parseInt(request.getParameter("classidd"));
                    int studentID = Integer.parseInt(request.getParameter("studentID"));
                    List<Subject> viewSubject = daos.viewSubjectByIdClassAndSesmester(id_class, id_semester, studentID);
                    session.setAttribute("viewSubject", viewSubject);
                    break;
                case "viewMark":
                    String sub_name = request.getParameter("subID");
                    int stuID = Integer.parseInt(request.getParameter("stuID"));
                    int semester_idInput = Integer.parseInt(request.getParameter("semester_idInput"));
                    int class_idInput = Integer.parseInt(request.getParameter("class_idInput"));
                    Subject ss = daos.getMarkForSubject(class_idInput, semester_idInput, stuID, sub_name);
                    session.setAttribute("viewMark", ss);
                    break;
                default:
                    throw new AssertionError();
            }
            List<Model.Class> listClass = daos.viewClass();
            List<Semester> listSemester = daos.viewSemester();

            request.setAttribute("listClass", listClass);
            request.setAttribute("listSemester", listSemester);
            request.getRequestDispatcher("/view/StudentHome.jsp").forward(request, response);
        }
    }

}
