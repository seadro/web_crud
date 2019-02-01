-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2018 at 04:52 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u242847602_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(40) NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `username`, `password`, `email`, `level`) VALUES
(1, 'admin', 'admin', 'admin', 1),
(5, 'messi', 'barcelona', 'messil@yaho.com', 2),
(6, 'adiputro', '123456', 'adi', 2);

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tag` varchar(20) NOT NULL,
  `penulis` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `gambar`, `isi`, `waktu`, `tag`, `penulis`) VALUES
(38, 'Peran Seorang Gelandang pada sepakbola', '1.jpg', 'Gelandang box to box melakukan hal berikut: menciptakan peluang bagi striker dan menghentikan serangan lawan. Stamina, kemampuan teknis, dan kerja keras tanpa henti adalah atribut dari jenis gelandang. Steven Gerrard adalah gelandang box-to-box terbaik di masanya.\r\n\r\nGelandang serang tersebut adalah pemain lini tengah mutakhir yang terutama cenderung menyerang. Dia harus memiliki kemampuan kontrol bola yang bagus dan kesadaran taktis.\r\n\r\nSeorang playmaker menempati posisi yang sama dengan gelandang serang tapi melakukan peran berbeda. Orang ini dianggap otak tim, pemain paling terampil yang mengatur serangan dan mendistribusikan bola. Seorang playmaker harus pandai dalam membuat keputusan dan seperti yang dikatakan sepak bola: ketika Anda tidak tahu apa yang harus dilakukan dengan bola, Anda menyebarkannya kepadanya.', '2018-01-04 15:22:49', 'BLOG', 'admin'),
(39, 'Giovanni van Bronckhorst Sudah Pemanasan', '2.jpg', 'Giovanni van Bronckhorst dipercaya menjadi pelatih tim utama Feyenoord Rotterdam. Pemain legendaris Belanda keturunan Indonesia ini merasa terhormat mendapat kepercayaan menggantikan Fred Rutten yang meletakkan jabatan per akhir musim ini. Dengan penunjukkan ini penulis menduga, Giovanni sudah mulai meracik strategi.\r\nVan Brockhorst menandatangani kontrak dua tahun di de Kuip sampai Juni 2017. Dia didampingi asisten Jean-Paul van Gastel dan seorang pelatih senior yang masih akan diumumkan. Giovanni sendiri menyatakan bangga mendapat kesempatan ini. â€œSaya bangga dipercaya oleh klub, tempat saya memulai sepakbola usia 8 tahun dan menempuh karir panjang, sekarang bisa kembali di sini sebagai pelatih utama.â€,\r\n\r\nEka Tanjung  membaca berbagai tanggapan di media Belanda. Ada yang positif ada pula yang masih meragukan. Keraguan itu muncul karena pelatih keturunan Maluku itu belum punya pengalaman sebagai pelatih tim utama di liga tertinggi Belanda. Selama ini dia pernah menjadi pelatih Jong Feyenoord, tim yang biasa disebut U23.\r\n\r\nGio sendiri menyatakan siap menghadapi tantangan baru, setelah mengasisteni pelatih, Ronald Koeman dan Fred Rutten di Feyenoord, tahun-tahun belakangan ini.\r\n\r\nâ€œKetika menjadi asisten, saya mendapat banyak pelajaran dari Ronald Koeman maupun Fred Rutten. Saat ini saya mendapat tantangan selanjutnya yang fantastis, saya sudah tidak sabar menanti,â€ ungkap Giovanni dikutip kotan de Telegraaf. Selanjutnya Gio menilai bahwa kepastian ini berdampak baik bagi klub .\r\n\r\nâ€œBagus, klub sudah memberi kepastian untuk musim depan. Sekarang kami,  Jean-Paul, saya dan Fred Rutten terus berusaha maksimal untuk mengakhiri musim ini sebaik mungkin.â€\r\n\r\nEka Tanjung menilai bahwa Giovanni van Bronckhorst sudah mulai meracik strateginya mulai 05 April 2015 ketika Feyenoord main tandang ke AZ Alkmaar. Bahkan tidak heran jika kemenangan Feyenoord atas PSV Eindhoven 2-1 pekan lalu sudah menjadi bagian dari porsie Gio. Dengan melakukan â€˜pemanasan iniâ€™  maka, minim pengalaman sebagai pelatih sudah mulai bisa dijembatani. Semoga Giovanni sukses bersama Feyenoord.', '2018-01-04 15:25:06', 'BLOG', 'admin'),
(40, 'Profil Diego Michiels Lengkap', '3.jpg', 'Diego Michiels (lahir di Deventer, Belanda, 8 Agustus 1990; umur 22 tahun) adalah bek Go Ahead Eagles yang sedang dipinjamkan ke Pelita Jaya Jawa Barat dan saat ini sudah selesai dalam proses naturalisasi untuk bermain di Tim nasional U-23 Indonesia namun kini secara mengejutkan Diego Michiels bermain untuk Persija Jakarta [1]. Diego meniti karir bola di klub amatir, RDC Deventer, kemudian direkrut Go Ahead Eagles untuk tim junior. Penampilan perdana sebagai starter 11 pada 20 November 2009 lawan MVV.\r\n\r\n\r\nNama Lengkap : Diego Michiels\r\nTempat Lahir : Deventer, Belanda\r\nTanggal Lahir : 8 Agustus 1990\r\nUmur : 22 Tahun\r\nKlub Saat ini : Persija Jakarta\r\nPosisi : Bek Sayap\r\nTinggi Badan : 1.80 m\r\nNomor punggung : 24\r\n\r\n\r\nDiego Michiels adalah pemain keturunan Indonesia â€“ Belanda. Ayahnya, Robbie Michiels, berasal dari Jakarta dan pernah menetap di Hollandia/Jayapura sampai tahun 1962. Diego juga masih memiliki darah Timor yang diturunkan dari neneknya. Sedangkan sang ibu, Annet Kloppenburg adalah warga negara Belanda. Saat ini Diego berada dalam tahanan Polres Tanah Abang, sehubungan dengan pemukulan yang dilakukannya (bersama 3 Ambon) terhadap MP. Pemain yang saat ini tercatat memperkuat Persija Jakarta di ajang liga domestik memiliki kesempatan besar untuk bersinar mengingat usianya yang masih muda', '2018-01-04 15:26:35', 'BLOG', 'admin'),
(41, 'Biografi Ricardo Kaka Lengkap', '4.jpg', 'Ricardo Izecson dos Santos Leite (lahir di BrasÃ­lia, 22 April 1982; umur 30 tahun), lebih dikenal dengan nama KakÃ¡, adalah seorang pemain sepak bola asal Brasil yang kini membela klub Real Madrid (bergabung tahun 2009; sebelumnya pada 2003-2009 di A.C. Milan). KakÃ¡ umumnya bermain di posisi gelandang serang ataupun penyerang. Ia dikenal mempunyai dribble yang sangat baik serta umpan-umpan yang akurat. Tinggi badannya ialah 186 cm. KakÃ¡ menikah dengan Caroline Celico pada 23 Desember 2005 di sebuah gereja di SÃ£o Paulo, Brasil.\r\n\r\n-\r\nNama Lengkap : Ricardo Izecson dos Santos Leite\r\nNama Panggilan : Ricardo Kaka\r\nTanggal Lahir : 22 April 1982\r\nTempat Lahir : BrasÃ­lia, Brasil\r\nTinggi Badan : 1.86 m\r\nNomor Punggung : 8\r\nKlub Saat ini : Real Madrid\r\nKebangsaan : Brasil\r\n-\r\nPada 2006, Real Madrid menunjukkan ketertarikannya menggaet bintang 25 tahun ini, tetapi Milan dan KakÃ¡ menolak untuk menjual. KakÃ¡ telah menandatangani perpanjangan kontrak dengan Milan hingga 2011. Pada 1 November 2006, AC Milan lolos babak penyisihan Piala/Liga Champions setelah KakÃ¡ membuat tiga gol yang membantu timnya menang 4-1 melawan R.S.C. Anderlecht. Ini adalah tiga gol keduanya di Milan dan tiga gol pertamanya di kompetisi Eropa. Kemudian pada tanggal 8 Juni 2009, KakÃ¡ bergabung dengan Real Madrid dengan kontrak 6 tahun, dengan nilai transfer yang diperkirakan sekitar 65 Juta Poundsterling.\r\n\r\nSampai saat ini, Kaka masih menjadi pemain Real Madrid. Di Timnas Brasil, Kaka sendiri sudah bergabung sejak tahun 2002, itulah Biografi Ricardo Kaka Lengkap dan sekilas perjalanan karir nya.', '2018-01-04 15:28:20', 'BIO PEMAIN', 'admin'),
(42, 'Profil Klub Liverpool FC Lengkap', '5.png', 'Liverpool FC, walaupun belakangan ini mereka â€˜puasaâ€™ gelar namun nama besar mereka tetap berjaya, Liverpool dulunya sempat berada di masa kejayaan mereka bahkan hingga berturut turut menjuarai Liga Inggris. Sayang, belakangan ini ada yang salah dengan klub yang di juluku â€˜Si Merahâ€™ atau The Reds itu, mereka puasa gelar, walau pun sempat memenangkan liga champions di tahun 2005. Di Indonesia sendiri, Liverpool FC memiliki banyak fans, karena klub ini memang memiliki daya tarik tersendiri, dan jika anda salah satu penggemar The Reds, berikut Profil Lengkap Liverpool FC serta skuad dan gelar yang pernah mereka raih.\r\n\r\nNama Klub : Liverpool F.C (Liverpool)\r\nJulukan Klub : â€“ The Reds (Si Merah)\r\nTanggal Berdiri : 15 Maret 1892\r\nStadion Klub : Anfiel Stadion\r\nLokasi Stadion : Liverpool, Inggris\r\nKapasitas : 45.276\r\nPemilik Klub : John W. Henry dan Tom Werner\r\nKetua Klub : Tom werner\r\nPelatih Klub : Brendan Rodgers\r\nLiga : Liga Premiere Inggris\r\nKostum : Merah (Home), Hitam Abu (Away), Abu Putih(ketiga)\r\n\r\nSkuad Liverpool FC 2012/2013 :\r\n\r\n1 GK Brad Jones\r\n2 DF Glen Johnson\r\n3 DF JosÃ© Enrique\r\n5 DF Daniel Agger\r\n7 FW Luis SuÃ¡rez\r\n8 MF Steven Gerrard (kapten)\r\n10 MF Joe Cole\r\n11 MF Oussama Assaidi\r\n12 MF Daniel Pacheco\r\n14 MF Jordan Henderson\r\n15 FW Daniel Sturridge\r\n16 DF SebastiÃ¡n Coates\r\n19 MF Stewart Downing\r\n21 MF Lucas Leiva\r\n22 DF Danny Wilson\r\n23 DF Jamie Carragher (wakil kapten)\r\n24 MF Joe Allen\r\n25 GK Pepe Reina\r\n29 FW Fabio Borini\r\n30 MF Suso\r\n31 MF Raheem Sterling\r\n32 GK Doni\r\n33 MF Jonjo Shelvey\r\n34 DF Martin Kelly\r\n35 DF Conor Coady\r\n36 FW Samed YeÅŸil\r\n37 DF Martin Å krtel\r\n38 DF Jon Flanagan\r\n42 GK PÃ©ter GulÃ¡csi\r\n43 DF Ryan McLaughlin\r\n45 DF Stephen Sama\r\n47 DF Andre Wisdom\r\n48 FW Jerome Sinclair\r\n49 DF Jack Robinson\r\n50 FW Adam Morgan\r\n52 GK Danny Ward\r\n\r\nGelar Liverpool FC\r\n\r\nLiga Utama Inggris[ket 1] : Juara (18)[ket 2]\r\n1900â€“01, 1905â€“06, 1921â€“22, 1922â€“23, 1946â€“47, 1963â€“64, 1965â€“66, 1972â€“73, 1975â€“76, 1976â€“77, 1978â€“79, 1979â€“80, 1981â€“82, 1982â€“83, 1983â€“84, 1985â€“86, 1987â€“88, 1989â€“90\r\nLiga Championship Inggris: Juara (4)\r\n1893â€“94, 1895â€“96, 1904â€“05, 1961â€“62\r\nLiga Lancashire : Juara (1)\r\n1892â€“93\r\nLiga Champions UEFA : Juara (5)\r\n\r\nLiga Eropa UEFA : Juara (3)\r\n1972â€“73, 1975â€“76, 2000â€“01\r\nPiala FA : Juara (7)\r\n1964â€“65, 1973â€“74, 1985â€“86, 1988â€“89, 1991â€“92, 2000â€“2001, 2005â€“2006\r\nPiala Remaja FA : Juara (2)\r\n1995â€“96, 2006â€“07\r\nPiala Liga : Juara (8)\r\n1980â€“81, 1981â€“82, 1982â€“83, 1983â€“84, 1994â€“95, 2000â€“01, 2002â€“03, 2011â€“12\r\nCharity Shield : Juara (15)\r\n1963â€“64, 1964â€“65[ket 6], 1965â€“66, 1973â€“74, 1975â€“76, 1976â€“77[ket 6], 1978â€“79, 1979â€“80, 1981â€“82, 1985â€“86[ket 6], 1987â€“88, 1988â€“89, 1989â€“90[ket 6], 2000â€“01, 2005â€“06[ket 6]\r\nPiala Super Eropa : Juara (3)\r\n1977, 2001, 2005\r\nPiala Super : Juara (1)\r\n1985â€“86\r\nDivisi Satu untuk Cadangan : Juara (16)\r\n1956â€“57, 1968â€“69, 1969â€“70, 1970â€“71, 1972â€“73, 1973â€“74, 1974â€“75, 1975â€“76, 1976â€“77, 1978â€“79, 1980â€“81, 1981â€“82, 1983â€“84, 1984â€“85, 1989â€“90, 1999â€“2000', '2018-01-04 15:29:40', 'BIO KLUB', 'admin'),
(43, 'Profil Klub Real Madrid Lengkap', '6.gif', 'Real Madrid FC, siapa yang tak kenal dengan klub yang satu ini, klub yang seakan selalu digandrungi pemain pemain bintang kelas dunia, bahkan termasuk para pelatih handal, staff dan juga agent nya. Real Madrid termasuk salah satu klub terbaik dunia dengan banyak prestasi dan rekor yang mereka ukir, para pemain nya saja sampai sanggup mencatat rekor pribadi untuk El Real. Klub ini bermarkas di Santiago bernabeu, Kota Madrid, Spanyol dan mereka adalah rival besar dari Barcelona FC. Bagi anda para penggemar Los Blancos (julukan untuk real madrid) berikut Profil Lengkap Klub Real Madrid FC.\r\n\r\nNama lengkap Klub : Real Madrid Club de FÃºtbol (Real Madrid F.C)\r\nTanggal berdiri : 6 Maret 1902\r\nJulukan : â€“ Los Blancos\r\nâ€“ El Real\r\nStadion Kebanggaan : Santiago Bernabeu\r\nLokasi Stadion : Madrid, Spanyol\r\nKapasitas Stadion : 81.254\r\nKetua Klub : Florentino PÃ©rez\r\nManajer/pelatih klub: Jose Mourinho\r\nBermain di : La Liga Spanyol\r\nSitus Resmi : http://www.realmadrid.com\r\n\r\nSkuad Real Madrid 2012/2013 :\r\n\r\n1 GK Iker Casillas (Kapten)\r\n2 DF RaphaÃ«l Varane\r\n3 DF Pepe\r\n4 DF Sergio Ramos (wakil kapten)\r\n5 DF FÃ¡bio CoentrÃ£o\r\n6 Sami Khedira\r\n7 FW Cristiano Ronaldo\r\n8 KakÃ¡\r\n9 FW Karim Benzema\r\n10 Mesut Ã–zil\r\n12 Marcelo (wakil kapten)\r\n13 GK Antonio AdÃ¡n\r\n14 MF Xabi Alonso\r\n15 MF Michael Essien (dipinjam dari Chelsea)\r\n16 DF Ricardo Carvalho\r\n17 DF Ãlvaro Arbeloa\r\n18 DF RaÃºl Albiol\r\n19 MF Luka ModriÄ‡\r\n20 FW Gonzalo HiguaÃ­n (wakil kapten)\r\n21 MF JosÃ© MarÃ­a CallejÃ³n\r\n22 MF Ãngel di MarÃ­a\r\n27 DF Nacho\r\n29 FW Ãlvaro Morata\r\n35 GK JesÃºs FernÃ¡ndez\r\n\r\nGelar Real Madrid :\r\n\r\nLa Liga\r\nJuara (32): 1931â€“32, 1932â€“33, 1953â€“54, 1954â€“55, 1956â€“57, 1957â€“58, 1960â€“61, 1961â€“62, 1962â€“63, 1963â€“64, 1964â€“65, 1966â€“67, 1967â€“68, 1968â€“69, 1971â€“72, 1974â€“75, 1975â€“76, 1977â€“78, 1978â€“79, 1979â€“80, 1985â€“86, 1986â€“87, 1987â€“88, 1988â€“89, 1989â€“90, 1994â€“95, 1996â€“97, 2000â€“01, 2002â€“03, 2006â€“07, 2007â€“08, 2011â€“12\r\n\r\nCopa del Rey\r\nJuara (18): 1905, 1906, 1907, 1908, 1917, 1934, 1936, 1946, 1947, 1962, 1970, 1973â€“74, 1974â€“75, 1980, 1981â€“82, 1988â€“89, 1992â€“93, 2010â€“11\r\n\r\nPiala Super Spanyol\r\nJuara (9): 1988, 1989*, 1990, 1993, 1997, 2001, 2003, 2008, 2012\r\n\r\nCopa Eva Duarte (pendahulu Piala Super Spanyol)\r\nJuara (1): 1947\r\n\r\nCopa de la Liga\r\nJuara (1): 1985\r\n\r\nPiala Champions/Liga Champions Eropa\r\nJuara (9): 1955â€“56*, 1956â€“57, 1957â€“58, 1958â€“59, 1959â€“60, 1965â€“66, 1997â€“98, 1999â€“2000, 2001â€“02\r\n\r\nPiala Super UEFA\r\nJuara (1): 2002\r\n\r\nPiala Interkontinental\r\nJuara (3): 1960, 1998, 2002', '2018-01-04 15:31:00', 'BIO KLUB', 'admin'),
(44, 'Klasemen Liga Inggris', '7.png', 'Liga Utama', '2018-01-04 15:33:19', 'BLOG', 'admin'),
(45, 'Hasil Skor', '8.jpg', 'Indonesia vs Vietnam', '2018-01-04 15:34:19', 'HASIL SKOR', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `no` int(11) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`no`, `nama_kategori`) VALUES
(2, 'BLOG'),
(3, 'BIO PEMAIN'),
(4, 'BIO KLUB'),
(5, 'JADWAL LIGA'),
(6, 'HASIL SKOR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
