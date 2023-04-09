<?php require '../PHP/header.php';?>
<!DOCTYPE html>
<html lang="vi">
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
<?php
include '../PHP/conn.php';
$sql = "SELECT * FROM product";
$result = $pdo->query($sql); 
	while($row=$result->fetch()){
	echo "STT:<br>" . $row['id_product'] . "<br>";
	} 
?>      
        </div>
        <div class="col-sm-3">
<?php
include '../PHP/conn.php';
$sql = "SELECT * FROM product";
$result = $pdo->query($sql); 
	while($row=$result->fetch()){
	echo "Tên sản phẩm:<br>" . $row['productName'] . "<br>";
	} 
?>      
        </div>
        <div class="col-sm-1">
<?php
include '../PHP/conn.php';
$sql = "SELECT * FROM product";
$result = $pdo->query($sql); 
	while($row=$result->fetch()){
	echo "Giá:<br>" . $row['price'] . "<br>";
	} 
?>     
        </div>
        <div class="col-sm-1">
<?php
include '../PHP/conn.php';
$sql = "SELECT * FROM product";
$result = $pdo->query($sql); 
	while($row=$result->fetch()){
	echo "Loại:<br>" . $row['id_product'] . "<br>";
	} 
?>      
        </div>
        <div class="col-sm-1">
<?php
include '../PHP/conn.php';
$sql = "SELECT * FROM product";
$result = $pdo->query($sql); 
	while($row=$result->fetch()){
	echo "Giảm:<br>" . $row['discout'] . "<br>";
	} 
?>      
        </div>
        <div class="col-sm-1">
<?php
include '../PHP/conn.php';
$sql = "SELECT * FROM product";
$result = $pdo->query($sql); 
	while($row=$result->fetch()){
	echo "Ảnh:<br>" . $row['image_link'] . "<br>";
	} 
?>      
        </div>
        <div class="col-sm-2">
<?php
include '../PHP/conn.php';
$sql = "SELECT * FROM product";
$result = $pdo->query($sql); 
	while($row=$result->fetch()){
	echo "Lựa chọn:<br>" . $row['productOption'] . "<br>";
	} 
?>      
        </div>
        <div class="col-sm-2">
<?php
include '../PHP/conn.php';
$sql = "SELECT * FROM product";
$result = $pdo->query($sql); 
	while($row=$result->fetch()){
	echo "ghi chú:<br>" . $row['content'] . "<br>";
	} 
?>      
        </div>
      </div>
    </div>
    <div class="col-sm-4">
      <h3>Quản lý sản phẩm</h3>
<?php include '../PHP/add_product.php';?>
    </div>
  </div>
</div>

</body>
</html>


<?php include '../PHP/footer.php'; ?>