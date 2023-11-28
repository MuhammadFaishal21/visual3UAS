-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Nov 2023 pada 12.12
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visual3`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_beli`
--

CREATE TABLE `detail_beli` (
  `id` int(10) NOT NULL,
  `obat_id` int(10) DEFAULT NULL,
  `exp_id` int(10) DEFAULT NULL,
  `qty` int(100) DEFAULT NULL,
  `beli` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_beli`
--

INSERT INTO `detail_beli` (`id`, `obat_id`, `exp_id`, `qty`, `beli`) VALUES
(1, 1, 1, 10, '2023-11-29'),
(2, 2, 2, 20, '2023-06-04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_jual`
--

CREATE TABLE `detail_jual` (
  `id` int(11) NOT NULL,
  `obat_id` int(11) DEFAULT NULL,
  `exp_id` int(11) DEFAULT NULL,
  `jumlah_terjual` varchar(255) DEFAULT NULL,
  `kostumer_id` int(11) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `harga_jual` varchar(255) DEFAULT NULL,
  `harga_beli` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_jual`
--

INSERT INTO `detail_jual` (`id`, `obat_id`, `exp_id`, `jumlah_terjual`, `kostumer_id`, `qty`, `harga_jual`, `harga_beli`) VALUES
(1, 1, 1, '100', 1, '20', 'RP5.000', 'RP2.500'),
(2, 2, 2, '50', 2, '30', 'RP3.500', 'RP1.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `exp_obat`
--

CREATE TABLE `exp_obat` (
  `id` int(11) NOT NULL,
  `tanggal_exp` varchar(50) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `obat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `exp_obat`
--

INSERT INTO `exp_obat` (`id`, `tanggal_exp`, `supplier_id`, `obat_id`) VALUES
(1, '2024-12-29', 1, 1),
(2, '2023-06-01', 2, 2),
(3, '2024-01-04', 3, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kostumer`
--

CREATE TABLE `kostumer` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nomor_telpon` varchar(12) DEFAULT NULL,
  `jenis_kelamin` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kostumer`
--

INSERT INTO `kostumer` (`id`, `nama`, `alamat`, `nomor_telpon`, `jenis_kelamin`, `email`) VALUES
(1, 'Rendyy', 'Flamboyan2', '0822521672', 'Laki-Laki', 'Laki-Laki'),
(2, 'nazmi', 'jl.menuju', '090909093', 'LAKI-LAKI', 'nazmi@gmail.com'),
(3, 'Faraf Aufa', 'JL.agung', '98049494', 'PEREMPUAN', 'AUFA@gmail');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `barkode` varchar(30) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga_jual` varchar(100) DEFAULT NULL,
  `stok_obat` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `harga_beli` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`id`, `nama`, `barkode`, `deskripsi`, `harga_jual`, `stok_obat`, `status`, `harga_beli`) VALUES
(1, 'Paracmatol', '211', 'Obat penurun panas', 'RP5.000', 50, 'Obat Ringan', 'RP2.500'),
(2, 'Paramexa', '110', 'Obat sakit ', 'RP4.500', 100, 'OBAT RINGAN', 'RP1.500'),
(3, 'Promag', '001', 'Obat maag', 'RP3.500', 40, 'OBAT RINGAN', 'RP1.000'),
(4, 'sakit gigi', '2100', 'Obat sakit gigi', 'RP5.000', 100, 'Obat Ringan', 'RP2.500');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembeli`
--

CREATE TABLE `pembeli` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `obat_id` int(11) DEFAULT NULL,
  `exp_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `beli` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembeli`
--

INSERT INTO `pembeli` (`id`, `user_id`, `obat_id`, `exp_id`, `qty`, `beli`) VALUES
(1, 1, 1, 1, 50, '2023-11-29'),
(2, 2, 2, 2, 100, '2023-05-21'),
(3, 3, 3, 3, 150, '2023-06-04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjual`
--

CREATE TABLE `penjual` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `tanggal_penjualan` date DEFAULT NULL,
  `kostumer_id` int(11) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjual`
--

INSERT INTO `penjual` (`id`, `user_id`, `tanggal_penjualan`, `kostumer_id`, `total`) VALUES
(1, 1, '2023-11-29', 1, 'RP.50.000'),
(2, 2, '2023-05-27', 2, 'RP100.000'),
(3, 3, '2023-05-25', 3, 'RP60.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `nama_pt` varchar(255) DEFAULT NULL,
  `alamat_pt` varchar(255) DEFAULT NULL,
  `nomor_telpon` varchar(12) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id`, `nama_pt`, `alamat_pt`, `nomor_telpon`, `email`) VALUES
(1, 'PT Suka Bumi', 'Jl.Agung ', '082252167221', 'PTSukabumi@gmail.com'),
(2, 'PT HUBUNGAN', 'JL.GUNUNG AGUNG', '08225252636', 'HUBUNGAN@GMAIL.COM'),
(3, 'PT  BAIK', 'JL.GUNUNG', '082252522', 'BAIK@GMAIL.COM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_user`
--

CREATE TABLE `table_user` (
  `id` int(10) NOT NULL,
  `username` char(10) DEFAULT NULL,
  `password` char(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `level` char(10) DEFAULT NULL,
  `status` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_userid` int(10) DEFAULT NULL,
  `update_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `table_user`
--

INSERT INTO `table_user` (`id`, `username`, `password`, `level`, `status`, `created_at`, `created_userid`, `update_at`) VALUES
(1, 'admin', 'admin', 'admin', 'true', '2023-11-27', 1, '2023-11-30'),
(2, 'wali', 'wali', 'wali kelas', 't', '2023-11-27', 2, '2023-11-30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `userr`
--

CREATE TABLE `userr` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `no_hp` varchar(12) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `tahun_masuk` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `userr`
--

INSERT INTO `userr` (`id`, `nama`, `email`, `no_hp`, `alamat`, `jenis_kelamin`, `tahun_masuk`) VALUES
(1, 'Faishal', 'Faishal@gmail.com', '082252173509', 'Flamboyan3', 'Laki-Laki', '2020'),
(2, 'Muji', 'chdsjbcsjd', 'Muji@gmmail.', '08225263372', 'jndjccdj', '2oi29i'),
(3, 'nazmi', 'nazmi@gmail', '090950950', 'LAKI-LAKI', 'jalan', '2021');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_beli`
--
ALTER TABLE `detail_beli`
  ADD PRIMARY KEY (`id`),
  ADD KEY `obat_id` (`obat_id`),
  ADD KEY `exp_id` (`exp_id`);

--
-- Indeks untuk tabel `detail_jual`
--
ALTER TABLE `detail_jual`
  ADD PRIMARY KEY (`id`),
  ADD KEY `obat_id` (`obat_id`),
  ADD KEY `exp_id` (`exp_id`),
  ADD KEY `kostumer_id` (`kostumer_id`);

--
-- Indeks untuk tabel `exp_obat`
--
ALTER TABLE `exp_obat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `obat_id` (`obat_id`);

--
-- Indeks untuk tabel `kostumer`
--
ALTER TABLE `kostumer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `obat_id` (`obat_id`),
  ADD KEY `exp_id` (`exp_id`);

--
-- Indeks untuk tabel `penjual`
--
ALTER TABLE `penjual`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `table_user`
--
ALTER TABLE `table_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `userr`
--
ALTER TABLE `userr`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `table_user`
--
ALTER TABLE `table_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_beli`
--
ALTER TABLE `detail_beli`
  ADD CONSTRAINT `detail_beli_ibfk_1` FOREIGN KEY (`obat_id`) REFERENCES `obat` (`id`),
  ADD CONSTRAINT `detail_beli_ibfk_2` FOREIGN KEY (`exp_id`) REFERENCES `exp_obat` (`id`);

--
-- Ketidakleluasaan untuk tabel `detail_jual`
--
ALTER TABLE `detail_jual`
  ADD CONSTRAINT `detail_jual_ibfk_1` FOREIGN KEY (`obat_id`) REFERENCES `obat` (`id`),
  ADD CONSTRAINT `detail_jual_ibfk_2` FOREIGN KEY (`exp_id`) REFERENCES `exp_obat` (`id`),
  ADD CONSTRAINT `detail_jual_ibfk_3` FOREIGN KEY (`kostumer_id`) REFERENCES `kostumer` (`id`);

--
-- Ketidakleluasaan untuk tabel `exp_obat`
--
ALTER TABLE `exp_obat`
  ADD CONSTRAINT `exp_obat_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`),
  ADD CONSTRAINT `exp_obat_ibfk_2` FOREIGN KEY (`obat_id`) REFERENCES `obat` (`id`);

--
-- Ketidakleluasaan untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD CONSTRAINT `pembeli_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userr` (`id`),
  ADD CONSTRAINT `pembeli_ibfk_2` FOREIGN KEY (`obat_id`) REFERENCES `obat` (`id`),
  ADD CONSTRAINT `pembeli_ibfk_3` FOREIGN KEY (`exp_id`) REFERENCES `exp_obat` (`id`);

--
-- Ketidakleluasaan untuk tabel `penjual`
--
ALTER TABLE `penjual`
  ADD CONSTRAINT `penjual_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userr` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
