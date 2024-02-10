<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gallery</title>
    <link rel="icon" href="res\img\Asset 4.png" type="image/x-icon">
    <style>
        ::-webkit-scrollbar {
            width: 0;
            /* Remove scrollbar space */
            background: transparent;
            /* Optional: just make scrollbar invisible */
        }
        label{
            padding: 10px;
        }
    </style>
</head>

<body>
    <%@ page import="java.sql.*" %>
  <%
    Class.forName("com.mysql.jdbc.Driver"); 
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/techcustoms", "root" , "" );
    PreparedStatement stmt = con.prepareStatement("select * from gallery;", ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.TYPE_SCROLL_SENSITIVE);
    ResultSet rs = stmt.executeQuery("select * from gallery;");
    rs.next();  
  %>
    <!-- Navbar -->
    <jsp:include page="navbar.jsp" />
    <h1 class="text-akira text-center py-3">Gallery</h1>
    <main class="d-flex flex-wrap justify-content-center">
        <% while(rs.next()){ %>
            <img class="m-3" src=<% out.print("\"" + rs.getString(1) + "\"");%> width="300" height="300">
        <% } stmt.close(); con.close(); %>
    </main>
    

    <!-- Footer -->
    <jsp:include page="foot.jsp" />
    <script src=".\bootstrap-5.3.2-dist\js\galdoc.js"></script>
</body>

</html>