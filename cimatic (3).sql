-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2022 at 06:13 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cimatic`
--

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `ratingAge` int(11) NOT NULL,
  `tglRilis` date NOT NULL,
  `hrgSewa` int(11) NOT NULL,
  `hrgBeli` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `stat` int(11) NOT NULL,
  `poster` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `judul`, `genre`, `ratingAge`, `tglRilis`, `hrgSewa`, `hrgBeli`, `img`, `deskripsi`, `link`, `stat`, `poster`) VALUES
(1, 'The Roundup', 'Laga', 17, '2022-06-01', 26000, 134000, 'directory/roundup-teaser.jpg', 'Unit Kejahatan Besar Polisi Geumcheon diberi misi untuk memulangkan buronan yang melarikan diri ke Vietnam. Polisi garang Ma Seok Do dan Kapten Jeon Il Man secara intuitif menyadari bahwa ada yang salah dengan kesediaan tersangka untuk menyerahkan diri.', 'https://EUZIzPXkLF4', 1, 'dir/roundup-poster.jpg'),
(2, 'Rumah Kuntilanak', 'Horror', 13, '2022-06-02', 32000, 138000, 'directory/rumahkuntilanak-teaser.jpg', 'Melani, 26, hamil 2 bulan, mendatangi daerah perkebunan karet mencari suaminya. Suaminya menyebut tempat itu sebelum meninggalkan Melani. Suaminya hanya ijin beberapa hari untuk menemui seseorang yang akan memberikan dia pekerjaan.', 'https://l7MxyOG9j4A', 1, 'dir/rumahkuntilanak-poster.jpg'),
(3, 'Ngeri-Ngeri Sedap', 'Komedi', 13, '2022-06-02', 28000, 137000, 'directory/nns-teaser.jpg', 'Pak Domu dan Mak Domu yang tinggal bersama sama, ingin sekali tiga anaknya: Domu, Gabe, dan Sahat yang sudah lama merantau pulang untuk menghadiri acara adat, tetapi mereka menolak pulang karena hubungan mereka tidak harmonis dengan Pak Domu.', 'https://hi2yeRM9jcqc', 1, 'dir/nns-poster.jpg'),
(4, 'Jurassic World Dominion', 'Petualangan', 13, '2022-06-08', 40000, 142000, 'directory/jurassic-teaser.jpg', 'Empat tahun setelah kehancuran pulau Nublar, dinosaurus sekarang hidup dan berburu bersama manusia di seluruh dunia. Keseimbangan yang rapuh ini akan menentukan, apakah manusia akan tetap menjadi berada di puncak rantai makanan ketika berbagi wilayah dengan makhluk paling menakutkan dalam sejarah bumi.', 'fb5ELWi-ekk', 1, 'dir/jurassic-poster.jpg'),
(5, 'Satria Dewa Gatotkaca', 'Laga', 15, '2022-06-09', 26000, 132000, 'directory/gatotkaca-teaser.jpeg', 'Dunia dalam cerita ini sedikit berbeda ada manusia -manusia yang memiliki kemampuan jauh di atas rata-rata, diam - diam hidup di antara kita. Ada yang cerdas luar biasa, kuat tak terkira, tak pernah mengalami sakit, pendengaran setajam kelelawar, dan lain-lain. Dunia yang juga begitu mencekam, karena teror pembunuh berantai.', 'R7SjBDyaWJk', 1, 'dir/gatotkaca-poster.jpg'),
(6, 'KKN di Desa Penari', 'Horror', 17, '2022-04-30', 42000, 149000, 'directory/kkn-teaser.jpg', 'KKN Di Desa Penari diadaptasi dari salah satu cerita horror yang telah viral di tahun 2019 melalui Twitter, menurut sang penulis, cerita ini diambil dari sebuah kisah nyata sekelompok mahasiswa yang tengah melakukan program KKN (Kuliah Kerja Nyata) di Desa Penari. Tak berjalan mulus, serentetan pengalaman horror pun menghantui mereka hingga program KKN tersebut berakhir tragis.', 'jtDRXPTZT-M', 2, 'dir/kkn-poster.jpg'),
(7, 'Doctor Strange : In The Multiverse of Madness', 'Fiksi', 15, '2022-05-06', 45000, 150000, 'directory/poster-drstrange.jpg', 'Perjalanan ke tempat yang tidak diketahui bersama Doctor Strange, dengan bantuan sekutu mistis baik lama maupun baru, melintasi realitas alternatif Multiverse yang membingungkan dan berbahaya untuk menghadapi musuh baru yang misterius.', 'Rf8LAYJSOL8', 2, 'dir/teaser-drstrange.jpg'),
(8, 'Srimulat: Hil yang Mustahal ? Babak Pertama', 'Komedi', 13, '2022-05-19', 38000, 141000, 'directory/srimulat-teaser.jpg', 'Kelompok lawak Srimulat yang tengah populer di Jawa, mendadak terganggu penampilannya karena muncul pemain kendang yang lebih lucu bernama Gepeng. Tepat pada saat itu, sebuah telegram dari Ibukota datang, mengundang Srimulat tampil di TV Nasional.', '9Zx-ib7dtbg', 2, 'dir/srimulat-poster.jpg'),
(11, 'Adit Sopo Jarwo', 'Komedi', 3, '2022-04-30', 25000, 131000, 'directory/adit-teaser.jpg', 'Adit terpisah dari orang tuanya dalam perjalanan ke Jogjakarta. Perjalanan Adit menjadi petualangan yang mengajarkan arti persahabatan', '2evLc_JA9Uw', 2, 'dir/adit-poster.jpg'),
(12, 'The Batman', 'Laga', 13, '2022-05-02', 28000, 132000, 'directory/thebatman-teaser.jpg', 'Ketika Riddler, seorang pembunuh berantai yang sadis mulai membunuh tokoh-tokoh politik penting di Gotham, Batman dituntut untuk menyelidiki korupsi tersembunyi di kota itu dan mempertanyakan keterlibatan keluarganya', 'https://mqqft2x_Aa4', 2, 'dir/thebatman-poster.jpg'),
(13, 'Venom: Let There Be Carnage', 'Fiksi', 13, '2021-11-17', 37000, 128000, 'directory/venom-teaser.jpg', 'Tom Hardy kembali ke layar lebar sebagai pelindung mematikan Venom, salah satu karakter terbesar dan paling kompleks MARVEL. Untuk mencari cerita besar berikutnya, jurnalis Eddie Brock melakukan wawancara eksklusif dengan terpidana pembunuh dan terpidana mati Cletus Kasady (Woody Harrelson), yang menemukan rahasia Eddie dan menjadi pembawa acara Carnage, symbiote yang mengancam dan menakutkan.', 'V0IzT9Dy6UM', 2, 'dir/venom-poster.jpg'),
(14, 'Resident Evil: Welcome to Raccoon City', 'Horror', 17, '2021-12-28', 32000, 138000, 'directory/resident-teaser.jpg', 'Saksikan awal dari Kejahatan. Raccoon City, yang dulunya merupakan rumah booming raksasa farmasi Umbrella Corporation, sekarang menjadi kota Midwestern yang sekarat. Eksodus perusahaan membuat kota menjadi gurun? dengan kejahatan besar yang muncul di bawah permukaan. Ketika kejahatan itu dilepaskan, sekelompok orang yang selamat harus bekerja sama untuk mengungkap kebenaran di balik Payung dan berhasil melewati malam.', '4q6UGCyHZCI', 2, 'dir/resident-poster.jpg'),
(15, 'Minion: The Rise of Gru', 'Komedi', 13, '2022-07-01', 42000, 150000, 'directory/minions-teaser.jpg', 'Kisah tak terduga tentang mimpi seorang anak berusia dua belas tahun untuk menjadi penjahat super terhebat di dunia.', '6DxjJzmYsXo', 3, 'dir/minions-poster.jpg'),
(16, 'Thor : Love and Thunder', 'Fiksi', 17, '2022-07-08', 43000, 155000, 'directory/thor-teaser.jpg', 'Thor yang tengah menjalani sebuah petualangan baru ? sebuah pencarian kedamaian batin. Namun, masa pensiunnya tersebut harus terganggu oleh pembunuh dari galaksi yang dikenal sebagai Gorr the God Butcher, yang sangat mengharapkan kepunahan para dewa. ', 'wsoH9bd8JfA', 3, 'dir/thor-poster.jpg'),
(17, 'Ivanna', 'Horror', 17, '2022-07-14', 35000, 129000, 'directory/ivanna-poster.jpg', 'Sejak kematian ayah dan ibunya, Ambar dan Dika pindah ke sebuah panti jompo milik sahabat orang tua mereka dan anaknya, Agus. Ambar yang kini memiliki kemampuan untuk melihat hal-hal mistis, secara tidak sengaja mendapatkan penglihatan dari masa lalu. Dengan keselamatan seluruh penghuni panti kini terancam, Ambar dituntut untuk menyelesaikan dendam Ivanna, sebelum arwah itu merenggut nyawa mereka semua.', 'O29hLG_37qI', 3, 'dir/ivanna-teaser.jpeg'),
(18, 'The Ghost Writer 2', 'Horror', 17, '2022-07-21', 34000, 145000, 'directory/ghostw-teaser.jpg', 'Film Ghost writer mengisahkan tentang kakak beradik Naya yang baru saja pindah ke rumah baru mereka. Tak sengaja Naya menemukan sebuah buku yang menarik perhatiannya. Begitu buku itu dibuka, ide pun melintas untuk menjadikan buku itu sebagai ladang penghasilan. Dan ternyata buku itu pemiliknya sudah meninggal dengan cara yang tragis. Naya kemudian diteror oleh sang pemilik buku karena tak terima cerita di buku itu dijadikan konsumsi publik.', 'LHGixibzAEU', 3, 'dir/ghostw-poster.jpg'),
(19, 'NOPE', 'Horror', 17, '2022-07-22', 27000, 139000, 'directory/nope-teaser.jpg', 'Nope adalah film horor fiksi ilmiah Amerika yang akan datang yang ditulis, disutradarai, dan diproduksi oleh Jordan Peele di bawah panji Monkeypaw Productions-nya. Dibintangi oleh Daniel Kaluuya, Keke Palmer, dan Steven Yeun. Plot mengikuti penduduk kota terpencil yang menyaksikan peristiwa misterius dan tidak normal. ', 'In8fuzj3gck', 3, 'dir/nope-poster.jpg'),
(20, 'Hot Seat', 'Laga', 17, '2022-07-01', 29000, 129000, 'directory/hotseat-teaser.jpg', 'Seorang mantan peretas terpaksa membobol lembaga perbankan tingkat tinggi, pria lain harus mencoba menembus gedung jebakan untuk mengeluarkan pemuda itu dari kursi panas', '-YZwSzh82zU', 3, 'dir/hotseat-poster.jpg'),
(21, 'DC League of Super-Pets', 'Laga', 13, '2022-07-29', 27000, 139000, 'directory/dcteaser.jpg', 'Krypto the Super-Dog dan Superman adalah sahabat yang tak terpisahkan, berbagi kekuatan super yang sama dan memerangi kejahatan secara berdampingan di Metropolis. Namun, Krypto harus menguasai kekuatannya sendiri untuk misi penyelamatan ketika Superman diculik', 'xEbpPP-_1Ig', 3, 'dir/dcposter.jpg'),
(22, 'The Reef: Stalked', 'Thriller', 17, '2022-07-29', 36000, 149000, 'directory/thereef-teaser.jpg', 'Setelah pembunuhan saudara perempuannya, Nic, adik perempuannya, dan dua temannya mencari hiburan melalui petualangan kayak di pulau Pasifik. Beberapa jam perjalanan, para wanita dikuntit oleh hiu dan harus bersatu, menghadapi ketakutan mereka dan menyelamatkan satu sama lain.', 'XsnJJUHbi6I', 3, 'dir/thereef-poster.jpg'),
(23, 'Bullet Train', 'Thrilller', 17, '2022-07-01', 34000, 139000, 'directory/bullettrain-teaser.png', 'Lima pembunuh di atas kereta peluru yang bergerak cepat mengetahui bahwa misi mereka memiliki kesamaan.', 'EGeJczJvWns', 3, 'dir/bullettrain-poster.jpg'),
(24, 'Most Guys are Losers', 'Komedi', 17, '2022-07-01', 24000, 125000, 'directory/mostguys-teaser.jpg', 'Selama akhir pekan Thanksgiving di Chicago, seorang mahasiswa dari California meminta persetujuan dari ayah pacarnya, seorang pemilik bar dan penulis buku kencan berjudul, \"Kebanyakan Pria adalah Pecundang.\"', 'h-gAMb2XMeas', 3, 'dir/mostguys-poster.jpg'),
(100, 'Dr Strange: Madness in The Multiverse', 'Horror', 17, '2022-06-28', 123, 234, 'directory/adit-teaser.jpg', 'vfe', 'https://www.youtube.com/watch?v=Rt_UqUm38BI', 1, 'dir/adit-poster.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `idUser` int(11) NOT NULL,
  `idFilm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`idUser`, `idFilm`) VALUES
