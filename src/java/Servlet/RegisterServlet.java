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
import Controller.MembersController;
import Model.MembersModel;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author Prio
 */

public class RegisterServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            RequestDispatcher dispatch = request.getRequestDispatcher("/views/registration.jsp");
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
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String contact = request.getParameter("contact");
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            MembersModel model = new MembersModel();
            model.setName(name);
            model.setEmail(email);
            model.setContact(contact);
            model.setUsername(username);
            model.setPassword(password);

            MembersController pc = new MembersController();
            Boolean res = pc.create(model);

            if (res) {
                response.sendRedirect("login");
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}