<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Log In To Tech Customs</title>
    <link href=".\bootstrap-5.3.2-dist\css\bootstrap.min.css" rel="stylesheet">
    <link rel="icon" href="res\img\Asset 4.png" type="image/x-icon">
    <link href=".\bootstrap-5.3.2-dist\css\userLoginDoc.css" rel="stylesheet">
</head>

<body background="./res/img/gallary/galitem (9).jpg">
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.servlet.*" %>
    <%@ page import="javax.servlet.http.*" %>
    <%
        if(request.getParameter("loginBtn") != null && !request.getParameter("inputUnme").isEmpty() && !request.getParameter("inputPassword2").isEmpty()){
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/techcustoms", "root" , "" );
            String str = "select password from users where username = '" + request.getParameter("inputUnme") + "';";
            PreparedStatement stmt = con.prepareStatement(str, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.TYPE_SCROLL_SENSITIVE);
            ResultSet rs = stmt.executeQuery();
            rs.last();
            RequestDispatcher rd;
            if(rs.getRow()!=0){
                if(rs.getString(1).equals(request.getParameter("inputPassword2"))){
                    session.setAttribute("unme", request.getParameter("inputUnme"));
                    session.setAttribute("forgot", "false");
                    rd = request.getRequestDispatcher("home.jsp");  
                    rd.forward(request, response);
                }
                else{
                    out.println("<script>alert('Invalid Password');</script>");
                    session.setAttribute("forgot", "true");
                }
            }
            else{
                out.println("<script>alert('Invalid Username');</script>");
            }
            stmt.close(); 
            con.close();
        }   
    %>

    <main class="">
        <div class="myDiv text-white">
            <form action="usersLogin.jsp" method="post">
                <div class="login">
                <h2 class="py-3">Log In</h2>
                <input type="text" class="form-control" id="inputUnme" placeholder="Username" name="inputUnme">
                <label for="inputPassword2" class="form-label"></label>
                <input type="password" class="form-control " id="inputPassword2" name="inputPassword2" placeholder="Password">
                    
                <%
                    if(session.getAttribute("forgot") != null){
                %>
                <a href="forgotPswd.jsp" class="btn my-2 text-white"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                        fill="currentColor" class="bi bi-lock-fill" viewBox="0 0 16 16">
                        <path
                            d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z" />
                    </svg> Forgot password?</a><br>
                <%
                    }
                %>
                <button name="loginBtn" class="btn btn-primary my-3 py-2 align-content-center">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-arrow-right-square-fill" viewBox="0 0 16 16">
                        <path
                            d="M0 14a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2a2 2 0 0 0-2 2v12zm4.5-6.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5a.5.5 0 0 1 0-1z" />
                    </svg>
                    Login
                </button><br>
            </form>
                New to TechCustoms?<br>
    
                <a class="btn btn-primary my-3 py-2 align-content-center" href="usersSignup.jsp">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-person-fill-add" viewBox="0 0 16 16">
                        <path
                            d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7Zm.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0Zm-2-6a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z" />
                        <path
                            d="M2 13c0 1 1 1 1 1h5.256A4.493 4.493 0 0 1 8 12.5a4.49 4.49 0 0 1 1.544-3.393C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4Z" />
                    </svg>
                    Sign Up
                </a>
            </div>
        </div>
        <div class="right flex-grow-1">
            <a href="home.jsp"><img class="" src="res\img\Asset 4.png"></a>
            <h1 class="fw-bold">TECH CUSTOMS <sup>&copy;</sup></h1>
        </div>
    </main>
</body>

</html>