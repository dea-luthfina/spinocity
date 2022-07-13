<%-- 
    Document   : order
    Created on : Jul 11, 2022, 3:04:25 PM
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
            <jsp:param name="title" value="Create a Order" />
        </jsp:include>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/assets/backend/css/albumstyle.css" />
        <style>@import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');</style>
    </head>

    <body>
        <jsp:include page="layouts/navbar.jsp"></jsp:include>
        
        <!-- header -->
        <div class="container text-center">
            <h1 class="bg-light py-4 text-info">
                <i class="fa-solid fa-basket-shopping"></i>       Order Form
            </h1>
        </div>

        <!-- form -->
        <div class="d-flex justify-content-center">
            <form class="w-50" method="POST" action="createorder">
                <br> 
                <br> 
                <h4>Your Identity</h4>
                <div class="row">
                    <div class="col">
                        <input type="text" name="name" class="form-control" placeholder="Your Name" autocomplete="off">
                    </div>
                    <div class="col">
                        <input type="text" name="phone" class="form-control" placeholder="Your Phone Number" autocomplete="off">
                    </div>
                </div>

                <h4>Album Details</h4>
                <input type="text" name="album_name" class="form-control" placeholder="Album Name" autocomplete="off">
                <label class="form-label">Album Genre</label>
                <select type="select" class="form-control" aria-label="Default select example" name="album_genre" required>
                    <option value="Pop">Pop</option>
                    <option value="Rock">Rock</option>
                    <option value="Clasiccal">Clasiccal</option>
                    <option value="Indonesian">Indonesian</option>
                    <option value="K-Pop">K-Pop</option>
                </select>
                <div class="row">
                    <div class="col">
                        <input min="0" name="amount" class="form-control" placeholder="Amount" autocomplete="off">
                    </div>
                    <div class="col">
                        <input min="0" name="price" class="form-control"  placeholder="Price" autocomplete="off">
                    </div>
                </div>
                <input min="0" name="total_price" class="form-control"  placeholder="Total Price" autocomplete="off">
                
            <label class="form-label">Order Date</label>
                <input type="date" class="form-control" name="order_date" required />
                
        <!-- button -->
        <div class="d-flex justify-content-center">
            <button type="submit" class="btn btn-success" id="btn-create">Order Now</button>
        </div>
        
        <jsp:include page='layouts/footer.jsp'></jsp:include>
        <jsp:include page='layouts/scripts.jsp'></jsp:include>
        
    </body>
</html>
