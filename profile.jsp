<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile @Tech Customs</title>
    <link href=".\bootstrap-5.3.2-dist\css\bootstrap.min.css" rel="stylesheet">
  <link rel="icon" href="res/img/Asset 4.png" type="image/x-icon">
  <link href=".\bootstrap-5.3.2-dist\css\profileDoc.css" rel="stylesheet">
</head>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.servlet.*" %>
    <%@ page import="javax.servlet.http.*" %>
    <%
        ResultSet rs = null; 
        if(request.getParameter("delBtn") != null && session.getAttribute("unme") != null){
            out.println("<script>alert('Are you sure you want to delete account?');</script>");
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/techcustoms", "root" , "" );
            PreparedStatement stmt = con.prepareStatement("delete from users where username = ?");
            stmt.setString(1, (String)session.getAttribute("unme"));
            stmt.executeUpdate();
            session.invalidate();
            RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
            rd.forward(request, response);
        }
        else if(session.getAttribute("unme") != null){
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/techcustoms", "root" , "" );
            PreparedStatement stmt = con.prepareStatement("select username, email from users where username = ?");
            stmt.setString(1, (String)session.getAttribute("unme"));
            rs = stmt.executeQuery();
            rs.next();
        }    
    %>
<body background='res/img/gallary/galitem (9).jpg'>
    <div class="myDiv text-white">
        <form action="profile.jsp" method="post" class="login mx-3 my-5">
            <a href="home.jsp"><img class="my-3" src="res\img\Asset 4.png" width="100" height="100"></a>
            <fieldset class="flex-grow-1">
                <legend>Profile</legend>
                <img src="res\img\BuilderPC.png" class="pic my-3"><br>
                <h2 class="btn btn-primary fs-4">Username: <% if(rs != null) out.print(rs.getString(1)); %></h2><br>
                <h2 class="btn btn-primary fs-4">Mail id: <% if(rs != null) out.print(rs.getString(2)); %></h2><br>
                <button class="btn btn-danger fs-6" name="delBtn">Delete Account</button>
            </fieldset>
        </form>
    </div>
  <script src=".\bootstrap-5.3.2-dist\js\userSigndocs.js"></script>
</body>

</html>