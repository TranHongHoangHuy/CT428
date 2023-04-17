<?php
include './conn.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous">
  </script>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>


  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/brands.min.css" integrity="sha512-L+sMmtHht2t5phORf0xXFdTC0rSlML1XcraLTrABli/0MMMylsJi3XA23ReVQkZ7jLkOEIMicWGItyK4CAt2Xw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/fontawesome.min.css" integrity="sha512-cHxvm20nkjOUySu7jdwiUxgGy11vuVPE9YeK89geLMLMMEOcKFyS2i+8wo0FOwyQO/bL8Bvq1KMsqK4bbOsPnA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/regular.min.css" integrity="sha512-3YMBYASBKTrccbNMWlnn0ZoEOfRjVs9qo/dlNRea196pg78HaO0H/xPPO2n6MIqV6CgTYcWJ1ZB2EgWjeNP6XA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/solid.min.css" integrity="sha512-bdTSJB23zykBjGDvyuZUrLhHD0Rfre0jxTd0/jpTbV7sZL8DCth/88aHX0bq2RV8HK3zx5Qj6r2rRU/Otsjk+g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/svg-with-js.min.css" integrity="sha512-kykcz2VnxuCLnfiymkPqtsNceqEghEDiHWWYMa/nOwdutxeFGZsUi1+TEWT4MyesfxybNGpJNCVXzEPXSO8aKQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />


  <link rel="stylesheet" href="../ASSETS/CSS/base.css">
  <link rel="stylesheet" href="../ASSETS/CSS/style.css">


  <link href="../ASSETS/IMG/favicon.ico" rel="icon" type="image/x-icon" />
  <title>Quản lý</title>

</head>

<body>
  <script language="javascript" src="../JS/index.js"></script>
  <!-- Navbar -->

  <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="../manager.php"><img src="../ASSETS/IMG/Senza-titolo-1.png" height="50" alt="">MacShop</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="mynavbar">
        <ul class="navbar-nav me-auto">
          <li class="nav-item mx-2">
            <a class="nav-link" href="../index.php">Sản phẩm</a>
          </li>
          <li class="nav-item mx-2">
            <a class="nav-link" href="../phukien.php">Khách hàng</a>
          </li>
          <li class="nav-item mx-2">
            <a class="nav-link" href="../care.php">Đơn hàng</a>
          </li>
        </ul>
        <ul class="navbar-nav ms-auto">
          <?php
          session_start();
          if (isset($_SESSION['username'])) { // Kiểm tra session
            echo '<li class="nav-item mx-2">
                                <a class="nav-link" href="../PHP/logout.php"><i class="fa-solid fa-sign-out"></i></a></li>';
          } else {
            echo '<li class="nav-item mx-2">
                                <a class="nav-link" href="../login.php"><i class="fa-solid fa-user"></i></a></li>';
          }
          ?>
        </ul>
      </div>
    </div>
  </nav>

  <button id="scroll-to-top"><i class="fa-solid fa-arrow-up"></i></button>

  <main style="min-height: 500px;">
    <div class="container p-5 bg-dark text-white text-center mt-5 mb-5">
      <h1>Chào mừng người quản trị!</h1>
      <p>Chúc bạn một ngày làm việc thật tốt.</p>
    </div>

    <div class="container text-center">
      <h2>Hãy chọn chức năng</h2>
      <div class="row">
        <div class="col-lg-4 col-md-6 col-sm-12 card product" style="height: 100px;">
          <a href="../PHP/admin_product.php">
            <div class="card-info">
              <p class="text-title">Quản lý sản phẩm</p>
            </div>
          </a>
        </div>

        <div class="col-lg-4 col-md-6 col-sm-12 card product" style="height: 100px;">
          <a href="#">
            <div class="card-info">
              <p class="text-title">Quản lý khách hàng</p>
            </div>
          </a>
        </div>

        <div class="col-lg-4 col-md-6 col-sm-12 card product" style="height: 100px;">
          <a href="#">
            <div class="card-info">
              <p class="text-title">Quản lý đơn hàng</p>
            </div>
          </a>
        </div>
      </div>
    </div>

  </main>

  <!-- <div class="container mt-5">
    <div class="row">
      <div class="col-sm-8">
        <h3>Hiển thị tất cả sản phẩm.</h3>
        <div class="row">
          <div class="col-sm-1">
            <h5>STT</h5>
            <?php
            include './conn.php';
            $sql = "SELECT * FROM product";
            $result = $pdo->query($sql);
            while ($row = $result->fetch()) {
              echo "<br>" . $row['id_product'];
            }
            ?>
          </div>
          <div class="col-sm-3">
            <h5>Tên sản phẩm</h5>
            <?php
            include './conn.php';
            $sql = "SELECT * FROM product";
            $result = $pdo->query($sql);
            while ($row = $result->fetch()) {
              echo "<br>" . $row['productName'];
            }
            ?>
          </div>
          <div class="col-sm-1">
            <h5>Giá</h5>
            <?php
            include './conn.php';
            $sql = "SELECT * FROM product";
            $result = $pdo->query($sql);
            while ($row = $result->fetch()) {
              echo "<br>" . $row['price'];
            }
            ?>
          </div>
          <div class="col-sm-1">
            <h5>Loại</h5>
            <?php
            include './conn.php';
            $sql = "SELECT * FROM product";
            $result = $pdo->query($sql);
            while ($row = $result->fetch()) {
              echo "<br>" . $row['id_product'];
            }
            ?>
          </div>
          <div class="col-sm-1">
            <h5>Giảm</h5>
            <?php
            include './conn.php';
            $sql = "SELECT * FROM product";
            $result = $pdo->query($sql);
            while ($row = $result->fetch()) {
              echo "<br>" . $row['discount'];
            }
            ?>
          </div>
          <div class="col-sm-1">
            <h5>Ảnh</h5>
            <?php
            include './conn.php';
            $sql = "SELECT * FROM product";
            $result = $pdo->query($sql);
            while ($row = $result->fetch()) {
              echo "<br>" . $row['image_link'];
            }
            ?>
          </div>
          <div class="col-sm-2">
            <h5>Lựa chọn</h5>
            <?php
            include './conn.php';
            $sql = "SELECT * FROM product";
            $result = $pdo->query($sql);
            while ($row = $result->fetch()) {
              echo "<br>" . $row['productOption'];
            }
            ?>
          </div>
          <div class="col-sm-2">
            <h5>Ghi chú</h5>
            <?php
            include './conn.php';
            $sql = "SELECT * FROM product";
            $result = $pdo->query($sql);
            while ($row = $result->fetch()) {
              echo "<br>" . $row['content'] . "<br>";
            }
            ?>
          </div>
        </div>
      </div>
      <div class="col-sm-4">
        <h3>Quản lý sản phẩm</h3>

        <?php include '../PHP/add_product.php'; ?>

      </div>
    </div>
  </div> -->
  <?php include './PHP/footer.php'; ?>
</body>

</html>