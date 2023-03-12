<?php
include '../PHP/conn.php';
require '../PHP/header.php';
// include '../PHP/check_login.php';

// if (!isset($_SESSION['username'])) {
//     header("Location: ../login.php");
//     exit();
// }
?>


<main>

    <div class="container">

        <!-- Slide -->
        <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active" data-bs-interval="5000">
                    <img src="../ASSETS/IMG/slide/IMAC-MACMINI-2400-600-1920x480.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item" data-bs-interval="5000">
                    <img src="../ASSETS/IMG/slide/Mac-2400-600-1920x480.jpg" class="d-block w-100" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <!-- Logo -->
        <div class="brand">
            <i class="fa-brands fa-apple"></i>
            <span>Mac</span>
        </div>
        <!-- Product -->
        <div class="text-center">
            <div id="gallery" class="row">
                <!-- Product 1 -->
                <div class="col-lg-4 col-md-6 col-sm-12 card ">
                    <a href="../PHP/product.php">
                        <div class="card-img">
                            <img src="../ASSETS/IMG/front/macbook-air-m1-2020-8-core-gpu-gold-thumb-650x650.jpg" alt="">
                        </div>
                    </a>
                    <div class="card-info">
                        <p class="text-title">MacBook air M1 2020 </p>
                        <p class="text-body">8GB-256GB</p>
                    </div>
                    <div class="card-footer">
                        <span class="text-title">$1000</span>
                        <div class="card-button">
                            <a href="#" id="add-to-cart-btn"><i class="fa-solid fa-cart-shopping"></i></a>
                        </div>
                    </div>
                </div>

                <!-- Product 2 -->
                <div class="col-lg-4 col-md-6 col-sm-12 card">
                    <a href="">
                        <div class="card-img"><img src="../ASSETS/IMG/front/macbook-air-m1-2020-silver-thumb-650x650.jpg" alt="">
                        </div>
                    </a>
                    <div class="card-info">
                        <p class="text-title">MacBook air M1 2020 </p>
                        <p class="text-body">8GB-256GB</p>
                    </div>
                    <div class="card-footer">
                        <span class="text-title">$1000</span>
                        <div class="card-button">
                            <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                        </div>
                    </div>
                </div>

                <!-- Product 3 -->
                <div class="col-lg-4 col-md-6 col-sm-12 card">
                    <a href="">
                        <div class="card-img"><img src="../ASSETS/IMG/front/macbook-air-m1-2020-gold-thumb-650x650.jpg" alt="">
                        </div>
                    </a>
                    <div class="card-info">
                        <p class="text-title">MacBook air M1 2020 </p>
                        <p class="text-body">16GB-256GB</p>
                    </div>
                    <div class="card-footer">
                        <span class="text-title">$1500</span>
                        <div class="card-button">
                            <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                        </div>
                    </div>
                </div>

                <!-- Product 4 -->
                <div class="col-lg-4 col-md-6 col-sm-12 card">
                    <a href="">
                        <div class="card-img"><img src="../ASSETS/IMG/front/apple-macbook-air-m2-2022-10-core-gpu-xam-650x650.jpg" alt="">
                        </div>
                    </a>
                    <div class="card-info">
                        <p class="text-title">MacBook air M1 2020 </p>
                        <p class="text-body">16GB-512GB</p>
                    </div>
                    <div class="card-footer">
                        <span class="text-title">$2000</span>
                        <div class="card-button">
                            <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                        </div>
                    </div>
                </div>

                <!-- Product 5 -->
                <div class="col-lg-4 col-md-6 col-sm-12 card">
                    <a href="">
                        <div class="card-img"><img src="../ASSETS/IMG/front/apple-macbook-air-m2-2022-10-core-gpu-xam-650x650.jpg" alt="">
                        </div>
                    </a>
                    <div class="card-info">
                        <p class="text-title">MacBook air M2</p>
                        <p class="text-body">8GB-256GB</p>
                    </div>
                    <div class="card-footer">
                        <span class="text-title">$499.49</span>
                        <div class="card-button">
                            <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                        </div>
                    </div>
                </div>

                <!-- Product 6 -->
                <div class="col-lg-4 col-md-6 col-sm-12 card">
                    <a href="">
                        <div class="card-img"><img src="../ASSETS/IMG/front/apple-macbook-air-m2-2022-10-core-gpu-xam-650x650.jpg" alt="">
                        </div>
                    </a>
                    <div class="card-info">
                        <p class="text-title">MacBook air M2 </p>
                        <p class="text-body">8GB-512GB</p>
                    </div>
                    <div class="card-footer">
                        <span class="text-title">$499.49</span>
                        <div class="card-button">
                            <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                        </div>
                    </div>
                </div>


                <!-- Product 7 -->
                <div class="col-lg-4 col-md-6 col-sm-12 card">
                    <a href="">
                        <div class="card-img"><img src="../ASSETS/IMG/front/apple-macbook-air-m2-2022-16gb-xanh-650x650.jpg" alt="">
                        </div>
                    </a>
                    <div class="card-info">
                        <p class="text-title">MacBook air M2</p>
                        <p class="text-body">16GB-25GB</p>
                    </div>
                    <div class="card-footer">
                        <span class="text-title">$499.49</span>
                        <div class="card-button">
                            <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                        </div>
                    </div>
                </div>

                <!-- Product 8 -->
                <div class="col-lg-4 col-md-6 col-sm-12 card">
                    <a href="">
                        <div class="card-img"><img src="../ASSETS/IMG/front/macbook-air-m2-2022-8-core-gpu-xám-650x650.jpg" alt="">
                        </div>
                    </a>
                    <div class="card-info">
                        <p class="text-title">MacBook air M2 </p>
                        <p class="text-body">16GB-512GB</p>
                    </div>
                    <div class="card-footer">
                        <span class="text-title">$499.49</span>
                        <div class="card-button">
                            <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                        </div>
                    </div>
                </div>

                <!-- Product 9 -->
                <div class="col-lg-4 col-md-6 col-sm-12 card">
                    <a href="">
                        <div class="card-img"><img src="../ASSETS/IMG/front/macbook-pro-13-spgry-m1-thumb-650x650.jpg" alt="">
                        </div>
                    </a>
                    <div class="card-info">
                        <p class="text-title">MacBook pro M1 13 inch </p>
                        <p class="text-body">8GB-256GB</p>
                    </div>
                    <div class="card-footer">
                        <span class="text-title">$499.49</span>
                        <div class="card-button">
                            <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                        </div>
                    </div>
                </div>

                <!-- Product 10 -->
                <div class="col-lg-4 col-md-6 col-sm-12 card">
                    <a href="">
                        <div class="card-img"><img src="../ASSETS/IMG/front/macbook-pro-13-spgry-m1-thumb-650x650.jpg" alt="">
                        </div>
                    </a>
                    <div class="card-info">
                        <p class="text-title">MacBook pro M1 13 inch </p>
                        <p class="text-body">16GB-512GB</p>
                    </div>
                    <div class="card-footer">
                        <span class="text-title">$499.49</span>
                        <div class="card-button">
                            <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                        </div>
                    </div>
                </div>

                <!-- Product 11 -->
                <div class="col-lg-4 col-md-6 col-sm-12 card">
                    <a href="">
                        <div class="card-img"><img src="../ASSETS/IMG/front/apple-macbook-pro-14-m1-pro-2021-bac-thumb-650x650.jpg" alt="">
                        </div>
                    </a>
                    <div class="card-info">
                        <p class="text-title">MacBook pro M1 Max 14 inch </p>
                        <p class="text-body">32GB-512GB</p>
                    </div>
                    <div class="card-footer">
                        <span class="text-title">$499.49</span>
                        <div class="card-button">
                            <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                        </div>
                    </div>
                </div>

                <!-- Product 12 -->
                <div class="col-lg-4 col-md-6 col-sm-12 card">
                    <a href="">
                        <div class="card-img"><img src="../ASSETS/IMG/front/macbook-pro-16-m1-max-2021-bac-650x650.jpg" alt="">
                        </div>
                    </a>
                    <div class="card-info">
                        <p class="text-title">MacBook pro M1 Max 16 inch </p>
                        <p class="text-body">32GB-1TB</p>
                    </div>
                    <div class="card-footer">
                        <span class="text-title">$499.49</span>
                        <div class="card-button">
                            <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<script>
    var addToCartBtn = document.getElementById("add-to-cart-btn");
    addToCartBtn.addEventListener("click", function(event) {
        event.preventDefault(); // Ngăn chặn hành động mặc định của sự kiện click
        var cardInfo = this.parentNode.parentNode.querySelector(".card-info");
        var title = cardInfo.querySelector(".text-title").textContent;
        var body = cardInfo.querySelector(".text-body").textContent;
        console.log("Title: " + title);
        console.log("Body: " + body);
    });
</script>


<?php include '../PHP/footer.php'; ?>