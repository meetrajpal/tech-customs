<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="res\img\Asset 4.png" type="image/x-icon">
  <link rel="stylesheet" href=".\bootstrap-5.3.2-dist\css\comparedocs.css">

</head>

<body>
  <!-- Navbar -->
  <jsp:include page="navbar.jsp" />

  <main>
    <h1 class="head text-akira">Compare</h1>
    <div class="cmpRow row">
      <div class="col-2 text-center">
        <a class="sideBtn btn" href="compare/processorCompare.jsp" target="compareFrame">Processors</a><br>
        <a class="sideBtn btn" href="compare/gpuCompare.jsp" target="compareFrame">GPU</a><br>
        <a class="sideBtn btn" href="compare/ramCompare.jsp" target="compareFrame">RAM</a><br>
        <a class="sideBtn btn" href="compare/ssdCompare.jsp" target="compareFrame">SSD</a><br>
      </div>
      <iframe class="col-10" name="compareFrame" height="1000">
      </iframe>
    </div>
  </main>

  <!-- Footer -->
  <jsp:include page="foot.jsp" />

  <script src=".\bootstrap-5.3.2-dist\js\comparedocs.js"></script>
</body>

</html>