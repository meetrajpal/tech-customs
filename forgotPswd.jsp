<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tech Customs Help</title>
    <link href=".\bootstrap-5.3.2-dist\css\bootstrap.min.css" rel="stylesheet">
    <link rel="icon" href="res/img/Asset 4.png" type="image/x-icon">
    <link href=".\bootstrap-5.3.2-dist\css\pswdDoc.css" rel="stylesheet">
</head>
<body background='res/img/gallary/galitem (9).jpg'>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.servlet.*" %>
    <%@ page import="javax.servlet.http.*" %>
    <%
        if(request.getParameter("updBtn") != null && 
        !request.getParameter("mail").isEmpty() && 
        !request.getParameter("pswd").isEmpty() && 
        !request.getParameter("cnfpswd").isEmpty() ){
            if(request.getParameter("pswd").equals(request.getParameter("cnfpswd"))){
                Class.forName("com.mysql.jdbc.Driver"); 
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/techcustoms", "root" , "" );
                PreparedStatement stmt = con.prepareStatement("update users set password = ? where email = ?;");
                stmt.setString(1, (String)request.getParameter("cnfpswd"));
                stmt.setString(2, (String)request.getParameter("mail"));
                stmt.executeUpdate();
                out.println("<script>alert('Password Updated Successfully.');</script>");
                stmt.close(); 
                con.close();
                RequestDispatcher rd = request.getRequestDispatcher("usersLogin.jsp");
                rd.forward(request, response);                
            }
            else
                out.println("<script>alert('Both Passwords did not matched.');</script>");
        }   
    %>
    <div class="myDiv text-white">
        <form action="forgotPswd.jsp" method="post" class="login mx-3 my-5">
            <a href="home.jsp"><img class="my-3" src="res\img\Asset 4.png" width="100" height="100"></a>
            <fieldset class="flex-grow-1">
                <legend>Update Password</legend>
                <div class="row mb-3">
                    <label for="inputEmail3" class="col-sm-4 col-form-label"></label>
                    <div class="col-sm-8">
                        <input name="mail" type="email" class="form-control" id="inputEmail3" placeholder="Enter your email" required>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="inputEmail3" class="col-sm-3 col-form-label"></label>
                    <div class="col-sm-9">
                        <input name="pswd" type="password" class="form-control" id="inputEmail3" placeholder="Enter new password" required>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="inputEmail3" class="col-sm-3 col-form-label"></label>
                    <div class="col-sm-9">
                        <input name="cnfpswd" type="password" class="form-control" id="inputEmail3" placeholder="Confirm new password" required>
                    </div>
                </div>
                <button class="btn btn-danger fs-6" name="updBtn">Update</button>
            </fieldset>
        </form>
    </div>
</body>

</html>