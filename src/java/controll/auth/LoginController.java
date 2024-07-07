/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controll.auth;

import dal.DBContext;
import dal.UserDAO;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

public class LoginController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private UserDAO userDao;
     public void init() throws ServletException {
        userDao = new UserDAO(); // Explicit initialization
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("view/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = userDao.authenticateUser(username, password);
        if (user != null) {
            switch (user.getRole()) {
                case "student":
                    response.sendRedirect("view/studentHome.jsp");
                    break;
                case "lecturer":
                    response.sendRedirect("view/lecturerHome.jsp");
                    break;
                case "admin":
                    response.sendRedirect("view/adminHome.jsp");
                    break;
                default:
                    response.sendRedirect("login"); // Redirect to login page again
                    break;
            }
        } else {
            request.setAttribute("error", "Invalid username or password.");
            request.getRequestDispatcher("view/login.jsp").forward(request, response); // Redirect to login page again
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
