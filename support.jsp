<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="res\img\Asset 4.png" type="image/x-icon">
</head>

<body>
  <!-- Navbar -->
  <jsp:include page="navbar.jsp" />
  <h1 class="text-akira text-center py-3">Our Support</h1>
  <main>
    <div class="accordion" id="accordionExample">
      <div class="accordion-item">
        <h2 class="accordion-header">
          <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne"
            aria-expanded="true" aria-controls="collapseOne">
            Troubleshooting made easy.
          </button>
        </h2>
        <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
          <div class="accordion-body text-center">
            <img src="res\Guide_Thumbnails\Guide_Thumbnail 1.png" class="img-fluid" width="1400" height="700" alt="">
          </div>
        </div>
      </div>
      <div class="accordion-item">
        <h2 class="accordion-header">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
            Messed with messy cables? This will help you.
          </button>
        </h2>
        <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
          <div class="accordion-body text-center">
            <img src="res\Guide_Thumbnails\Guide_Thumbnail 2.png" class="img-fluid" width="1400" height="700" alt="">
          </div>
        </div>
      </div>
      <div class="accordion-item">
        <h2 class="accordion-header">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
            Watch out to prevent dust particles from blocking your air vantilation.
          </button>
        </h2>
        <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
          <div class="accordion-body text-center">
            <img src="res\Guide_Thumbnails\Guide_Thumbnail 3.png" class="img-fluid" width="1400" height="700" alt="">
          </div>
        </div>
      </div>
      <div class="accordion-item">
        <h2 class="accordion-header">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
            Start installing water-cooling technology in your PC.
          </button>
        </h2>
        <div id="collapseFour" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
          <div class="accordion-body text-center">
            <img src="res\Guide_Thumbnails\Guide_Thumbnail 4.png" class="img-fluid" width="1400" height="700" alt="">
          </div>
        </div>
      </div>
      <div class="accordion-item">
        <h2 class="accordion-header">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
            Lets build your first custom PC.
          </button>
        </h2>
        <div id="collapseFive" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
          <div class="accordion-body text-center">
            <img src="res\Guide_Thumbnails\Guide_Thumbnail 5.png" class="img-fluid" width="1400" height="700" alt="">
          </div>
        </div>
      </div>
    </div>
  </main>

  <!-- Footer -->
  <jsp:include page="foot.jsp" />

</body>

</html>