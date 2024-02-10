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
            Class.forName("com.mysql.jdbc.Driver"); 
            con=DriverManager.getConnection("jdbc:mysql://localhost/techcustoms", "root" , "" ); 
            if(!request.getParameter("select1").equals("SSD 1") && !request.getParameter("select2").equals("SSD 2")){
                String str1 = "select * from storage where name ='" + request.getParameter("select1") +  "';";
                String str2 = "select * from storage where name ='" + request.getParameter("select2") +  "';";
                
                PreparedStatement stmt1 = con.prepareStatement(str1, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.TYPE_SCROLL_INSENSITIVE);
                
                PreparedStatement stmt2 = con.prepareStatement(str2, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.TYPE_SCROLL_INSENSITIVE);
                
                rs1 = stmt1.executeQuery(str1);
                rs2 = stmt2.executeQuery(str2);
                rs1.next();
                rs2.next();

    %>
    <div>
        <form action="ssdCompare.jsp" method="post" class="row container-fluid">
        <div class="col-6">
            <select name="select1" class="form-select">
                <option selected>SSD 1</option>
                <option value="970 PRO">970 PRO</option>
                <option value="SN750">SN750</option>
                <option value="860 EVO">860 EVO</option>
                <option value="MX500">MX500</option>
            </select>
            <label>Name</label><br>
            <label class="fs-3"><% if(rs1 !=null) out.print(rs1.getString(3) + " - " + rs1.getString(2));%></label><br>
            <label>Read Speed</label><br>
            <label class="fs-3"><% if(rs1 !=null) out.print(rs1.getString(8));%></label><br>
            <label>Write Speed</label><br>
            <label class="fs-3"><% if(rs1 !=null) out.print(rs1.getString(9));%></label><br>
            <label>SSD Type</label><br>
            <label class="fs-3"><% if(rs1 !=null) out.print(rs1.getString(5));%></label><br>
            <label>Capacity</label><br>
            <label class="fs-3"><% if(rs1 !=null) out.print(rs1.getString(6));%></label><br>
            <label>PCI Version</label><br>
            <label class="fs-3"><% if(rs1 !=null) out.print(rs1.getString(7));%></label><br>
            <label>Market Price</label><br>
            <label class="fs-3"><% if(rs1 !=null) out.print(rs1.getString(10));%></label><br>
        </div>
        <div class="col-6">
            <select name="select2" class="form-select">
                <option selected>SSD 2</option>
                <option value="970 PRO">970 PRO</option>
                <option value="SN750">SN750</option>
                <option value="860 EVO">860 EVO</option>
                <option value="MX500">MX500</option>
            </select>
            <label>Name</label><br>
            <label class="fs-3"><% if(rs2 !=null) out.print(rs2.getString(3) + " - " + rs2.getString(2));%></label><br>
            <label>Read Speed</label><br>
            <label class="fs-3"><% if(rs2 !=null) out.print(rs2.getString(8));%></label><br>
            <label>Write Speed</label><br>
            <label class="fs-3"><% if(rs2 !=null) out.print(rs2.getString(9));%></label><br>
            <label>SSD Type</label><br>
            <label class="fs-3"><% if(rs2 !=null) out.print(rs2.getString(5));%></label><br>
            <label>Capacity</label><br>
            <label class="fs-3"><% if(rs2 !=null) out.print(rs2.getString(6));%></label><br>
            <label>PCI Version</label><br>
            <label class="fs-3"><% if(rs2 !=null) out.print(rs2.getString(7));%></label><br>
            <label>Market Price</label><br>
            <label class="fs-3"><% if(rs2 !=null) out.print(rs2.getString(10));%></label><br>
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
    %>
    <div>
        <form action="ssdCompare.jsp" method="post" class="row container-fluid">
        <div class="col-6">
            <select name="select1" class="form-select">
                <option selected>SSD 1</option>
                <option value="970 PRO">970 PRO</option>
                <option value="SN750">SN750</option>
                <option value="860 EVO">860 EVO</option>
                <option value="MX500">MX500</option>
            </select>
            <label>Name</label><br>
            <label class="fs-3">-</label><br>
            <label>Read Speed</label><br>
            <label class="fs-3">-</label><br>
            <label>Write Speed</label><br>
            <label class="fs-3">-</label><br>
            <label>SSD Type</label><br>
            <label class="fs-3">-</label><br>
            <label>Capacity</label><br>
            <label class="fs-3">-</label><br>
            <label>PCI Version</label><br>
            <label class="fs-3">-</label><br>
            <label>Market Price</label><br>
            <label class="fs-3">-</label><br>
        </div>
        <div class="col-6">
            <select name="select2" class="form-select">
                <option selected>SSD 2</option>
                <option value="970 PRO">970 PRO</option>
                <option value="SN750">SN750</option>
                <option value="860 EVO">860 EVO</option>
                <option value="MX500">MX500</option>
            </select>
            <label>Name</label><br>
            <label class="fs-3">-</label><br>
            <label>Read Speed</label><br>
            <label class="fs-3">-</label><br>
            <label>Write Speed</label><br>
            <label class="fs-3">-</label><br>
            <label>SSD Type</label><br>
            <label class="fs-3">-</label><br>
            <label>Capacity</label><br>
            <label class="fs-3">-</label><br>
            <label>PCI Version</label><br>
            <label class="fs-3">-</label><br>
            <label>Market Price</label><br>
            <label class="fs-3">-</label><br>
        </div>
        <input type="submit" value="COMPARE" class="btn" name="btnCmp">
        </form>
    </div>

</body>

</html>