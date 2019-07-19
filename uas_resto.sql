-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jul 2019 pada 04.24
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_resto`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_login`
--

CREATE TABLE `tabel_login` (
  `user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `hak_akses` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_makanan`
--

CREATE TABLE `tabel_makanan` (
  `kode_makanan` varchar(20) NOT NULL,
  `nama_makanan` varchar(50) NOT NULL,
  `harga_makanan` int(50) NOT NULL,
  `satuan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_makanan`
--

INSERT INTO `tabel_makanan` (`kode_makanan`, `nama_makanan`, `harga_makanan`, `satuan`) VALUES
('01', 'Bakso', 10000, 'porsi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_minuman`
--

CREATE TABLE `tabel_minuman` (
  `kode_minuman` varchar(20) NOT NULL,
  `nama_minuman` varchar(50) NOT NULL,
  `harga_minuman` int(50) NOT NULL,
  `satuan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_minuman`
--

INSERT INTO `tabel_minuman` (`kode_minuman`, `nama_minuman`, `harga_minuman`, `satuan`) VALUES
('01', 'Jus Jeruk', 5000, 'gelas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_tambahan`
--

CREATE TABLE `tabel_tambahan` (
  `kode_tambahan` varchar(20) NOT NULL,
  `nama_tambahan` varchar(50) NOT NULL,
  `harga_tambahan` int(50) NOT NULL,
  `satuan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_makanan`
--

CREATE TABLE `transaksi_makanan` (
  `kode_transaksi` varchar(20) NOT NULL,
  `kode_makanan` varchar(20) NOT NULL,
  `nama_makanan` varchar(50) NOT NULL,
  `harga_makanan` int(50) NOT NULL,
  `total_beli` int(50) NOT NULL,
  `total_bayar` int(50) NOT NULL,
  `kembali` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi_makanan`
--

INSERT INTO `transaksi_makanan` (`kode_transaksi`, `kode_makanan`, `nama_makanan`, `harga_makanan`, `total_beli`, `total_bayar`, `kembali`) VALUES
('01', '01', 'Bakso', 10000, 20000, 30000, 10000),
('02', '02', 'soto', 4000, 20000, 30000, 10000),
('03', '01', 'Bakso', 10000, 40000, 30000, -10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_minuman`
--

CREATE TABLE `transaksi_minuman` (
  `kode_transaksi` varchar(20) NOT NULL,
  `kode_minuman` varchar(20) NOT NULL,
  `nama_minuman` varchar(50) NOT NULL,
  `harga_minuman` int(50) NOT NULL,
  `total_beli` int(50) NOT NULL,
  `total_bayar` int(50) NOT NULL,
  `kembali` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi_minuman`
--

INSERT INTO `transaksi_minuman` (`kode_transaksi`, `kode_minuman`, `nama_minuman`, `harga_minuman`, `total_beli`, `total_bayar`, `kembali`) VALUES
('01', '01', 'Jus Jeruk', 5000, 20000, 12000, -8000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_tambahan`
--

CREATE TABLE `transaksi_tambahan` (
  `kode_transaksi` varchar(20) NOT NULL,
  `kode_tambahan` varchar(20) NOT NULL,
  `nama_tambahan` varchar(50) NOT NULL,
  `harga_tambahan` int(50) NOT NULL,
  `total_beli` int(50) NOT NULL,
  `total_bayar` int(50) NOT NULL,
  `kembali` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_login`
--
ALTER TABLE `tabel_login`
  ADD PRIMARY KEY (`user`);

--
-- Indeks untuk tabel `tabel_makanan`
--
ALTER TABLE `tabel_makanan`
  ADD PRIMARY KEY (`kode_makanan`);

--
-- Indeks untuk tabel `tabel_minuman`
--
ALTER TABLE `tabel_minuman`
  ADD PRIMARY KEY (`kode_minuman`);

--
-- Indeks untuk tabel `tabel_tambahan`
--
ALTER TABLE `tabel_tambahan`
  ADD PRIMARY KEY (`kode_tambahan`);

--
-- Indeks untuk tabel `transaksi_makanan`
--
ALTER TABLE `transaksi_makanan`
  ADD PRIMARY KEY (`kode_transaksi`);

--
-- Indeks untuk tabel `transaksi_minuman`
--
ALTER TABLE `transaksi_minuman`
  ADD PRIMARY KEY (`kode_transaksi`);

--
-- Indeks untuk tabel `transaksi_tambahan`
--
ALTER TABLE `transaksi_tambahan`
  ADD PRIMARY KEY (`kode_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
