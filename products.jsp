<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>PRODUCTS</title>
  <link rel="icon" href="res/img/Asset 4.png" type="image/x-icon">
  <link href="./bootstrap-5.3.2-dist/css/prodoc.css" rel="stylesheet">
</head>

<body>
  <%@ page import="java.sql.*" %>
  <%
    Class.forName("com.mysql.jdbc.Driver"); 
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/techcustoms", "root" , "" );
    PreparedStatement stmt = con.prepareStatement("select * from shop_cards;", ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.TYPE_SCROLL_SENSITIVE);
    ResultSet rs = stmt.executeQuery("select * from shop_cards;");
    rs.next();  
  %>
  <!-- Navbar -->
  <jsp:include page="navbar.jsp" />
  <h1 class="text-akira text-center py-3">Products</h1>
  <!-- Main Section -->
  <main class="cardContainer container-fluid">
    <%
      while(rs.next()){
    %>
      <div class="card m-5 p-3">
        <img src=<% out.print("\"./" + rs.getString(6) + "\""); %> class="card-img-top">
        <div class="card-body d-flex flex-column align-items-center justify-content-center">
          <h5 class="card-title"><% out.print(rs.getString(3) + " - " + rs.getString(2)); %></h5>
          <p class="card-text">&#8377; <% out.print(rs.getString(5));%></p>
          <a href=<% out.print("\"" + rs.getString(7) + "\""); %> class="cardBtn btn">Buy Now</a>
        </div>
      </div>
    <%
      }
      stmt.close();
      con.close();
    %>
  </main>

  <!-- Footer -->
  <jsp:include page="foot.jsp" />
  <script src="./bootstrap-5.3.2-dist/js/prodocs.js"></script>
</body>

</html>