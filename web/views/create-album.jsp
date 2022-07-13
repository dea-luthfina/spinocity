<%-- 
    Document   : create-album
    Created on : Jul 10, 2022, 4:39:15 PM
    Author     : Prio
--%>

<%-- 
    Document   : create
    Created on : Jul 9, 2022, 9:30:33 AM
    Author     : Miss KaNiRa
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Controller.AlbumController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="layouts/head.jsp">
            <jsp:param name="title" value="Add Album" />
        </jsp:include>
     <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/assets/backend/css/albumstyle.css" />        <style>@import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');</style>
        <style>@import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');</style>
    </head>
    
    <body>
        
        <jsp:include page="layouts/navbar.jsp"></jsp:include>
        
        <div class="container-lg text-center">
            <h1 class="bg-light p-4 text-info"><i class="fa-solid fa-plus"></i> Add Album</h1>
        </div>
        
        <!-- CRUD form -->
        <div class="d-flex justify-content-center">
            <form class="w-50" method="POST" action="createalbum">
              <label class="form-label">Album Name</label>
              <input type="text" name="name" class="form-control" autocomplete="off" required>
              <input type="text" name="artist" class="form-control" placeholder="Artist" autocomplete="off" required>
              <div class="mb-3">
                <label class="form-label">Genre</label>
                  <select class="form-select" aria-label="Default select example" name="genre" required>
                    <option value="Pop">Pop</option>
                    <option value="Rock">Rock</option>
                    <option value="K-Pop">K-Pop</option>
                    <option value="Classical">Classical</option>
                    <option value="Indonesian">Indonesian</option>
                  </select>
              </div>
              <input type="number" name="years" min="1000" max="2999" class="form-control" placeholder="Year" autocomplete="off" required>
              <div class="row">
                <div class="col">
                  <input type="number" min="0" name="price" class="form-control" placeholder="Price" autocomplete="off" required>
                </div>
                <div class="col">
                  <input type="number" min="0" name="stock" class="form-control" placeholder="Stock" autocomplete="off" required>
                </div>
              </div>
              <div class="d-flex justify-content-center">
                <button type="submit" class="btn btn-success" id="btnCreate">Create</button>
              </div>          
            </form>
        </div>
        
        <!-- JS -->
        <jsp:include page='layouts/footer.jsp'></jsp:include>
        <jsp:include page='layouts/scripts.jsp'></jsp:include>
    </body>
</html>
