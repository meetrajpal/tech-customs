<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up To Tech Customs</title>
    <link rel="icon" href="res\img\Asset 4.png" type="image/x-icon">
    <link href=".\bootstrap-5.3.2-dist\css\bootstrap.min.css" rel="stylesheet">
    <link href=".\bootstrap-5.3.2-dist\css\userSignUpDoc.css" rel="stylesheet">
</head>

<body background='res/img/gallary/galitem (9).jpg'>
    <%@ page import="javax.swing.JOptionPane" %>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.servlet.*" %>
    <%@ page import="javax.servlet.http.*" %>
    <%
        if(request.getParameter("signBtn") != null && 
            !request.getParameter("inputUnme").isEmpty() &&
            !request.getParameter("inputEmail3").isEmpty() &&
            !request.getParameter("inputPassword3").isEmpty() &&
            !request.getParameter("inputUnme1").isEmpty()){
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/techcustoms", "root" , "" );
            PreparedStatement stmt = con.prepareStatement("insert into users(full_name, username, email, password) values(?, ?, ?, ?);");
            stmt.setString(1, request.getParameter("inputUnme"));
            stmt.setString(2, request.getParameter("inputUnme1"));
            stmt.setString(3, request.getParameter("inputEmail3"));
            stmt.setString(4, request.getParameter("inputPassword3"));
            stmt.execute();
            RequestDispatcher rd = request.getRequestDispatcher("usersLogin.jsp");  
            rd.forward(request, response);
            stmt.close();
            con.close();
        } 
    %>
    <div class="myDiv text-white">
        <form class="login mx-3" action="usersSignup.jsp" method="post">
            <a href="home.jsp"><img class="" src="res\img\Asset 4.png" width="100" height="100" alt=""></a>
            <fieldset class="flex-grow-1">
                <legend>Sign Up</legend>

                <div class="row mb-3">
                    <label for="inputUnme" class="col-sm-5 col-form-label">Full Name</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" id="inputUnme" name="inputUnme"
                            placeholder="Firstname Lastname"
                            required maxlength="10">
                        </div>
                </div>

                <div class="row mb-3">
                    <label for="inputUnme1" class="col-sm-5 col-form-label">Username</label>
                    <div class="col-sm-7">
                        <input type="text" class="form-control" id="inputUnme1" name="inputUnme1"
                            placeholder="Select your username without any space and maxlength upto 10 characters"
                            required maxlength="10">
                        <span id="unme"></span>
                        </div>
                </div>
                <div class="row mb-3">
                    <label for="inputEmail3" class="col-sm-5 col-form-label">Email</label>
                    <div class="col-sm-7">
                        <input type="email" class="form-control" id="inputEmail3" name="inputEmail3" placeholder="Enter your email"
                            required>
                        <span id="mail"></span>
                        </div>
                </div>
                <div class="row mb-3">
                    <label for="inputPhNo" class="col-sm-5 col-form-label">Mobile Number</label>
                    <div class="col-sm-7">
                        <input type="tel" class="form-control" id="inputPhNo" name="inputPhNo"
                            placeholder="Only Indian numbers are accepted" required maxlength="12">
                        <span id="phone"></span>
                        </div>
                </div>
                <div class="row mb-3">
                    <label for="inputProfile" class="col-sm-5 col-form-label">Profile Picture</label>
                    <div class="col-sm-7">
                        <input type="file" class="form-control" id="inputProfile" name="inputProfile" accept=".jpg" required>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="inputDOB" class="col-sm-5 col-form-label">Date Of Birth</label>
                    <div class="col-sm-7">
                        <input type="date" class="form-control" id="inputDOB" name="inputDOB" required>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="inputPassword3" class="col-sm-5 col-form-label">Password</label>
                    <div class="col-sm-7">
                        <input type="password" class="form-control" id="inputPassword3" name="inputPassword3"
                            placeholder="Enter your password" required minlength="8">
                        <span id="pswd"></span>
                        </div>
                </div>
                <div class="row mb-3">
                    <label for="inputPassword4" class="col-sm-5 col-form-label">Confirm Password</label>
                    <div class="col-sm-7">
                        <input type="password" class="form-control" id="inputPassword4" name="inputPassword4"
                            placeholder="Re-enter your password" required minlength="8">
                            <span id="cnfpswd"></span>
                        </div>
                </div>
                <fieldset class="row mb-3">
                    <legend class="col-form-label col-sm-5 pt-0">User Type</legend>
                    <div class="col-sm-1">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1"
                                value="option1">
                            <label class="form-check-label" for="gridRadios1">
                                Buyer
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2"
                                value="option2">
                            <label class="form-check-label" for="gridRadios2">
                                Seller
                            </label>
                        </div>
                    </div>
                </fieldset>
                <div class="row mb-3">
                    <label for="inputNews" class="col-sm-5 col-form-label">Subsribe to our News-Letter</label>
                    <div class="col-sm-7">
                        <select name="News" id="inputNews" name="inputNews" class="form-select">
                            <option value="yes" selected>Yes</option>
                            <option value="no">No</option>
                        </select>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-7 offset-sm-2">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="gridCheck1" required>
                            <label class="form-check-label" for="gridCheck1">
                                Agree to terms and confitions
                            </label>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary" onclick="validate()" name="signBtn">Sign in</button>
            </fieldset>
        </form>
    </div>
    <script src=".\bootstrap-5.3.2-dist\js\userSigndocs.js"></script>
</body>

</html>