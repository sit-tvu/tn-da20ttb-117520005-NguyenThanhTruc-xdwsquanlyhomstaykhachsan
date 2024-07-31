<?php
session_start();
include("ketnoi.php");
include("ghilog.php");

// Kiểm tra session đã đăng nhập hay chưa
if (!isset($_SESSION['ma_nv'])) {
    header("Location: login.php");
    exit();
}

// Kiểm tra các biến từ form được gửi đi
if (isset($_POST["ten_khuyen_mai"])) {
    $ten_khuyen_mai = $_POST["ten_khuyen_mai"];
    $ma_nv = $_SESSION['ma_nv'];

    // Thêm thông tin phòng vào CSDL
    $sql = "INSERT INTO khuyen_mai (ten_khuyen_mai) VALUES (?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $ten_khuyen_mai);

    if ($stmt->execute()) {
        // Ghi log hành động thêm thông tin phòng
        $hanh_dong = "Thêm chương trình khuyến mãi mới: Khuyến mãi $ten_khuyen_mai";
        ghi_log($ma_nv, $hanh_dong);

        echo "<script language=javascript>
                alert('Thêm chương trình khuyến mãi mới thành công!');
                window.location.href = 'QLKM.php'; 
              </script>";
    } else {
        echo "Không thể thêm chương trình khuyến mãi mới: " . $stmt->error;
    }

    $stmt->close();
} else {
    echo "Các trường dữ liệu không được gửi đầy đủ từ form.";
}
?>
