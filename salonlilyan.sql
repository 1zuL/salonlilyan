-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Bulan Mei 2024 pada 14.14
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
-- Database: `salonlilyan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `jam` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `akomodasi` bigint(20) NOT NULL,
  `status` varchar(255) NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `nama_treatment` varchar(44) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `booking`
--

INSERT INTO `booking` (`id`, `tanggal`, `jam`, `service`, `kecamatan`, `alamat`, `akomodasi`, `status`, `customer_id`, `nama_treatment`, `created_at`, `updated_at`) VALUES
(19, '2024-05-23', '09:00-10:00', 'Home Service', 'Kencong', 'kkkkkl', 25000, 'belum bayar', 1, 'Potong Cuci Tonic', '2024-05-23 15:43:23', '2024-05-23 15:43:23'),
(20, '2024-05-23', '11:00-12:00', 'Home Service', 'Jelbuk', 'coba', 25000, 'belum bayar', 1, 'Potong', '2024-05-23 16:05:42', '2024-05-23 16:05:42'),
(21, '0000-00-00', '20.03', 'Home Service', 'ajung', 'ajung', 25000, 'belum bayar', 1, 'Potong', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, '2024-05-23', '07:00-08:00', 'Home Service', 'Bangsalsari', 'gegeg', 25000, 'belum bayar', 1, 'Potong', '2024-05-23 16:28:24', '2024-05-23 16:28:24'),
(23, '2024-05-24', '07:00-08:00', 'Home Service', 'Jenggawah', 'jdjdh', 25000, 'belum bayar', 4, 'Potong Cuci Tonic', '2024-05-24 10:58:41', '2024-05-24 10:58:41'),
(24, '2024-05-24', '09:00-10:00', 'Home Service', 'Jenggawah', 'jdjdh', 25000, 'belum bayar', 4, 'Potong Cuci Tonic', '2024-05-24 10:58:41', '2024-05-24 10:58:41'),
(25, '2024-05-24', '17:00-18:00', 'Home Service', 'Jenggawah', 'hd', 25000, 'belum bayar', 4, 'Potong', '2024-05-24 11:18:36', '2024-05-24 11:18:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pertanyaan_keamanan` varchar(255) NOT NULL,
  `jawaban` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id`, `email`, `no_telp`, `nama_lengkap`, `password`, `pertanyaan_keamanan`, `jawaban`, `created_at`, `updated_at`) VALUES
(1, 'john.doe@example.com', '081234567890', 'John Doe', 'password123', 'Nama ibu kandung?', 'Sarah Doe', NULL, NULL),
(2, 'jane.smith@example.com', '082345678901', 'Jane Smith', 'password123', 'Nama hewan peliharaan pertama?', 'Buddy', NULL, NULL),
(3, 'robert.brown@example.com', '083456789012', 'Robert Brown', 'password123', 'Kota kelahiran?', 'New York', NULL, NULL),
(4, 'lisa.white@example.com', '084567890123', 'Lisa White', 'password123', 'Nama sekolah pertama?', 'SDN 01', NULL, NULL),
(5, 'david.jones@example.com', '085678901234', 'David Jones', 'password123', 'Nama teman masa kecil?', 'Michael', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `transaksi_id` varchar(255) NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `nama_treatment` varchar(255) DEFAULT NULL,
  `harga` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_treatment` varchar(255) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `nama_treatment`, `harga`, `deskripsi`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Potong', 15000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl congue, hendrerit massa sed, elementum risus. Nullam dignissim arcu eu arcu porta gravida.', 'data_file/1716124844.jpg', NULL, NULL),
