<?php
include 'ketnoi.php';

function ghi_log($ma_nv, $hanh_dong) {
    global $conn; 

    
date_default_timezone_set('Asia/Ho_Chi_Minh');

$ngay_gio = date('Y-m-d H:i:s'); 
// echo "Thời gian hiện tại là: " . $ngay_gio;

    $sql = "INSERT INTO log (ma_nv, hanh_dong, ngay) VALUES (?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("iss", $ma_nv, $hanh_dong, $ngay_gio);

    if ($stmt->execute()) {
        echo "Ghi log thành công";
    } else {
        echo "Lỗi ghi log: " . $stmt->error;
    }

    $stmt->close();
}
?>
