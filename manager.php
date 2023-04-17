<?php
include './conn.php';
require './PHP/header.php';
?>
<!DOCTYPE html>
<html lang="en-vi">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>

  <div class="container p-5 bg-dark text-white text-center">
    <h1>Chào mừng người quản trị!</h1>
    <p>Chúc bạn một ngày làm việc thật tốt.</p>
  </div>

  <div class="container mt-5">
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
  </div>

</body>

</html>


<?php include '../PHP/footer.php'; ?>