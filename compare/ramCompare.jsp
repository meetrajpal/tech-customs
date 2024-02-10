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
        .btn {
            color: white;
            border-radius: 100px;
            border: solid #d23bff 2px;
        }

        .btn:hover {
            background-color: #d23bff;
            box-shadow: 0px 0px 20px #d23bff;
        }
        label {
            padding: 10px;
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
            if(!request.getParameter("select1").equals("Ram 1") && !request.getParameter("select2").equals("Ram 2")){
                Class.forName("com.mysql.jdbc.Driver"); 
                con=DriverManager.getConnection("jdbc:mysql://localhost/techcustoms", "root" , "" );
                String str1 = "select * from ram where name ='" + request.getParameter("select1") +  "';";
                String str2 = "select * from ram where name ='" + request.getParameter("select2") +  "';";
                
                PreparedStatement stmt1 = con.prepareStatement(str1, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.TYPE_SCROLL_INSENSITIVE);
                
                PreparedStatement stmt2 = con.prepareStatement(str2, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.TYPE_SCROLL_INSENSITIVE);
                
                rs1 = stmt1.executeQuery(str1);
                rs2 = stmt2.executeQuery(str2);
                rs1.next();
                rs2.next();
    %>
    <div>
        <form action="ramCompare.jsp" method="post" class="row container-fluid">
        <div class="col-6">
            <select name="select1" class="form-select">
                <option selected>RAM 1</option>
                <option value="Vengeance LPX">Vengeance LPX</option>
                <option value="Ripjaws V">Ripjaws V</option>
                <option value="HyperX Fury">HyperX Fury</option>
                <option value="Ballistix">Ballistix</option>
                <option value="Vulcan">Vulcan</option>
                <option value="XPG Spectrix D60G">XPG Spectrix D60G</option>
                <option value="Viper Steel">Viper Steel</option>
                <option value="Dominator Platinum RGB">Dominator Platinum RGB</option>
                <option value="Predator">Predator</option>
            </select>
            <label>Name</label><br>
            <label class="fs-3"><% if(rs1 !=null) out.print(rs1.getString(3) + " - " + rs1.getString(2));%></label><br>
            <label>Type</label><br>
            <label class="fs-3"><% if(rs1 !=null) out.print(rs1.getString(4));%></label><br>
            <label>Frequency</label><br>
            <label class="fs-3"><% if(rs1 !=null) out.print(rs1.getString(5) + " MHz");%></label><br>
            <label>Memory Capacity</label><br>
            <label class="fs-3"><% if(rs1 !=null) out.print(rs1.getString(6) + " GB");%></label><br>
            <label>Market Price</label><br>
            <label class="fs-3"><% if(rs1 !=null) out.print("Rs." + rs1.getString(7));%></label><br>
        </div>
        <div class="col-6">
            <select name="select2" class="form-select">
                <option selected>RAM 2</option>
                <option value="Vengeance LPX">Vengeance LPX</option>
                <option value="Ripjaws V">Ripjaws V</option>
                <option value="HyperX Fury">HyperX Fury</option>
                <option value="Ballistix">Ballistix</option>
                <option value="Vulcan">Vulcan</option>
                <option value="XPG Spectrix D60G">XPG Spectrix D60G</option>
                <option value="Viper Steel">Viper Steel</option>
                <option value="Dominator Platinum RGB">Dominator Platinum RGB</option>
                <option value="Predator">Predator</option>
            </select>
            <label>Name</label><br>
            <label class="fs-3"><% if(rs2 !=null) out.print(rs2.getString(3) + " - " + rs2.getString(2));%></label><br>
            <label>Type</label><br>
            <label class="fs-3"><% if(rs2 !=null) out.print(rs2.getString(4));%></label><br>
            <label>Frequency</label><br>
            <label class="fs-3"><% if(rs2 !=null) out.print(rs2.getString(5) + " MHz");%></label><br>
            <label>Memory Capacity</label><br>
            <label class="fs-3"><% if(rs2 !=null) out.print(rs2.getString(6) + " GB");%></label><br>
            <label>Market Price</label><br>
            <label class="fs-3"><% if(rs2 !=null) out.print("Rs." + rs2.getString(7));%></label><br>
        </div>
        <input type="submit" value="COMPARE" class="btn" name="btnCmp">
        </form>
        <%  
            con.close();
            stmt1.close();
            stmt2.close();
        %>
    </div>
    <%  
            }           
        } 
        else{
    %>
    <div>
        <form action="ramCompare.jsp" method="post" class="row container-fluid">
        <div class="col-6">
            <select name="select1" class="form-select">
                <option selected>RAM 1</option>
                <option value="Vengeance LPX">Vengeance LPX</option>
                <option value="Ripjaws V">Ripjaws V</option>
                <option value="HyperX Fury">HyperX Fury</option>
                <option value="Ballistix">Ballistix</option>
                <option value="Vulcan">Vulcan</option>
                <option value="XPG Spectrix D60G">XPG Spectrix D60G</option>
                <option value="Viper Steel">Viper Steel</option>
                <option value="Dominator Platinum RGB">Dominator Platinum RGB</option>
                <option value="Predator">Predator</option>
            </select>
            <label>Name</label><br>
            <label class="fs-3">-</label><br>
            <label>Type</label><br>
            <label class="fs-3">-</label><br>
            <label>Frequency</label><br>
            <label class="fs-3">-</label><br>
            <label>Memory Capacity</label><br>
            <label class="fs-3">-</label><br>
            <label>Market Price</label><br>
            <label class="fs-3">-</label><br>
        </div>
        <div class="col-6">
            <select name="select2" class="form-select">
                <option selected>RAM 2</option>
                <option value="Vengeance LPX">Vengeance LPX</option>
                <option value="Ripjaws V">Ripjaws V</option>
                <option value="HyperX Fury">HyperX Fury</option>
                <option value="Ballistix">Ballistix</option>
                <option value="Vulcan">Vulcan</option>
                <option value="XPG Spectrix D60G">XPG Spectrix D60G</option>
                <option value="Viper Steel">Viper Steel</option>
                <option value="Dominator Platinum RGB">Dominator Platinum RGB</option>
                <option value="Predator">Predator</option>
            </select>
            <label>Name</label><br>
            <label class="fs-3">-</label><br>
            <label>Type</label><br>
            <label class="fs-3">- </label><br>
            <label>Frequency</label><br>
            <label class="fs-3">-</label><br>
            <label>Memory Capacity</label><br>
            <label class="fs-3">-</label><br>
            <label>Market Price</label><br>
            <label class="fs-3">-</label><br>
        </div>
        <input type="submit" value="COMPARE" class="btn" name="btnCmp">
        </form>
        <%  
            }
        %>
    </div>
</body>

</html>