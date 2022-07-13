/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Controller.LoginController;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

/**
 *
 * @author reCOnsult_L045
 */
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           HttpSession session = request.getSession(true);
            if (session.getAttribute("isLoggedIn") != null) {
                response.sendRedirect("Hero");
                return;
            }
            
            RequestDispatcher dispatch = request.getRequestDispatcher("/views/login.jsp");   
            dispatch.forward(request, response);
        
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            LoginController lc = new LoginController();
            ResultSet rs = lc.getByUsername(username);

            HttpSession session = request.getSession(true);
            session.removeAttribute("errors");
            
            if (rs.isBeforeFirst()) {
                rs.first();

                String dataPassword = rs.getString("password");
                Boolean isValid = password.equals(dataPassword);
                
                if(!isValid) {
                    session.setAttribute("errors", "Username or password is invalid!");
                    response.sendRedirect("login");    
                    return;
                }
                
                String name = rs.getString("name");
                session.setAttribute("id_member", rs.getString("id_member"));
                session.setAttribute("username", username);
                session.setAttribute("name", name);
                session.setAttribute("isLoggedIn", true);
                session.setAttribute("success", "Hello, welcome " + name + "!");
                
                response.sendRedirect("Hero");
            }
            else {
                session.setAttribute("errors", "Username or password is invalid!");
                response.sendRedirect("login");
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}