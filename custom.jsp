<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="res\img\Asset 4.png" type="image/x-icon">
  <link rel="stylesheet" href=".\bootstrap-5.3.2-dist\css\custdoc.css">
</head>

<body>
  <jsp:include page="navbar.jsp" />
  <%@ page import="java.sql.*" %>
  <%! float price = 0;%>
  <%
  if(request.getParameter("cmpBtn") != null &&
    !request.getParameter("cooler").equals("0") &&
        !request.getParameter("cpu").equals("0") &&
        !request.getParameter("gpu").equals("0") &&
        !request.getParameter("ram").equals("0") &&
        !request.getParameter("ssd").equals("0") &&
        !request.getParameter("mother").equals("0") &&
        !request.getParameter("smps").equals("0") ){
    Class.forName("com.mysql.jdbc.Driver"); 
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/techcustoms", "root" , "" );
    String sql = "select price from cabinet where id =" + request.getParameter("cab") +  " ;";
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery(sql);
    rs.next();
    price += rs.getInt(1);
    
    rs = stmt.executeQuery("select price from cooler where id =" + request.getParameter("cooler") +  " ;");
    rs.next();
    price += rs.getInt(1);
    

    rs = stmt.executeQuery("select price from cpu where id =" + request.getParameter("cpu") +  " ;");
    rs.next();
    price += rs.getInt(1);
    

    rs = stmt.executeQuery("select price from gpu  where id =" + request.getParameter("gpu") +  " ;");
    rs.next();
    price += rs.getInt(1);
    

    rs = stmt.executeQuery("select price from ram  where id =" + request.getParameter("ram") +  " ;");
    rs.next();
    price += rs.getInt(1);
    

    rs = stmt.executeQuery("select price from storage where id =" + request.getParameter("ssd") +  " ;");
    rs.next();
    price += rs.getInt(1);
    

    rs = stmt.executeQuery("select price from motherboard where id =" + request.getParameter("mother") +  " ;");
    rs.next();
    price += rs.getInt(1);
    

    rs = stmt.executeQuery("select price from smps where id =" + request.getParameter("smps") +  " ;");
    rs.next();
    price += rs.getInt(1);
    con.close();
  %>
  <!-- Navbar -->


  <main>
    <div style="height: 400px;">
      <h1 class="buildHead py-3">The Builder</h1>
      <img class="builderLogo" src="res\img\BuilderPC.png" width="300" height="300" alt="">
    </div>
    <div class="container-fluid">
      <form action="custom.jsp" method="post">
        <div class="row">
          <div class="colID col-12 p-5">
            <select name="cab" class="form-select my-3">
              <option selected value="0">Cabinet</option>
              <option value="8">nzxt H7 ELITE</option>
              <option value="9">ant esports Graffiti</option>
              <option value="10">lian li Odyssey X Black</option>
              <option value="11">antec Torque</option>
              <option value="12">phanteks Enthoo Evolv X Glass</option>
              <option value="13">msi MPG SEKIRA</option>
            </select>

            <select name="mother" class="form-select my-3">
              <option selected value="0">Motherboard</option>
              <option value="5">asus ROG Strix Z690-E Gaming WiFi</option>
              <option value="6">msi MPG ZoO Carbon WiFi</option>
              <option value="7">gigabyte AORUS Master DDR5</option>
              <option value="8">asrock Z690 Taichi</option>
              <option value="9">ROG Maximus Z690 Hero (Wi-Fi) asus</option>
              <option value="10">gigabyte AORUS Master Z690</option>
              <option value="11">asus ROG Maximus XIII Hero Z590</option>
              <option value="12">gigabyte AORUS Z590 Master</option>
              <option value="13">msi MPG 85601 Gaming Edge WiFi</option>
              <option value="14">asus Prime Z590-A</option>
            </select>

            <select name="cpu" class="form-select my-3">
              <option selected value="0">Processor</option>
              <option value="9">i7-12700K</option>
              <option value="10">i7-11700K</option>
              <option value="11">i9-13900K</option>
              <option value="12">i9-12900K</option>
              <option value="13">i9-11900K</option>
              <option value="14">Ryzen 5 7600X</option>
              <option value="15">Ryzen 7 7800X3D</option>
              <option value="16">Ryzen 7 7700X</option>
              <option value="17">Ryzen 9 7950X3D</option>
              <option value="20">Ryzen 9 7900X</option>
              <option value="21">i5-13600K</option>
              <option value="22">i5-12600K</option>
              <option value="23">i5-11600K</option>
              <option value="24">i7-13700K</option>
            </select>

            <select name="gpu" class="form-select my-3">
              <option selected value="0">GPU</option>
              <option value="3">GeForce RTX 3090 nvidea</option>
              <option value="4">GeForce RTX 3080 msi</option>
              <option value="5">GeForce RTX 3070 msi</option>
              <option value="6">Radeon RX 6900 XT OC asus</option>
              <option value="7">GeForce RTX 3060 Ti gigabyte</option>
              <option value="8">Radeon RX 6800 XT OC asus</option>
              <option value="9">GeForce GTX 1660 super msi</option>
              <option value="10">Radeon RX 6700 X asus</option>
              <option value="11">GeForce GTX 1660 super asus</option>
            </select>

            <select name="ram" class="form-select my-3">
              <option selected value="0">Ram</option>
              <option value="4">Vengeance LPX corsair</option>
              <option value="5">Ripjaws V G.skill</option>
              <option value="7">HyperX Fury Kingston</option>
              <option value="8">Ballistix Crucial</option>
              <option value="9">Vulcan Team T-force</option>
              <option value="10">XPG Spectrix D60G adata</option>
              <option value="11">Viper Steel Patriot</option>
              <option value="12">Dominator Platinum RGB corsair</option>
              <option value="13">Predator hyperx</option>
            </select>

            <select name="ssd" class="form-select my-3">
              <option selected value="0">SSD</option>
              <option value="5">970 PRO samsung</option>
              <option value="6">SN750 wdblack</option>
              <option value="7">860 EVO samsung</option>
              <option value="8">MX500 crucial</option>
            </select>

            <select name="cooler" class="form-select my-3">
              <option selected value="0">Cooler</option>
              <option value="1">Corsair Hli5i RGB Platinum</option>
              <option value="2">Corsair iCUE HI 50i Elite Capellix</option>
              <option value="3">NZXT Kraken X73</option>
              <option value="4">Cooler Master MasterLiquid ML360R</option>
              <option value="6">Thermaltake Floe DX RGB 360</option>
              <option value="7">Cooler Master Hyper 212 Black Edition coolermaster</option>
              <option value="8">Noctua NH-D15 Noctua</option>
              <option value="9">be quiet' Dark Rock Pro 4 Be Quite</option>
              <option value="10">ASUS ROG Ryujin 360</option>
            </select>

            <select name="smps" class="form-select my-3">
              <option selected value="0">SMPS</option>
              <option value="3">RM850x corsair</option>
              <option value="4">Focus GX-750 seasonic</option>
              <option value="5">Toughpower Grand RGB 850W thermaltake</option>
              <option value="6">MWE Gold 650WV2 cooler master</option>
            </select>
          </div>
        </div>
        <input type="submit" value="BUILD" name="cmpBtn" class="btn text-white w-50 my-5" style="color: white;
          border-radius: 100px;
          border: solid #d23bff 2px;">
      </form>
      </div>
    
    <h1>Your Estimated Price is <br> Rs. <%= price%> </h1>
    <h3>including GST</h3>
  </main>
  <% stmt.close(); con.close(); price=0; } else{ %>
    <main>
      <div style="height: 400px;">
        <h1 class="buildHead py-3">The Builder</h1>
        <img class="builderLogo" src="res\img\BuilderPC.png" width="300" height="300" alt="">
      </div>
      <form action="custom.jsp" method="post">
        <div class="container-fluid">
          <div class="row">
            <div class="colID col-12 p-5">
              <select name="cab" class="form-select my-3">
                <option selected value="0">Cabinet</option>
                <option value="8">nzxt H7 ELITE</option>
                <option value="9">ant esports Graffiti</option>
                <option value="10">lian li Odyssey X Black</option>
                <option value="11">antec Torque</option>
                <option value="12">phanteks Enthoo Evolv X Glass</option>
                <option value="13">msi MPG SEKIRA</option>
              </select>

              <select name="mother" class="form-select my-3">
                <option selected value="0">Motherboard</option>
                <option value="5">asus ROG Strix Z690-E Gaming WiFi</option>
                <option value="6">msi MPG ZoO Carbon WiFi</option>
                <option value="7">gigabyte AORUS Master DDR5</option>
                <option value="8">asrock Z690 Taichi</option>
                <option value="9">ROG Maximus Z690 Hero (Wi-Fi) asus</option>
                <option value="10">gigabyte AORUS Master Z690</option>
                <option value="11">asus ROG Maximus XIII Hero Z590</option>
                <option value="12">gigabyte AORUS Z590 Master</option>
                <option value="13">msi MPG 85601 Gaming Edge WiFi</option>
                <option value="14">asus Prime Z590-A</option>
              </select>

              <select name="cpu" class="form-select my-3">
                <option selected value="0">Processor</option>
                <option value="9">i7-12700K</option>
                <option value="10">i7-11700K</option>
                <option value="11">i9-13900K</option>
                <option value="12">i9-12900K</option>
                <option value="13">i9-11900K</option>
                <option value="14">Ryzen 5 7600X</option>
                <option value="15">Ryzen 7 7800X3D</option>
                <option value="16">Ryzen 7 7700X</option>
                <option value="17">Ryzen 9 7950X3D</option>
                <option value="20">Ryzen 9 7900X</option>
                <option value="21">i5-13600K</option>
                <option value="22">i5-12600K</option>
                <option value="23">i5-11600K</option>
                <option value="24">i7-13700K</option>
              </select>

              <select name="gpu" class="form-select my-3">
                <option selected value="0">GPU</option>
                <option value="3">GeForce RTX 3090 nvidea</option>
                <option value="4">GeForce RTX 3080 msi</option>
                <option value="5">GeForce RTX 3070 msi</option>
                <option value="6">Radeon RX 6900 XT OC asus</option>
                <option value="7">GeForce RTX 3060 Ti gigabyte</option>
                <option value="8">Radeon RX 6800 XT OC asus</option>
                <option value="9">GeForce GTX 1660 super msi</option>
                <option value="10">Radeon RX 6700 X asus</option>
                <option value="11">GeForce GTX 1660 super asus</option>
              </select>

              <select name="ram" class="form-select my-3">
                <option selected value="0">Ram</option>
                <option value="4">Vengeance LPX corsair</option>
                <option value="5">Ripjaws V G.skill</option>
                <option value="7">HyperX Fury Kingston</option>
                <option value="8">Ballistix Crucial</option>
                <option value="9">Vulcan Team T-force</option>
                <option value="10">XPG Spectrix D60G adata</option>
                <option value="11">Viper Steel Patriot</option>
                <option value="12">Dominator Platinum RGB corsair</option>
                <option value="13">Predator hyperx</option>
              </select>

              <select name="ssd" class="form-select my-3">
                <option selected value="0">SSD</option>
                <option value="5">970 PRO samsung</option>
                <option value="6">SN750 wdblack</option>
                <option value="7">860 EVO samsung</option>
                <option value="8">MX500 crucial</option>
              </select>

              <select name="cooler" class="form-select my-3">
                <option selected value="0">Cooler</option>
                <option value="1">Corsair Hli5i RGB Platinum</option>
                <option value="2">Corsair iCUE HI 50i Elite Capellix</option>
                <option value="3">NZXT Kraken X73</option>
                <option value="4">Cooler Master MasterLiquid ML360R</option>
                <option value="6">Thermaltake Floe DX RGB 360</option>
                <option value="7">Cooler Master Hyper 212 Black Edition coolermaster</option>
                <option value="8">Noctua NH-D15 Noctua</option>
                <option value="9">be quiet' Dark Rock Pro 4 Be Quite</option>
                <option value="10">ASUS ROG Ryujin 360</option>
              </select>

              <select name="smps" class="form-select my-3">
                <option selected value="0">SMPS</option>
                <option value="3">RM850x corsair</option>
                <option value="4">Focus GX-750 seasonic</option>
                <option value="5">Toughpower Grand RGB 850W thermaltake</option>
                <option value="6">MWE Gold 650WV2 cooler master</option>
              </select>
            </div>
          </div>
          <input type="submit" value="BUILD" name="cmpBtn" class="btn text-white w-50 my-5" style="color: white;
          border-radius: 100px;
          border: solid #d23bff 2px;">
        </div>
      </form>
      <h1>Your Estimated Price is <br> </h1>
      <h3>including GST</h3>
    </main>
    <% } %>
      <jsp:include page="foot.jsp" />
      <script src=".\bootstrap-5.3.2-dist\js\custdocs.js"></script>
</body>

</html>