/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import DAO.AccountDAO;
import DAO.TeacherDao;
import Model.Teacher;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class LoginController extends HttpServlet {
   
   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String rememberMe = request.getParameter("rememberMe");

        User userAccount = new User(username, password);
        AccountDAO adao = new AccountDAO();

        HttpSession session = request.getSession();

        boolean loginResult = adao.checkLogin(userAccount);

        if (loginResult) {
            userAccount = adao.getUser(userAccount.getUsername());
            if ("on".equals(rememberMe)) {
                Cookie usernameCookie = new Cookie("username", username);
                usernameCookie.setMaxAge(30 * 24 * 60 * 60);
                response.addCookie(usernameCookie);

                Cookie passwordCookie = new Cookie("password", password);
                passwordCookie.setMaxAge(30 * 24 * 60 * 60);
                response.addCookie(passwordCookie);
            } else {
                Cookie usernameCookie = new Cookie("username", "");
                usernameCookie.setMaxAge(0);
                response.addCookie(usernameCookie);

                Cookie passwordCookie = new Cookie("password", "");
                passwordCookie.setMaxAge(0);
                response.addCookie(passwordCookie);
            }
            if (userAccount.getRole_id() == 1) {
                session.setAttribute("admin", userAccount);
                response.sendRedirect("admin");
            }
            if (userAccount.getRole_id() == 2) {
                TeacherDao daot = new TeacherDao();
                Teacher teacherAccount = daot.getTeacher(userAccount.getUser_id());
                session.setAttribute("teacher", teacherAccount);
                response.sendRedirect("teacher");
            }
            if (userAccount.getRole_id() == 3) {

                session.setAttribute("acc", userAccount);
                response.sendRedirect("student");

            }

        } else {

            request.setAttribute("errorMessage", "Invalid username or password.");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
}
