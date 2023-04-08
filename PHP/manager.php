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

      <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
    <label for="id">ID:</label>
  <input type="number" id="id" name="id" value="<?php echo $id; ?>"><br>
  <label for="tsp">Tên sản phẩm:</label>
  <input type="text" id="tsp" name="tsp" value="<?php echo $tsp; ?>"><br>
  <label for="gia">Giá:</label>
  <input type="number" id="gia" name="gia" value="<?php echo $gia; ?>"><br>
  <label for="loai">Loại:</label>
  <input type="number" id="loai" name="loai" value="<?php echo $loai; ?>"><br>
  <label for="giam">Giảm giá:</label>
    <select id="giam" name="giam" >
      <option value="<?php echo $giam; ?>">không giảm</option>
      <option value="<?php echo $giam; ?>">giảm 5%</option>
      <option value="<?php echo $giam; ?>">giảm 10%</option>
      <option value="<?php echo $giam; ?>">giảm 20%</option>
      <option value="<?php echo $giam; ?>">giảm 50%</option>   
    </select><br>
  <label for="anh">Ảnh:</label>
  <input type="text" id="anh" name="anh"><br>
  <label for="luachon">Lụa chọn:</label>
  <input type="text" id="luachon" name="luachon"><br>
  <label for="note">Ghi chú:</label>
  <input type="text" id="note" name="note"><br>
  <button type="submit" >Thêm sản phẩm</button>
        </form>
<?php
$id = $_POST["id"];
$name = $_POST["tsp"];
$gia=$_POST["gia"];
$loai=$_POST["loai"];
$giam=$_POST["giam"];
$ghichu =$_POST["note"];
$luachon=$_POST["luachon"];
$anh=$_POST["anh"];
include '../PHP/conn.php';
$add="INSERT INTO product (productName, price, id_catalog, discout, productOption,image_link,content) 
VALUES ('$name', '$gia', '$loai','$giam','$luachon','$anh','$ghichu')";
if($pdo->errorCode()){
  echo "<script>alert('ok')";
}else{
  echo "<script>alert('no ok')";
}
?>
    </div>
  </div>
</div>

</body>
</html>


<?php include '../PHP/footer.php'; ?>