<%-- 
    Document   : order
    Created on : Jul 11, 2022, 3:04:25 PM
    Author     : Prio
--%>

<%@page import="Controller.AlbumController"%>
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
            
            int totalprice = 0;
            int amount = 0;
            int price = 0;
            
            if (request.getMethod() == "POST") {
                 price = Integer.parseInt(request.getParameter("price"));
                 amount = Integer.parseInt(request.getParameter("amount"));
            
                    if (request.getParameter("amount") !=null){
                        totalprice = price * amount;
                    }
                }
        %>
        
        <% while(rs.next()) { %>
        <!-- header -->
        <div class="container text-center">
            <h1 class="bg-light py-4 text-info">
                <i class="fa-solid fa-basket-shopping"></i>       Order Form
            </h1>
            <h2 class="form-label">
                Selected items: <%= rs.getString("name")%>
            </h2>
                <a href="Album" class="btn btn-sm btn-info">back</a>
        </div>

        <!-- form -->
        <div class="d-flex justify-content-center">
            <form class="w-50" method="POST" action="createorder" onsubmit="return confirm('Place an order ?')">
                <br> 
                <br> 
                <h4>Customer Identity</h4>
                <div class="row">
                    <div class="col">
                        <input type="text" name="name" class="form-control" required placeholder="Customer Name" autocomplete="off">
                    </div>
                    <div class="col">
                        <input type="text" name="phone" class="form-control" required maxlength="12" placeholder="Customer Phone Number" autocomplete="off">
                    </div>
                </div>

                <h4>Album Details</h4>
                <input type="text" name="album_name" class="form-control" readonly value="<%= rs.getString("name")%>">
                <label class="form-label">Album Genre</label>
                <input type="text" class="form-control" name="album_genre" readonly value="<%= rs.getString("genre")%>">
                </input>
                <div class="row">
                    <div class="col">
                        <input type="number" min="0" id="amount" name="amount" class="form-control" placeholder="Amount" autocomplete="off" required max="<%= rs.getString("stock")%>">
                    </div>
                    <div class="col">
                        <input type="number" min="0" id="price" name="price" class="form-control" readonly value="<%= rs.getString("price")%>">
                    </div>
                </div>
                    <div class="mb-3">
                        <a onclick="totalprice()" class="btn btn-primary btn-small btn-rounded" >
                            Calculate</a>
                    </div>
                <input type="number" min="0" id="total_price" name="total_price" class="form-control" required value="<%=totalprice%>">
                
            <label class="form-label">Order Date</label>
                <input type="date" class="form-control" name="order_date" required />
                
        <!-- button -->
        <div class="d-flex justify-content-center">
            <button type="submit" class="btn btn-success" id="btn-create">Order Now</button>
        </div>
                <% } %>
        
        <jsp:include page='layouts/footer.jsp'></jsp:include>
        <jsp:include page='layouts/scripts.jsp'></jsp:include>
        
        <script>
            var totalprice = document.getElementById("total_price");
            var amount = document.getElementById("amount");
            var price = document.getElementById("price");
            
            function totalprice(){
                totalprice.value = Number(amount.value) * Number(price.value);
            }
        </script>
    </body>
</html>

