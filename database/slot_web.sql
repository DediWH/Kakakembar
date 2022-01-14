-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.4.20-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win64
-- HeidiSQL Versi:               11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- membuang struktur untuk table slot_web.abouts
CREATE TABLE IF NOT EXISTS `abouts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `about_me` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel slot_web.abouts: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `abouts` DISABLE KEYS */;
INSERT INTO `abouts` (`id`, `about_me`, `created_at`, `updated_at`) VALUES
	(1, '<div>Halo guys! Selamat datang di situs <a href="http://127.0.0.1:8000/"><strong>Kakakembar</strong></a>, situs merupakan situs informasi mengenai permainan slot online yang tersebar diinternet. Di website tim kami akan selalu memberikan informasi terupdate mengenai permainan slot online.<br><br>Website kami menyediakan artikel diantaranya ada mengenai <strong>Tips &amp; Trick, Rekomendasi Permainan, dll.</strong><br><br>Sekali lagi tim <a href="http://127.0.0.1:8000/"><strong>Kakakembar</strong></a><strong> </strong>mengucapkan selamat datang kepada pengunjung website tercinta kami ini. Semoga informasi yang kami berikan kepada kalian bisa bermanfaat dan dimanfaatkan dengan baik.</div><h1><strong>SALAM CUAN-CUAN!!!</strong></h1>', '2022-01-06 01:01:09', '2022-01-13 14:24:19');
/*!40000 ALTER TABLE `abouts` ENABLE KEYS */;

-- membuang struktur untuk table slot_web.contacts
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel slot_web.contacts: ~1 rows (lebih kurang)
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` (`id`, `name`, `email`, `phone_number`, `message`, `created_at`, `updated_at`) VALUES
	(9, 'Dikjaya', 'dj@gmail.com', '087878879999', 'Mas tolong ajarin saya jadi dewa slot yang bisa menang terus!', '2022-01-13 14:21:45', '2022-01-13 14:21:45');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;

