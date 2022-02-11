-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Feb 2022 pada 00.59
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kost`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('wati', 'wati');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hunian`
--

CREATE TABLE `hunian` (
  `id_hunian` int(15) NOT NULL,
  `nama_hunian` varchar(100) NOT NULL,
  `jenis_hunian` varchar(100) NOT NULL,
  `deskripsi_hunian` text NOT NULL,
  `status_hunian` varchar(100) NOT NULL,
  `harga_hunian` int(15) NOT NULL,
  `gambar` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `hunian`
--

INSERT INTO `hunian` (`id_hunian`, `nama_hunian`, `jenis_hunian`, `deskripsi_hunian`, `status_hunian`, `harga_hunian`, `gambar`) VALUES
(14, 'Kost Brown One', 'Kost', 'Kasur, bantal, lemari, WC, kipas angin', 'Sold Out', 1000000, '1511009066.jpg'),
(16, 'Kontrakan Brown Two', 'Kontrakan', '2 Kamar tidur, 1 dapur, 1 kamar mandi, 1 ruang tamu, tempat parkiran, ', 'Available', 1000000, '1511009330.jpg'),
(17, 'Kost Grey One', 'Kost', 'Kasur, bantal, lemari, WC, kipas angin', 'Available', 1250000, '1511009552.jpg'),
(18, 'Kontrakan Grey Two', 'Kontrakan', '2 Kamar tidur  + AC, 1 dapur, 1 kamar mandi, 1 ruang tamu', 'Available', 1500000, '1511009651.jpg'),
(19, 'Kost White One', 'Kost', 'Kasur, bantal, lemari, WC, kipas angin', 'Sold Out', 1300000, '1511009877.jpg'),
(20, 'Kontrakan White Two', 'Kontrakan', '2 Kamar tidur + AC, 1 dapur, 1 kamar mandi, 1 ruang tamu', 'Available', 1500000, '1511009941.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komplain`
--

CREATE TABLE `komplain` (
  `id_komplain` int(15) NOT NULL,
  `id_member` int(15) NOT NULL,
  `id_hunian` int(15) NOT NULL,
  `perihal` varchar(100) NOT NULL,
  `isi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `komplain`
--

INSERT INTO `komplain` (`id_komplain`, `id_member`, `id_hunian`, `perihal`, `isi`) VALUES
(8, 13, 14, 'Keran Air', 'Keran air rusak dan bocor kemana mana airnya'),
(9, 11, 16, 'Kerusakan Lain', 'Pintu kamar mandi tidak bisa ditutup'),
(10, 12, 17, 'Air', 'Debit airnya kecil sekali'),
(11, 13, 14, 'Food', 'Ayam Goreng pedes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(15) NOT NULL,
  `nama_member` varchar(200) NOT NULL,
  `pass_member` varchar(200) NOT NULL,
  `email_member` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `nohp` varchar(200) NOT NULL,
  `alamat_member` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nama_member`, `pass_member`, `email_member`, `status`, `nohp`, `alamat_member`) VALUES
(11, 'Risya Listya Rizalni', '12345', 'risya15ti@mahasiswa.pcr.ac.id', 'Mahasiswa', '081285639975', 'Dumai'),
(12, 'Sri Indah Anggraeny', '11111', 'sri15ti@mahasiswa.pcr.ac.id', 'Mahasiswa', '08121987654', 'Bukit Kerikil'),
(13, 'ai', 'ai', 'aiwidasukmawatiazzahra123@gmail.com', 'Mahasiswa', '089695716272', 'Cirebon');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(15) NOT NULL,
  `id_hunian` int(15) NOT NULL,
  `id_member` int(15) NOT NULL,
  `tanggal_mulai` varchar(100) NOT NULL,
  `durasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`id_pesan`, `id_hunian`, `id_member`, `tanggal_mulai`, `durasi`) VALUES
(18, 14, 13, '2022-02-10', '1 Tahun'),
(19, 16, 11, '2022-02-07', '6 Bulan'),
(20, 17, 12, '2022-02-01', '3 Bulan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sewa`
--

CREATE TABLE `sewa` (
  `id_sewa` int(15) NOT NULL,
  `id_member` int(15) NOT NULL,
  `id_hunian` int(15) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `nominal` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `bulan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sewa`
--

INSERT INTO `sewa` (`id_sewa`, `id_member`, `id_hunian`, `tanggal`, `nominal`, `gambar`, `status`, `bulan`) VALUES
(2, 13, 14, '2022-02-10', '1000000', '', 'LUNAS', 'Februari'),
(3, 11, 16, '2022-02-07', '500000', '', 'BELUM LUNAS', 'Februari'),
(4, 12, 17, '2022-02-01', '1000000', '', 'BELUM LUNAS', 'Februari');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `hunian`
--
ALTER TABLE `hunian`
  ADD PRIMARY KEY (`id_hunian`);

--
-- Indeks untuk tabel `komplain`
--
ALTER TABLE `komplain`
  ADD PRIMARY KEY (`id_komplain`),
  ADD KEY `id_member` (`id_member`,`id_hunian`),
  ADD KEY `id_hunian` (`id_hunian`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`),
  ADD KEY `id_hunian` (`id_hunian`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_hunian_2` (`id_hunian`,`id_member`);

--
-- Indeks untuk tabel `sewa`
--
ALTER TABLE `sewa`
  ADD PRIMARY KEY (`id_sewa`),
  ADD KEY `id_member` (`id_member`,`id_hunian`),
  ADD KEY `id_hunian` (`id_hunian`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `hunian`
--
ALTER TABLE `hunian`
  MODIFY `id_hunian` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `komplain`
--
ALTER TABLE `komplain`
  MODIFY `id_komplain` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `sewa`
--
ALTER TABLE `sewa`
  MODIFY `id_sewa` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `komplain`
--
ALTER TABLE `komplain`
  ADD CONSTRAINT `komplain_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komplain_ibfk_2` FOREIGN KEY (`id_hunian`) REFERENCES `hunian` (`id_hunian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD CONSTRAINT `pesan_ibfk_1` FOREIGN KEY (`id_hunian`) REFERENCES `hunian` (`id_hunian`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesan_ibfk_2` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sewa`
--
ALTER TABLE `sewa`
  ADD CONSTRAINT `sewa_ibfk_1` FOREIGN KEY (`id_hunian`) REFERENCES `hunian` (`id_hunian`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sewa_ibfk_2` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
