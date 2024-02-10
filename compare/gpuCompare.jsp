<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="..\bootstrap-5.3.2-dist\css\bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: black;
            padding: 10px;
            text-align: center;
            color: white;
        }

        label {
            padding: 10px;
        }

        .btn {
            color: white;
            border-radius: 100px;
            border: solid #d23bff 2px;
        }

        .btn:hover {
            background-color: #d23bff;
            box-shadow: 0px 0px 20px #d23bff;
        }

        :-webkit-scrollbar {
            width: 0;
            /* Remove scrollbar space */
            background: transparent;
            /* Optional: just make scrollbar invisible */
        }
    </style>
</head>

<body>
    <%@ page import="java.sql.*" %>
    <%! 
        Connection con = null;
        ResultSet rs1 = null;
        ResultSet rs2 = null;
    %>
    <% 
        if(request.getParameter("btnCmp") !=null){ 
            Class.forName("com.mysql.jdbc.Driver"); 
            con=DriverManager.getConnection("jdbc:mysql://localhost/techcustoms", "root" , "" ); 
            if(!request.getParameter("select1").equals("GPU 1") && !request.getParameter("select2").equals("GPU 2")){
                String str1 = "select * from gpu where name ='" + request.getParameter("select1") +  "';";
                String str2 = "select * from gpu where name ='" + request.getParameter("select2") +  "';";
                
                PreparedStatement stmt1 = con.prepareStatement(str1, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.TYPE_SCROLL_INSENSITIVE);
                
                PreparedStatement stmt2 = con.prepareStatement(str2, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.TYPE_SCROLL_INSENSITIVE);
                
                rs1 = stmt1.executeQuery(str1);
                rs2 = stmt2.executeQuery(str2);
                rs1.next();
                rs2.next();
                        
         
    %>
    <div >
        <form class="row container-fluid align-content-center" action="gpuCompare.jsp" method="post">

        <div class="col-6">
            <select name="select1" class="form-select">
                <option selected>GPU 1</option>
                <option value="GeForce RTX 3090">GeForce RTX 3090 | Rs.174999</option>
                <option value="GeForce RTX 3080">GeForce RTX 3080 | Rs.152999</option>
                <option value="GeForce RTX 3070">GeForce RTX 3070 | Rs.59499</option>
                <option value="Radeon RX 6900 XT OC">Radeon RX 6900 XT OC | Rs.160500</option>
                <option value="GeForce RTX 3060 Ti">GeForce RTX 3060 Ti | Rs.41500</option>
                <option value="Radeon RX 6800 XT OC">Radeon RX 6800 XT OC | Rs.74990</option>
                <option value="GeForce GTX 1660 super">GeForce GTX 1660 super | Rs.32740</option>
                <option value="Radeon RX 6700 X">Radeon RX 6700 X | Rs.37990</option>
                <option value="GeForce GTX 1660 super">GeForce GTX 1660 super | Rs.29990</option>
            </select>
            <label>Name</label><br>
            <label class="fs-3"> <% out.print(rs1.getString(2));%> </label><br>
            <label>Base Clock</label><br>
            <label class="fs-3"> <% out.print(rs1.getString(6) + " GHz");%> </label><br>
            <label>Memory Capacity</label><br>
            <label class="fs-3"> <% out.print(rs1.getString(5) + " GB");%></label><br>
            <label>Graphics Memory Type</label><br>
            <label class="fs-3"> <% out.print(rs1.getString(7));%> </label><br>
            <label>Market Price</label><br>
            <label class="fs-3"><% out.print("Rs." + rs1.getString(8));%> </label><br>
        </div>
        <div class="col-6">
            <select name="select2" class="form-select">
                <option selected>GPU 2</option>
                <option value="GeForce RTX 3090">GeForce RTX 3090 | Rs.174999</option>
                <option value="GeForce RTX 3080">GeForce RTX 3080 | Rs.152999</option>
                <option value="GeForce RTX 3070">GeForce RTX 3070 | Rs.59499</option>
                <option value="Radeon RX 6900 XT OC">Radeon RX 6900 XT OC | Rs.160500</option>
                <option value="GeForce RTX 3060 Ti">GeForce RTX 3060 Ti | Rs.41500</option>
                <option value="Radeon RX 6800 XT OC">Radeon RX 6800 XT OC | Rs.74990</option>
                <option value="GeForce GTX 1660 super">GeForce GTX 1660 super | Rs.32740</option>
                <option value="Radeon RX 6700 X">Radeon RX 6700 X | Rs.37990</option>
                <option value="GeForce GTX 1660 super">GeForce GTX 1660 super | Rs.29990</option>
            </select>
            <label>Name</label><br>
            <label class="fs-3"> <% out.print(rs2.getString(2));%> </label><br>
            <label>Base Clock</label><br>
            <label class="fs-3"> <% out.print(rs2.getString(6) + " GHz");%> </label><br>
            <label>Memory Capacity</label><br>
            <label class="fs-3"> <% out.print(rs2.getString(5) + " GB");%></label><br>
            <label>Graphics Memory Type</label><br>
            <label class="fs-3"> <% out.print(rs2.getString(7));%> </label><br>
            <label>Market Price</label><br>
            <label class="fs-3"><% out.print("Rs." + rs2.getString(8));%> </label><br>
        </div>
        <input type="submit" value="COMPARE" class="btn" name="btnCmp">
        </form>
    </div>
    <%
        stmt1.close();
        stmt2.close();
        con.close();
        }
        }
        else{
    %>
    <div >
        <form class="row container-fluid align-content-center" action="gpuCompare.jsp" method="post">

        <div class="col-6">
            <select name="select1" class="form-select">
                <option selected>GPU 1</option>
                <option value="GeForce RTX 3090">GeForce RTX 3090 | Rs.174999</option>
                <option value="GeForce RTX 3080">GeForce RTX 3080 | Rs.152999</option>
                <option value="GeForce RTX 3070">GeForce RTX 3070 | Rs.59499</option>
                <option value="Radeon RX 6900 XT OC">Radeon RX 6900 XT OC | Rs.160500</option>
                <option value="GeForce RTX 3060 Ti">GeForce RTX 3060 Ti | Rs.41500</option>
                <option value="Radeon RX 6800 XT OC">Radeon RX 6800 XT OC | Rs.74990</option>
                <option value="GeForce GTX 1660 super">GeForce GTX 1660 super | Rs.32740</option>
                <option value="Radeon RX 6700 X">Radeon RX 6700 X | Rs.37990</option>
                <option value="GeForce GTX 1660 super">GeForce GTX 1660 super | Rs.29990</option>
            </select>
            <label>Name</label><br>
            <label class="fs-3">-</label><br>
            <label>Base Clock</label><br>
            <label class="fs-3">-</label><br>
            <label>Memory Capacity</label><br>
            <label class="fs-3">-</label><br>
            <label>Graphics Memory Type</label><br>
            <label class="fs-3">-</label><br>
            <label>Market Price</label><br>
            <label class="fs-3">-</label><br>
        </div>
        <div class="col-6">
            <select name="select2" class="form-select">
                <option selected>GPU 2</option>
                <option value="GeForce RTX 3090">GeForce RTX 3090 | Rs.174999</option>
                <option value="GeForce RTX 3080">GeForce RTX 3080 | Rs.152999</option>
                <option value="GeForce RTX 3070">GeForce RTX 3070 | Rs.59499</option>
                <option value="Radeon RX 6900 XT OC">Radeon RX 6900 XT OC | Rs.160500</option>
                <option value="GeForce RTX 3060 Ti">GeForce RTX 3060 Ti | Rs.41500</option>
                <option value="Radeon RX 6800 XT OC">Radeon RX 6800 XT OC | Rs.74990</option>
                <option value="GeForce GTX 1660 super">GeForce GTX 1660 super | Rs.32740</option>
                <option value="Radeon RX 6700 X">Radeon RX 6700 X | Rs.37990</option>
                <option value="GeForce GTX 1660 super">GeForce GTX 1660 super | Rs.29990</option>
            </select>
            <label>Name</label><br>
            <label class="fs-3">-</label><br>
            <label>Base Clock</label><br>
            <label class="fs-3">-</label><br>
            <label>Memory Capacity</label><br>
            <label class="fs-3">-</label><br>
            <label>Graphics Memory Type</label><br>
            <label class="fs-3">-</label><br>
            <label>Market Price</label><br>
            <label class="fs-3">-</label><br>
        </div>
        <input type="submit" value="COMPARE" class="btn" name="btnCmp">
        </form>
    </div>
    <%
        }
    %>
</body>
<script src=".\bootstrap-5.3.2-dist\js\bootstrap.bundle.min.js"></script>

</html>