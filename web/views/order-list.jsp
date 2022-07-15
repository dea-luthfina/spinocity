<%-- 
    Document   : order-list
    Created on : Jul 11, 2022, 5:56:13 PM
    Author     : Prio
--%>

<%@page import="Controller.OrderController"%>
<%@page import="java.sql.ResultSet"%>
<%--<%@ taglib prefix="c" uri="http://java.sun/com/jstl/core" %>--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="layouts/head.jsp">
            <jsp:param name="title" value="Order List" />
        </jsp:include>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/assets/backend/css/albumstyle.css" />        <style>@import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');</style>

        <style>@import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');</style>
    </head>
    
    <body>
        <jsp:include page='layouts/navbar.jsp'></jsp:include>
        <%
            OrderController ac = new OrderController();

            String search = "";
            ResultSet rs;

            if (request.getParameter("search") != null) {
                search = request.getParameter("search");
            } 

            if (search.equals("")) {
                rs = ac.get();
            } else {
                rs = ac.getByName(search);
            }
        %>
        <!-- header -->
        <div class="container text-center">
            <h1 class="bg-light py-4 text-info">
                <i class="fa-solid fa-cart-shopping"></i>       Order List
            </h1>
                        <!-- Search bar -->
            <form>
                <div class="input-group">
                    <input type="text" class="form-control" name="search" placeholder="Search by Customer Name" value="<%=search%>" />
                    <span class="input-group-append">
                    <button class="input-group-text bg-light d-block">
                            <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    </span>
                </div>
            </form>
            <br>
        </div>
         
        <!-- table -->
        <div class="container d-flex">
            <table class="table">
                <thead>
                  <tr>
                    <th>ID Order</th>
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Album Name</th>
                    <th>Album Genre</th>
                    <th>Amount</th>
                    <th>Total Price</th>
                    <th>Order Date</th>
                    <th>Action</th>
                  </tr>
                </thead>
                
                <tbody>
                     <% while(rs.next()) { %>
                  <tr>
                    <td><%= rs.getString("id_order") %></td>
                    <td><%= rs.getString("name") %></td> 
                    <td><%= rs.getString("phone") %></td> 
                    <td><%= rs.getString("album_name") %></td> 
                    <td><%= rs.getString("album_genre") %></td>
                    <td><%= rs.getString("amount") %></td>
                    <td><%= rs.getString("total_price") %></td>
                    <td><%= rs.getString("order_date") %></td>
                    <td>
                        <form action="deleteorder?id_order=<%= rs.getString("id_order") %>" 
                              method="POST"
                              onsubmit="return confirm('Are you sure want to delete the data?')"
                        >
                            <button type="submit" class="btn btn-sm btn-danger">Delete</button>
                        </form>
                    </td>
                  </tr>
                </tbody>
                    <%}%>
              </table>
        </div>
              
        <jsp:include page='layouts/footer.jsp'></jsp:include>
        <jsp:include page='layouts/scripts.jsp'></jsp:include>
    </body>
</html>