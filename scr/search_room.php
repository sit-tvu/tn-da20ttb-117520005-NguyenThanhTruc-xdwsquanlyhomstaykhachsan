<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
include("headertc.php");
include('ketnoi.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $ngay_du_kien_den = $_POST['ngay_du_kien_den'];
    $so_ngay = $_POST['so_ngay'];

    // Tính toán ngày trả phòng dự kiến
    $ngay_tra_du_kien = date('Y-m-d', strtotime($ngay_du_kien_den . ' + ' . $so_ngay . ' days'));

    // Hàm kiểm tra phòng trống
    function kiemTraPhongTrong($conn, $ngay_du_kien_den, $ngay_tra_du_kien)
    {
        // Lấy các loại phòng và số lượng phòng từ bảng loai_phong
        $stmt1 = $conn->prepare("SELECT ma_loai, so_luong, ten_loai, anh_loai_phong, dien_tich, chi_tiet_phong, gia_phong FROM loai_phong");
        $stmt1->execute();
        $result1 = $stmt1->get_result();

        $phong_trong = [];

        while ($row1 = $result1->fetch_assoc()) {
            $ma_loai = $row1['ma_loai'];
            $ten_loai = $row1['ten_loai'];
            $anh_loai_phong = $row1['anh_loai_phong'];
            $dien_tich = $row1['dien_tich'];
            $chi_tiet_phong = $row1['chi_tiet_phong'];
            $gia_phong = $row1['gia_phong'];
            $tong_so_luong_phong = $row1['so_luong'] ? $row1['so_luong'] : 0;

            // Kiểm tra số lượng phòng đã đặt bị đụng lịch
            $stmt2 = $conn->prepare("SELECT SUM(so_luong_phong_dat) AS tong_so_luong_phong_dat 
                                     FROM phieu_dat 
                                     WHERE ma_loai = ? 
                                     AND trang_thai = 'Đã xác nhận'
                                     AND (
                                        (STR_TO_DATE(ngay_nhan, '%Y-%m-%d') BETWEEN STR_TO_DATE(?, '%Y-%m-%d') AND STR_TO_DATE(?, '%Y-%m-%d')) OR
                                        (STR_TO_DATE(ngay_tra, '%Y-%m-%d') BETWEEN STR_TO_DATE(?, '%Y-%m-%d') AND STR_TO_DATE(?, '%Y-%m-%d')) OR
                                        (STR_TO_DATE(?, '%Y-%m-%d') BETWEEN STR_TO_DATE(ngay_nhan, '%Y-%m-%d') AND STR_TO_DATE(ngay_tra, '%Y-%m-%d')) OR
                                        (STR_TO_DATE(?, '%Y-%m-%d') BETWEEN STR_TO_DATE(ngay_nhan, '%Y-%m-%d') AND STR_TO_DATE(ngay_tra, '%Y-%m-%d'))
                                    )");
            $stmt2->bind_param("sssssss", $ma_loai, $ngay_du_kien_den, $ngay_tra_du_kien, $ngay_du_kien_den, $ngay_tra_du_kien, $ngay_du_kien_den, $ngay_tra_du_kien);
            $stmt2->execute();
            $result2 = $stmt2->get_result();
            $row2 = $result2->fetch_assoc();
            $tong_so_luong_phong_dat = $row2['tong_so_luong_phong_dat'] ? $row2['tong_so_luong_phong_dat'] : 0;

            // Tính toán số lượng phòng còn trống
            $so_luong_phong_trong = $tong_so_luong_phong - $tong_so_luong_phong_dat;

            $phong_trong[] = [
                'ma_loai' => $ma_loai,
                'so_luong_phong_trong' => $so_luong_phong_trong,
                'ten_loai' => $ten_loai,
                'anh_loai_phong' => $anh_loai_phong,
                'dien_tich' => $dien_tich,
                'chi_tiet_phong' => $chi_tiet_phong,
                'gia_phong' => $gia_phong
            ];
        }

        return $phong_trong;
    }

    $phong_trong = kiemTraPhongTrong($conn, $ngay_du_kien_den, $ngay_tra_du_kien);
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/thongtinkhach.css" />
    <link rel="stylesheet" href="css/gioithieu.css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <title>Tìm kiếm phòng trống</title>
    <script>
        function validateForm(event) {
            const ngayDuKienDen = document.getElementById('ngay_du_kien_den').value;
            const soNgay = document.getElementById('so_ngay').value;

            if (!ngayDuKienDen || !soNgay) {
                alert("Vui lòng cung cấp đủ thông tin");
                event.preventDefault(); // Ngăn không cho form submit
                return false;
            }
            return true;
        }
    </script>
</head>

<body>
    <div class="khungchua" style="min-height: 700px; width: 100%">
        <div style="margin: 20px auto; width: 100%">
            <form enctype="multipart/form-data" action="" id="tim_kiem_form" method="post" style="width: 100%;" onsubmit="return validateForm(event)">
                <div class="search-room-available" style="flex-direction: row; gap: 10px;">
                    <div style="display: flex; flex-direction: column">
                        <span>Ngày dự kiến đến</span>
                        <input type="date" name="ngay_du_kien_den" id="ngay_du_kien_den" value="<?php echo ($ngay_du_kien_den); ?>" />
                    </div>
                    <div style="display: flex; flex-direction: column;">
                        <span>Số ngày ở dự kiến</span>
                        <input type="number" name="so_ngay" id="so_ngay" value="<?php echo ($so_ngay); ?>" />
                    </div>
                    <button class="btn" style="margin-top: 20px" type="submit">TÌM KIẾM</button>
                </div>
            </form>
            <h3 style="margin: 0px auto; margin-top: 40px; text-align: center">
                Kết quả tìm kiếm phòng còn trống vào ngày <b><?php echo htmlspecialchars($ngay_du_kien_den); ?></b> đến ngày <b><?php echo htmlspecialchars($ngay_tra_du_kien); ?></b>
            </h3>
            <div id="ket_qua_tim_kiem" class="room-container" style="margin-top: 0px">
                <?php
                if (isset($phong_trong)) {
                    foreach ($phong_trong as $phong) {
                        echo "
                        <div class='room1'>
                            <div class='image-fr'>
                                <img src={$phong['anh_loai_phong']} class='image-room' />
                            </div>
                            <div class='info-room1' style='gap: 10px; position: relative'>
                                <h4><b>{$phong['ten_loai']}</b></h4>
                                <div class='tt-chung'>
                                    <label class='dt-room'>
                                        <a><i class='fa-solid fa-location-dot'></i></a>
                                        <span>{$phong['dien_tich']}</span>
                                    </label>
                                    <label class='dt-room'>
                                        <a><i class='fa-solid fa-user-group'></i></a>
                                        <span>{$phong['chi_tiet_phong']}</span>
                                    </label>
                                    <h3 style='color: #b20600; margin: 0'>
                                        <b>{$phong['gia_phong']} VNĐ</b>
                                        <span style='font-size: 18px'>(Còn trống: <b>{$phong['so_luong_phong_trong']}</b> phòng)</span>
                                    </h3>
                                </div>
                                <a style='color:#b20600; position: absolute; bottom: 20px; right: 20px; margin-left: 0' class='btXemphong' href='xemphong.php?loai_phong=".urlencode($phong["ten_loai"])."'>XEM PHÒNG</a>
                            </div>
                        </div>";
                    }
                } else {
                    echo "<h3 style='margin: 0 auto; text-align: center'>Không tìm thấy phòng còn trống</h3>";
                }
                ?>
            </div>
        </div>
    </div>
</body>

</html>

<?php
include("footertc.php");
?>