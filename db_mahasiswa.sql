-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Jan 2023 pada 11.23
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
-- Database: `db_mahasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_agama`
--

CREATE TABLE `tab_agama` (
  `id` int(11) NOT NULL,
  `agama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tab_agama`
--

INSERT INTO `tab_agama` (`id`, `agama`) VALUES
(1, 'islam'),
(2, 'kristen'),
(3, 'protestan'),
(4, 'khatolik'),
(5, 'hindu'),
(6, 'budha'),
(7, 'khonguchu'),
(8, 'lainnya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_kelurahan`
--

CREATE TABLE `tab_kelurahan` (
  `id` int(11) NOT NULL,
  `kelurahan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tab_kelurahan`
--

INSERT INTO `tab_kelurahan` (`id`, `kelurahan`) VALUES
(1, 'Jakarta'),
(2, 'Depok'),
(3, 'Pekalongan'),
(4, 'Bandung'),
(5, 'Bekasi'),
(6, 'Jatim'),
(7, 'Jabar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_pendapatan`
--

CREATE TABLE `tab_pendapatan` (
  `id` int(11) NOT NULL,
  `pendapatan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tab_pendapatan`
--

INSERT INTO `tab_pendapatan` (`id`, `pendapatan`) VALUES
(1, '2019'),
(2, '2020'),
(3, '2021'),
(4, '2022'),
(5, '2023');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_pendidikan`
--

CREATE TABLE `tab_pendidikan` (
  `id` int(11) NOT NULL,
  `pendidikan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tab_pendidikan`
--

INSERT INTO `tab_pendidikan` (`id`, `pendidikan`) VALUES
(1, 'SMA/Sedrajat'),
(2, 'SMK/Sederajat'),
(3, 'Paket C');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_penduduk`
--

CREATE TABLE `tab_penduduk` (
  `nik` varchar(30) NOT NULL,
  `no_kk` varchar(20) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `pendidikan` int(11) DEFAULT NULL,
  `pendapatan` int(11) DEFAULT NULL,
  `Agama` int(11) DEFAULT NULL,
  `alamat_lengkap` varchar(255) DEFAULT NULL,
  `kelurahan` int(11) DEFAULT NULL,
  `penduduk_asli` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tab_penduduk`
--

INSERT INTO `tab_penduduk` (`nik`, `no_kk`, `nama_lengkap`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `pendidikan`, `pendapatan`, `Agama`, `alamat_lengkap`, `kelurahan`, `penduduk_asli`) VALUES
('12342123456', '123453454321123', 'Bagus saputra', 'Jakarta', '2023-01-13', 'Pria', 2, 3, 8, 'Pondok Gede', 6, 'Ya'),
('123454311234', '42113421211111', 'Sakura', 'Jakarta', '2023-01-26', 'Wanita', 3, 1, 8, 'Pondok Gede', 3, 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_user`
--

CREATE TABLE `tab_user` (
  `id` int(11) NOT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `created_by` varchar(15) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_by` varchar(15) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tab_user`
--

INSERT INTO `tab_user` (`id`, `username`, `password`, `lastlogin`, `created_by`, `created_at`, `update_by`, `update_at`) VALUES
(2, 'Admin', 'admin', '2023-01-31 04:13:12', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tab_agama`
--
ALTER TABLE `tab_agama`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tab_kelurahan`
--
ALTER TABLE `tab_kelurahan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tab_pendapatan`
--
ALTER TABLE `tab_pendapatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tab_pendidikan`
--
ALTER TABLE `tab_pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tab_penduduk`
--
ALTER TABLE `tab_penduduk`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `tab_user`
--
ALTER TABLE `tab_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tab_agama`
--
ALTER TABLE `tab_agama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tab_kelurahan`
--
ALTER TABLE `tab_kelurahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tab_pendapatan`
--
ALTER TABLE `tab_pendapatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tab_pendidikan`
--
ALTER TABLE `tab_pendidikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tab_user`
--
ALTER TABLE `tab_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
