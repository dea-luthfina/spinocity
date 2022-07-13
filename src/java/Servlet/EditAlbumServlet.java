/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import Controller.AlbumController;
import Model.AlbumModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditAlbumServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            RequestDispatcher dispatch = request.getRequestDispatcher("/views/edit-album.jsp");
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
            String id_album = request.getParameter("id_album");
            String name = request.getParameter("name");
            String artist = request.getParameter("artist");
            String genre = request.getParameter("genre");
            String years = request.getParameter("years");
            String price = request.getParameter("price");
            String stock = request.getParameter("stock");

            AlbumModel model = new AlbumModel();
            model.setName(name);
            model.setArtist(artist);
            model.setYears(years);
            model.setGenre(genre);
            model.setPrice(price);
            model.setStock(stock);

            AlbumController ac = new AlbumController();
            Boolean res = ac.update(id_album, model);


            if (res) {
                response.sendRedirect("Album");
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