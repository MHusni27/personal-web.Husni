-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jun 2025 pada 10.08
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `personalweb_muhammadhusni_d1a240048`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_lengkap`, `username`, `password`) VALUES
(1, 'arif', 'admin', '$2y$10$jlhMXzpEbEmlf2EBdcrM2u1pJ7dVI.gUjn79/mzvRoekz3ciCuwti'),
(2, 'cunay', 'karyawan', '$2y$10$IvTrGpusHxavNyTStO1oU.kUPCIt7VLOE70FsgTCRwMpT7wOxDL6q'),
(3, 'cunay', 'cunay', '$2y$10$fF5u1RYpxURwtecKrNcXy.l04m0V5wAvsQraOeF30n4qsm/zgykky'),
(4, 'udin', 'udin', '$2y$10$ZY9UD8OFgD3JQBlMIDTNEOHz/YMKlzUapE4PKGI1FU/lPXbJbbNOi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_about`
--

CREATE TABLE `tbl_about` (
  `id_about` int(2) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_about`
--

INSERT INTO `tbl_about` (`id_about`, `about`) VALUES
(1, 'Nama saya Muhammad Husni. Saya adalah seorang mahasiswa yang sedang menempuh pendidikan di bidang Teknologi Informasi. \r\n\r\nSaya memiliki minat besar dalam pengembangan web, desain antarmuka pengguna (UI/UX), serta keamanan siber. Saya juga aktif mengikuti berbagai kegiatan organisasi dan seminar teknologi.\r\n\r\nSaat ini, saya sedang belajar mengembangkan sistem informasi berbasis web menggunakan PHP dan MySQL, serta memperdalam framework seperti Laravel dan Tailwind CSS.\r\n\r\nTujuan saya adalah menjadi seorang developer profesional yang mampu menciptakan solusi digital yang bermanfaat bagi masyarakat.\r\n\r\nSilakan hubungi saya melalui email: mubarokmhus27@gmail.com atau melalui media sosial saya di @queitnay\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_artikel`
--

CREATE TABLE `tbl_artikel` (
  `id_artikel` int(5) NOT NULL,
  `nama_artikel` text NOT NULL,
  `isi_artikel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_artikel`
--

INSERT INTO `tbl_artikel` (`id_artikel`, `nama_artikel`, `isi_artikel`) VALUES
(1, 'Gunung Rinjani: Mahakarya Alam dari Pulau Lombok', 'Pendahuluan\r\nGunung Rinjani adalah salah satu gunung berapi paling terkenal di Indonesia, terletak di Pulau Lombok, Nusa Tenggara Barat. Dengan ketinggian 3.726 meter di atas permukaan laut, Rinjani merupakan gunung tertinggi kedua di Indonesia setelah Gunung Kerinci di Sumatera. Gunung ini tidak hanya menjadi destinasi pendakian favorit, tetapi juga memiliki nilai budaya dan ekologis yang tinggi.\r\n\r\nKarakteristik Gunung Rinjani\r\nGunung Rinjani merupakan bagian dari Taman Nasional Gunung Rinjani yang mencakup area seluas sekitar 41.330 hektare. Di puncaknya terdapat sebuah kaldera besar yang di dalamnya terdapat Danau Segara Anak, danau kawah yang indah dengan air berwarna biru kehijauan. Di tengah danau ini berdiri Gunung Barujari, sebuah kerucut kecil yang masih aktif dan sering mengalami erupsi.\r\n\r\nAsal Usul Nama dan Sejarah\r\nNama “Rinjani” dipercaya berasal dari kata dalam bahasa Sasak yang berarti \"perempuan suci\". Gunung ini memiliki tempat penting dalam legenda dan kepercayaan masyarakat lokal, termasuk sebagai tempat spiritual bagi sebagian penganut agama Hindu dan Islam Wetu Telu di Lombok.\r\n\r\nKeunikan dan Daya Tarik\r\nDanau Segara Anak: Salah satu danau tertinggi di Indonesia yang menjadi daya tarik utama bagi para pendaki. Di sekitar danau terdapat sumber air panas alami.\r\n\r\nGunung Barujari: Gunung kecil yang aktif di tengah danau, menciptakan lanskap yang sangat unik.\r\n\r\nFlora dan Fauna: Hutan di kawasan Rinjani dihuni berbagai jenis satwa seperti rusa, kera hitam, burung elang, dan aneka tumbuhan endemik.\r\n\r\nPemandangan Matahari Terbit: Puncak Rinjani menawarkan pemandangan matahari terbit yang sangat memukau, bahkan hingga bisa melihat Gunung Agung di Bali.\r\n\r\nAktivitas Pendakian\r\nPendakian Gunung Rinjani dapat dilakukan dari beberapa jalur, antara lain:\r\n\r\nJalur Sembalun: Lebih mudah tapi lebih panjang dan terbuka.\r\n\r\nJalur Senaru: Lebih curam, tapi melalui hutan yang sejuk.\r\nPendakian umumnya memakan waktu 2–4 hari tergantung rute dan tujuan pendakian (puncak, danau, atau hanya sebagian).\r\n\r\nKonservasi dan Ancaman\r\nSebagai taman nasional, Gunung Rinjani dilindungi oleh pemerintah. Namun, kegiatan pariwisata yang tidak bertanggung jawab seperti sampah dan kerusakan jalur menjadi ancaman bagi kelestariannya. Oleh karena itu, para pendaki dihimbau untuk selalu menjaga kebersihan dan menghormati aturan yang berlaku.'),
(2, 'Gunung Bromo: Keindahan Alam dan Budaya di Jawa Timur', 'Pendahuluan\r\nGunung Bromo adalah salah satu gunung berapi paling terkenal di Indonesia. Terletak di kawasan Taman Nasional Bromo Tengger Semeru, Jawa Timur, gunung ini memiliki ketinggian 2.329 meter di atas permukaan laut. Meskipun tidak terlalu tinggi dibandingkan gunung-gunung lainnya di Indonesia, Bromo tetap menjadi primadona wisata karena pemandangan alamnya yang unik dan budaya lokal yang kental.\r\n\r\nAsal Usul Nama dan Legenda\r\nNama \"Bromo\" berasal dari kata \"Brahma\", salah satu dewa utama dalam kepercayaan Hindu. Menurut legenda masyarakat Tengger, Gunung Bromo merupakan tempat suci yang terkait dengan kisah Roro Anteng dan Joko Seger. Pasangan ini dianggap sebagai leluhur suku Tengger. Mereka dipercaya mengadakan upacara persembahan untuk menghormati dewa-dewa agar diberi keturunan, yang menjadi cikal bakal tradisi Yadnya Kasada.\r\n\r\nKarakteristik Gunung Bromo\r\nGunung Bromo terletak di kaldera luas berpasir yang disebut Lautan Pasir Tengger, seluas sekitar 10 km persegi. Kaldera ini dikelilingi oleh dinding kaldera tinggi, menciptakan lanskap mirip dunia lain yang eksotis dan sangat fotogenik.\r\n\r\nDi tengah Lautan Pasir berdiri Gunung Bromo dengan kawah aktif berdiameter sekitar 800 meter. Asap putih yang terus mengepul dari kawah menjadi pemandangan khas Bromo.\r\n\r\nDaya Tarik Wisata\r\nPemandangan Matahari Terbit (Sunrise)\r\nSalah satu daya tarik utama adalah menyaksikan matahari terbit dari Puncak Penanjakan. Dari sini, pengunjung bisa melihat pemandangan deretan gunung: Bromo, Batok, dan Semeru dengan kabut tipis yang menyelimuti lautan pasir.\r\n\r\nKawah Bromo\r\nWisatawan bisa mendaki hingga ke bibir kawah Gunung Bromo dengan berjalan kaki atau naik kuda. Pemandangan dari atas sangat menakjubkan, tetapi harus tetap berhati-hati karena tepinya curam.\r\n\r\nLautan Pasir dan Bukit Teletubbies\r\nHamparan pasir vulkanik yang luas menciptakan suasana mirip gurun. Di sebelahnya terdapat padang rumput hijau bergelombang yang disebut Bukit Teletubbies.\r\n\r\nUpacara Adat Yadnya Kasada\r\nSetiap tahun, masyarakat suku Tengger mengadakan Upacara Yadnya Kasada, sebuah ritual keagamaan Hindu di mana sesajen berupa hasil bumi, ternak, dan makanan dilemparkan ke kawah Bromo sebagai bentuk persembahan kepada Sang Hyang Widhi dan leluhur.\r\n\r\nUpacara ini menunjukkan betapa Gunung Bromo bukan hanya objek wisata, tetapi juga pusat spiritual dan budaya yang penting.\r\n\r\nKonservasi dan Pengelolaan\r\nGunung Bromo berada dalam wilayah Taman Nasional Bromo Tengger Semeru. Pemerintah dan masyarakat setempat bekerja sama menjaga ekosistem di kawasan ini. Namun, meningkatnya jumlah wisatawan juga membawa tantangan berupa sampah dan kerusakan lingkungan, sehingga perlu pengelolaan yang berkelanjutan.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id_gallery` int(5) NOT NULL,
  `judul` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id_gallery`, `judul`, `foto`) VALUES
(1, 'Gunung Rinjani: Mahakarya Alam dari Pulau Lombok', 'mount-rinjani-sunrise-peak-lombok-indonesia-52677626.webp'),
(2, 'Gunung Bromo: Keindahan Alam dan Budaya di Jawa Timur', '1000_F_439886542_RcpDpGPXRdjc0SRt7fROsf8ks8r3cgrt.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`username`, `password`, `id_user`) VALUES
('15', '15', 1),
('admin', 'admin', 2),
('admin', 'admin', 3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `tbl_about`
--
ALTER TABLE `tbl_about`
  ADD PRIMARY KEY (`id_about`);

--
-- Indeks untuk tabel `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indeks untuk tabel `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indeks untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_about`
--
ALTER TABLE `tbl_about`
  MODIFY `id_about` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  MODIFY `id_artikel` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id_gallery` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
