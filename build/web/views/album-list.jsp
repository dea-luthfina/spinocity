<%-- 
    Document   : album-list
    Created on : Jul 10, 2022, 4:39:05 PM
    Author     : Prio
--%>

<%@page import="Controller.AlbumController"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="layouts/head.jsp">
            <jsp:param name="title" value="Album List" />
        </jsp:include>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/assets/backend/css/albumstyle.css" />        <style>@import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');</style>
        <style>@import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');</style>
    </head>
    
    <body>
        <%
            AlbumController ac = new AlbumController();

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
        <jsp:include page="layouts/navbar.jsp"></jsp:include>
        
        <div class="container-lg text-center">
            <h1 class="bg-light p-4 text-info"><i class="fa-solid fa-music"></i> Album List</h1>
        </div> <br>
        
        <div class="container">
            
            <!-- Search bar -->
            <form>
                <div class="input-group">
                    <input type="text" class="form-control" name="search" placeholder="Search by Title" value="<%=search%>" />
                    <span class="input-group-append">
                    <button class="input-group-text bg-light d-block">
                            <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                    </span>
                </div>
            </form>
            <br>

            <!-- Album table -->
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                      <th scope="col">ID</th>
                      <th scope="col">Album Name</th>
                      <th scope="col">Artist</th>
                      <th scope="col">Genre</th>
                      <th scope="col">Years</th>
                      <th scope="col">Price</th>
                      <th scope="col">Stock</th>
                      <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                  <% while(rs.next()) { %>
                    <tr>
                      <td><%= rs.getString("id_album") %></td>
                      <td><%= rs.getString("name") %></td>
                      <td><%= rs.getString("artist") %></td>
                      <td><%= rs.getString("genre") %></td>
                      <td><%= rs.getString("years") %></td>
                      <td><%= rs.getString("price") %></td>
                      <td><%= rs.getString("stock") %></td>
                      <td>
                            <form action="deletealbum?id_album=<%= rs.getString("id_album") %>" 
                                  method="POST"
                                  onsubmit="return confirm('Are you sure want to delete the data?')"
                            >
                                <a href="editalbum?id_album=<%= rs.getString("id_album") %>" class="btn btn-sm btn-info">Edit</a>
                                
                                <input type="hidden" name="id_album" value="<%= rs.getString("id_album")%>" />
                                <button type="submit" class="btn btn-sm btn-danger">Delete</button>
                                
                                <input type="hidden" name="id_album" value="<%= rs.getString("id_album")%>" />
                                <a href="createorder?id_album=<%= rs.getString("id_album") %>" class="btn btn-sm btn-success">Order</a>
                            </form>
                      </td>
                    </tr>
                  <%}%>
                </tbody>
            </table>
        </div>
        
        
        <!-- JS -->
        <jsp:include page='layouts/footer.jsp'></jsp:include>
        <jsp:include page='layouts/scripts.jsp'></jsp:include>
    </body>
</html>