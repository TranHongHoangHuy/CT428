<?php
session_start();

// Xóa các session đã lưu trữ
session_unset();

// Hủy toàn bộ session
session_destroy();

// Chuyển hướng về trang đăng nhập
header('Location: ../PHP/login.php');
exit;
