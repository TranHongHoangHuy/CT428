<?php
include './conn.php';
require './PHP/header.php';

// Kiểm tra xem người dùng đã ấn nút đăng ký hay chưa
if (isset($_POST['register'])) {
    // Lấy dữ liệu từ form
    $username = $_POST['username'];
    $password = $_POST['password'];
    $address = $_POST['address'];
    $phone_number = $_POST['phone_number'];

    // Kiểm tra xem username đã được sử dụng hay chưa
    $stmt = $pdo->prepare('SELECT COUNT(*) FROM user WHERE username = ?');
    $stmt->execute([$username]);

    if ($stmt->fetchColumn() > 0) {
        // Username đã được sử dụng, hiển thị thông báo lỗi
        echo 'Username already exists.';
    } else {
        // Thêm người dùng vào CSDL
        $stmt = $pdo->prepare('INSERT INTO user (username, password, address, phone) VALUES (?, ?, ?, ?)');
        $stmt->execute([$username, $password, $address, $phone_number]);

        // Đăng ký thành công, chuyển hướng đến trang đăng nhập
        header('Location: login.php');
        exit;
    }
}


?>


<form method="post" action="signup.php">
    <div class="card_lgi_container">
        <div class="card_lgi">
            <a class="card_lgi_login mt-2">Sign up</a>
            <div class="card_lgi_inputBox">
                <input type="text" required="required" name="username" value="" id="username">
                <span class="user">Username</span>
            </div>

            <div class="card_lgi_inputBox">
                <input type="password" required="required" name="password" value="" id="password">
                <span>Password</span>
            </div>

            <div class="card_lgi_inputBox">
                <input type="tel" required="required" pattern="[0-9]{10}" name="phone_number" value="" id="phone_number">
                <span>Phone number</span>
            </div>

            <div class="card_lgi_inputBox">
                <input type="text" required="required" name="address" value="" id="address">
                <span>Addres</span>
            </div>
            <button class="card_lgi_enter" type="submit" name="register" value="Register">Enter</button>
        </div>
    </div>
</form>


<?php include './PHP/footer.php'; ?>