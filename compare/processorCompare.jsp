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
        label{
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
            if(!request.getParameter("select1").equals("Processor 1") && !request.getParameter("select2").equals("Processor 2")){
                Class.forName("com.mysql.jdbc.Driver"); 
                con=DriverManager.getConnection("jdbc:mysql://localhost/techcustoms", "root" , "" ); 
                String str1 = "select * from cpu where model ='" + request.getParameter("select1") +  "';";
                String str2 = "select * from cpu where model ='" + request.getParameter("select2") +  "';";
                
                PreparedStatement stmt1 = con.prepareStatement(str1, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.TYPE_SCROLL_INSENSITIVE);
                
                PreparedStatement stmt2 = con.prepareStatement(str2, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.TYPE_SCROLL_INSENSITIVE);
                
                rs1 = stmt1.executeQuery(str1);
                rs2 = stmt2.executeQuery(str2);
                rs1.next();
                rs2.next();
        %>
        <div>
            <form class="row container-fluid" action="processorCompare.jsp" method="post">
            <div class="col-6">
                <select name="select1" class="form-select">
                    <option selected>Processor 1</option>
                    <option value="i7-12700K">i7-12700K</option>
                    <option value="i7-11700K">i7-11700K</option>
                    <option value="i9-13900K">i9-13900K</option>
                    <option value="i9-12900K">i9-12900K</option>
                    <option value="i9-11900K">i9-11900K</option>
                    <option value="Ryzen 5 7600X">Ryzen 5 7600X</option>
                    <option value="Ryzen 7 7800X3D">Ryzen 7 7800X3D</option>
                    <option value="Ryzen 7 7700X">Ryzen 7 7700X</option>
                    <option value="Ryzen 9 7950X3D">Ryzen 9 7950X3D</option>
                    <option value="Ryzen 9 7900X">Ryzen 9 7900X</option>
                    <option value="i5-13600K">i5-13600K</option>
                    <option value="i5-12600K">i5-12600K</option>
                    <option value="i5-11600K">i5-11600K</option>
                    <option value="i7-13700K">i7-13700K</option>
                </select>
                <label>Name</label><br>
                <label class="fs-3"><% if(rs1 !=null) out.print(rs1.getString(6) + " - " + rs1.getString(2));%></label><br>
                <label>Clockspeed</label><br>
                <label class="fs-3"><% if(rs1 !=null) out.print(rs1.getString(4));%></label><br>
                <label>Cores</label><br>
                <label class="fs-3"><% if(rs1 !=null) out.print(rs1.getString(8));%></label><br>
                <label>Threads</label><br>
                <label class="fs-3"><% if(rs1 !=null) out.print(rs1.getString(9));%></label><br>
                <label>Graphics</label><br>
                <label class="fs-3"><% if(rs1 !=null) out.print(rs1.getString(7));%></label><br>
                <label>Socket Type</label><br>
                <label class="fs-3"><% if(rs1 !=null) out.print(rs1.getString(3));%></label><br>
                <label>Supported Ram</label><br>
                <label class="fs-3"><% if(rs1 !=null) out.print(rs1.getString(5));%></label><br>
                <label>Market Price</label><br>
                <label class="fs-3"><% if(rs1 !=null) out.print(rs1.getString(10));%></label><br>
            </div>
            <div class="col-6">
                <select name="select2" class="form-select">
                    <option selected>Processor 2</option>
                    <option value="i7-12700K">i7-12700K</option>
                    <option value="i7-11700K">i7-11700K</option>
                    <option value="i9-13900K">i9-13900K</option>
                    <option value="i9-12900K">i9-12900K</option>
                    <option value="i9-11900K">i9-11900K</option>
                    <option value="Ryzen 5 7600X">Ryzen 5 7600X</option>
                    <option value="Ryzen 7 7800X3D">Ryzen 7 7800X3D</option>
                    <option value="Ryzen 7 7700X">Ryzen 7 7700X</option>
                    <option value="Ryzen 9 7950X3D">Ryzen 9 7950X3D</option>
                    <option value="Ryzen 9 7900X">Ryzen 9 7900X</option>
                    <option value="i5-13600K">i5-13600K</option>
                    <option value="i5-12600K">i5-12600K</option>
                    <option value="i5-11600K">i5-11600K</option>
                    <option value="i7-13700K">i7-13700K</option>
                </select>
                <label>Name</label><br>
                <label class="fs-3"><% if(rs2 !=null) out.print(rs2.getString(6) + " - " + rs2.getString(2));%></label><br>
                <label>Clockspeed</label><br>
                <label class="fs-3"><% if(rs2 !=null) out.print(rs2.getString(4));%></label><br>
                <label>Cores</label><br>
                <label class="fs-3"><% if(rs2 !=null) out.print(rs2.getString(8));%></label><br>
                <label>Threads</label><br>
                <label class="fs-3"><% if(rs2 !=null) out.print(rs2.getString(9));%></label><br>
                <label>Graphics</label><br>
                <label class="fs-3"><% if(rs2 !=null) out.print(rs2.getString(7));%></label><br>
                <label>Socket Type</label><br>
                <label class="fs-3"><% if(rs2 !=null) out.print(rs2.getString(3));%></label><br>
                <label>Supported Ram</label><br>
                <label class="fs-3"><% if(rs2 !=null) out.print(rs2.getString(5));%></label><br>
                <label>Market Price</label><br>
                <label class="fs-3"><% if(rs2 !=null) out.print(rs2.getString(10));%></label><br>
            </div>
            <input type="submit" value="COMPARE" class="btn" name="btnCmp">
            </form>
        </div>
        <%
                con.close();
                stmt1.close();
                stmt2.close();
                }            
            } 
            else{
        %>
    <div>
        <form class="row container-fluid" action="processorCompare.jsp" method="post">
        <div class="col-6">
            <select name="select1" class="form-select">
                <option selected>Processor 1</option>
                <option value="i7-12700K">i7-12700K</option>
                <option value="i7-11700K">i7-11700K</option>
                <option value="i9-13900K">i9-13900K</option>
                <option value="i9-12900K">i9-12900K</option>
                <option value="i9-11900K">i9-11900K</option>
                <option value="Ryzen 5 7600X">Ryzen 5 7600X</option>
                <option value="Ryzen 7 7800X3D">Ryzen 7 7800X3D</option>
                <option value="Ryzen 7 7700X">Ryzen 7 7700X</option>
                <option value="Ryzen 9 7950X3D">Ryzen 9 7950X3D</option>
                <option value="Ryzen 9 7900X">Ryzen 9 7900X</option>
                <option value="i5-13600K">i5-13600K</option>
                <option value="i5-12600K">i5-12600K</option>
                <option value="i5-11600K">i5-11600K</option>
                <option value="i7-13700K">i7-13700K</option>
            </select>
            <label>Name</label><br>
            <label class="fs-3">-</label><br>
            <label>Clockspeed</label><br>
            <label class="fs-3">-</label><br>
            <label>Cores</label><br>
            <label class="fs-3">-</label><br>
            <label>Threads</label><br>
            <label class="fs-3">-</label><br>
            <label>Graphics</label><br>
            <label class="fs-3">-</label><br>
            <label>Socket Type</label><br>
            <label class="fs-3">-</label><br>
            <label>Supported Ram</label><br>
            <label class="fs-3">-</label><br>
            <label>Market Price</label><br>
            <label class="fs-3">-</label><br>
        </div>
        <div class="col-6">
            <select name="select2" class="form-select">
                <option selected>Processor 2</option>
                <option value="i7-12700K">i7-12700K</option>
                <option value="i7-11700K">i7-11700K</option>
                <option value="i9-13900K">i9-13900K</option>
                <option value="i9-12900K">i9-12900K</option>
                <option value="i9-11900K">i9-11900K</option>
                <option value="Ryzen 5 7600X">Ryzen 5 7600X</option>
                <option value="Ryzen 7 7800X3D">Ryzen 7 7800X3D</option>
                <option value="Ryzen 7 7700X">Ryzen 7 7700X</option>
                <option value="Ryzen 9 7950X3D">Ryzen 9 7950X3D</option>
                <option value="Ryzen 9 7900X">Ryzen 9 7900X</option>
                <option value="i5-13600K">i5-13600K</option>
                <option value="i5-12600K">i5-12600K</option>
                <option value="i5-11600K">i5-11600K</option>
                <option value="i7-13700K">i7-13700K</option>
            </select>
            <label>Name</label><br>
            <label class="fs-3">-</label><br>
            <label>Clockspeed</label><br>
            <label class="fs-3">-</label><br>
            <label>Cores</label><br>
            <label class="fs-3">-</label><br>
            <label>Threads</label><br>
            <label class="fs-3">-</label><br>
            <label>Graphics</label><br>
            <label class="fs-3">-</label><br>
            <label>Socket Type</label><br>
            <label class="fs-3">-</label><br>
            <label>Supported Ram</label><br>
            <label class="fs-3">-</label><br>
            <label>Market Price</label><br>
            <label class="fs-3">-</label><br>
        </div>
        <input type="submit" value="COMPARE" class="btn" name="btnCmp">
        </form>
    </div>
    <% } %>
    <script src=".\bootstrap-5.3.2-dist\js\bootstrap.bundle.min.js"></script>
</body>

</html>