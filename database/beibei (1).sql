-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2021 at 05:18 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beibei`
--

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `idpembelian` int(20) NOT NULL,
  `kodebarang` int(11) NOT NULL,
  `catatan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`idpembelian`, `kodebarang`, `catatan`, `alamat`) VALUES
(14, 6, 'jumlah 60pcs', 'semarang');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `kodebarang` int(11) NOT NULL,
  `namabarang` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`kodebarang`, `namabarang`, `harga`, `gambar`) VALUES
(1, 'black and white tanktop', 100000, '25-Women Sexy Retro Sweet Plaid Pattern Knit Crop Top.png'),
(8, 'dress summer blue', 250000, '748-15_04US-_-20_-OFF_New-summer-dress-of-2019-Korean-version-printed-chiffon-dress-with-long-style-and-.jpg'),
(9, 'white korset', 100000, '127-baju01.jpg'),
(10, 'tanktop flower', 50000, '103-Girly-soft-clothing-idea-style-fall-2021-sweet-k-pop-fashion-instagram-college.jpg'),
(11, 'croptie cardigan', 75000, '361-Instagram.jpg'),
(12, 'winter vintage set', 175000, '607-Winter-vintage-wear-aesthetic.jpg'),
(13, 'jogger pants', 75000, '551-l-o-u-i-s.jpg'),
(14, 'Formal dress', 150000, '75-Sky-Blue-Formal-Dress.jpg'),
(15, 'sweeter + midi skirt', 170000, '111-Gazelle-Sweater-_-Midi-Skirt.jpg'),
(16, 'sports set', 175000, '298-Gelato-Spirit-Corduroy-Hoodie_CJMA20M002.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) CHARACTER SET latin1 NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `level` varchar(10) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `level`) VALUES
(1, 'Admin', 'Admin', '21232f297a57a5a743894a0e4a801fc3', 'penjual'),
(9, 'tata', 'tata', '49d02d55ad10973b7b9d0dc9eba7fdf0', 'penjual'),
(10, 'jake', 'jake', '3120034651c9cb10d8041ce584bc17e1', 'pembeli'),
(11, 'tata', 'tata', '49d02d55ad10973b7b9d0dc9eba7fdf0', 'penjual'),
(12, 'myrna', 'myrna', 'a268d93cdb66e8dc96401b4fbfed2f66', 'penjual');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`idpembelian`),
  ADD KEY `kodebarang` (`kodebarang`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`kodebarang`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `idpembelian` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `kodebarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
