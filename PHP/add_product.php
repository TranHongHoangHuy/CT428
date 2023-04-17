<?php
include '../conn.php';
// Nếu form đã submit, thực hiện lưu thông tin sản phẩm vào CSDL
if (isset($_POST['submit'])) {
    // Lấy thông tin sản phẩm từ form
    $id_catalog = $_POST['id_catalog'];
    $productName = $_POST['productName'];
    $productOption = $_POST['productOption'];
    $price = $_POST['price'];
    $discount = $_POST['discount'];
    $image_link = $_POST['image_link'];
    $content = $_POST['content'];

    // Chuẩn bị câu truy vấn SQL để thêm sản phẩm vào CSDL
    $sql = "INSERT INTO `product` (`id_catalog`, `productName`, `productOption`, `price`, `discount`, `image_link`, `content`) VALUES (:id_catalog, :productName, :productOption, :price, :discount, :image_link, :content)";
    $stmt = $pdo->prepare($sql);

    // Thực hiện truy vấn SQL với thông tin sản phẩm vừa lấy từ form
    $stmt->execute([
        ':id_catalog' => $id_catalog,
        ':productName' => $productName,
        ':productOption' => $productOption,
        ':price' => $price,
        ':discount' => $discount,
        ':image_link' => $image_link,
        ':content' => $content
    ]);

    // Hiển thị thông báo thành công và xóa thông tin trong form
    echo "<p class='alert alert-success'>Thêm sản phẩm thành công</p>";
    $_POST = array();
}
// Lấy thông tin danh mục sản phẩm để hiển thị trong form
$sql = "SELECT * FROM `catalog`";
$stmt = $pdo->query($sql);
$catalogs = $stmt->fetchAll(PDO::FETCH_ASSOC);
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
    <title>Nhập SP</title>
</head>

<body>
    <div class="container">
        <h1>Thêm sản phẩm mới</h1>
        <form method="post" action="">
            <div class="form-group">
                <label for="id_catalog">Danh mục sản phẩm:</label>
                <select class="form-control" id="id_catalog" name="id_catalog">
                    <?php foreach ($catalogs as $catalog) : ?>
                        <option value="<?= $catalog['id_catalog'] ?>"><?= $catalog['catalogName'] ?></option>
                    <?php endforeach; ?>
                </select>
            </div>
            <div class="form-group">
                <label for="productName">Tên sản phẩm:</label>
                <input type="text" class="form-control" id="productName" name="productName" placeholder="Nhập tên sản phẩm" required>
            </div>
            <div class="form-group">
                <label for="productOption">Tùy chọn sản phẩm:</label>
                <input type="text" class="form-control" id="productOption" name="productOption" placeholder="Nhập tùy chọn sản phẩm" required>
            </div>
            <div class="form-group">
                <label for="price">Giá sản phẩm:</label>
                <input type="number" class="form-control" id="price" name="price" placeholder="Nhập giá sản phẩm" required>
            </div>
            <div class="form-group">
                <label for="discount">Giảm giá sản phẩm:</label>
                <input type="number" class="form-control" id="discount" name="discount" placeholder="Nhập giảm giá sản phẩm">
            </div>
            <div class="form-group">
                <label for="image_link">Link ảnh sản phẩm:</label>
                <input type="text" class="form-control" id="image_link" name="image_link" placeholder="Nhập link ảnh sản phẩm" required>
            </div>
            <div class="form-group">
                <label for="content">Mô tả sản phẩm:</label>
                <textarea class="form-control" id="content" name="content" rows="5" placeholder="Nhập mô tả sản phẩm" required></textarea>
            </div>
            <button type="submit" name="submit" class="btn btn-primary">Thêm sản phẩm</button>
        </form>
    </div>

</body>

</html>