(2, 'Potong Cuci Tonic', 25000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl congue, hendrerit massa sed, elementum risus. Nullam dignissim arcu eu arcu porta gravida.', 'data_file/1716124890.jpg', NULL, NULL),
(3, 'Potong Cuci Blow', 25000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl congue, hendrerit massa sed, elementum risus. Nullam dignissim arcu eu arcu porta gravida.', 'data_file/1716124925.jpg', NULL, NULL),
(4, 'Cuci Catok', 20000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl congue, hendrerit massa sed, elementum risus. Nullam dignissim arcu eu arcu porta gravida.', 'data_file/1716124942.png', NULL, NULL),
(5, 'Cuci Blow', 20000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl congue, hendrerit massa sed, elementum risus. Nullam dignissim arcu eu arcu porta gravida.', 'data_file/1716124961.jpeg', NULL, NULL),
(6, 'Cuci Curly', 20000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl congue, hendrerit massa sed, elementum risus. Nullam dignissim arcu eu arcu porta gravida.', 'data_file/1716124979.jpg', NULL, NULL),
(7, 'Smoothing', 200000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl congue, hendrerit massa sed, elementum risus. Nullam dignissim arcu eu arcu porta gravida.', 'data_file/1716125010.jpg', NULL, NULL),
(8, 'Facial Sari Ayu', 35000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl congue, hendrerit massa sed, elementum risus. Nullam dignissim arcu eu arcu porta gravida.', 'data_file/1716125028.jpg', NULL, NULL),
(9, 'Facial Viva', 30000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl congue, hendrerit massa sed, elementum risus. Nullam dignissim arcu eu arcu porta gravida.', 'data_file/1716125045.jpg', NULL, NULL),
(10, 'Message Wajah', 25000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl congue, hendrerit massa sed, elementum risus. Nullam dignissim arcu eu arcu porta gravida.', 'data_file/1716125067.jpg', NULL, NULL),
(11, 'Lashlift', 40000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl congue, hendrerit massa sed, elementum risus. Nullam dignissim arcu eu arcu porta gravida.', 'data_file/1716125092.jpg', NULL, NULL),
(12, 'Hair Mask Pendek', 35000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl congue, hendrerit massa sed, elementum risus. Nullam dignissim arcu eu arcu porta gravida.', 'data_file/1716125129.jpg', NULL, NULL),
(13, 'Hair Mask Medium', 40000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl congue, hendrerit massa sed, elementum risus. Nullam dignissim arcu eu arcu porta gravida.', 'data_file/1716125153.jpg', NULL, NULL),
(14, 'Hair Mask Panjang', 45000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl congue, hendrerit massa sed, elementum risus. Nullam dignissim arcu eu arcu porta gravida.', 'data_file/1716125177.jpg', NULL, NULL),
(15, 'Creambath', 50000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nisl congue, hendrerit massa sed, elementum risus. Nullam dignissim arcu eu arcu porta gravida.', 'data_file/1716125190.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_04_01_061744_create_menu_table', 1),
(7, '2024_04_03_004908_create_customer_table', 1),
(8, '2024_04_04_163519_create_booking_table', 1),
(9, '2024_04_07_144816_create_transaksi_table', 1),
(10, '2024_05_13_143229_create_detail_transaksi_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(255) NOT NULL,
  `grand_total` bigint(20) DEFAULT NULL,
  `kembalian` bigint(20) DEFAULT NULL,
  `bayar` bigint(20) DEFAULT NULL,
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nomor_hp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `nomor_hp`) VALUES
(1, 'admin@gmail.com', 'admin', '54321', '0853265131'),
(2, 'fasta@gmail.com', 'fasta', '123456', '08473462413'),
(3, 'r', 't', 'e', 'r'),
(4, '4', '4', '12345', '4');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD KEY `detail_transaksi_transaksi_id_foreign` (`transaksi_id`),
  ADD KEY `detail_transaksi_menu_id_foreign` (`menu_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `transaksi_booking_id_foreign` (`booking_id`),
  ADD KEY `transaksi_menu_id_foreign` (`menu_id`),
  ADD KEY `transaksi_customer_id_foreign` (`customer_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `booking`
--
ALTER TABLE `booking`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_transaksi_transaksi_id_foreign` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaksi_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaksi_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
