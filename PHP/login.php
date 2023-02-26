<?php
require '../PHP/header.php';
?>
<div class="card_lgi_container">
    <div class="card_lgi">
        <a class="card_lgi_login">Log in</a>
        <div class="card_lgi_inputBox">
            <input type="text" required="required">
            <span class="user">Username</span>
        </div>

        <div class="card_lgi_inputBox">
            <input type="password" required="required">
            <span>Password</span>
        </div>
        <div class="card_lgi_button">
            <button class="card_lgi_enter">Enter</button>
            <button class="card_lgi_enter"><a href="../PHP/signup.php">Sign up</a></button>
        </div>

    </div>
</div>



<?php include '../PHP/footer.php'; ?>