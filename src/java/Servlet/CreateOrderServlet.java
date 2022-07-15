/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import Controller.OrderController;
import Model.OrderModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class CreateOrderServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            RequestDispatcher dispatch = request.getRequestDispatcher("/views/order.jsp");
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
            String phone = request.getParameter("phone");
            String album_name = request.getParameter("album_name");
            String album_genre = request.getParameter("album_genre");
            String amount = request.getParameter("amount");
            String total_price = request.getParameter("total_price");
            String order_date = request.getParameter("order_date");

            OrderModel model = new OrderModel();
            model.setName(name);
            model.setPhone(phone);
            model.setAlbum_name(album_name);
            model.setAlbum_genre(album_genre);
            model.setAmount(amount);
            model.setTotal_price(total_price);
            model.setOrder_date(order_date);

            OrderController pc = new OrderController();
            Boolean res = pc.create(model);

            if (res) {
                Integer stock, total_order, remaining_stock;
                String id_album;
                id_album = request.getParameter("id_album");

                response.sendRedirect("Order");
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
