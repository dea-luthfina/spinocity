<%-- 
    Document   : register
    Created on : Jun 29, 2022, 10:59:12 PM
    Author     : Kevin
--%>

<%@page import="Controller.MembersController"%>
<%@page import="java.sql.ResultSet"%>
<%--<%@ taglib prefix="c" uri="http://java.sun/com/jstl/core" %>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='layouts/head.jsp'>
            <jsp:param name="title" value="Register" />
        </jsp:include>
        <style>
            .input-group-append {
                cursor: pointer;
            }
        </style>
    </head>
    
    <body class="d-flex flex-column h-100">
        <jsp:include page='layouts/navbar.jsp'></jsp:include>
        <!-- Begin page content -->
        <main class="flex-shrink-0">
            <div class="container">
                <h1 class="mt-5">Register</h1>
                <p class="lead">To continue you must create an account first</p>
                <label class="form-label">
                    <a href="login">Already have an acoount? Login here!</a>
                </label>
                
                <div class="row pt-5">
                    <div class="col-12">
                        <form method="POST" action="register">
                            <div class="mb-3">
                                <label class="form-label">Name</label>
                                <input type="text" class="form-control" placeholder="Enter your name" name="name" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label"> Email </label>
                                <input type="email" class="form-control" placeholder="Enter your email" name="email" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Contact</label>
                                <input type="text" maxlength="12" class="form-control" placeholder="Enter your phone number" name="contact" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Username</label>
                                <input type="text" class="form-control" placeholder="Enter your username" name="username" required>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Password</label>
                                <input type="password" minlength="8" class="form-control" placeholder="Enter your password" name="password" required>
                            </div>
                            <div class="mb-3">
                                <button type="submit" class="btn btn-primary btn-small btn-rounded">Submit</button>
                            </div>
                        </form>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <jsp:include page='layouts/footer.jsp'></jsp:include>
        <jsp:include page='layouts/scripts.jsp'></jsp:include>

    </body>
</html>