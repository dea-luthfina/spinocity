<%-- 
    Document   : hero
    Created on : Jul 9, 2022, 12:42:17 PM
    Author     : Miss KaNiRa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Spinocity | Home</title>
        <script src="https://kit.fontawesome.com/021b758c3a.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/assets/backend/css/hero.css" />
    </head>
    <body>
        <div class="container-head">
          <div class="title">
            <h1>Welcome to <span>Spinocity</span></h1>  
          </div>  
          <div class="container-logout">
            <div class="logout" action="logout">
              <h3>Hallo, <%= request.getSession().getAttribute("username") %>!</h3>
              <a href="logout" onclick="return confirm('Are you sure want to Sign Out ?')"><b>Sign Out</b></a>  
            </div>
            <i class="fa-solid fa-circle-user"></i>
          </div>
        </div>
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="slateblue" fill-opacity="1" d="M0,160L48,149.3C96,139,192,117,288,128C384,139,480,181,576,170.7C672,160,768,96,864,101.3C960,107,1056,181,1152,197.3C1248,213,1344,171,1392,149.3L1440,128L1440,0L1392,0C1344,0,1248,0,1152,0C1056,0,960,0,864,0C768,0,672,0,576,0C480,0,384,0,288,0C192,0,96,0,48,0L0,0Z"></path></svg>
        <div class="container">
          <div class="container-card">
            <div class="card">
              <div id="circle"></div>
              <h2>Al<br>bums</h2>
              <p>Album List & <br> Add or Edit Album</p>
              <div class="content">
                <a href="Album">More</a>
              </div>
            </div>
            <div class="card">
              <div id="circle"></div>
              <h2>Or<br>ders</h2>
              <p>Order List & <br> Add or Edit Order</p>            
              <div class="content">
                <a href="Order">More</a>
              </div>
            </div>  
          </div>
        </div>
         <jsp:include page="layouts/scripts.jsp"></jsp:include>
        <jsp:include page="layouts/footer.jsp"></jsp:include>
    </body>
</html>

