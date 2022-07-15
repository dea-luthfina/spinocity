<%-- 
    Document   : edit-order
    Created on : Jul 13, 2022, 10:20:56 AM
    Author     : Prio
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Controller.OrderController"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="layouts/head.jsp">
            <jsp:param name="title" value="Edit Order" />
        </jsp:include>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/assets/backend/css/albumstyle.css" />

        <style>@import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');</style>
    </head>
    
    <body>
        <jsp:include page="layouts/navbar.jsp"></jsp:include>
        
        <%
            String id_order = request.getParameter("id_order");
            if (id_order == null || id_order.equals("")) {
                response.sendRedirect("Order");
            }

            OrderController pc = new OrderController();
            ResultSet rs = pc.getById(id_order);
            
            System.out.println(rs);
            
            if (!rs.isBeforeFirst()) {
                response.sendRedirect("Order");
            }
            
        %>
        
        <!-- header -->
        <div class="container text-center">
            <h1 class="bg-light py-4 text-info">
                <i class="fa-solid fa-file-pen"></i> 
                Edit Order
            </h1>
        </div>

        <!-- form -->
        <div class="d-flex justify-content-center">
            <form class="w-50" method="POST" action="editorder">
                
                <h4>Your Identity</h4>
                <input type="hidden" name="id_order" class="form-control" placeholder="ID" 
                       readonly value="<%= rs.getString("id_order")%>">
                <div class="row">
                    <div class="col">
                        <input type="text" name="name" class="form-control" placeholder="Your Name"
                               required value="<%= rs.getString("name")%>">
                    </div>
                    <div class="col">
                        <input type="text" name="phone" class="form-control" placeholder="Your Phone Number"
                               required value="<%= rs.getString("phone")%>">
                    </div>
                </div>
                    
                <h4>Album Details</h4>
                <input type="text" name="album_name" class="form-control" placeholder="Album Name" 
                       required value="<%= rs.getString("album_name")%>">
            <label class="form-label">Album Genre</label>
                        <select type="select" class="form-control" aria-label="Default select example" name="album_genre" required>
                            <option value="Pop" 
                                    <%= rs.getString("album_genre") == "Pop" ? "selected" : ""%>
                                    >Pop</option>
                            <option value="Rock"
                                    <%= rs.getString("album_genre") == "Rock" ? "selected" : ""%>
                                    >Rock</option>
                            <option value="K-Pop"
                                    <%= rs.getString("album_genre") == "K-Pop" ? "selected" : ""%>
                                    >K-Pop</option>
                            <option value="Classical"
                                    <%= rs.getString("album_genre") == "Classical" ? "selected" : ""%>
                                    >Classical</option>
                            <option value="Indonesian"
                                    <%= rs.getString("album_genre") == "Indonesian" ? "selected" : ""%>
                                    >Indonesian</option>
                        </select>
                                    
                <div class="row">
                    <div class="col">
                        <input type="number" min="0" name="amount" class="form-control" placeholder="Amount" 
                               required value="<%= rs.getString("amount")%>">
                    </div>
                    <div class="col">
                        <input type="number" min="0" name="price" class="form-control" readonly placeholder="Price"
                               required value="<%= rs.getString("price")%>">
                    </div>
                </div>
                <input type="number" min="0" name="total_price" class="form-control" readonly placeholder="Total Price" 
                       required value="<%= rs.getString("total_price")%>">
                
            <label class="form-label">Order Date</label>
                <input type="date" name="order_date" class="form-control" 
                       required value="<%= rs.getString("order_date")%>">
            </form>
        </div>

        <!-- button -->
        <div class="d-flex justify-content-center">
            <button class="btn btn-warning" type="submit" id="btn-create">Update</button>
        </div>
        
        <jsp:include page='layouts/footer.jsp'></jsp:include>
        <jsp:include page='layouts/scripts.jsp'></jsp:include>
    </body>
</html>
