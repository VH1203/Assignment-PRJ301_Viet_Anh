/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controll.auth;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

/**
 *
 * @author Admin
 */
public class CheckAuth implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpSession session = request.getSession(false); // Không tạo session mới nếu chưa có

        String loggedInUser = (session != null) ? (String) session.getAttribute("loggedInUser") : null;
        String userRole = (session != null) ? (String) session.getAttribute("userRole") : null;
        String requestURI = request.getRequestURI();

        if (loggedInUser != null && userRole != null && isAuthorized(userRole, requestURI)) {
            filterChain.doFilter(request, response); // Cho phép truy cập tiếp theo
        } else {
            // Người dùng không có quyền truy cập, điều hướng đến error.jsp
            response.sendRedirect(request.getContextPath() + "/view/error.jsp");
        }}

    @Override
    public void destroy() {
        Filter.super.destroy(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }
     private boolean isAuthorized(String userRole, String requestURI) {
        if (userRole.equals("student")) {
            return requestURI.contains("/view/studentHome.jsp");
        } else if (userRole.equals("lecturer")) {
            return requestURI.contains("/view/studentHome.jsp") || requestURI.contains("/view/lecturerHome.jsp");
        } else if (userRole.equals("admin")) {
            return true; // Admin có quyền truy cập tất cả các trang
        }
        return false; // Mặc định không có quyền truy cập nếu không khớp với bất kỳ vai trò nào
    }
    private boolean isAuthorized(String requestURI) {

        return !requestURI.contains("adminHome.jsp"); 
    }
}
