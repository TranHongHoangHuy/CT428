<?php

include '../PHP/conn.php';

require '../PHP/header.php';

// Xử lý form đăng nhập
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Lấy giá trị nhập từ form
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Truy vấn bảng user để kiểm tra thông tin đăng nhập
    $stmt = $pdo->prepare("SELECT COUNT(*) FROM user WHERE username = ? AND password = ?");
    $stmt->execute([$username, $password]);
    $count = $stmt->fetchColumn();

    if ($count > 0) {
        // Lưu session nếu thông tin đăng nhập đúng
        $_SESSION['username'] = $username;

        // Chuyển hướng đến trang mac
        header('Location: ../PHP/mac.php');
        exit;
    } else {
        // Hiển thị thông báo nếu thông tin đăng nhập sai
        echo "<script>alert('Bạn đã nhập sai thông tin đăng nhập');</script>";
    }
}
// Hiển thị tên đăng nhập nếu đã lưu session
if (isset($_SESSION['username'])) {
    echo "Xin chào, " . $_SESSION['username'] . "!";
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