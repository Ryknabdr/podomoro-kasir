-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 14 Jan 2025 pada 02.34
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_warung_podomoro`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int NOT NULL,
  `kategori` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(2, 'Makanan'),
(1, 'Minuman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `levels`
--

CREATE TABLE `levels` (
  `id` int NOT NULL,
  `level_id` varchar(40) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `levels`
--

INSERT INTO `levels` (`id`, `level_id`) VALUES
(2, 'admin'),
(3, 'kasir'),
(1, 'owner');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int NOT NULL,
  `kode` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `kategori` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `supplier` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `harga_jual` int NOT NULL,
  `harga_beli` int NOT NULL,
  `stok` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `kode`, `nama`, `gambar`, `kategori`, `supplier`, `harga_jual`, `harga_beli`, `stok`) VALUES
(8, 'M002', 'Roti O', 'C:\\Users\\abdurraihan\\OneDrive\\Dokumen\\BI.docx', 'Makanan', 'Toko Trisno', 15000, 12000, 10),
(9, 'M003', 'mie sedap goreng', 'C:\\Users\\abdurraihan\\OneDrive\\Gambar\\Saved Pictures\\images (1).jpeg', 'Makanan', 'Toko Fatimah', 5000, 4000, 60),
(10, 'M004', 'pucuk', 'C:\\Users\\abdurraihan\\OneDrive\\Gambar\\download.jpeg', 'Makanan', 'Toko Trisno', 5000, 6000, 45),
(11, 'M005', 'Lee mineral', 'u', 'Minuman', 'Toko Trisno', 5000, 3000, 90),
(12, 'M006', 'Larutan', 'i', 'Minuman', 'Toko Trisno', 8000, 5000, 20),
(13, 'M001', 'cimory yogurt', '1', 'Minuman', 'Toko Trisno', 10000, 7000, 40);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id` int NOT NULL,
  `supplier` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id`, `supplier`) VALUES
(2, 'Toko Fatimah'),
(1, 'Toko Trisno');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `level_id` enum('admin','kasir','owner') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'kasir'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `fullname`, `username`, `password`, `level_id`) VALUES
(1, 'rehan', 'rean', 'rean', 'admin'),
(3, 'ainur rofiq', 'ropik', 'ropik', 'kasir'),
(4, 'dionsenowijaya', 'dion', 'dion', 'owner'),
(10, 'soleh', 'soleh', 'soleh', 'kasir'),
(11, 'yahya', 'yahyaw', 'yahya', 'kasir'),
(12, 'utya', 'utya', 'utya', 'admin'),
(13, 'agus', 'agus', 'agus', 'owner');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int NOT NULL,
  `tanggal` date NOT NULL,
  `customer` int NOT NULL,
  `cashier_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `tanggal`, `customer`, `cashier_id`) VALUES
(2, '2025-01-08', 0, 3),
(3, '2025-01-08', 0, 11),
(4, '2025-01-08', 0, 11),
(5, '2025-01-08', 0, 3),
(6, '2025-01-08', 0, 3),
(7, '2025-01-08', 0, 3),
(8, '2025-01-08', 0, 3),
(9, '2025-01-08', 0, 10),
(10, '2025-01-08', 0, 10),
(11, '2025-01-09', 0, 3),
(12, '2025-01-09', 0, 11),
(13, '2025-01-09', 0, 3),
(14, '2025-01-09', 0, 3),
(15, '2025-01-09', 0, 3),
(16, '2025-01-09', 0, 11),
(17, '2025-01-09', 0, 11),
(18, '2025-01-09', 0, 11),
(19, '2025-01-10', 0, 11),
(20, '2025-01-10', 0, 11),
(21, '2025-01-10', 0, 11),
(22, '2025-01-10', 0, 11),
(23, '2025-01-10', 0, 11),
(24, '2025-01-10', 0, 11),
(25, '2025-01-10', 0, 10),
(26, '2025-01-12', 0, 10),
(27, '2025-01-12', 0, 10),
(28, '2025-01-12', 0, 10),
(29, '2025-01-12', 0, 10),
(30, '2025-01-12', 0, 10),
(31, '2025-01-12', 0, 10),
(32, '2025-01-13', 0, 3),
(33, '2025-01-13', 0, 10),
(34, '2025-01-13', 0, 10),
(35, '2025-01-13', 0, 10),
(36, '2025-01-13', 0, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id` int NOT NULL,
  `id_transaksi` int NOT NULL,
  `id_produk` int NOT NULL,
  `qty` int NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `price` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id`, `id_transaksi`, `id_produk`, `qty`, `tanggal_transaksi`, `price`) VALUES
(1, 2, 8, 1, '2025-01-08', 15000),
(2, 3, 8, 3, '2025-01-08', 15000),
(3, 4, 8, 2, '2025-01-08', 15000),
(4, 4, 9, 1, '2025-01-08', 5000),
(5, 5, 8, 1, '2025-01-08', 15000),
(6, 5, 9, 1, '2025-01-08', 5000),
(7, 5, 10, 1, '2025-01-08', 5000),
(8, 6, 8, 2, '2025-01-08', 15000),
(9, 7, 10, 1, '2025-01-08', 5000),
(10, 7, 8, 1, '2025-01-08', 15000),
(11, 8, 8, 3, '2025-01-08', 15000),
(12, 9, 9, 1, '2025-01-08', 5000),
(13, 9, 10, 8, '2025-01-08', 5000),
(14, 10, 11, 6, '2025-01-08', 5000),
(15, 11, 8, 2, '2025-01-09', 15000),
(16, 12, 10, 1, '2025-01-09', 5000),
(17, 15, 8, 1, '2025-01-09', 15000),
(18, 16, 8, 1, '2025-01-09', 15000),
(19, 17, 8, 1, '2025-01-09', 15000),
(20, 18, 8, 1, '2025-01-09', 15000),
(21, 18, 9, 1, '2025-01-09', 5000),
(22, 20, 10, 1, '2025-01-10', 5000),
(23, 21, 9, 3, '2025-01-10', 5000),
(24, 21, 8, 8, '2025-01-10', 15000),
(25, 22, 9, 3, '2025-01-10', 5000),
(26, 22, 8, 8, '2025-01-10', 15000),
(27, 24, 8, 1, '2025-01-10', 15000),
(28, 25, 9, 30, '2025-01-10', 5000),
(29, 26, 13, 10, '2025-01-12', 10000),
(30, 27, 13, 7, '2025-01-12', 10000),
(31, 28, 13, 7, '2025-01-12', 10000),
(32, 29, 13, 2, '2025-01-12', 10000),
(33, 30, 13, 2, '2025-01-12', 10000),
(34, 31, 13, 1, '2025-01-12', 10000),
(35, 32, 10, 2, '2025-01-13', 5000),
(36, 32, 13, 1, '2025-01-13', 10000),
(37, 33, 8, 1, '2025-01-13', 15000),
(38, 33, 9, 1, '2025-01-13', 5000),
(39, 34, 11, 10, '2025-01-13', 5000),
(40, 35, 11, 10, '2025-01-13', 5000),
(41, 36, 10, 1, '2025-01-13', 5000),
(42, 36, 8, 12, '2025-01-13', 15000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategori` (`kategori`);

--
-- Indeks untuk tabel `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level` (`level_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori` (`kategori`,`supplier`),
  ADD KEY `supplier` (`supplier`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `supplier` (`supplier`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`supplier`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `produk_ibfk_2` FOREIGN KEY (`kategori`) REFERENCES `kategori` (`kategori`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
