/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class CheckAuth implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpSession session = request.getSession(false);

        // Kiểm tra xem người dùng đã đăng nhập chưa
        boolean loggedIn = session != null && session.getAttribute("user") != null;

        // Lấy URI hiện tại
        String uri = request.getRequestURI();

        // Nếu đã đăng nhập hoặc đang truy cập trang login, cho phép đi tiếp
        if (loggedIn || uri.endsWith("login.jsp") || uri.endsWith("LoginController")) {
            filterChain.doFilter(servletRequest, servletResponse);
        } else {
            // Nếu chưa đăng nhập và không phải là trang login, chuyển hướng về trang login
            response.sendRedirect(request.getContextPath() + "/accessdenied");
        }
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Khởi tạo Filter (nếu cần thiết)
    }

    @Override
    public void destroy() {
        // Hủy Filter (nếu cần thiết)
    }
}