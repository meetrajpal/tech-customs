<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="res\img\Asset 4.png" type="image/x-icon">
    <link rel="stylesheet" href="/bootstrap-icons@1.11.1/font/bootstrap-icons.woff">
</head>

<body>
    <!-- Navbar -->
    <jsp:include page="navbar.jsp" />
    <%@ page import="java.sql.*" %>
  <%
    
    Class.forName("com.mysql.jdbc.Driver"); 
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/techcustoms", "root" , "" );
    String name = null;
    if(request.getParameter("sendBtn") != null && !request.getParameter("msgBox").isEmpty() && session.getAttribute("unme") != null){
        name = (String)session.getAttribute("unme");
        PreparedStatement stmt = con.prepareStatement("insert into forum(username, content) values(?, ?);");
        stmt.setString(1, name);
        stmt.setString(2, request.getParameter("msgBox"));
        stmt.executeUpdate();

    }

    PreparedStatement stmt = con.prepareStatement("select * from forum;", ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.TYPE_SCROLL_SENSITIVE);
    ResultSet rs = stmt.executeQuery();

  %>
    
    <h1 class="text-akira text-center py-3">Forums</h1>
    <main class="text-center" style="background: url('res/img/feed.jpg');">
        <% while (rs.next()) { 
            if(name != null && name.equals(rs.getString(2))){ %>
                <div class="myRow row">
                    <div class="col-8"></div>
                    <div class="msg col-4 p-2 btn text-white">From : <%= rs.getString(2)%> <br> On: <%= rs.getString(4)%> <br> <%= rs.getString(3)%></div>
                </div>
        <%  }
            else{
        %>
                <div class="myRow row">
                    <div class="msg col-4 p-2 btn text-white">From : <%= rs.getString(2)%> <br> On: <%= rs.getString(4)%> <br> <%= rs.getString(3)%></div>
                </div>
        <%
        } } stmt.close(); con.close();%>
    </main>
    <form action="forums.jsp" method="post">
    <div class="myRow row">
        <div class="col-10 ">
            <input class="form-control" type="search" placeholder="Send a message" name="msgBox"/>
        </div>
        <button name="sendBtn" class="col-2 send btn text-center" ><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-send-fill"
            viewBox="0 0 16 16">
            <path
                d="M15.964.686a.5.5 0 0 0-.65-.65L.767 5.855H.766l-.452.18a.5.5 0 0 0-.082.887l.41.26.001.002 4.995 3.178 3.178 4.995.002.002.26.41a.5.5 0 0 0 .886-.083l6-15Zm-1.833 1.89L6.637 10.07l-.215-.338a.5.5 0 0 0-.154-.154l-.338-.215 7.494-7.494 1.178-.471-.47 1.178Z" />
        </svg>
        Send
    </button>
    </div>
</form>
    <!-- Footer -->
    <jsp:include page="foot.jsp"/>
</body>

</html>