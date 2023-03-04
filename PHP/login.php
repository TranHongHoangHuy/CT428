<?php
require '../PHP/header.php';

session_start();
if (isset($_SESSION['username'])) {
    header("Location: ../mac.php");
    exit();
}

// Xử lý form đăng nhập
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Tìm người dùng có username và password tương ứng trong database
    $stmt = $pdo->prepare('SELECT * FROM user WHERE username = :username AND password = :password');
    $stmt->execute(['username' => $username, 'password' => $password]);
    $user = $stmt->fetch();

    if ($user) {
        // Nếu tìm thấy người dùng, hiển thị thông báo đăng nhập thành công
        echo '<script>alert("Bạn đã đăng nhập thành công!");</script>';
        // header("Location:../mac.php");
        exit;
    } else {
        // Nếu không tìm thấy người dùng, hiển thị thông báo lỗi
        echo '<script>alert("Tên đăng nhập hoặc mật khẩu không đúng!");</script>';
    }
}
?>

<form method="post" action="login.php">
    <div class="card_lgi_container">
        <div class="card_lgi">
            <a class="card_lgi_login">Log in</a>
            <div class="card_lgi_inputBox">
                <input type="text" id="username" required="required" name="username">
                <span class="user">Username</span>
            </div>

            <div class="card_lgi_inputBox">
                <input type="password" required="required" id="password" name="password">
                <span>Password</span>
            </div>
            <div class="card_lgi_button">
                <button class="card_lgi_enter" type="submit">Enter</button>
                <button class="card_lgi_enter"><a href="../PHP/signup.php">Sign up</a></button>
            </div>

        </div>
    </div>
</form>


<?php include '../PHP/footer.php'; ?>