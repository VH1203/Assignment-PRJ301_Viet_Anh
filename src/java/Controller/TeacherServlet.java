/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAO.StudentDAO;
import DAO.TeacherDao;
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
public class TeacherServlet extends HttpServlet {

    StudentDAO dao = new StudentDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Model.Class> listClass = dao.viewClass();
        List<Semester> listSemester = dao.viewSemester();

        request.setAttribute("listClass", listClass);
        request.setAttribute("listSemester", listSemester);
        request.getRequestDispatcher("view/TeacherHome.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User userAccount = (User) session.getAttribute("teache");
        String action = request.getParameter("action");
        TeacherDao daot = new TeacherDao();
        switch (action) {
            case "viewClass":
                int id_semester = Integer.parseInt(request.getParameter("semesteridd"));
                int id_class = Integer.parseInt(request.getParameter("classidd"));
                int teacherID = Integer.parseInt(request.getParameter("teacherID"));
                List<Subject> viewSubject = daot.viewSubjectByIdClassAndSesmester(id_class, id_semester, teacherID);
                session.setAttribute("viewSubject", viewSubject);
                break;
            case "viewDetail":
                String subject_name = request.getParameter("subID");
                int stuID = Integer.parseInt(request.getParameter("stuID"));
                int semester_idInput = Integer.parseInt(request.getParameter("semester_idInput"));
                int class_idInput = Integer.parseInt(request.getParameter("class_idInput"));
                List<Subject> listAllMark = daot.listAllMarkInClass(class_idInput, semester_idInput, stuID, subject_name);
                request.setAttribute("listAllMark", listAllMark);
                break;
            case "PRJ301":
                int idSubject = Integer.parseInt(request.getParameter("idSubject"));
                float ws1 = Float.parseFloat(request.getParameter("ws1InputUpdate"));
                float ws2 = Float.parseFloat(request.getParameter("ws2InputUpdate"));
                float pt1 = Float.parseFloat(request.getParameter("pt1InputUpdate"));
                float pt2 = Float.parseFloat(request.getParameter("pt2InputUpdate"));
                float assignment = Float.parseFloat(request.getParameter("assignmentInputUpdate"));
                float pe = Float.parseFloat(request.getParameter("peInputUpdate"));
                float fe = Float.parseFloat(request.getParameter("feInputUpdate"));

                Subject prjEdit = new Subject(idSubject, pt1, pt2, ws1, ws2, assignment, pe, fe);
                daot.editMarkForPRJ(prjEdit);
                break;

            case "JPD123":
                int idSubjectJPD = Integer.parseInt(request.getParameter("idSubject"));
                float ppJPD = Float.parseFloat(request.getParameter("ppInputUpdate"));
                float pt1JPD = Float.parseFloat(request.getParameter("pt1InputUpdate"));
                float pt2JPD = Float.parseFloat(request.getParameter("pt2InputUpdate"));
                float mtJPD = Float.parseFloat(request.getParameter("mtInputUpdate"));
                float feJPD = Float.parseFloat(request.getParameter("feInputUpdate"));

                Subject jpdEdit = new Subject(idSubjectJPD, pt1JPD, pt2JPD, ppJPD, mtJPD, feJPD);
                daot.editMarkForJPD(jpdEdit);

                break;

            case "MAS291":
                int idSubjectMAS = Integer.parseInt(request.getParameter("idSubject"));
                float cpMAS = Float.parseFloat(request.getParameter("cpInputUpdate"));
                float assignment1MAS = Float.parseFloat(request.getParameter("assignment_1InputUpdate"));
                float assignment2MAS = Float.parseFloat(request.getParameter("assignment_2InputUpdate"));
                float pt1MAS = Float.parseFloat(request.getParameter("pt1InputUpdate"));
                float pt2MAS = Float.parseFloat(request.getParameter("pt2InputUpdate"));
                float feMAS = Float.parseFloat(request.getParameter("feInputUpdate"));

                Subject masEdit = new Subject(idSubjectMAS, pt1MAS, pt2MAS, assignment1MAS, assignment2MAS, cpMAS, feMAS);
                daot.editMarkForMAS(masEdit);
                break;

            case "WED201c":
                int idSubjectWED = Integer.parseInt(request.getParameter("idSubject"));
                float peWED = Float.parseFloat(request.getParameter("peInputUpdate"));
                float teWED = Float.parseFloat(request.getParameter("teInputUpdate"));

                Subject wedEdit = new Subject(idSubjectWED, peWED, teWED);
                daot.editMarkForWED(wedEdit);
                break;

            case "CSD201":
                int idSubjectCSD = Integer.parseInt(request.getParameter("idSubject"));
                float pt1CSD = Float.parseFloat(request.getParameter("assignment_2InputUpdate"));
                float pt2CSD = Float.parseFloat(request.getParameter("pt1InputUpdate"));
                float assignment1CSD = Float.parseFloat(request.getParameter("assignment_1InputUpdate"));
                float assignment2CSD = Float.parseFloat(request.getParameter("assignment_2InputUpdate"));
                float peCSD = Float.parseFloat(request.getParameter("peInputUpdate"));
                float feCSD = Float.parseFloat(request.getParameter("feInputUpdate"));

                Subject csdEdit = new Subject(idSubjectCSD, "", pt1CSD, pt2CSD, assignment1CSD, assignment2CSD, peCSD, feCSD);
                daot.editMarkForCSD(csdEdit);
                break;
            default:
                throw new AssertionError();
        }

        List<Model.Class> listClass = dao.viewClass();
        List<Semester> listSemester = dao.viewSemester();
        List<Student> listStudent = daot.viewStudent();

        request.setAttribute("listClass", listClass);
        request.setAttribute("listStudent", listStudent);
        request.setAttribute("listSemester", listSemester);
        request.getRequestDispatcher("view/TeacherHome.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
