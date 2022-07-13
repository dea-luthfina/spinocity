<%-- 
    Document   : edit
    Created on : Jul 11, 2022, 1:13:10 PM
    Author     : Miss KaNiRa
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Controller.AlbumController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="layouts/head.jsp">
            <jsp:param name="title" value="Edit Album" />
        </jsp:include>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/assets/backend/css/albumstyle.css" />  
        <style>@import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');</style>
    </head>
    
    <body>
        
        <jsp:include page="layouts/navbar.jsp"></jsp:include>
        
         <%
            String id_album = request.getParameter("id_album");
            if (id_album == null || id_album.equals("")) {
                response.sendRedirect("Album");
            }

            AlbumController ac = new AlbumController();
            ResultSet rs = ac.getById(id_album);
            
            System.out.println(rs);
            
            if (!rs.isBeforeFirst()) {
                response.sendRedirect("Album");
            }
            
        %>
        
        <div class="container-lg text-center">
            <h1 class="bg-light p-4 text-info">
                <i class="fa-regular fa-pen-to-square"></i> Edit Album
            </h1>
        </div>
        
        <!-- CRUD form -->
        <% while(rs.next()) { %>
        <div class="d-flex justify-content-center">
            <form class="w-50" method="POST" action="editalbum">
                
                <input type="text" name="id_album" class="form-control" placeholder="ID" readonly 
                     value="<%= rs.getString("id_album")%>">
                
              <label class="form-label">Album Name</label>
              <input type="text" name="name" class="form-control" 
                     value="<%= rs.getString("name")%>" required>
              
              <input type="text" name="artist" class="form-control" placeholder="Artist" 
                     value="<%= rs.getString("artist")%>" required>
              
              <div class="mb-3">
                <label class="form-label">Genre</label>
                <select class="form-select" aria-label="Default select example" name="genre" required>
                  <option value="Pop"
                    <%= rs.getString("genre") == "Pop" ? "selected" : ""%>
                    >Pop</option>
                  <option value="Rock"
                    <%= rs.getString("genre") == "Rock" ? "selected" : ""%>    
                    >Rock</option>
                  <option value="K-Pop"
                    <%= rs.getString("genre") == "K-Pop" ? "selected" : ""%>
                    >K-Pop</option>
                  <option value="Classical"
                    <%= rs.getString("genre") == "Classical" ? "selected" : ""%>      
                    >Classical</option>
                  <option value="Indonesian"
                    <%= rs.getString("genre") == "Indonesian" ? "selected" : ""%>            
                    >Indonesian</option>
                </select>
              </div>
                    
              <input type="number" name="years" class="form-control" placeholder="Year" 
                     value="<%= rs.getString("years")%>" required>
              
              <div class="row">
                <div class="col">
                  <input type="number" min="0" name="price" class="form-control" 
                         placeholder="Price" value="<%= rs.getString("price")%>" required>
                </div>
                <div class="col">
                  <input type="number" min="0" name="stock" class="form-control" 
                         placeholder="Stock" value="<%= rs.getString("stock")%>" required>
                </div>
              </div>
                
              <div class="d-flex justify-content-center">
                <button type="submit" class="btn btn-warning" id="btnUpdate">Update</button>
              </div>          
            </form>
        </div>
        <% } %>
        
        <!-- JS -->
        <jsp:include page="layouts/scripts.jsp"></jsp:include>
        <jsp:include page="layouts/footer.jsp"></jsp:include>
</html>
