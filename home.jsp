<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Tech Customs</title>
  <link rel="icon" href="res/img/Asset 4.png" type="image/x-icon">
  
</head>

<body>
  <jsp:include page="navbar.jsp" />

  <!-- Bootstrap slider -->
  <div id="slider" class="carousel slide carousel-fade" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#slider" data-bs-slide-to="0" class="active" aria-current="true"
        aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#slider" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#slider" data-bs-slide-to="2" aria-label="Slide 3"></button>
      <button type="button" data-bs-target="#slider" data-bs-slide-to="3" aria-label="Slide 3"></button>
      <button type="button" data-bs-target="#slider" data-bs-slide-to="4" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active" data-bs-interval="4500">
        <img src="./res/img/slider1.1.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-md-block top-50">
          <h1 class="capHead display-1 fw-bold">WELCOME TO TECH CUSTOMS</h1>
          <p class="fw-bold fs-2">WHERE WE BUILD, YOU LOVE</p>
        </div>
      </div>
      <div class="carousel-item" data-bs-interval="4500">
        <img src="./res/img/slider1.2.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-md-block top-50">
          <h1 class="capHead display-1 fw-bold">SEE whats POPULAR</h1>
          <a href="products.jsp" class="fw-bold btn border border-danger text-white ">WATCHOUT THE FEATURED PRODUCTS</a>
        </div>
      </div>
      <div class="carousel-item" data-bs-interval="4500">
        <img src="./res/img/slider1.3.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-md-block top-50">
          <h1 class="capHead display-1 fw-bold">BUILD YOUR DREAM WITH US</h1>
          <a href="build.jsp" class="fw-bold btn border border-danger text-white">BUILD YOUR CUSTOM PC HERE</a>
        </div>
      </div>
      <div class="carousel-item" data-bs-interval="4500">
        <img src="./res/img/Showcase/compare.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-md-block top-50">
          <h1 class="capHead display-1 fw-bold">Compare <br>Side by Side</h1>
          <a href="compare.jsp" class="fw-bold btn border border-danger text-white">Compare Now</a>
        </div>
      </div>
      <div class="carousel-item" data-bs-interval="4500">
        <img src="./res/img/Showcase/chat.jpg" class="d-block w-100" alt="...">
        <div class="carousel-caption d-md-block top-50">
          <h1 class="capHead display-1 fw-bold">Talk with Helpers</h1>
          <a href="forums.jsp" class="fw-bold btn border border-danger text-white">Forums</a>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#slider" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#slider" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
  <!-- Featured Products -->
  <h1 class="my-3">Our Featured Products</h1>
  <div class="cardContainer">
    <div class="card m-5" style="width: 18rem;">
      <img src="res/img/Cards/cabinate/Antec Torque.png" class="card-img-top" alt="">
      <div class="card-body d-flex flex-column align-items-center justify-content-center">
        <span class="badge rounded-pill position-absolute top-0 translate-middle-y">Cabinets</span>
        <h5 class="card-title">Antec Torque</h5>
        <p class="card-text justify-content-center">Torque is entirely open-air, with vast airflow and cooling
          management measures in place so that form and function are in perfect alignment.</p>
        <a href="products.jsp" class="cardBtn btn">Buy Now</a>
      </div>
    </div>
    <div class="card m-5" style="width: 18rem;">
      <img src="res/img/Cards/gpu/nvidia GeForce RTX 3090.png" class="card-img-top px-2" alt="">
      <div class="card-body d-flex flex-column align-items-center justify-content-center">
        <span class="badge rounded-pill position-absolute top-0 translate-middle-y">GPU</span>
        <h5 class="card-title">Nvidia GeForce RTX 3090</h5>
        <p class="card-text">The GeForce RTX® 3090 Ti and 3090 are powered by Ampere—NVIDIA's 2nd gen RTX architecture.
        </p>
        <a href="products.jsp" class="cardBtn btn">Buy Now</a>
      </div>
    </div>
    <div class="card m-5" style="width: 18rem;">
      <img src="res/img/Cards/keyboard/Logitech G512 RGB.png" class="card-img-top" alt="">
      <div class="card-body d-flex flex-column align-items-center justify-content-center">
        <span class="badge rounded-pill position-absolute top-0 translate-middle-y">Keyboards</span>
        <h5 class="card-title">Logitech G512 RGB</h5>
        <p class="card-text">High-performance gaming keyboard featuring your choice of advanced GX mechanical switches.
        </p>
        <a href="products.jsp" class="cardBtn btn">Buy Now</a>
      </div>
    </div>
    <div class="card m-5" style="width: 18rem;">
      <img src="res/img/Cards/mb/Z690 Taichi.png" class="card-img-top" alt="">
      <div class="card-body d-flex flex-column align-items-center justify-content-center">
        <span class="badge rounded-pill position-absolute top-0 translate-middle-y">MotherBoards</span>
        <h5 class="card-title">Z690 Taichi</h5>
        <p class="card-text">Supports 13 th Gen & 12 th Gen and next gen Intel ® Core™ Processors (LGA1700) 20 Phase SPS
          Dr.MOS Power Design.</p>
        <a href="products.jsp" class="cardBtn btn">Buy Now</a>
      </div>
    </div>
  </div>
  <!-- Our Support -->
  <h1 class="my-3">Our Support</h1>
  <div class="cardContainer">
    <div class="card text-bg-dark py-0 m-3">
      <img src="res/Guide_Thumbnails/Guide_Thumbnail 1.png" class="card-img" width="600" height="400" alt="...">
      <div class="card-img-overlay">
        <a class="card-title btn btn-dark" href="support.jsp">Need help?</a>
        <p class="card-text">Check out our tutorial guides.</p>
      </div>
    </div>
  </div>

  <!-- Footer -->
  <jsp:include page="foot.jsp" />
  <script src=".\bootstrap-5.3.2-dist\js\homedoc.js"></script>
</body>

</html>