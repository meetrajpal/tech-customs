<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href=".\bootstrap-5.3.2-dist\css\bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href=".\bootstrap-5.3.2-dist\css\homedoc.css">
  <link rel="stylesheet" href=".\bootstrap-5.3.2-dist\css\navdocs.css">
  <link rel="stylesheet" href=".\bootstrap-5.3.2-dist\css\comparedocs.css">
  <link rel="stylesheet" href=".\bootstrap-5.3.2-dist\css\fordocs.css">
  <link rel="stylesheet" href=".\bootstrap-5.3.2-dist\css\supportdocs.css">

</head>

<body>
  <%@ page import="javax.servlet.*" %>
  <%@ page import="javax.servlet.http.*" %>
  
    <!-- Navbar -->
    <nav class="navbar nav-tabs navbar-expand-lg navbar-dark flex-column sticky-top">
      <!-- Logo -->
      <div class="logoHolder align-items-center">
        <center>
          <img class="logo" src=".\res\img\Asset 4.png" width="100" height="80"><br>
          <a class="navbar-brand fs-3 py-5" href="home.jsp">TECH x CUSTOMS&copy;</a>
        </center>
      </div>
      <div class="container-fluid py-3 align-items-center">
        <!-- Toggle Button -->
        <button class="navbar-toggler border-0 text-end" type="button" data-bs-toggle="offcanvas"
          data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon" onclick="drop()"></span>
        </button>
        <!-- Sidebar -->
        <div class="sidebar offcanvas offcanvas-start" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
          <!-- header of sidebar -->
          <div class="offcanvas-header">
            <h1 class="offcanvas-title border-bottom text-white" id="offcanvasNavbarLabel">Menu</h1>
            <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"
              onclick="closeDrop()"></button>
          </div>
          <!-- sidebar body -->
          <div class="offcanvas-body d-flex flex-column flex-lg-row ">
            <ul class="navbar-nav justify-content-center align-items-center flex-grow-1 pe-2 gap-5">
              <li class="nav-item">
                <a href="products.jsp" class="fs-5 nav-link">PRODUCTS</a>
              </li>
              <li class="nav-item">
                <a href="gallery.jsp" class="fs-5 nav-link">GALLERY</a>
              </li>
              <li class="nav-item">
                <a href="custom.jsp" class="fs-5 nav-link">CUSTOM BUILD</a>
              </li>
              <li class="nav-item">
                <a href="compare.jsp" class="fs-5 nav-link">COMPARE</a>
              </li>
              <li class="nav-item">
                <a href="forums.jsp" class="fs-5 nav-link">FORUMS</a>
              </li>
              <li class="nav-item">
                <a href="support.jsp" class="fs-5 nav-link">SUPPORT</a>
              </li>
            </ul>
            <!-- login/signup -->
            <% 
              if(session.getAttribute("unme") != null){
            %>
            <div class="dropdown dropstart dropdown-menu-dark float-end">
              <a class="dropdown-item text-decoration-none px-3 py-2 rounded-5 text-white dropdown-toggle "
                id="user-log" role="button" data-bs-toggle="dropdown">
                <%= session.getAttribute("unme")%>
              </a>
              <ul class="dropdown-menu dropdown-menu-dark">
                <li><a class="dropdown-item" href="profile.jsp">Profile</a></li>
                <li><a class="dropdown-item" href="logout.jsp">Logout</a></li>
              </ul>
              <%
                }
                else{
              %>
              <div class="dropdown dropstart dropdown-menu-dark float-end">
                <a class="dropdown-item text-decoration-none px-3 py-2 rounded-5 text-white dropdown-toggle "
                  id="user-log" role="button" data-bs-toggle="dropdown">
                  Sign-in
                </a>
              <ul class="dropdown-menu dropdown-menu-dark">
                <li><a class="dropdown-item" href="usersLogin.jsp">Login</a></li>
                <li><a class="dropdown-item" href="usersSignup.jsp">Signup</a></li>
              </ul>
              <%
                }
              %>
            </div>
          </div>
        </div>
      </div>
    </nav>
    <script src=".\bootstrap-5.3.2-dist\js\bootstrap.bundle.min.js"></script>
</body>

</html>