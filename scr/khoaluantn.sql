-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 30, 2024 lúc 08:27 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `khoaluantn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_thiet_bi`
--

CREATE TABLE `chi_tiet_thiet_bi` (
  `ma_cttb` int(11) NOT NULL,
  `ma_phong` int(11) NOT NULL,
  `ma_thiet_bi` int(11) NOT NULL,
  `so_luong_trong_phong` int(11) NOT NULL,
  `tinh_trang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_thiet_bi`
--

INSERT INTO `chi_tiet_thiet_bi` (`ma_cttb`, `ma_phong`, `ma_thiet_bi`, `so_luong_trong_phong`, `tinh_trang`) VALUES
(1, 1, 1, 1, 'Đang sử dụng'),
(2, 2, 1, 1, 'Đang sử dụng'),
(5, 3, 1, 1, 'Đang sử dụng'),
(6, 4, 1, 1, 'Đang sử dụng'),
(7, 5, 1, 1, 'Đang sử dụng'),
(8, 6, 1, 1, 'Đang sử dụng'),
(9, 7, 1, 1, 'Đang sử dụng'),
(10, 8, 1, 1, 'Đang sử dụng'),
(11, 9, 1, 1, 'Đang sử dụng'),
(12, 32, 1, 1, 'Đang sử dụng'),
(13, 10, 1, 1, 'Đang sử dụng'),
(14, 11, 1, 1, 'Đang sử dụng'),
(15, 12, 1, 1, 'Đang sử dụng'),
(16, 13, 1, 1, 'Đang sử dụng'),
(17, 14, 1, 1, 'Đang sử dụng'),
(18, 15, 1, 1, 'Đang sử dụng'),
(19, 16, 1, 1, 'Đang sử dụng'),
(20, 17, 1, 1, 'Đang sử dụng'),
(21, 18, 1, 1, 'Đang sử dụng'),
(22, 19, 1, 1, 'Đang sử dụng'),
(23, 20, 1, 1, 'Đang sử dụng'),
(24, 21, 2, 1, 'Đang sử dụng'),
(25, 22, 2, 1, 'Đang sử dụng'),
(26, 23, 2, 1, 'Đang sử dụng'),
(27, 24, 2, 1, 'Đang sử dụng'),
(28, 1, 3, 1, 'Đang sử dụng'),
(29, 2, 3, 1, 'Đang sử dụng'),
(30, 3, 3, 1, 'Đang sử dụng'),
(31, 4, 3, 1, 'Đang sử dụng'),
(32, 5, 3, 1, 'Đang sử dụng'),
(33, 6, 3, 1, 'Đang sử dụng'),
(34, 8, 3, 1, 'Đang sử dụng'),
(35, 7, 3, 1, 'Đang sử dụng'),
(36, 9, 3, 1, 'Đang sử dụng'),
(37, 32, 3, 1, 'Đang sử dụng'),
(38, 10, 3, 1, 'Đang sử dụng'),
(39, 11, 3, 1, 'Đang sử dụng'),
(40, 12, 3, 1, 'Đang sử dụng'),
(41, 13, 3, 1, 'Đang sử dụng'),
(42, 14, 3, 1, 'Đang sử dụng'),
(43, 15, 3, 1, 'Đang sử dụng'),
(44, 16, 3, 1, 'Đang sử dụng'),
(45, 17, 3, 1, 'Đang sử dụng'),
(46, 18, 3, 1, 'Đang sử dụng'),
(47, 19, 3, 1, 'Đang sử dụng'),
(48, 20, 3, 1, 'Đang sử dụng'),
(49, 21, 10, 1, 'Đang sử dụng'),
(50, 22, 10, 1, 'Đang sử dụng'),
(51, 23, 10, 1, 'Đang sử dụng'),
(52, 24, 10, 1, 'Đang sử dụng'),
(62, 1, 4, 1, 'Đang sử dụng'),
(63, 2, 4, 1, 'Đang sử dụng'),
(64, 3, 4, 1, 'Đang sử dụng'),
(65, 4, 4, 1, 'Đang sử dụng'),
(66, 5, 4, 1, 'Đang sử dụng'),
(67, 6, 4, 1, 'Đang sử dụng'),
(68, 7, 4, 1, 'Đang sử dụng'),
(72, 2, 4, 1, 'Đang sử dụng'),
(73, 3, 4, 1, 'Đang sử dụng'),
(74, 3, 4, 1, 'Đang sử dụng'),
(76, 1, 5, 1, 'Đang sử dụng'),
(77, 2, 5, 1, 'Đang sử dụng'),
(78, 3, 5, 1, 'Đang sử dụng'),
(79, 11, 4, 1, 'Đang sử dụng'),
(80, 12, 4, 1, 'Đang sử dụng'),
(81, 13, 4, 1, 'Đang sử dụng'),
(82, 14, 4, 1, 'Đang sử dụng'),
(83, 4, 5, 1, 'Đang sử dụng'),
(84, 5, 5, 1, 'Đang sử dụng'),
(88, 6, 5, 1, 'Đang sử dụng'),
(89, 7, 5, 1, 'Đang sử dụng'),
(90, 8, 5, 1, 'Đang sử dụng'),
(92, 9, 5, 1, 'Đang sử dụng'),
(93, 10, 5, 1, 'Đang sử dụng'),
(95, 11, 5, 1, 'Đang sử dụng'),
(96, 12, 5, 1, 'Đang sử dụng'),
(97, 1, 6, 1, 'Đang sử dụng'),
(98, 2, 6, 1, 'Đang sử dụng'),
(100, 3, 6, 1, 'Đang sử dụng'),
(101, 4, 6, 1, 'Đang sử dụng'),
(102, 5, 6, 1, 'Đang sử dụng'),
(103, 6, 6, 1, 'Đang sử dụng'),
(104, 1, 8, 1, 'Đang sử dụng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_vat_tu`
--

CREATE TABLE `chi_tiet_vat_tu` (
  `ma_ctvt` int(11) NOT NULL,
  `ma_phong` int(11) NOT NULL,
  `ma_vat_tu` int(11) NOT NULL,
  `so_luong_trong_phong` int(11) NOT NULL,
  `tinh_trang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_vat_tu`
--

INSERT INTO `chi_tiet_vat_tu` (`ma_ctvt`, `ma_phong`, `ma_vat_tu`, `so_luong_trong_phong`, `tinh_trang`) VALUES
(1, 1, 1, 2, 'Đang sử dụng'),
(2, 1, 2, 2, 'Đang sử dụng'),
(3, 1, 3, 1, 'Đang sử dụng'),
(4, 2, 1, 2, 'Đang sử dụng'),
(5, 3, 1, 2, 'Đang sử dụng'),
(6, 4, 1, 2, 'Đang sử dụng'),
(7, 5, 1, 2, 'Đang sử dụng'),
(8, 6, 1, 2, 'Đang sử dụng'),
(9, 3, 4, 1, 'Đang sử dụng'),
(10, 1, 7, 1, 'Đang sử dụng'),
(11, 1, 5, 1, 'Đang sử dụng'),
(12, 2, 5, 1, 'Đang sử dụng'),
(13, 21, 7, 1, 'Đang sử dụng'),
(14, 24, 6, 1, 'Đang sử dụng'),
(15, 23, 5, 1, 'Đang sử dụng'),
(16, 21, 4, 1, 'Đang sử dụng'),
(17, 19, 6, 1, 'Đang sử dụng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_gia`
--

CREATE TABLE `danh_gia` (
  `ma_danh_gia` int(11) NOT NULL,
  `ma_loai` int(11) NOT NULL,
  `ma_kh` int(11) NOT NULL,
  `noi_dung` text NOT NULL,
  `ngay_danh_gia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_gia`
--

INSERT INTO `danh_gia` (`ma_danh_gia`, `ma_loai`, `ma_kh`, `noi_dung`, `ngay_danh_gia`) VALUES
(1, 1, 9, 'phòng thoáng mát rộng rãi, sạch sẽ', '2024-07-16'),
(3, 5, 9, 'nhân viên nhiệt tình, vui vẻ, phòng ở sạch sẽ', '2024-07-16'),
(6, 3, 2, 'Phòng sạch đẹp thoáng mát, đồ ăn ngon', '2024-07-17'),
(7, 2, 7, 'Phòng đẹp, sạch, mátt', '2024-07-18'),
(8, 1, 7, 'Phòng thơm, rộng rãi', '2024-07-18'),
(9, 1, 9, 'phòng đẹp thoáng mát', '2024-07-18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinh_anh`
--

CREATE TABLE `hinh_anh` (
  `ma_ha` int(11) NOT NULL,
  `hinh_anh` text NOT NULL,
  `ma_loai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hinh_anh`
--

INSERT INTO `hinh_anh` (`ma_ha`, `hinh_anh`, `ma_loai`) VALUES
(18, './anhtin/family-twin.jpg', 4),
(19, './anhtin/family-twin1.jpg', 4),
(20, './anhtin/family-twin2.jpg', 4),
(21, './anhtin/family-twin3.jpg', 4),
(22, './anhtin/suite-king.jpg', 3),
(23, './anhtin/suite-king2.jpg', 3),
(24, './anhtin/suite-double1.jpg', 2),
(25, './anhtin/suite-double2.jpg', 2),
(26, './anhtin/suite-double3.jpg', 2),
(27, './anhtin/royal3.jpg', 5),
(28, './anhtin/royal2.jpg', 5),
(29, './anhtin/royal1.jpg', 5),
(30, './anhtin/royal.jpg', 5),
(31, './anhtin/deluxe-twin.jpg', 1),
(32, './anhtin/dulex-twin1.jpg', 1),
(33, './anhtin/dulex-twin2.jpg', 1),
(34, './anhtin/dulex-twin3.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `ma_hoa_don` int(11) NOT NULL,
  `ma_phieu_dat` int(11) NOT NULL,
  `ma_o` int(11) NOT NULL,
  `ma_kh` int(11) NOT NULL,
  `ma_nv` int(11) NOT NULL,
  `ngay_lap_hoa_don` varchar(20) NOT NULL,
  `thanh_tien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`ma_hoa_don`, `ma_phieu_dat`, `ma_o`, `ma_kh`, `ma_nv`, `ngay_lap_hoa_don`, `thanh_tien`) VALUES
(41, 72, 67, 9, 4, '2024-07-16 18:14:52', 4033500),
(42, 63, 69, 33, 2, '2024-07-16 20:21:34', 499000),
(43, 74, 70, 2, 4, '2024-07-17 10:42:56', 621500),
(44, 81, 79, 42, 4, '2024-07-18 01:44:43', 330000),
(51, 80, 83, 7, 4, '2024-07-18 02:27:19', 448000),
(55, 78, 74, 7, 4, '2024-07-18 02:59:14', 886000),
(56, 82, 81, 9, 4, '2024-07-18 03:00:31', 861000),
(57, 59, 62, 9, 4, '2024-07-18 03:08:26', 2713500),
(58, 84, 85, 7, 4, '2024-07-18 03:08:34', 1457000),
(59, 85, 89, 9, 4, '2024-07-18 07:53:59', 743500);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ma_kh` int(11) NOT NULL,
  `ho_ten` varchar(100) NOT NULL,
  `gioi_tinh` varchar(20) NOT NULL,
  `cccd` varchar(50) NOT NULL,
  `sdtkh` varchar(20) NOT NULL,
  `emailkh` varchar(50) NOT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `matkhaukh` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`ma_kh`, `ho_ten`, `gioi_tinh`, `cccd`, `sdtkh`, `emailkh`, `dia_chi`, `matkhaukh`) VALUES
(1, 'Nguyễn Thị Mỹ Yến', 'Nữ', '084302004489', '0369993018', 'myyen@gmail.com', 'Trà Cú', '123'),
(2, 'Lê Dương Nhựt Thoại', 'Nam', '335037912', '0362067488', 'leduongnhutthoai@gmail.com', '72/9A Khóm 4 phường 1, Thành phố Trà Vinh', '1234'),
(7, 'Phạm Quyển Đình', 'Nữ', '084302004477', '0978756676', 'phamdinh@gmail.com', 'Hoà Minh, Châu Thành', '123'),
(8, 'Lê Thị Hiếu Thảo ', 'Nữ', '084301000398', '0866475515', 'hieuthao@gmail.com', '73/2 Phạm Ngũ Lão, Khóm 3 phường 2, Thành phố Trà Vinh', '123'),
(9, 'Nguyễn Thanh Trúc', 'Nữ', '0843020004645', '0564520610', 'thanhtrucn35@gmail.com', 'Khóm 3 phường 5, đường D5, Thành phố Trà Vinh', '123'),
(25, 'Nguyễn Thị Huỳnh Anh', 'Nữ', '0843020001710', '0565498884', 'wynanh@gmail.com', '', ''),
(27, 'Nguyễn Thi Huỳnh Anh ', 'Nữ', '0843020001710', '0565498884', 'ha@gmail.com', '', ''),
(28, 'Nguyễn Thi Huỳnh Anh ', 'Nữ', '0843020001710', '0565498884', 'ha@gmail.com', '', ''),
(29, 'Nguyễn Thi Huỳnh Anh ', 'Nữ', '0843020001710', '0565498884', 'ha@gmail.com', '', ''),
(30, 'Nguyễn Thi Huỳnh Anh ', 'Nam', '0843020001710', '0565498884', 'ha@gmail.com', '', ''),
(31, 'Nguyễn Thi Huỳnh Anh ', 'Nam', '0843020001710', '0565498884', 'ha@gmail.com', '', ''),
(32, 'Võ Thị Trường An', 'Nữ', '084302004478', '0974487260', 'an@gmail.com', '', ''),
(33, 'Võ Thị Trường An', 'Nam', '084302004478', '0974487260', 'an@gmail.com', '', ''),
(34, 'Võ Thị Trường An', 'Nam', '084302004478', '0974487260', 'an@gmail.com', '', ''),
(35, 'Võ Thị Trường An', 'Nam', '084302004478', '0974487260', 'an@gmail.com', '', ''),
(36, 'Võ Thị Trường An', 'Nam', '084302004478', '0974487260', 'an@gmail.com', '', ''),
(37, 'Võ Thị Trường An', 'Nam', '084302004478', '0974487260', 'an@gmail.com', '', ''),
(38, 'Võ Thị Trường An', 'Nam', '084302004478', '0974487260', 'an@gmail.com', '', ''),
(39, 'Võ Thị Trường An', 'Nam', '084302004478', '0974487260', 'an@gmail.com', '', ''),
(40, 'Võ Thị Trường An', 'Nam', '084302004478', '0974487260', 'an@gmail.com', '', ''),
(41, 'Võ Thị Trường An', 'Nam', '084302004478', '0974487260', 'an@gmail.com', '', ''),
(42, 'Lâm Anh Tài', 'Nam', '084302004478', '0974487278', 't@gmail.com', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyen_mai`
--

CREATE TABLE `khuyen_mai` (
  `ma_khuyen_mai` int(11) NOT NULL,
  `ten_khuyen_mai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyen_mai`
--

INSERT INTO `khuyen_mai` (`ma_khuyen_mai`, `ten_khuyen_mai`) VALUES
(1, '10%');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_phong`
--

CREATE TABLE `loai_phong` (
  `ma_loai` int(11) NOT NULL,
  `ten_loai` varchar(100) NOT NULL,
  `anh_loai_phong` text NOT NULL,
  `dien_tich` varchar(20) NOT NULL,
  `chi_tiet_phong` varchar(100) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `gia_phong` varchar(100) NOT NULL,
  `ma_khuyen_mai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_phong`
--

INSERT INTO `loai_phong` (`ma_loai`, `ten_loai`, `anh_loai_phong`, `dien_tich`, `chi_tiet_phong`, `so_luong`, `gia_phong`, `ma_khuyen_mai`) VALUES
(1, 'DELUXE TWIN', './anhtin/deluxe-twin.jpg', '35-36m2', '2 người lớn, 2 giường đơn', 10, '590000', NULL),
(2, 'SUITE DOUBLE', './anhtin/suite-double.jpg', '31-32m2', '2 người lớn, giường đôi', 5, '590000', NULL),
(3, 'SUITE KING', './anhtin/suite-king.jpg', '31-32m2', '2 người lớn, giường đôi', 6, '690000', NULL),
(4, 'FAMILY TWIN WINDOW', './anhtin/family-twin.jpg', '35-36m2', '2 người lớn, 2 giường đơn', 1, '890000', NULL),
(5, 'ROYAL THE ROSE', './anhtin/royal.jpg', '35-36m2', '2 người lớn, 2 giường đơn', 3, '1190000', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `log`
--

CREATE TABLE `log` (
  `ma_log` int(11) NOT NULL,
  `ma_nv` int(11) NOT NULL,
  `hanh_dong` text NOT NULL,
  `ngay` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `log`
--

INSERT INTO `log` (`ma_log`, `ma_nv`, `hanh_dong`, `ngay`) VALUES
(2, 4, 'Thêm chi tiết vật tư cho phòng: 19, vật tư: 6, số lượng: 1', '2024-07-17 14:46:40'),
(3, 4, 'Thêm vật tư mới: da, tổng số lượng: 20, số lượng sử dụng: , số lượng tồn: ', '2024-07-17 14:50:57'),
(7, 4, 'Xóa vật tư: Dép đi phòng, tổng số lượng: 100, số lượng sử dụng: 0, số lượng tồn: 0', '2024-07-17 14:59:12'),
(8, 4, 'Xóa vật tư: Nước suối, tổng số lượng: 48, số lượng sử dụng: 0, số lượng tồn: 0', '2024-07-17 14:59:16'),
(9, 4, 'Xóa vật tư: Cà phê gói, tổng số lượng: 50, số lượng sử dụng: 0, số lượng tồn: 0', '2024-07-17 14:59:19'),
(10, 4, 'Thêm thiết bị mới: daaa, tổng số lượng: 20, số lượng sử dụng: , số lượng tồn: ', '2024-07-17 15:09:11'),
(11, 4, 'Thêm thông tin phòng mới: Loại phòng 4, Tên phòng Phòng 32', '2024-07-17 15:12:50'),
(12, 4, 'Thêm nhân viên mới: Mã 6, Họ tên Trương Thị Ngọc Thảo, Giới tính Nữ, CCCD 0843020001010, Ngày sinh 10/11/2001, SĐT 0397032180, Địa chỉ Khóm 2 phường 5 Trà Vinh, Tài khoản thao@gmail.com, Tình trạng Hoạt động', '2024-07-17 15:30:46'),
(13, 4, 'Thêm loại phòng mới: Mã 18, Tên phòng giả bộ, Diện tích 31-32m2, Chi tiết phòng 2 người lớn, 2 giường đơn, Số lượng 12, Giá phòng 809999', '2024-07-17 15:33:32'),
(14, 4, 'Thêm hình ảnh mới cho loại phòng có mã: 18', '2024-07-17 15:35:40'),
(15, 4, 'Thêm hình ảnh mới cho loại phòng có mã: 18', '2024-07-17 15:36:48'),
(16, 4, 'Thêm chi tiết thiết bị vào phòng 34: Thiết bị 9, Số lượng: 1', '2024-07-17 15:38:31'),
(17, 4, 'Thêm chi tiết thiết bị vào phòng 34: Thiết bị 20, Số lượng: 1', '2024-07-17 15:39:22'),
(24, 4, 'Thêm chương trình khuyến mãi mới: Khuyến mãi 10%', '2024-07-21 15:44:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `ma_nv` int(11) NOT NULL,
  `ho_ten` varchar(100) NOT NULL,
  `gioi_tinh` varchar(20) NOT NULL,
  `cccd` varchar(50) NOT NULL,
  `ngay_sinh` varchar(20) NOT NULL,
  `sdtnv` varchar(255) NOT NULL,
  `dia_chi` varchar(100) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `quyen` int(11) NOT NULL,
  `tinh_trang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhan_vien`
--

INSERT INTO `nhan_vien` (`ma_nv`, `ho_ten`, `gioi_tinh`, `cccd`, `ngay_sinh`, `sdtnv`, `dia_chi`, `user`, `pass`, `quyen`, `tinh_trang`) VALUES
(1, 'Nguyễn Thị Cẩm Xuyên', 'Nữ', '084302004430', '21/01/2001', '0768894581', 'Số 39, Tân Định, Đại Phúc, Càng Long Trà Vinh', 'xuyennguyen@gmail.com', '123', 0, 'Hoạt động'),
(2, 'Huỳnh Thanh Ngân', 'Nữ', '084302000305', '14/08/2002', '0523135960', 'Khóm 3 phường 5, D5, Thành phố Trà Vinh', 'Thngan1407@gmail.com', '123', 0, 'Hoạt động'),
(4, 'Nguyễn Trúc Linh', 'Nữ', '084302004640', '05/03/2003', '0817740610', 'Khóm 3 phường 5, đường 5, Thành phố Trà Vinh', 'linhnguyen@gmail.com', '123', 1, 'Hoạt động'),
(5, 'Nguyễn Thị Mỹ Yến', 'Nữ', '08430200002909', '10/10/2003', '0369993018', 'Trà Cú', 'yen@gmail.com', '123', 0, 'Hoạt động'),
(6, 'Trương Thị Ngọc Thảo', 'Nữ', '0843020001010', '10/11/2001', '0397032180', 'Khóm 2 phường 5 Trà Vinh', 'thao@gmail.com', '123', 0, 'Hoạt động');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `o`
--

CREATE TABLE `o` (
  `ma_o` int(11) NOT NULL,
  `ma_phieu_dat` int(11) NOT NULL,
  `ma_loai` int(11) NOT NULL,
  `ma_phong` int(11) NOT NULL,
  `ma_kh` int(11) NOT NULL,
  `ma_nv` int(11) NOT NULL,
  `ngay_den` varchar(20) NOT NULL,
  `thoi_gian_den` varchar(20) NOT NULL,
  `ngay_di` varchar(20) NOT NULL,
  `thoi_gian_di` varchar(20) NOT NULL,
  `tong_tien` int(11) NOT NULL,
  `so_tien_da_coc` int(11) NOT NULL,
  `tong_so_tien_can_tra` int(11) NOT NULL,
  `so_tien_thuc_nhan` int(11) DEFAULT NULL,
  `tinh_trang` varchar(50) NOT NULL,
  `phu_thu_den_truoc` varchar(255) DEFAULT NULL,
  `so_tien_phu_thu_den_truoc` int(11) DEFAULT NULL,
  `phu_thu_den_sau` varchar(255) DEFAULT NULL,
  `so_tien_phu_thu_den_sau` int(11) DEFAULT NULL,
  `gia_han_phong` varchar(255) DEFAULT NULL,
  `so_tien_gia_han_phong` int(11) DEFAULT NULL,
  `chi_phi_phat_sinh` int(11) NOT NULL,
  `ghi_chu` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `o`
--

INSERT INTO `o` (`ma_o`, `ma_phieu_dat`, `ma_loai`, `ma_phong`, `ma_kh`, `ma_nv`, `ngay_den`, `thoi_gian_den`, `ngay_di`, `thoi_gian_di`, `tong_tien`, `so_tien_da_coc`, `tong_so_tien_can_tra`, `so_tien_thuc_nhan`, `tinh_trang`, `phu_thu_den_truoc`, `so_tien_phu_thu_den_truoc`, `phu_thu_den_sau`, `so_tien_phu_thu_den_sau`, `gia_han_phong`, `so_tien_gia_han_phong`, `chi_phi_phat_sinh`, `ghi_chu`) VALUES
(62, 59, 1, 1, 9, 4, '17/7/2024', '13:16', '18/7/2024', '15:16', 660000, 330000, 2713500, 0, 'Đã trả phòng', '', 88500, '15h00 - 18h00', 295000, '0', 0, 2000000, 'khách hút thuốc trong phòng '),
(67, 72, 5, 22, 9, 4, '16/7/2024', '00:23', '17/7/2024', '15:33', 5293500, 1260000, 4033500, 0, 'Đã trả phòng', '9h00 - 13h00', 178500, '15h00 - 18h00', 595000, '0', 0, 2000000, 'khách hút thuốc trong phòng '),
(68, 72, 5, 24, 9, 4, '16/7/2024', '12:38', '17/7/2024', '18:03', 3888500, 1260000, 2628500, 0, 'Đã trả phòng', '9h00 - 13h00', 178500, 'Sau 18h', 1190000, '0', 0, 0, ''),
(69, 63, 4, 21, 33, 4, '16/7/2024', '14:03', '17/7/2024', '01:20', 944000, 445000, 499000, 0, 'Đã trả phòng', '', 0, '', 0, '0', 0, 54000, 'khách sử dụng 1 cà phê'),
(70, 74, 3, 15, 2, 4, '17/7/2024', '10:41', '17/7/2024', '12:41', 1001500, 380000, 621500, 0, 'Đã trả phòng', '9h00 - 13h00', 103500, '12h00 - 15h00', 138000, '0', 0, 0, ''),
(74, 78, 2, 14, 7, 4, '17/7/2024', '14:28', '18/7/2024', '12:31', 1328000, 590000, 738000, 0, 'Đã trả phòng', '', 0, '12h00 - 15h00', 118000, '0', 0, 30000, 'tiền nước'),
(77, 79, 3, 18, 7, 4, '17/7/2024', '13:08', '19/7/2024', '', 1553500, 725000, 828500, 0, 'Đã phân phòng', '9h00 - 13h00', 103500, '', 0, '0', 0, 0, ''),
(78, 78, 2, 10, 7, 4, '17/7/2024', '14:29', '18/7/2024', '12:32', 1328000, 590000, 738000, 0, 'Đã phân phòng', '', 0, '12h00 - 15h00', 118000, '0', 0, 30000, ''),
(79, 81, 1, 4, 42, 4, '18/7/2024', '', '19/7/2024', '', 660000, 330000, 330000, 0, 'Đã phân phòng', '', 0, '', 0, '0', 0, 0, ''),
(80, 81, 1, 4, 42, 4, '18/7/2024', '13:00', '19/7/2024', '12:00', 768500, 330000, 438500, 0, 'Đã trả phòng', '9h00 - 13h00', 88500, '', 0, '0', 0, 20000, 'Khách dùng cà phê'),
(81, 82, 2, 11, 9, 4, '18/7/2024', '14:00', '19/7/2024', '12:49', 1368000, 625000, 743000, 0, 'Đã trả phòng', '', 0, '12h00 - 15h00', 118000, '0', 0, 0, ''),
(82, 82, 2, 12, 9, 4, '18/7/2024', '14:00', '19/7/2024', '12:49', 1368000, 625000, 743000, 0, 'Đã trả phòng', '', 0, '12h00 - 15h00', 118000, '0', 0, 0, ''),
(83, 80, 2, 11, 7, 4, '19/7/2024', '14:24', '20/7/2024', '12:26', 778000, 330000, 448000, 0, 'Đã trả phòng', '', 0, '12h00 - 15h00', 118000, '0', 0, 0, ''),
(85, 84, 1, 5, 7, 4, '18/7/2024', '12:07', '18/7/2024', '15:07', 1703500, 660000, 1043500, 0, 'Đã trả phòng', '9h00 - 13h00', 88500, '15h00 - 18h00', 295000, '0', 0, 0, ''),
(86, 84, 1, 4, 7, 4, '18/7/2024', '12:06', '18/7/2024', '15:09', 1733500, 660000, 1073500, 0, 'Đã trả phòng', '9h00 - 13h00', 88500, '15h00 - 18h00', 295000, '0', 0, 30000, 'dùng cà phê'),
(89, 85, 1, 4, 9, 4, '18/7/2024', '13:00', '19/7/2024', '12:00', 1338500, 625000, 713500, 0, 'Đã trả phòng', '9h00 - 13h00', 88500, '', 0, '0', 0, 0, ''),
(90, 85, 1, 5, 9, 4, '18/7/2024', '14:00', '19/7/2024', '12:00', 1280000, 625000, 655000, 0, 'Đã trả phòng', '', 0, '', 0, '0', 0, 30000, 'Khách dùng cà phê'),
(91, 86, 1, 4, 9, 2, '18/7/2024', '13:16', '19/7/2024', '', 1408500, 660000, 748500, 0, 'Đã nhận phòng', '9h00 - 13h00', 88500, '', 0, '0', 0, 0, ''),
(92, 86, 1, 5, 9, 2, '18/7/2024', '13:15', '19/7/2024', '', 1408500, 660000, 748500, 0, 'Đã nhận phòng', '9h00 - 13h00', 88500, '', 0, '0', 0, 0, ''),
(93, 87, 1, 6, 9, 4, '30/7/2024', '10:52', '1/8/2024', '', 1338500, 625000, 713500, 0, 'Đã nhận phòng', '9h00 - 13h00', 88500, '', 0, '0', 0, 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieu_dat`
--

CREATE TABLE `phieu_dat` (
  `ma_phieu_dat` int(11) NOT NULL,
  `ma_kh` int(11) DEFAULT NULL,
  `ma_loai` int(11) NOT NULL,
  `ma_nv` int(11) DEFAULT NULL,
  `ngay_dat` varchar(20) NOT NULL,
  `ngay_nhan` varchar(20) NOT NULL,
  `ngay_tra` varchar(20) NOT NULL,
  `so_luong_nguoi_lon` int(11) NOT NULL,
  `so_luong_tre_em` int(11) NOT NULL,
  `so_luong_tre_em_tren_6` int(11) DEFAULT NULL,
  `so_luong_tre_em_duoi_6` int(11) DEFAULT NULL,
  `phu_thu_tre_em` int(11) DEFAULT NULL,
  `so_luong_phong_dat` int(11) NOT NULL,
  `tien_coc` varchar(20) NOT NULL,
  `tong_tien` int(11) NOT NULL,
  `trang_thai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phieu_dat`
--

INSERT INTO `phieu_dat` (`ma_phieu_dat`, `ma_kh`, `ma_loai`, `ma_nv`, `ngay_dat`, `ngay_nhan`, `ngay_tra`, `so_luong_nguoi_lon`, `so_luong_tre_em`, `so_luong_tre_em_tren_6`, `so_luong_tre_em_duoi_6`, `phu_thu_tre_em`, `so_luong_phong_dat`, `tien_coc`, `tong_tien`, `trang_thai`) VALUES
(59, 9, 1, 1, '2024-07-16', '2024-07-17', '2024-07-18', 2, 1, 1, 0, 70000, 1, '330000', 660000, 'Đã trả phòng'),
(63, 33, 4, 1, '2024-07-16', '2024-07-16', '2024-07-17', 3, 2, 0, 2, 0, 1, '445000', 890000, 'Đã trả phòng'),
(72, 9, 5, 4, '2024-07-16', '2024-07-16', '2024-07-17', 4, 3, 2, 1, 140000, 2, '1260000', 2520000, 'Đã trả phòng'),
(74, 2, 3, 2, '2024-07-17', '2024-07-17', '2024-07-17', 2, 2, 1, 1, 70000, 1, '380000', 760000, 'Đã trả phòng'),
(78, 7, 2, 2, '2024-07-17', '2024-07-17', '2024-07-18', 2, 1, 0, 1, 0, 2, '590000', 1180000, 'Đã trả phòng'),
(79, 7, 3, 4, '2024-07-17', '2024-07-17', '2024-07-19', 2, 1, 1, 0, 70000, 1, '725000', 1450000, 'Đã hủy phòng'),
(80, 7, 2, 4, '2024-07-15', '2024-07-19', '2024-07-20', 2, 1, 1, 0, 70000, 1, '330000', 660000, 'Đã trả phòng'),
(81, 42, 1, 4, '2024-07-17', '2024-07-18', '2024-07-19', 2, 1, 1, 0, 70000, 1, '330000', 660000, 'Đã trả phòng'),
(82, 9, 2, 4, '2024-07-17', '2024-07-18', '2024-07-19', 2, 1, 1, 0, 70000, 2, '625000', 1250000, 'Đã trả phòng'),
(84, 7, 1, 4, '2024-07-17', '2024-07-18', '2024-07-18', 3, 2, 2, 0, 140000, 2, '660000', 1320000, 'Đã trả phòng'),
(85, 9, 1, 4, '2024-07-18', '2024-07-18', '2024-07-19', 2, 1, 1, 0, 70000, 2, '625000', 1250000, 'Đã trả phòng'),
(86, 9, 1, 2, '2024-07-18', '2024-07-18', '2024-07-19', 3, 2, 2, 0, 140000, 2, '660000', 1320000, 'Đã xác nhận'),
(87, 9, 1, 4, '2024-07-29', '2024-07-30', '2024-08-01', 2, 1, 1, 0, 70000, 1, '625000', 1250000, 'Đã xác nhận');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

CREATE TABLE `phong` (
  `ma_phong` int(11) NOT NULL,
  `ma_loai` int(11) NOT NULL,
  `ten_phong` varchar(100) NOT NULL,
  `trang_thai` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`ma_phong`, `ma_loai`, `ten_phong`, `trang_thai`) VALUES
(1, 1, 'Phòng 103', 1),
(2, 1, 'Phòng 104', 1),
(3, 1, 'Phòng 105', 1),
(4, 1, 'Phòng 106', 1),
(5, 1, 'Phòng 107', 1),
(6, 1, 'Phòng 203', 1),
(7, 1, 'Phòng 204', 1),
(8, 1, 'Phòng 205', 0),
(9, 1, 'Phòng 206', 0),
(10, 2, 'Phòng 303', 0),
(11, 2, 'Phòng 304', 0),
(12, 2, 'Phòng 305', 0),
(13, 2, 'Phòng 306', 1),
(14, 2, 'Phòng 307', 0),
(15, 3, 'Phòng 101', 1),
(16, 3, 'Phòng 102', 0),
(17, 3, 'Phòng 201', 0),
(18, 3, 'Phòng 202', 1),
(19, 3, 'Phòng 301', 0),
(20, 3, 'Phòng 302', 0),
(21, 4, 'Phòng 402 ', 1),
(22, 5, 'Phòng 401', 1),
(23, 5, 'Phòng 403', 1),
(24, 5, 'Phòng 405', 1),
(32, 1, 'Phòng 207', 0),
(34, 4, 'Phòng 32', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thiet_bi`
--

CREATE TABLE `thiet_bi` (
  `ma_thiet_bi` int(11) NOT NULL,
  `ten_thiet_bi` varchar(100) NOT NULL,
  `so_luong_tong` int(11) NOT NULL,
  `so_luong_su_dung` int(11) NOT NULL,
  `so_luong_ton` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thiet_bi`
--

INSERT INTO `thiet_bi` (`ma_thiet_bi`, `ten_thiet_bi`, `so_luong_tong`, `so_luong_su_dung`, `so_luong_ton`) VALUES
(1, 'Tivi Samsung 50 inch', 25, 21, 4),
(2, 'Tivi Samsung 55 inch', 4, 4, 0),
(3, 'Điều hoà nhiệt độ 1HP', 22, 22, 0),
(4, 'Máy sấy tóc', 27, 14, 13),
(5, 'Tủ lạnh mini', 25, 12, 13),
(6, 'Máy nước nóng', 26, 6, 20),
(7, 'Bình đun siêu tốc', 26, 0, 26),
(8, 'Quạt trần ', 25, 1, 24),
(9, 'Máy pha cà phê', 25, 0, 25),
(10, 'Điều hoà nhiệt độ 2HP', 4, 4, 0),
(19, 'Điện thoại bàn', 25, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin_tuc`
--

CREATE TABLE `tin_tuc` (
  `ma_tin_tuc` int(11) NOT NULL,
  `ma_nv` int(11) NOT NULL,
  `ten_tin_tuc` varchar(255) NOT NULL,
  `noi_dung` text NOT NULL,
  `hinh_anh` text NOT NULL,
  `ngay_dang` date NOT NULL,
  `trang_thai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tin_tuc`
--

INSERT INTO `tin_tuc` (`ma_tin_tuc`, `ma_nv`, `ten_tin_tuc`, `noi_dung`, `hinh_anh`, `ngay_dang`, `trang_thai`) VALUES
(1, 1, 'Khám phá bộ đôi cà phê phong vị Ý kết hợp sữa yến mạch', '<p>\r\n	Cappuchino y&ecirc;́n mạch: cảm hứng khác bi&ecirc;̣t của Trung Nguy&ecirc;n Legend qua từng giọt cà ph&ecirc; phong vị Ý mà Cappuchino mang đ&ecirc;́n, ph&ocirc;́i hợp sữa y&ecirc;́n mạch thơm béo tự nhi&ecirc;n tạo n&ecirc;n m&ocirc;̣t thức u&ocirc;́ng vừa thơm ngon dinh dưỡng, vừa hi&ecirc;̣n đại bay b&ocirc;̉ng. Latte y&ecirc;́n mạch: với tỷ l&ecirc;̣ sữa y&ecirc;́n mạch nhi&ecirc;̀u hơn hoà quy&ecirc;̣n hoàn hảo cùng vị đ&acirc;̣m đà của cà ph&ecirc; rang xay, Latte y&ecirc;́n mạch là lựa chọn hoàn hảo cho m&ocirc;̣t ngày tươi mới đ&acirc;̀y thư thái và sáng tạo.</p>\r\n<p>\r\n	&nbsp;</p>\r\n', './anhtin/latte.jpg', '2024-06-28', 'Công khai'),
(2, 2, 'Trang trí phòng tạo không gian lãng mạn', 'Tạo ra không gian lãng mạn, ấm áp là điều mà nhiều ngườimong muốn. Một không gian lãng mạn không chỉ giúp tạo ra những kỷ niệm đáng nhớ mà còn giúp tình cảm thêm phần gắn kết.\n\nChúng tôi tự hào cung cấp dịch vụ hỗ trợ khách hàng trong việc trang trí ', './anhtin/tin1.jpg', '2024-06-27', 'Công khai'),
(3, 2, 'Bún thịt nướng', 'Bún thịt nướng là một món ăn đặc trưng của ẩm thực Việt Nam, nổi bật với hương vị đậm đà và hấp dẫn. Món ăn này gồm bún tươi mềm mại, thịt heo nướng thơm lừng, ăn kèm với rau sống tươi ngon, dưa leo, giá đỗ và đậu phộng rang giòn. Đặc biệt, nước mắm chua ngọt pha chế tinh tế là linh hồn của món bún thịt nướng, tạo nên sự hòa quyện hoàn hảo giữa các nguyên liệu, mang đến trải nghiệm ẩm thực khó quên cho thực khách.', './anhtin/food3.jpg', '2024-06-27', 'Công khai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vat_tu`
--

CREATE TABLE `vat_tu` (
  `ma_vat_tu` int(11) NOT NULL,
  `ten_vat_tu` varchar(100) NOT NULL,
  `so_luong_tong` int(11) NOT NULL,
  `so_luong_su_dung` int(11) NOT NULL,
  `so_luong_ton` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vat_tu`
--

INSERT INTO `vat_tu` (`ma_vat_tu`, `ten_vat_tu`, `so_luong_tong`, `so_luong_su_dung`, `so_luong_ton`) VALUES
(1, 'Khăn tắm ', 70, 10, 60),
(2, 'Dụng cụ vệ sinh cá nhân', 50, 2, 48),
(3, 'Vòi hoa sen', 25, 1, 24),
(4, 'Bồn tắm', 4, 2, 1),
(5, 'Tủ quần áo', 25, 3, 22),
(6, 'Tủ đầu giường ', 25, 2, 22),
(7, 'Bàn trang điểmm', 25, 2, 23);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chi_tiet_thiet_bi`
--
ALTER TABLE `chi_tiet_thiet_bi`
  ADD PRIMARY KEY (`ma_cttb`),
  ADD KEY `ma_phong` (`ma_phong`),
  ADD KEY `ma_thiet_bi` (`ma_thiet_bi`);

--
-- Chỉ mục cho bảng `chi_tiet_vat_tu`
--
ALTER TABLE `chi_tiet_vat_tu`
  ADD PRIMARY KEY (`ma_ctvt`),
  ADD KEY `ma_vat_tu` (`ma_vat_tu`),
  ADD KEY `ma_phong` (`ma_phong`);

--
-- Chỉ mục cho bảng `danh_gia`
--
ALTER TABLE `danh_gia`
  ADD PRIMARY KEY (`ma_danh_gia`),
  ADD KEY `ma_kh` (`ma_kh`),
  ADD KEY `ma_loai` (`ma_loai`);

--
-- Chỉ mục cho bảng `hinh_anh`
--
ALTER TABLE `hinh_anh`
  ADD PRIMARY KEY (`ma_ha`),
  ADD KEY `ma_loai` (`ma_loai`);

--
-- Chỉ mục cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`ma_hoa_don`),
  ADD KEY `ma_phieu_dat` (`ma_phieu_dat`),
  ADD KEY `ma_o` (`ma_o`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_kh`);

--
-- Chỉ mục cho bảng `khuyen_mai`
--
ALTER TABLE `khuyen_mai`
  ADD PRIMARY KEY (`ma_khuyen_mai`);

--
-- Chỉ mục cho bảng `loai_phong`
--
ALTER TABLE `loai_phong`
  ADD PRIMARY KEY (`ma_loai`),
  ADD KEY `ma_khuyen_mai` (`ma_khuyen_mai`);

--
-- Chỉ mục cho bảng `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`ma_log`),
  ADD KEY `ma_nv` (`ma_nv`);

--
-- Chỉ mục cho bảng `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD PRIMARY KEY (`ma_nv`);

--
-- Chỉ mục cho bảng `o`
--
ALTER TABLE `o`
  ADD PRIMARY KEY (`ma_o`),
  ADD KEY `ma_kh` (`ma_kh`),
  ADD KEY `ma_phong` (`ma_phong`),
  ADD KEY `ma_nv` (`ma_nv`),
  ADD KEY `ma_loai` (`ma_loai`),
  ADD KEY `ma_phieu_dat` (`ma_phieu_dat`);

--
-- Chỉ mục cho bảng `phieu_dat`
--
ALTER TABLE `phieu_dat`
  ADD PRIMARY KEY (`ma_phieu_dat`),
  ADD KEY `ma_loai` (`ma_loai`),
  ADD KEY `ma_nhan_vien` (`ma_nv`),
  ADD KEY `ma_kh` (`ma_kh`);

--
-- Chỉ mục cho bảng `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`ma_phong`),
  ADD KEY `ma_loai` (`ma_loai`);

--
-- Chỉ mục cho bảng `thiet_bi`
--
ALTER TABLE `thiet_bi`
  ADD PRIMARY KEY (`ma_thiet_bi`);

--
-- Chỉ mục cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  ADD PRIMARY KEY (`ma_tin_tuc`),
  ADD KEY `ma_nv` (`ma_nv`);

--
-- Chỉ mục cho bảng `vat_tu`
--
ALTER TABLE `vat_tu`
  ADD PRIMARY KEY (`ma_vat_tu`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chi_tiet_thiet_bi`
--
ALTER TABLE `chi_tiet_thiet_bi`
  MODIFY `ma_cttb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_vat_tu`
--
ALTER TABLE `chi_tiet_vat_tu`
  MODIFY `ma_ctvt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `danh_gia`
--
ALTER TABLE `danh_gia`
  MODIFY `ma_danh_gia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `hinh_anh`
--
ALTER TABLE `hinh_anh`
  MODIFY `ma_ha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `ma_hoa_don` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `ma_kh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `khuyen_mai`
--
ALTER TABLE `khuyen_mai`
  MODIFY `ma_khuyen_mai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `loai_phong`
--
ALTER TABLE `loai_phong`
  MODIFY `ma_loai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `log`
--
ALTER TABLE `log`
  MODIFY `ma_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `nhan_vien`
--
ALTER TABLE `nhan_vien`
  MODIFY `ma_nv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `o`
--
ALTER TABLE `o`
  MODIFY `ma_o` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT cho bảng `phieu_dat`
--
ALTER TABLE `phieu_dat`
  MODIFY `ma_phieu_dat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `phong`
--
ALTER TABLE `phong`
  MODIFY `ma_phong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `thiet_bi`
--
ALTER TABLE `thiet_bi`
  MODIFY `ma_thiet_bi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  MODIFY `ma_tin_tuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `vat_tu`
--
ALTER TABLE `vat_tu`
  MODIFY `ma_vat_tu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chi_tiet_thiet_bi`
--
ALTER TABLE `chi_tiet_thiet_bi`
  ADD CONSTRAINT `chi_tiet_thiet_bi_ibfk_1` FOREIGN KEY (`ma_phong`) REFERENCES `phong` (`ma_phong`),
  ADD CONSTRAINT `chi_tiet_thiet_bi_ibfk_2` FOREIGN KEY (`ma_thiet_bi`) REFERENCES `thiet_bi` (`ma_thiet_bi`);

--
-- Các ràng buộc cho bảng `chi_tiet_vat_tu`
--
ALTER TABLE `chi_tiet_vat_tu`
  ADD CONSTRAINT `chi_tiet_vat_tu_ibfk_1` FOREIGN KEY (`ma_vat_tu`) REFERENCES `vat_tu` (`ma_vat_tu`),
  ADD CONSTRAINT `chi_tiet_vat_tu_ibfk_2` FOREIGN KEY (`ma_phong`) REFERENCES `phong` (`ma_phong`);

--
-- Các ràng buộc cho bảng `danh_gia`
--
ALTER TABLE `danh_gia`
  ADD CONSTRAINT `danh_gia_ibfk_1` FOREIGN KEY (`ma_kh`) REFERENCES `khach_hang` (`ma_kh`),
  ADD CONSTRAINT `danh_gia_ibfk_2` FOREIGN KEY (`ma_loai`) REFERENCES `loai_phong` (`ma_loai`);

--
-- Các ràng buộc cho bảng `hinh_anh`
--
ALTER TABLE `hinh_anh`
  ADD CONSTRAINT `hinh_anh_ibfk_1` FOREIGN KEY (`ma_loai`) REFERENCES `loai_phong` (`ma_loai`);

--
-- Các ràng buộc cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD CONSTRAINT `hoa_don_ibfk_1` FOREIGN KEY (`ma_phieu_dat`) REFERENCES `phieu_dat` (`ma_phieu_dat`),
  ADD CONSTRAINT `hoa_don_ibfk_2` FOREIGN KEY (`ma_o`) REFERENCES `o` (`ma_o`);

--
-- Các ràng buộc cho bảng `loai_phong`
--
ALTER TABLE `loai_phong`
  ADD CONSTRAINT `loai_phong_ibfk_1` FOREIGN KEY (`ma_khuyen_mai`) REFERENCES `khuyen_mai` (`ma_khuyen_mai`);

--
-- Các ràng buộc cho bảng `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`ma_nv`) REFERENCES `nhan_vien` (`ma_nv`);

--
-- Các ràng buộc cho bảng `o`
--
ALTER TABLE `o`
  ADD CONSTRAINT `o_ibfk_2` FOREIGN KEY (`ma_phong`) REFERENCES `phong` (`ma_phong`),
  ADD CONSTRAINT `o_ibfk_3` FOREIGN KEY (`ma_nv`) REFERENCES `nhan_vien` (`ma_nv`),
  ADD CONSTRAINT `o_ibfk_4` FOREIGN KEY (`ma_loai`) REFERENCES `loai_phong` (`ma_loai`),
  ADD CONSTRAINT `o_ibfk_5` FOREIGN KEY (`ma_phieu_dat`) REFERENCES `phieu_dat` (`ma_phieu_dat`),
  ADD CONSTRAINT `o_ibfk_6` FOREIGN KEY (`ma_kh`) REFERENCES `khach_hang` (`ma_kh`);

--
-- Các ràng buộc cho bảng `phieu_dat`
--
ALTER TABLE `phieu_dat`
  ADD CONSTRAINT `phieu_dat_ibfk_1` FOREIGN KEY (`ma_loai`) REFERENCES `loai_phong` (`ma_loai`),
  ADD CONSTRAINT `phieu_dat_ibfk_2` FOREIGN KEY (`ma_nv`) REFERENCES `nhan_vien` (`ma_nv`),
  ADD CONSTRAINT `phieu_dat_ibfk_3` FOREIGN KEY (`ma_kh`) REFERENCES `khach_hang` (`ma_kh`);

--
-- Các ràng buộc cho bảng `phong`
--
ALTER TABLE `phong`
  ADD CONSTRAINT `phong_ibfk_1` FOREIGN KEY (`ma_loai`) REFERENCES `loai_phong` (`ma_loai`);

--
-- Các ràng buộc cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  ADD CONSTRAINT `tin_tuc_ibfk_1` FOREIGN KEY (`ma_nv`) REFERENCES `nhan_vien` (`ma_nv`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
