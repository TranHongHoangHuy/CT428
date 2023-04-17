<?php
include '../conn.php';

// Lấy ID của sản phẩm từ form POST
$id_product = $_POST['id_product'];
// Lấy danh sách hình ảnh từ bảng img_list
$stmt = $pdo->prepare('SELECT * FROM img_list WHERE id_product = :id_product');
$stmt->bindParam(':id_product', $id_product);
$stmt->execute();
$img_list = $stmt->fetchAll(PDO::FETCH_ASSOC);
// Lấy danh sách hình ảnh từ bảng img_info
$stmt = $pdo->prepare('SELECT * FROM img_info WHERE id_product = :id_product');
$stmt->bindParam(':id_product', $id_product);
$stmt->execute();
$img_info = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css">

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
    <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="../manager.php"><img src="../ASSETS/IMG/Senza-titolo-1.png" height="50" alt="">MacShop</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="mynavbar">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item mx-2">
                        <a class="nav-link" href="./admin_product.php">Sản phẩm</a>
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

    <main style="min-height: 500px;">
        <div class="container mt-5 mb-5 row">
            <h1 class="text-center mb-4"> Thông tin ảnh</h1>
            <div class="col-md-6">
                <h2 class="text-center">img_list</h2>
                <a href="./add_list_img.php" class="btn btn-primary" style="margin-bottom: 30px;">
                    <i class="fa fa-plus"></i> Thêm img_list</a>
                <table id="example" class="table table-striped" style="width:100%">
                    <thead>
                        <tr>
                            <th>Ảnh</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($img_list as $img) : ?>
                            <tr>
                                <td><img src="<?php echo $img['url']; ?>" style="height: 200px;"></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>Ảnh</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
            <div class="col-md-6">
                <h2 class="text-center">img_info</h2>
                <a href="./add_img_info.php" class="btn btn-primary" style="margin-bottom: 30px;">
                    <i class="fa fa-plus"></i> Thêm img_info</a>
                <table id="example2" class="table table-striped" style="width:100%">
                    <thead>
                        <tr>
                            <th>Ảnh</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($img_info as $img) : ?>
                            <tr>
                                <td><img src="<?php echo $img['url_info']; ?>" style="height: 200px;"></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>Ảnh</th>
                        </tr>
                    </tfoot>
                </table>
            </div>

        </div>
    </main>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous">
    </script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#example').DataTable();
        });
        $(document).ready(function() {
            $('#example2').DataTable();
        });
    </script>

    <?php include './footer.php'; ?>

</html>