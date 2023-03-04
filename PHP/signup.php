<?php
require '../PHP/header.php';

if (isset($_POST['submit'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    if (empty($username) || empty($password)) {
        echo "Please enter your username and password";
        exit();
    } else {
        $sql = "SELECT username FROM users WHERE username = ?";
        $stmt = mysqli_stmt_init($conn);
        // chưa xong
    }
}





// try {
//     //chuẩn bị sql
//     $stmt = $pdo->prepare('Insert into user (username, password) values (:username, :password)');
//     $stmt->bindParam(':username', $_REQUEST['username']);
//     $stmt->bindParam(':password', $_REQUEST['password']);
//     $stmt->execute();
//     echo 'Đã thêm user ';
// } catch (PDOException $e) {
//     die("Error:Không thể thực thi " . $e->getMessage());
// }
// //connect close
// unset($pdo);




?>
<form method="post" action="signup.php">
    <div class="card_lgi_container">
        <div class="card_lgi">
            <a class="card_lgi_login">Sign up</a>
            <div class="card_lgi_inputBox">
                <input type="text" required="required" name="username" value="" id="username">
                <span class="user">Username</span>
            </div>

            <div class="card_lgi_inputBox">
                <input type="password" required="required" name="password" value="" id="password">
                <span>Password</span>
            </div>
            <button class="card_lgi_enter" type="submit">Enter</button>
        </div>
    </div>
</form>



<?php include '../PHP/footer.php'; ?>