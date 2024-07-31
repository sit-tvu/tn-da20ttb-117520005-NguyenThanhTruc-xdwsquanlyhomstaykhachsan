<?php
include("ketnoi.php");

function kiemTraPhongTrong($conn, $ma_loai, $ngay_nhan_phong, $ngay_tra_phong)
{
    // Bước 1: Kiểm tra số lượng phòng đã đặt bị đụng lịch và lấy mã các bản ghi vi phạm
    $stmt1 = $conn->prepare("SELECT ma_phieu_dat, so_luong_phong_dat 
                             FROM phieu_dat 
                             WHERE ma_loai = ? 
                             AND trang_thai = 'Đã xác nhận'
                             AND (
                                 (STR_TO_DATE(ngay_nhan, '%Y-%m-%d') BETWEEN STR_TO_DATE(?, '%Y-%m-%d') AND STR_TO_DATE(?, '%Y-%m-%d')) OR
                                 (STR_TO_DATE(ngay_tra, '%Y-%m-%d') BETWEEN STR_TO_DATE(?, '%Y-%m-%d') AND STR_TO_DATE(?, '%Y-%m-%d')) OR
                                 (STR_TO_DATE(?, '%Y-%m-%d') BETWEEN STR_TO_DATE(ngay_nhan, '%Y-%m-%d') AND STR_TO_DATE(ngay_tra, '%Y-%m-%d')) OR
                                 (STR_TO_DATE(?, '%Y-%m-%d') BETWEEN STR_TO_DATE(ngay_nhan, '%Y-%m-%d') AND STR_TO_DATE(ngay_tra, '%Y-%m-%d'))
                             )");
    $stmt1->bind_param("sssssss", $ma_loai, $ngay_nhan_phong, $ngay_tra_phong, $ngay_nhan_phong, $ngay_tra_phong, $ngay_nhan_phong, $ngay_tra_phong);
    $stmt1->execute();
    $result1 = $stmt1->get_result();

    $tong_so_luong_phong_dat = 0;
    $ma_phieu_dat_vi_pham = [];

    while ($row1 = $result1->fetch_assoc()) {
        $tong_so_luong_phong_dat += $row1['so_luong_phong_dat'];
        $ma_phieu_dat_vi_pham[] = $row1['ma_phieu_dat'];
    }

    // Bước 2: Lấy tổng số lượng phòng từ bảng loai_phong
    $stmt2 = $conn->prepare("SELECT so_luong FROM loai_phong WHERE ma_loai = ?");
    $stmt2->bind_param("s", $ma_loai);
    $stmt2->execute();
    $result2 = $stmt2->get_result();
    $row2 = $result2->fetch_assoc();
    $tong_so_luong_phong = $row2['so_luong'] ? $row2['so_luong'] : 0;

    // Bước 3: Tính toán số lượng phòng còn trống
    $so_luong_phong_trong = $tong_so_luong_phong - $tong_so_luong_phong_dat;

    return ['so_luong_phong_trong' => $so_luong_phong_trong, 'ma_phieu_dat_vi_pham' => $ma_phieu_dat_vi_pham];
}

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['ngay_nhan_phong']) && isset($_POST['ngay_tra_phong']) && isset($_POST['ma_loai'])) {
    $ngay_nhan_phong = $_POST['ngay_nhan_phong'];
    $ngay_tra_phong = $_POST['ngay_tra_phong'];
    $ma_loai = $_POST['ma_loai'];

    $result = kiemTraPhongTrong($conn, $ma_loai, $ngay_nhan_phong, $ngay_tra_phong);

    echo json_encode($result);
} else {
    echo json_encode(['error' => 'Invalid request']);
}
