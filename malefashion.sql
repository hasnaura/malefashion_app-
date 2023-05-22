-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.25-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for malefashion_app
CREATE DATABASE IF NOT EXISTS `malefashion_app` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `malefashion_app`;

-- Dumping structure for table malefashion_app.admins
CREATE TABLE IF NOT EXISTS `admins` (
  `admin_id` int(11) unsigned NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_phone` varchar(15) DEFAULT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_photo` varchar(255) NOT NULL,
  `admin_photo2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table malefashion_app.admins: ~0 rows (approximately)
INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_phone`, `admin_password`, `admin_photo`, `admin_photo2`) VALUES
	(1, 'Khaleed', 'admin@gmail.com', '62897765432', '0287040c474dbf44cdeb17eebb99d828', 'admin_profile.jpg', 'admin_profile2.jpg');

-- Dumping structure for table malefashion_app.blogs
CREATE TABLE IF NOT EXISTS `blogs` (
  `blog_id` int(11) NOT NULL,
  `blog_title` varchar(100) DEFAULT NULL,
  `blog_description` text DEFAULT NULL,
  `blog_quotes` text DEFAULT NULL,
  `blog_quotes_writer` varchar(100) DEFAULT NULL,
  `blog_image` varchar(100) DEFAULT NULL,
  `blog_image2` varchar(100) DEFAULT NULL,
  `blog_tags` varchar(255) DEFAULT NULL,
  `blog_date` date DEFAULT current_timestamp(),
  `admin_id` int(11) NOT NULL,
  PRIMARY KEY (`blog_id`),
  KEY `admin_id` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table malefashion_app.blogs: ~9 rows (approximately)
INSERT INTO `blogs` (`blog_id`, `blog_title`, `blog_description`, `blog_quotes`, `blog_quotes_writer`, `blog_image`, `blog_image2`, `blog_tags`, `blog_date`, `admin_id`) VALUES
	(1, 'What Curling Irons Are The Best Ones', 'Spesifikasi Technoplast GB-200:\nTerbuat dari bahan plastik berkualitas( Food Grade), serta bebas dari bahan-bahan berbahaya(BPA free)\n\nTersedia dalam warna hitam, biru, merah\n\nTumbler ini sangat cocok untuk kalian yang ingin memberikan souvenir perusahaan, hadiah wisuda, ulang tahun atau bahkan sebagai koleksi pribadi.\n\nKalian bisa menggunakan desain buatan kalian sendiri untuk botol minum kalian nih. Caranya dengan\n1. order via chat Whatsapp\n2. Kirim desain kalian via email mfbinary18@gmail.com.\n3. Desain yang kalian kirim hanya dalam bentuk .eps ya\n', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-1.jpg', 'banner1.jpg', '#Poster #Tumbler #2022\n', '2022-11-04', 1),
	(2, 'Eternity Bands Do Last Forever', 'Spesifikasi Technoplast GS-400:\nTerbuat dari bahan plastik berkualitas( Food Grade), serta bebas dari bahan-bahan berbahaya(BPA free)\n\nTersedia dalam warna Hitam\n\nTumbler ini sangat cocok untuk kalian yang ingin memberikan souvenir perusahaan, hadiah wisuda, ulang tahun atau bahkan sebagai koleksi pribadi.\n\nKalian bisa menggunakan desain buatan kalian sendiri untuk botol minum kalian nih. Caranya dengan\n1. order via chat Whatsapp\n2. Kirim desain kalian via email mfbinary18@gmail.com.\n3. Desain yang kalian kirim hanya dalam bentuk .eps ya\n', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-2.jpg', 'banner1.jpg', '#Poster #Tumbler #Edukasi #2022\n', '2022-11-05', 1),
	(3, 'The Health Benefits Of Sunglasses', 'Miliki sekarang Tumbler Custom GS-400 2 side.\nDimensi:\nVolume 370 ml\nTinggi 17.1 cm\nLebar 7.5 cm', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-3.jpg', 'banner1.jpg', '#Tumbler', '2022-11-05', 1),
	(4, 'Aiming For Higher The Mastopexy', 'Tu kan Lucu banget, ayo meriahkan hari spesial sahabat mu dengan order sekarang juga tumbler cantik ini di @mfbinary ya', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-4.jpg', 'banner1.jpg', '#Tumbler', '2022-11-05', 1),
	(5, 'Wedding Rings A Gift For A Lifetime', '<p>Hydroderm is the highly desired anti-aging cream on the block. This serum restricts the\n occurrence of early aging sings on the skin and keeps the skin younger, tighter and\n healthier. It reduces the wrinkles and loosening of skin. This cream nourishes the skin\n and brings back the glow that had lost in the run of hectic years.</p>\n <p>The most essential ingredient that makes hydroderm so effective is Vyo-Serum, which is a\n product of natural selected proteins. This concentrate works actively in bringing about\n the natural youthful glow of the skin. It tightens the skin along with its moisturizing\n effect on the skin. The other important ingredient, making hydroderm so effective is\n “marine collagen” which along with Vyo-Serum helps revitalize the skin.</p>', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-5.jpg', 'banner1.jpg', '#Poster #Tumbler #Edukasi #2022\n', '2022-11-05', 1),
	(6, 'The Different Methods Of Hair Removal', 'Kamu bisa beli satuan ya. No min. Order.\r\nJadikan hari spesial keluargamu semakin berkesan, dengan hadiah spesial dari kamu nih.', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-6.jpg', 'banner1.jpg', '#Tumbler #Quotes', '2022-11-05', 1),
	(7, 'Hoop Earrings A Style From History', 'Ada juga ni pulpen dengan desain unik dan lucu, bisa custom sesuai keinginan kamu, dan cocok banget ni buat hadiah perpisahan sekolah.', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-7.jpg', 'banner1.jpg', '#Pulpen', '2022-11-05', 1),
	(8, 'Lasik Eye Surgery Are You Ready', 'Kalender dan Poster Edukasi bisa kamu dapatkan dengan harga terjangkan, untuk desainnya bisa kamu tentukan sendiri loh.., ayo! tunggu apa lagi untuk berkunjung ke toko kami @mfbinary', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-8.jpg', 'banner1.jpg', '#Poster #Tumbler #Edukasi #2022\n', '2022-11-05', 1),
	(9, 'Enjoying Beautiful Scarf', 'Khusus poster edukasi lagi diskon gede-gedean ini sampe 50%, kamu jangan sampai ketinggalan, promonya hanya bulan ini saja, ayo tunggu apa lagi :D.', '“When designing an advertisement for a particular product many things should be researched like where it should be displayed.”', 'JOHN SMITH', 'blog-9.jpg', 'banner1.jpg', '#Poster', '2022-11-05', 1);

-- Dumping structure for table malefashion_app.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_cost` decimal(10,2) NOT NULL,
  `order_status` varchar(100) NOT NULL DEFAULT 'on_hold',
  `user_id` int(11) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_city` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table malefashion_app.orders: ~0 rows (approximately)
INSERT INTO `orders` (`order_id`, `order_cost`, `order_status`, `user_id`, `user_phone`, `user_city`, `user_address`, `order_date`) VALUES
	(1, 23.25, 'paid', 1, '62876365111', 'Bandung', 'Arcamanik Residence Regency', '2023-03-13 03:34:23'),
	(2, 88.15, 'not paid', 1, '628763655111', 'Bandung', 'Arcamanik Residence Regency', '2023-03-20 03:22:15');

-- Dumping structure for table malefashion_app.order_items
CREATE TABLE IF NOT EXISTS `order_items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table malefashion_app.order_items: ~3 rows (approximately)
INSERT INTO `order_items` (`item_id`, `order_id`, `product_id`, `product_name`, `product_image`, `product_price`, `product_quantity`, `user_id`, `order_date`) VALUES
	(1, 0, '1', 'Sepatu Sneakers Pria Import Original Khamzo D05Terbaru', 'product-1.jpg', 23.25, 1, 1, '2023-03-13 03:34:23'),
	(2, 2, '1', 'Sepatu Sneakers Pria Import Original Khamzo D05Terbaru', 'product-1.jpg', 23.25, 1, 1, '2023-03-20 03:22:15'),
	(3, 2, '3', 'Jaket pria kantor formal casual TRENDY', 'product-2.jpg', 19.35, 1, 1, '2023-03-20 03:22:15'),
	(4, 2, '4', 'SPOTEC Sepatu Student Helios Hitam', 'product-3.jpg', 45.55, 1, 1, '2023-03-20 03:22:15');

-- Dumping structure for table malefashion_app.payments
CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_id` varchar(250) NOT NULL,
  `payment_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table malefashion_app.payments: ~0 rows (approximately)
INSERT INTO `payments` (`payment_id`, `order_id`, `user_id`, `transaction_id`, `payment_date`) VALUES
	(0, 0, 1, '71373076WM320224J', '2023-03-13 03:40:57');

-- Dumping structure for table malefashion_app.products
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) DEFAULT NULL,
  `product_brand` varchar(100) DEFAULT NULL,
  `product_category` varchar(100) DEFAULT NULL,
  `product_description` varchar(255) DEFAULT NULL,
  `product_criteria` varchar(50) DEFAULT NULL,
  `product_image1` varchar(100) DEFAULT NULL,
  `product_image2` varchar(100) DEFAULT NULL,
  `product_image3` varchar(100) DEFAULT NULL,
  `product_image4` varchar(100) DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `special_offer` decimal(10,2) DEFAULT NULL,
  `product_color` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table malefashion_app.products: ~8 rows (approximately)
INSERT INTO `products` (`product_id`, `product_name`, `product_brand`, `product_category`, `product_description`, `product_criteria`, `product_image1`, `product_image2`, `product_image3`, `product_image4`, `product_price`, `special_offer`, `product_color`) VALUES
	(1, 'Sepatu Sneakers Pria Import Original Khamzo D05Terbaru', 'Khamzo', 'sepatu', 'Sepatu Slip On Khamzo D05 yaitu salah satu model baru dan trendy untuk anda miliki, sangat nyaman dan dapat menunjang penampilan serta kepercayaan diri Anda.', 'favourite', 'product-1.jpg', 'product-1.jpg', 'product-1.jpg', 'product-1.jpg', 23.25, 0.00, 'Biru'),
	(3, 'Jaket pria kantor formal casual TRENDY', 'Private', 'jaket', 'Barang terjamin kualitasnya, bahan bagus, dan tebal. Ayo buruan order kak sebelum terlambat.', 'favourite', 'product-2.jpg', 'product-2.jpg', 'product-2.jpg', 'product-2.jpg', 19.35, 0.00, 'Coklat'),
	(4, 'SPOTEC Sepatu Student Helios Hitam', 'Spotec', 'sepatu', 'Sepatu ini termasuk kategori sepatu sekolah mempunyai desain klasik, dengan kombinasi material kulit imitasi dan kulit suede imitasi, sepatu ini menggunakan outsole full memberikan kekuatan ekstra.', 'favourite', 'product-3.jpg', 'product-3.jpg', 'product-3.jpg', 'product-3.jpg', 45.55, 0.00, 'Hitam'),
	(5, 'M231 Hoodie Panjang Light Brown 2197A', 'Fleece', 'jaket', 'Produk ini too much perfect, ga perlu pake foto lah ya, itu foto produk udah menggambarkan semuanya', 'favourite', 'product-4.jpg', 'product-4.jpg', 'product-4.jpg', 'product-4.jpg', 50.00, 0.00, 'coklat'),
	(6, 'Kaos hitam tshirt polos houseofcuff motif Tokyo Black', 'Houseofcut', 'kaos', 'Bahan Kain 100% Premium Cotton-Combed 30s Ultrasoft. Bahan sejuk dan nyaman dipakai, gak gampang kusut, gak gampang berbulu dan mudah dicuci.', 'favourite', 'product-5.jpg', 'product-5.jpg', 'product-5.jpg', 'product-5.jpg', 25.00, 0.00, 'hitam'),
	(7, 'AD012 Pashmina Cashmere Syal Scarf Shawl Kasmir Bahan Viscose', 'Unixcomart', 'syal', 'Syal atau Scarf Cashmere, material Viscose (sutera sintetis), ukuran 65cm x 180cm, style casual, unisex, kondisi 100% baru, dan made in China.', 'favourite', 'product-6.jpg', 'product-6.jpg', 'product-6.jpg', 'product-6.jpg', 35.00, 0.00, 'abu-abu'),
	(8, 'Tas Selempang Orion Synthetic Leather', 'Firefly', 'tas', 'High quality synthetic leather, waterproof material inside, laptop Sleeve up to 14", fully padded main compartment, ballpoint & handphone sleeve inside, and roomy main compartment', 'favourite', 'product-7.jpg', 'product-7.jpg', 'product-7.jpg', 'product-7.jpg', 45.00, 0.00, 'coklat'),
	(9, 'Matsuda Kaos Polo Shirt Pria Kerah Aioi', 'Matsuda', 'kaos', 'Style Aioi, Polo Shirt Original Premium Jersey Cotton Mix, Matsuda - Your Everyday Premium Clothing dan Bahan premium comfort.\r\n', 'favourite', 'product-8.jpg', 'product-8.jpg', 'product-8.jpg', 'product-8.jpg', 19.25, 0.00, 'hitam');

-- Dumping structure for table malefashion_app.users
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_phone` varchar(20) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_city` varchar(100) DEFAULT NULL,
  `user_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table malefashion_app.users: ~3 rows (approximately)
INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_phone`, `user_address`, `user_city`, `user_photo`) VALUES
	(1, 'Raihan Hanafi', 'user1@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '628763655111', 'Arcamanik Residence Regency', 'Bandung', 'user_profile1.jpg'),
	(2, 'Ridwan Hanif', 'user2@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '628763655222', 'Green Garden Regency', 'Bandung', 'user_profile2.jpg'),
	(3, 'Daffa Ismail', 'user3@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '628763655333', 'Bandung City View', 'Bandung', 'user_profile3.jpg'),
	(0, 'Hasnaura', 'user4@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '6281234567', 'Taman Kopo Katapang', 'Bandung', 'Hasnaura.jpg');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