-- membuang struktur untuk table slot_web.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel slot_web.failed_jobs: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- membuang struktur untuk table slot_web.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel slot_web.migrations: ~7 rows (lebih kurang)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2022_01_05_125838_create_contacts_table', 2),
	(6, '2022_01_05_233359_create_abouts_table', 3),
	(7, '2022_01_06_101259_create_posts_table', 4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- membuang struktur untuk table slot_web.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel slot_web.password_resets: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- membuang struktur untuk table slot_web.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel slot_web.personal_access_tokens: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- membuang struktur untuk table slot_web.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel slot_web.posts: ~7 rows (lebih kurang)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `judul`, `excerpt`, `body`, `created_at`, `updated_at`) VALUES
	(2, 'Rekomendasi 8 Game Slot Online Terbaik Menurut Kakakkembar', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. At quae soluta, dolore nihil omnis consequu...', '<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. At quae soluta, dolore nihil omnis consequuntur provident magni voluptatum animi ratione quasi molestiae consectetur maxime dolores minus ad natus facilis. <br><br><strong>1. Pragmatic Play Slot</strong><br>Commodi accusantium odit inventore vero asperiores quis dolorem, iusto animi debitis reiciendis expedita quam eveniet labore, omnis deleniti. Amet recusandae molestias quaerat illo veniam eveniet. <br><br><strong>2. Joker123 Slot</strong><br>Ducimus ratione quibusdam tenetur quod consequatur aut officia eaque repudiandae dolores earum doloribus facere commodi nisi amet maxime quae voluptatibus aliquid, nobis nihil deleniti vel, enim ut impedit ex. <br><br><strong>3. Slot Habanero</strong><br>Laboriosam corrupti neque numquam ea reiciendis eos, suscipit fugiat, architecto sapiente mollitia quam quis? Expedita, non quo.<br><br><strong>4. Skywind</strong><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur incidunt magnam, autem placeat aperiam praesentium aut explicabo exercitationem veritatis aliquid molestias debitis harum cum. <br><br><strong>5.&nbsp; Spade Gaming</strong><br>Unde expedita dolorem blanditiis aliquam qui itaque amet ex accusamus eligendi? Dicta eligendi inventore sit porro? Dolorem suscipit architecto impedit esse facilis voluptatem corporis explicabo molestiae.<br><br><strong>6. Gameplay<br></strong>Commodi accusantium odit inventore vero asperiores quis dolorem, iusto animi debitis reiciendis expedita quam eveniet labore, omnis deleniti. Amet recusandae molestias quaerat illo veniam eveniet.<br><br><strong>7. YGG<br></strong>Ducimus ratione quibusdam tenetur quod consequatur aut officia eaque repudiandae dolores earum doloribus facere commodi nisi amet maxime quae voluptatibus aliquid, nobis nihil deleniti vel, enim ut impedit ex.<br><br><strong>8. Top Trend Gaming(TGG)<br></strong>Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur incidunt magnam, autem placeat aperiam praesentium aut explicabo exercitationem veritatis aliquid molestias debitis harum cum.<br><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur incidunt magnam, autem placeat aperiam praesentium aut explicabo exercitationem veritatis aliquid molestias debitis harum cum unde expedita dolorem blanditiis aliquam qui itaque amet ex accusamus eligendi?&nbsp;</div>', '2022-01-06 12:48:23', '2022-01-13 12:54:33'),
	(3, 'Hati-Hati Buat Kalian Yang Mau Main di Game ZEUS', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur incidunt magnam, autem placeat ape...', '<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur incidunt magnam, autem placeat aperiam praesentium aut explicabo exercitationem veritatis aliquid molestias debitis harum cum unde expedita dolorem blanditiis aliquam qui itaque amet ex accusamus eligendi? Dicta eligendi inventore sit porro? Dolorem suscipit architecto impedit esse facilis voluptatem corporis explicabo molestiae.<br><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur incidunt magnam, autem placeat aperiam praesentium aut explicabo exercitationem veritatis aliquid molestias debitis harum cum unde expedita dolorem blanditiis aliquam qui itaque amet ex accusamus eligendi? Dicta eligendi inventore sit porro? Dolorem suscipit architecto impedit esse facilis voluptatem corporis explicabo molestiae.<br><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur incidunt magnam, autem placeat aperiam praesentium aut explicabo exercitationem veritatis aliquid molestias debitis harum cum unde expedita dolorem blanditiis aliquam qui itaque amet ex accusamus eligendi? Dicta eligendi inventore sit porro? Dolorem suscipit architecto impedit esse facilis voluptatem corporis explicabo molestiae.</div>', '2022-01-06 12:49:58', '2022-01-13 12:17:05'),
	(4, 'Khusus Pemula!! Wajib Baca Ini Dulu Sebelum Mau Main Slot Online', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptatum facere omnis ullam fugit volupt...', '<div>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptatum facere omnis ullam fugit voluptas, autem odit adipisci obcaecati sunt quidem velit voluptate incidunt sequi cum iusto veritatis, maiores fugiat laboriosam.<br><br><strong>1. Siapkan uangmu<br></strong>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptatum facere omnis ullam fugit voluptas, autem odit adipisci obcaecati sunt quidem velit voluptate incidunt sequi cum iusto veritatis, maiores fugiat laboriosam.<br><br><strong>2. Kalian tidak akan selalu untung<br></strong>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptatum facere omnis ullam fugit voluptas, autem odit adipisci obcaecati sunt quidem velit voluptate incidunt sequi cum iusto veritatis, maiores fugiat laboriosam.<br><br>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptatum facere omnis ullam fugit voluptas, autem odit adipisci obcaecati sunt quidem velit voluptate incidunt sequi cum iusto veritatis, maiores fugiat laboriosam.<br><br></div><h1><strong>SALAM CUAN!!</strong></h1>', '2022-01-06 12:54:13', '2022-01-13 12:03:04'),
	(5, 'Tips & Trick Bermain Zeus Bagi Pemula', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. At quae soluta, dolore nihil omnis consequu...', '<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. At quae soluta, dolore nihil omnis consequuntur provident magni voluptatum animi ratione quasi molestiae consectetur maxime dolores minus ad natus facilis.<br><br><strong>Tips &amp; Trick Pertama</strong><br>Commodi accusantium odit inventore vero asperiores quis dolorem, iusto animi debitis reiciendis expedita quam eveniet labore, omnis deleniti. Amet recusandae molestias quaerat illo veniam eveniet.<br><br><strong>Tips &amp; Trick Kedua</strong><br>Ducimus ratione quibusdam tenetur quod consequatur aut officia eaque repudiandae dolores earum doloribus facere commodi nisi amet maxime quae voluptatibus aliquid, nobis nihil deleniti vel, enim ut impedit ex.<br><br><strong>Tips &amp; Trick Ketiga</strong><br>Laboriosam corrupti neque numquam ea reiciendis eos, suscipit fugiat, architecto sapiente mollitia quam quis? Expedita, non quo.<br><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. At quae soluta, dolore nihil omnis consequuntur provident magni voluptatum animi ratione quasi molestiae consectetur maxime dolores minus ad natus facilis.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>', '2022-01-06 15:43:48', '2022-01-13 11:46:34'),
	(7, 'Ternyata Ini 5 Trik Menang Bermain Slot Online Yang Tentu Menguntungkan', 'Anda sukai memainkan permainan slot online namun tetap belum ketahui cara kemenangannya? Atau anda t...', '<div>Anda sukai memainkan permainan slot online namun tetap belum ketahui cara kemenangannya? Atau anda terasa geram sebab tak dapat menang main slot online?Kalau demikian anda beruntung sedang bertandang ke web yang benar nih. Lantaran di waktu ini saya bakal share info tentang trik cara menang slot online.<br><br></div><div>Yang tentunya udah terjaga dan bisa terbuktikan dapat mendatangkan keuntungan langsung. Ingin tahu semacam apa trik kemenangannya? Untuk itu supaya tak bertambah ingin tahu, anda dapat langsung baca info yang bakal saya terangkan lebih komplet di bawah ini.<br><br>Penasaran apa trick-nya? Di bawah ini ialah penuturannya:<br><br><br><br></div><h1>1. Main Pada Waktu tengah Malam</h1><div>Nah, satu diantara trik yang tersering pemain pakai buat dapat menang memainkan permainan slot online yakni dengan bermain di waktu larut malam. Kenapa demikian? Sebab menurut evaluasi, tiap mesin permainan slot tentunya bakal mengerjakan refresh dan perubahan sehari-harinya.<br><br></div><div>Nah, dengan fresh atau anyarnya mesin slot itu tentu saja bakal munculkan kesempatan menang makin tinggi, sebab anda menjadi pemain pertama. Apalagi di waktu itu, belum pastinya ada orang yang pengen main di waktu larut malam. Sebab beberapa banyak pemain umumnya bermain di waktu Pagi atau Malam.<br><br></div><h1>2. Coba Tentukan Mesin Slot yang Jarang-jarang Dimainkan Pemain Lainnya</h1><div>Nah buat trik sesudah itu yakni dengan pilih bermain di mesin slot online yang paling jarang-jarang sekali pemain permainkan. Tujuannya sesuai sama argumen awal mulanya, adalah untuk mendapati kesempatan menang yang tinggi. Mengapa harus yang jarang-jarang main?<br><br></div><div>Karena sama dengan seperti mesin slot yang fresh, alias dengan bertambah jarang-jarang pemain sentuh, bermakna masihlah ada kesempatan-peluang menang yang lebih simpel. Apalagi, ada begitu banyak kok sejumlah mesin slot yang jarang-jarang sekali pemain sentuh, sebab argumen pertama kalinya kurang memukau. Meskipun sebenarnya dapat saja keuntungan yang dapat mereka peroleh itu begitu besar lho!<br><br><br>Nah, tersebut pelbagai trik menang main slot online. Bagaimana? Sangat luar biasa kan? Karena itu coba membuktikan trik menang yang udah saya berikan barusan langsung.</div>', '2022-01-13 13:10:22', '2022-01-13 13:10:22'),
	(8, 'Cara Mengalahkan Mesin Slot', 'Mesin slot adalah atraksi paling penuh warna dan paling keras di kasino, dan mesin ini menghasilkan...', '<div>Mesin slot adalah atraksi paling penuh warna dan paling keras di kasino, dan mesin ini menghasilkan pendapatan jutaan dollar untuk pelanggan yang berusaha untuk mendapat jackpot. Menang tentu tidak mudah--keberuntungan mempunyai peran yang besar untuk sukses di mesin slot--tapi strategi mesin slot ini mungkin akan memaksimalkan peluang Anda untuk bermain lebih lama dan menang lebih banyak.<br><br><strong>1. Mengatur Uang Anda dengan Pintar<br></strong>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ex tempore unde minus, doloribus libero deleniti.<br><br><strong>2. Menentukan Strategi<br></strong>Uit quidem suscipit quos blanditiis quibusdam at, ratione veritatis sint, voluptatum libero placeat fugiat dicta laudantium eum pariatur sequi eveniet quae odio consequatur sunt accusamus quasi molestiae praesentium nam? <br><br><strong>3. Mengetahui Mesin Slot Anda</strong><br>Eligendi eum temporibus laudantium vitae aut, earum adipisci necessitatibus cupiditate commodi enim error.<br><br>Berikut adalah beberapa cara mengalahkan mesin slot. Semoga artikel ini bisa membantu anda semua yang sudah membacanya. Terimakasih!</div>', '2022-01-13 14:15:20', '2022-01-13 14:15:20'),
	(9, 'Tips Menang Terus di Game Slot', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ut quidem suscipit quos blanditiis quibusd...', '<div>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ut quidem suscipit quos blanditiis quibusdam at, ratione veritatis sint, voluptatum libero placeat fugiat dicta laudantium eum pariatur sequi eveniet quae odio consequatur sunt accusamus quasi molestiae praesentium nam? Eligendi eum temporibus laudantium vitae aut, earum adipisci necessitatibus cupiditate commodi enim error.</div>', '2022-01-13 14:27:14', '2022-01-13 14:27:14');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- membuang struktur untuk table slot_web.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Membuang data untuk tabel slot_web.users: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Ridwan', 'admin', '$2y$10$aHGCFR20jUHZB8KU6PETY.p5nIrM6WQzyIXt0ZByCgXoeaub5K8yq', NULL, '2022-01-05 02:00:44', '2022-01-05 02:00:44');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
