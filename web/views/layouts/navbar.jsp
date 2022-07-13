<%-- 
    Document   : navbar
    Created on : Jul 8, 2022, 12:33:06 PM
    Author     : Miss KaNiRa
--%>

<head>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Audiowide&display=swap');
    </style>
</head>

<nav class="navbar navbar-expand-lg" style="background-color: tomato;">
  <div class="container">
    <a class="navbar-brand fs-1" style="font-family: 'Audiowide', cursive;
       color: slateblue;" href="Hero">Spinocity</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav ms-auto fw-semibold align-items-center">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Hero">Home</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" 
             role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Orders
          </a>
          <ul class="dropdown-menu dropdown-menu-dark">
            <li>
              <a class="dropdown-item d-flex gap-2 align-items-center" href="createorder">
                <i class="fa-solid fa-basket-shopping"></i> Add Order
              </a>
            </li>
            <li><hr class="dropdown-divider"></li>
            <li>
              <a class="dropdown-item d-flex gap-2 align-items-center" href="Order">
                <i class="fa-solid fa-cart-shopping"></i> Order List
              </a>
            </li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" 
             role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Albums
          </a>
          <ul class="dropdown-menu dropdown-menu-dark">
            <li>
              <a class="dropdown-item d-flex gap-2 align-items-center" href="createalbum">
                <i class="fa-solid fa-plus"></i> Add Album
              </a>
            </li>
            <li><hr class="dropdown-divider"></li>
            <li>
              <a class="dropdown-item d-flex gap-2 align-items-center" href="Album">
                <i class="fa-solid fa-music"></i> Album List
              </a>
            </li>
          </ul>
        </li>
        <li class="nav-item dropdown" >
          <i class="fa-solid fa-circle-user fs-1 ms-3 nav-link active" aria-current="page" 
             role="button" data-bs-toggle="dropdown" aria-expanded="false"></i>
          <ul class="dropdown-menu dropdown-menu-dark">
            <li>
              <a href="logout" class="dropdown-item d-flex gap-2 align-items-center" action="logout">
                <i class="fa-solid fa-right-from-bracket"></i> Sign Out
              </a>
            </li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 95 3440 190"><path fill="tomato" 
     fill-opacity="1" d="M0,128L40,122.7C80,117,160,107,240,133.3C320,160,400,224,480,
     229.3C560,235,640,181,720,186.7C800,192,880,256,960,245.3C1040,235,1120,149,1200,
     112C1280,75,1360,85,1400,90.7L1440,96L1440,0L1400,0C1360,0,1280,0,1200,0C1120,0,1040,
     0,960,0C880,0,800,0,720,0C640,0,560,0,480,0C400,0,320,0,240,0C160,0,80,0,40,0L0,0Z"></path></svg>