(2, 1),
(2, 7),
(2, 11);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idFilm` int(11) NOT NULL,
  `tglBeli` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id`, `idUser`, `idFilm`, `tglBeli`, `harga`) VALUES
(3, 2, 1, 2022, 134000),
(4, 2, 7, 2022, 150000),
(5, 2, 11, 2022, 131000);

-- --------------------------------------------------------

--
-- Table structure for table `penyewaan`
--

CREATE TABLE `penyewaan` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idFilm` int(11) NOT NULL,
  `tglSewa` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penyewaan`
--

INSERT INTO `penyewaan` (`id`, `idUser`, `idFilm`, `tglSewa`, `harga`) VALUES
(1, 2, 11, 2022, 25000),
(2, 3, 6, 2022, 42000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(25) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstName`, `lastName`, `username`, `password`, `email`, `level`) VALUES
(1, 'Nanda', 'Shabrina', 'nandaashabri', 'c20ad4d76fe97759aa27a0c99bff6710', 'shabrina2604@gmail.com', 'user'),
(2, 'Fitrah', 'Rahmadhani', 'Fitrah', 'c20ad4d76fe97759aa27a0c99bff6710', 'shabrina2604@gmail.com', 'user'),
(3, 'Halim', 'Teguh', 'Halim', 'c20ad4d76fe97759aa27a0c99bff6710', 'shabrina2604@gmail.com', 'user'),
(4, 'violet', 'as', 'vi', 'c20ad4d76fe97759aa27a0c99bff6710', 'violet@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `idWishlist` int(11) NOT NULL,
  `idFilm` int(11) NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`idWishlist`, `idFilm`, `idUser`) VALUES
(1, 19, 2),
(2, 15, 3),
(3, 16, 3),
(6, 7, 2),
(7, 8, 2),
(8, 11, 2),
(9, 17, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`idUser`,`idFilm`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penyewaan`
--
ALTER TABLE `penyewaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`idWishlist`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `penyewaan`
--
ALTER TABLE `penyewaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `idWishlist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
