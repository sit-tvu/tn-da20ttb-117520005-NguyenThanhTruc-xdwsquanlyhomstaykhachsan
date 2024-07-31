<?php
include("ketnoi.php");

function getPhieuDatDetails($conn, $ma_phieu_dat)
{
    $stmt = $conn->prepare("SELECT kh.ho_ten AS ho_ten_khach_hang, lp.ten_loai AS loai_phong, lp.ma_loai AS ma_loai_phong, pd.ngay_nhan, pd.ngay_tra, pd.tong_tien, pd.tien_coc, lp.gia_phong
                            FROM phieu_dat pd
                            JOIN khach_hang kh ON pd.ma_kh = kh.ma_kh
                            JOIN loai_phong lp ON pd.ma_loai = lp.ma_loai
                            WHERE pd.ma_phieu_dat = ?");
    $stmt->bind_param("s", $ma_phieu_dat);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($row = $result->fetch_assoc()) {
        return $row;
    } else {
        return null;
    }
}

function getAvailableRooms($conn, $ma_loai_phong)
{
    $stmt = $conn->prepare("SELECT p.ma_phong, p.ten_phong, p.trang_thai
                            FROM phong p
                            WHERE p.ma_loai = ? AND p.trang_thai = 0");
    $stmt->bind_param("s", $ma_loai_phong);
    $stmt->execute();
    $result = $stmt->get_result();

    $rooms = [];
    while ($row = $result->fetch_assoc()) {
        $rooms[] = $row;
    }
    return $rooms;
}

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['ma_phieu_dat'])) {
    $ma_phieu_dat = htmlspecialchars($_POST['ma_phieu_dat']);

    $details = getPhieuDatDetails($conn, $ma_phieu_dat);
    if ($details) {
        $ma_loai_phong = $details['ma_loai_phong'];
        $availableRooms = getAvailableRooms($conn, $ma_loai_phong);
        $details['available_rooms'] = $availableRooms;
        echo json_encode($details);
    } else {
        echo json_encode(['ho_ten_khach_hang' => '', 'loai_phong' => '', 'ngay_nhan' => '', 'ngay_tra' => '', 'gia_phong' => '', 'tong_tien' => '', 'tien_coc' => '', 'available_rooms' => []]);
    }
} else {
    echo json_encode(['error' => 'Invalid request']);
}
