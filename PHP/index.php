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
                <div class="col-lg-4 col-md-6 col-sm-12 card product ">
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
                        <div class="card-button" onclick="getInfo(this)">
                            <i class="fa-solid fa-cart-shopping"></i>
                        </div>
                    </div>
                </div>

                <!-- Product 2 -->
                <div class="col-lg-4 col-md-6 col-sm-12 card product">
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
                        <div class="card-button" onclick="getInfo(this)">
                            <i class="fa-solid fa-cart-shopping"></i>
                        </div>
                    </div>
                </div>

                <!-- Product 3 -->
                <div class="col-lg-4 col-md-6 col-sm-12 card product">
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
                        <div class="card-button" onclick="getInfo(this)">
                            <i class="fa-solid fa-cart-shopping"></i>
                        </div>
                    </div>
                </div>

                <!-- Product 4 -->
                <div class="col-lg-4 col-md-6 col-sm-12 card product">
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
                        <div class="card-button" onclick="getInfo(this)">
                            <i class="fa-solid fa-cart-shopping"></i>
                        </div>
                    </div>
                </div>

                <!-- Product 5 -->
                <div class="col-lg-4 col-md-6 col-sm-12 card product">
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
                        <div class="card-button" onclick="getInfo(this)">
                            <i class="fa-solid fa-cart-shopping"></i>
                        </div>
                    </div>
                </div>

                <!-- Product 6 -->
                <div class="col-lg-4 col-md-6 col-sm-12 card product">
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
                        <div class="card-button" onclick="getInfo(this)">
                            <i class="fa-solid fa-cart-shopping"></i>
                        </div>
                    </div>
                </div>


                <!-- Product 7 -->
                <div class="col-lg-4 col-md-6 col-sm-12 card product">
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
                        <div class="card-button" onclick="getInfo(this)">
                            <i class="fa-solid fa-cart-shopping"></i>
                        </div>
                    </div>
                </div>

                <!-- Product 8 -->
                <div class="col-lg-4 col-md-6 col-sm-12 card product">
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
                        <div class="card-button" onclick="getInfo(this)">
                            <i class="fa-solid fa-cart-shopping"></i>
                        </div>
                    </div>
                </div>

                <!-- Product 9 -->
                <div class="col-lg-4 col-md-6 col-sm-12 card product">
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
                        <div class="card-button" onclick="getInfo(this)">
                            <i class="fa-solid fa-cart-shopping"></i>
                        </div>
                    </div>
                </div>

                <!-- Product 10 -->
                <div class="col-lg-4 col-md-6 col-sm-12 card product">
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
                        <div class="card-button" onclick="getInfo(this)">
                            <i class="fa-solid fa-cart-shopping"></i>
                        </div>
                    </div>
                </div>

                <!-- Product 11 -->
                <div class="col-lg-4 col-md-6 col-sm-12 card product">
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
                        <div class="card-button" onclick="getInfo(this)">
                            <i class="fa-solid fa-cart-shopping"></i>
                        </div>
                    </div>
                </div>

                <!-- Product 12 -->
                <div class="col-lg-4 col-md-6 col-sm-12 card product">
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
                        <div class="card-button" onclick="getInfo(this)">
                            <i class="fa-solid fa-cart-shopping"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal" id="successModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Thông báo</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    Sản phẩm đã được thêm vào giỏ hàng.
                </div>
            </div>
        </div>
    </div>
    <div class="modal" id="alertModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Thông báo</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    Bạn chỉ được đặt một sản phẩm.Một cái được rồi, nhiều quá nghèo đó!!!!
                </div>
            </div>
        </div>
    </div>


</main>

<script>
    //Get product infomation
    var products = [];

    function getInfo(cardButton) {
        var card = cardButton.closest(".card");
        var img = card.querySelector(".card-img img");
        var src = img.getAttribute("src");

        var title = card.querySelector(".card-info .text-title").textContent;
        var body = card.querySelector(".card-info .text-body").textContent;

        var price = card.querySelector(".card-footer .text-title").textContent;

        var info = [src, title, body, price];


        // Kiểm tra trùng lặp
        var cartItems = JSON.parse(localStorage.getItem("cartItems")) || [];
        var isDuplicate = false;
        for (var i = 0; i < cartItems.length; i++) {
            if (JSON.stringify(cartItems[i]) === JSON.stringify(info)) {
                isDuplicate = true;
                break;
            }
        }
        if (isDuplicate) {
            $('#alertModal').modal('show');

            // Ẩn modal
            setTimeout(function() {
                $('#alertModal').modal('hide');
            }, 1500);
        } else {
            // Thêm vào Local Storage
            cartItems.push(info);
            localStorage.setItem("cartItems", JSON.stringify(cartItems));
            $('#successModal').modal('show');

            // Ẩn modal
            setTimeout(function() {
                $('#successModal').modal('hide');
            }, 1500);
        }

        // Lưu thông tin sản phẩm vào Local Storage
        // var cartItems = JSON.parse(localStorage.getItem("cartItems")) || [];
        // cartItems.push(info);
        // localStorage.setItem("cartItems", JSON.stringify(cartItems));

        // console.log(cartItems);
        // // Hiển thị modal
        // $('#my-modal').modal('show');

        // // Ẩn modal
        // setTimeout(function() {
        //     $('#my-modal').modal('hide');
        // }, 1500);
    }
</script>





<?php include '../PHP/footer.php'; ?>