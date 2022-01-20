-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2022 at 03:07 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan2`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengarang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `pengarang`, `created_at`, `updated_at`) VALUES
(4, 'Fisika Kelas XI', 'Ketut Kamajaya', '2022-01-20 08:52:57', '2022-01-20 08:52:41'),
(5, 'Sejarah Kelas XI', 'Ririn Darini', '2022-01-20 08:53:01', '2022-01-20 08:52:41');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('Admin','Guru','Siswa') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Siswa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `level`) VALUES
(1, 'Admin 01', 'admin@gmail.com', '$2y$10$7Rw/5vtL9KwrC3eeWuceZ.2iPvbyqAUbEBau0VvmeQK3D6jOvtFre', 'Admin'),
(1156, 'Nisa Winda', 'nisawinda@gmail.com', '$2y$10$CVPfVIbkoZTARxYKJJzcUuEFycdwj7AjFraR8EfuzkgtdBIW7lIKe', 'Siswa'),
(1157, 'Parida', 'parida@gmail.com', '$2y$10$oZdVxwP0RjbHRMD20ZwjleoiYypzhcVGtlcuJWnEHHt7r7y.OCfC2', 'Siswa'),
(1158, 'Paryan Nesfandiari', 'paryannesfandiari@gmail.com', '$2y$10$fjdbL4qXbAdUCy3FQJwdEe9A4r2HjPWO2zfuOlUhvaG4jrYrPRD/W', 'Siswa'),
(1159, 'Putri Ayu', 'putriayu@gmail.com', '$2y$10$nAsdWCKIk0weou5KE4ti4eCjartm35h62rKgSQFeIpqjV7xIwuYza', 'Siswa'),
(1160, 'Rara Mutiara', 'raramutiara@gmail.com', '$2y$10$9/HKXS5lW8CoHxXzXFTHz.3Jts1imv042R/1RpK/RUPsz7JztQE9e', 'Siswa'),
(1161, 'Ronal Putra', 'ronalputra@gmail.com', '$2y$10$xeYLYmtqqO23VfJkTWs.DeZIfv443biZSvbqlcnVkeKeMz0zIAA4m', 'Siswa'),
(1162, 'Rosalia Anggun Sari', 'rosaliaanggunsari@gmail.com', '$2y$10$bSL0S8Ujt.t87rcx1jvr5uZJ9xeA20j4/JYHhEhJA.v1jpJMsJK9C', 'Siswa'),
(1163, 'Safira Norila', 'safiranorila@gmail.com', '$2y$10$Lt70TiN14vnnCHx6imzS.O1ym7v9CwbLtWoE7znsTe6aVfMaRJgue', 'Siswa'),
(1164, 'Salsah Irfaniah', 'salsahirfaniah@gmail.com', '$2y$10$VvFQgTSpbUl9yP2xpk6nR.l2iPb34MYbG83voQLUImoS.syd6KXOa', 'Siswa'),
(1165, 'Shanju Ardian Putra', 'shanjuardianputra@gmail.com', '$2y$10$nzP4F5naP0rHkrip8G7duOM0Sz8J0OYGBV.veYnaCbv/d28U8MRN2', 'Siswa'),
(1166, 'Silviani', 'silviani@gmail.com', '$2y$10$/za4Pyvg6HXixVJAZWPTieY3Gx8lZLkn5zFL6f15Dnx.bqlvePnya', 'Siswa'),
(1167, 'Sinta Arianti', 'sintaarianti@gmail.com', '$2y$10$mNsOcOCQQ0E0cKtr6FWgX.ko.TwpNrXqgP6AlSM59n4Oa/MicuamS', 'Siswa'),
(1168, 'Siti Komah', 'sitikomah@gmail.com', '$2y$10$RuR1RgO6qX8hmmM6aPNOBOC2jmNu4GF5BFxVoN0ifEni6xpoFM4ZS', 'Siswa'),
(1169, 'Siti Saudah', 'sitisaudah@gmail.com', '$2y$10$8IxVDqHjLOhOtEaOE6VEfeLE9ugBYoyQtwXOgeUf843IMUfPvWfKa', 'Siswa'),
(1170, 'Suci Ramadani', 'suciramadani@gmail.com', '$2y$10$q2Sjcbbym90ztXwJgbiMFeRDx0JM/pVwdQTyogkdwZoK2/6LP9s6S', 'Siswa'),
(1171, 'Sumarni', 'sumarni@gmail.com', '$2y$10$.AhRlC.QItke4BeZvX3dK.x5m2kAaTQ1ShKwCESIjR5TmtolgBo66', 'Siswa'),
(1172, 'Ulan Patmala Sari', 'ulanpatmalasari@gmail.com', '$2y$10$duxdddpnp0iQ9B7Pu3g0leHM9xDHqUOlFTsvGuo5rQoMUzDvKFLF.', 'Siswa'),
(1173, 'Umira', 'umira@gmail.com', '$2y$10$3pGpPKiTI7U5Yi7FxnUDyOmN3DSLfTaMzWhoSKCdefmd78Vwa.M5O', 'Siswa'),
(1174, 'Uswatun Hasanah', 'uswatunhasanah@gmail.com', '$2y$10$Qi9kW5hGeKFwZBD7Qu7zl.bb1u8eYYEB21VOMVOp59BKLT4rhypjy', 'Siswa'),
(1175, 'Aina Pitri Holiza', 'ainapitriholiza@gmail.com', '$2y$10$3LRa3qLlun9NYTHcEzQi8.wcbnRMXlDrB9vLo3ziT5f2rPzaJHsI.', 'Siswa'),
(1176, 'Alfi Syahrin', 'alfisyahrin@gmail.com', '$2y$10$KWK7oIg/I6bEadLNh/3EDeEB9FsEBjz2g7vWxAiThoGS1ClKy7Mj.', 'Siswa'),
(1177, 'Ana Maryani', 'anamaryani@gmail.com', '$2y$10$X/UKiQpslg4ioDXJKwUA9ed58l3Fj/jqNaZS5BVUrf5Um1WZIZ4ZO', 'Siswa'),
(1178, 'Ananda Saputra', 'anandasaputra@gmail.com', '$2y$10$D9MDWuVa.Q9m42BgeSudI.XYH8EopHymfzWoCfi3vC1GEUsDB/sny', 'Siswa'),
(1179, 'Antoni Saputra Gunawan', 'antonisaputragunawan@gmail.com', '$2y$10$X1H2oYwN9XiOcA5vRNheveM8/MZ6eNKWXIhr0UKZQZ9y/VOX4R8by', 'Siswa'),
(1180, 'Arya Difarylla', 'aryadifarylla@gmail.com', '$2y$10$hZurv7iIwS8tYkZoOW1xYeq6LPxvVJ5iAlwOzz/hDHhxJ2tr0RFD2', 'Siswa'),
(1181, 'Denny Heriyanto', 'dennyheriyanto@gmail.com', '$2y$10$RpuFdUd4H/uf2Je/vHL67uLxrgvLQYyNbHKrl/LhtYLzdQDmKgL9W', 'Siswa'),
(1182, 'Dira Dwi Aurafutri', 'diradwiaurafutri@gmail.com', '$2y$10$wZRdmne4gJYLDZoHhrRugOyRMZIbWNS08ZXvq.IfCPCFsCm0VMQFS', 'Siswa'),
(1183, 'Egi Prayogi Pratama', 'egiprayogipratama@gmail.com', '$2y$10$AZzq.HfY2yNBSWXRGr1JZudo8f751OG7gVsJUzDX5nsNP53JS8g4S', 'Siswa'),
(1184, 'Emilia', 'emilia@gmail.com', '$2y$10$etsECYihs8ThxJr8j8ePzuR0wPRb2e8TTRu7HylobQwtubO8WeEk.', 'Siswa'),
(1185, 'Fendlinalisa Nursyahrin', 'fendlinalisanursyahrin@gmail.com', '$2y$10$AFFJKu6QkhLUaHvnpWGb0ettFuJaY2PFCAK9AFzIa83aG6l7OgBce', 'Siswa'),
(1186, 'Ina Sunarni', 'inasunarni@gmail.com', '$2y$10$nH7T3bO6ZeJefpgpY1M3XO/tbNnnbg5tXjub/gaoJ2HIYCCauKOfy', 'Siswa'),
(1187, 'Mareta Nur Arudah', 'maretanurarudah@gmail.com', '$2y$10$FpWwKLtExJSTtwNEbXAPcOYie2qE7jv/ip0KNBwHYEMYRkHBR9MFK', 'Siswa'),
(1188, 'Mauly Anitia', 'maulyanitia@gmail.com', '$2y$10$Qpi34SGMbpJrtO1vR8A0ie2Pm0iC.MovPn5XhSCZawKHWWQla8fei', 'Siswa'),
(1189, 'Merry Yani Simangunsong', 'merryyanisimangunsong@gmail.com', '$2y$10$hKAPZ4guSADJ9loijpvtGu.YCO3reBrlt3.rjgtqpDurqWnXfF1YG', 'Siswa'),
(1190, 'Michael Parlindungan Samosir', 'michaelparlindungansamosir@gmail.com', '$2y$10$GLQ1AP1HF6ibNEiZKF1IZ.2e/mGfpFaRX9H8/zl72weM4f1ujtxjK', 'Siswa'),
(1191, 'Muhammad Arif', 'muhammadarif@gmail.com', '$2y$10$J70MVtspBhDF0V3STfdEAOtki6Htcg2KBUW4/giXKgEma7kfk05dS', 'Siswa'),
(1192, 'Muhammad Dito Valtian', 'muhammadditovaltian@gmail.com', '$2y$10$Kzl4RMUizi79ahlkHQJ6au80xbbSl8hIOZw0zJc.uq9G4MtEobZeK', 'Siswa'),
(1193, 'Muhammd Usman', 'muhammdusman@gmail.com', '$2y$10$xyxR7sUCPWKgbGdJqt57Buhi5pM0yFrJf7humQ.C3bUtAapUtWs5i', 'Siswa'),
(1194, 'Neli Aini', 'neliaini@gmail.com', '$2y$10$AeB0krW/0OzPaAFg/vVif.ETYVVifsKJUKROKGyOczswIBHxCbAae', 'Siswa'),
(1195, 'Nurul Hidayati Arifa', 'nurulhidayatiarifa@gmail.com', '$2y$10$WDDJG/SUJ5/gbZatmxnJXe303dws9Q3BbbERAZff0kOHg9ol2HZC6', 'Siswa'),
(1196, 'Ocie Syafni', 'ociesyafni@gmail.com', '$2y$10$u2X8XsR3.7N7GooLnwyf6OStnmSxB5tka0/73cNNCIK1MSqWI9tTG', 'Siswa'),
(1197, 'Resi Septia Isra', 'resiseptiaisra@gmail.com', '$2y$10$gIcI1Mq5GtMkoY21twSt8ey40DcAgqEVZ/.51Pj.JGtiUSpgasTKG', 'Siswa'),
(1198, 'Revo Muhamad Saputra', 'revomuhamadsaputra@gmail.com', '$2y$10$P9zaoaFVNehiMlmmqxTWVeX40BSIBC1I2/pYp9x92usEL/HUTxULq', 'Siswa'),
(1199, 'Riki Sardiansah', 'rikisardiansah@gmail.com', '$2y$10$Ptv0MEYGdWaOD6FAR9gzau867VPg1ZY5UlfHxJP0FUNH3OmV.zJYO', 'Siswa'),
(1200, 'Riska Umariah', 'riskaumariah@gmail.com', '$2y$10$M5k3ECtIo35p1.cHI7ZOH.zC4ccvxFoQIK9BpvEVPUHAAh1OxNeny', 'Siswa'),
(1201, 'Riski Roma Dani', 'riskiromadani@gmail.com', '$2y$10$OnlkRlETavjcR27HTvuuWOc.oTaU61A7lFW2nXePbJtUS91JYuS1W', 'Siswa'),
(1202, 'Ultira Dwi Rahayu', 'ultiradwirahayu@gmail.com', '$2y$10$36SEQLYxSp5sWxzEsSaPN.V7xgPVD1HrLiazGAkjXcMtwKtbS1Ve.', 'Siswa'),
(1203, 'Zaqiyah Risky Fadilah Muis', 'zaqiyahriskyfadilahmuis@gmail.com', '$2y$10$RmfUnz91Ia3eghnrTkbIYebk/DaXz9ct9zFBsHCmxyev7bc85YxeC', 'Siswa'),
(1204, 'Adi Tegar Pambudi', 'aditegarpambudi@gmail.com', '$2y$10$6xyHJUnnqktu5Sbp.KwRZecEe9xHuz4uvL/pCRaVx3ppDj4D.B7SO', 'Siswa'),
(1205, 'Alifya Arna Darmawan', 'alifyaarnadarmawan@gmail.com', '$2y$10$3dsjOj/4vFjj7JhTi9ELmuklZucZle.FNGgxuOXR6KV/QEyAmIE2e', 'Siswa'),
(1206, 'Anita Zhahara', 'anitazhahara@gmail.com', '$2y$10$nBtkQvzcZd7mfEez57clCOKbBjssogWSY524WZgaN2Ro/qWtQgvum', 'Siswa'),
(1207, 'AZZALIA CHINTA SYAHFIDA', 'azzaliachintasyahfida@gmail.com', '$2y$10$XpiHOKdVz2Gl/60RxkYAuu8ByQKISKEdRpo.25rgOje/84Ato524O', 'Siswa'),
(1208, 'Ciko Intani', 'cikointani@gmail.com', '$2y$10$LgdfqdFKEJld9gw3WmkHF.BODsgmB4c5v6bIayaG8/.jEPYZTiyA.', 'Siswa'),
(1209, 'Denis Lyon Malau', 'denislyonmalau@gmail.com', '$2y$10$RCJKr9k48GDpfZa5NGOiXO6uw5N3SF8gEDYfDiN95rGwPxvR4k/9e', 'Siswa'),
(1210, 'Deviatul Qotimah', 'deviatulqotimah@gmail.com', '$2y$10$s5rDtoxySXJiATrrb18UP.AYd81rYssDsmIPLgfTv5w1ZBHe6Vxjq', 'Siswa'),
(1211, 'Fahri Hidayat', 'fahrihidayat@gmail.com', '$2y$10$ZifpXR9nFNszHc7nt8.YuepxZ4Awh8Ts.K1tqbS3OFKMsYYutW7Nu', 'Siswa'),
(1212, 'Febrio Valentino', 'febriovalentino@gmail.com', '$2y$10$wbTig2PArlUvCbgpv/1UEuuAM5z2XKJmmeSKlhutRuTYYUzPy8Y7S', 'Siswa'),
(1213, 'Happy Aura', 'happyaura@gmail.com', '$2y$10$eYJjnuLOhH7xH2dM7AXZNOntm27xH51A3IYRdM.xjVTm5TUYeObWi', 'Siswa'),
(1214, 'Icha Mognicah', 'ichamognicah@gmail.com', '$2y$10$AiGueNS2oCmZLEsqGovBCeikiAxcU7u2FhJXdkn02ZWidF91xujzO', 'Siswa'),
(1215, 'Khoratun Najwa', 'khoratunnajwa@gmail.com', '$2y$10$R4jjJQLnL3CK9VorIOkQAuCWR.7Yqn6Ab3Ip.gM.7XUwMOYLlu882', 'Siswa'),
(1216, 'Leo Agha Khusayra', 'leoaghakhusayra@gmail.com', '$2y$10$IqAVf.NoxIFWOk09/OJVpe.Zx0Ttu7pX7/q8vpqBu7clnQpCTX5F.', 'Siswa'),
(1217, 'M.pandu Wilantara', 'mpanduwilantara@gmail.com', '$2y$10$bZ0GzP/DLbJB.Y/8pHcR4eSLIFLlnBGLrmgxy77cW0W6UmWApy6dq', 'Siswa'),
(1218, 'Muhammad Farid', 'muhammadfarid@gmail.com', '$2y$10$d23WCgYhPkOchLq3lqV2DO2LjSCsIHvkdVDpOgtmXH6v5YGVAW0c.', 'Siswa'),
(1219, 'Muhammad Nabil Alhafizh', 'muhammadnabilalhafizh@gmail.com', '$2y$10$x04c0kJX1Rp8xvMFewAQm.6G7jP0YiMdtWI22uaIfkXPLos/sNi4e', 'Siswa'),
(1220, 'Muhammad Ridho Nugraha', 'muhammadridhonugraha@gmail.com', '$2y$10$FiyoBTlVfxXOgB3HWnkoQuQdhOaHlptqNc8EjpyVoJePkdRK1Sn8i', 'Siswa'),
(1221, 'Muhammad Zain Frasetiawan', 'muhammadzainfrasetiawan@gmail.com', '$2y$10$bCvziFkowc0gXVYIZPKgTuanSwPuxfkcjI6BGKwIANwJ/vb91WMda', 'Siswa'),
(1222, 'Nadya Sadini', 'nadyasadini@gmail.com', '$2y$10$89Ap8yC0eGTT954/2WUUVuXFKEFpfAUTwHLM14M53wDdAf4bffyQC', 'Siswa'),
(1223, 'Najwa Fazhira', 'najwafazhira@gmail.com', '$2y$10$L6IdLi8fSUgQzl13PzWiLOXsNy1M/kB6CY8evx3LqCjx1.rTVmrQG', 'Siswa'),
(1224, 'Nanda Devita Sari', 'nandadevitasari@gmail.com', '$2y$10$NMtKkd94IvJtB4DAZQknueV0bwLTOn.EyhsDIX295C3dC0sJH65Zi', 'Siswa'),
(1225, 'Nessie Gusriyani', 'nessiegusriyani@gmail.com', '$2y$10$muZ/fsvCVoFYe5flTd1Pp.Wg6BnsFi0fbgjS/EYnNAh4QLoESYha.', 'Siswa'),
(1226, 'Puspandhari Ilsa Pinasty', 'puspandhariilsapinasty@gmail.com', '$2y$10$y8Gr85/Jhd6CBVmKo6Kjp.S3xV1Wll1lSgBNrfEa0ZuhhlOy/QRMS', 'Siswa'),
(1227, 'Qonita Hafiza', 'qonitahafiza@gmail.com', '$2y$10$CR6y9D8bgudqScUq0owq3OFhMe1qwjzko04E3mNxyLTZNzjspU2/a', 'Siswa'),
(1228, 'Raihan Naufal Muzakki', 'raihannaufalmuzakki@gmail.com', '$2y$10$Qxip7hW0kc6q7ntitpvF9O.Sx1E6hpVcUG8u1XxV.nfzXbPimicie', 'Siswa'),
(1229, 'Reva Gari Mustika', 'revagarimustika@gmail.com', '$2y$10$zJNPrWpiMpZoA2rox5FJ9ek9uiFcE88g0raOxcnMDBUy9vbdojOye', 'Siswa'),
(1230, 'Sabrina Nurchalisa', 'sabrinanurchalisa@gmail.com', '$2y$10$6pMoDQ.PIug5xAuv0LihG.OZzjdzSfhhvGS.4TN2gcLGzTd2Rlz8a', 'Siswa'),
(1231, 'Syafira Salsa Ramadhinta', 'syafirasalsaramadhinta@gmail.com', '$2y$10$1Uxl2.QUwmVNm9qvp6gcyONCRBf.ejr0WkE3dRnOI9NOkuytHniiK', 'Siswa'),
(1232, 'Tanu Wijaya', 'tanuwijaya@gmail.com', '$2y$10$SqAnhMrQ1XSMkh94GXs2VOW2GSBBErJGV8uWF7CvIn51DeO5XMepm', 'Siswa'),
(1233, 'Try Mutiara Insani', 'trymutiarainsani@gmail.com', '$2y$10$u2KUp3iJGiuUezy6ZTNZz.uYttzK0O3oew3dh1RRpvx5bO7qUjRWq', 'Siswa'),
(1234, 'Tsania Nabila Izzatia', 'tsanianabilaizzatia@gmail.com', '$2y$10$J.S.76A5/viONx/itbNBAOA4Lcmg5iqrljK6Q3b596Zaqhl.z2KO2', 'Siswa'),
(1235, 'Yogi Kurniawan', 'yogikurniawan@gmail.com', '$2y$10$vdhcYVCp/Mu6EJVPifH05.17HlXQAfBlmAvUzudaUdJ8IV6eRQo7O', 'Siswa'),
(1236, 'Agun Andika Saputra', 'agunandikasaputra@gmail.com', '$2y$10$SNB/PcDZV/1JWFg1VYbpre7CFKb41mbjBUIEJNTxhEAxFL3TR6Oiy', 'Siswa'),
(1237, 'Aldi Saputra', 'aldisaputra@gmail.com', '$2y$10$AB31wrm2sBbgfV38rz1hFet0WAhkSk2NRxV5YfJaL0TUeVxpmJvgq', 'Siswa'),
(1238, 'Anton Murdiansah', 'antonmurdiansah@gmail.com', '$2y$10$29ZUqAQ529WbAe0oBa8SxevahKWFeCqf.OAYxqGhAjnGsKramK6/m', 'Siswa'),
(1239, 'Auzza Dhuha Wijaya', 'auzzadhuhawijaya@gmail.com', '$2y$10$Z.gE0RPFBa.VM8KteX/zcOLpnHRnoH0jIgRcd.vVi5OjidWmqyxR.', 'Siswa'),
(1240, 'Bunga Pefrianti', 'bungapefrianti@gmail.com', '$2y$10$YkmEv5wC7HaGrU6v7plosuETnDjMa0xgo1w6Qe1e2wZi2YhOVW9NG', 'Siswa'),
(1241, 'Chandra Firmansyah', 'chandrafirmansyah@gmail.com', '$2y$10$oHdQ7ue/f7vSi8/giZY1xOGsmerIP6loARSA2RMwdpHBQPW504k6a', 'Siswa'),
(1242, 'Dea Amelia Putri', 'deaameliaputri@gmail.com', '$2y$10$ZgY1bIEHjTQk/tRmr4aenu1.48usMvxRHAbkynXxaqyYz9ZFYEN32', 'Siswa'),
(1243, 'Dian Puspita Sari Br Sitepu', 'dianpuspitasaribrsitepu@gmail.com', '$2y$10$bM93boTOK2A8/R2VeCKhgOnMOu2JIPtK4.0LZyMGDTCJq4Nvwoqc2', 'Siswa'),
(1244, 'Dinda Melati Putri', 'dindamelatiputri@gmail.com', '$2y$10$Np7xwno694sTz35nm3DnuOudqfElSwdB8jv673e2JQHrk.SLfiiya', 'Siswa'),
(1245, 'Farhan Dwi Ramadan', 'farhandwiramadan@gmail.com', '$2y$10$iUuHnhbs0Z3vnvr8VcDeJ.vpH3ULjD6lm74Ua0pwNQ59FPLbn1HU6', 'Siswa'),
(1246, 'Fiki Nuraqmal', 'fikinuraqmal@gmail.com', '$2y$10$/HvKWKVcuOqv9YW01IemCOiB1eu7VLfd7jdHQVY2z6/mj49y3t4h2', 'Siswa'),
(1247, 'Fionika Yulianisya', 'fionikayulianisya@gmail.com', '$2y$10$HUpB2KiqPSwFND/PhSdq6.uC1vKg.uLEczF17QesjSzSVHx0eOUbm', 'Siswa'),
(1248, 'Fitri Mayang Sari', 'fitrimayangsari@gmail.com', '$2y$10$1Kocx701RnbdV2YB8eMNi.0hKoM9LB3YalVCjvZAeuTVI8dH4sTFC', 'Siswa'),
(1249, 'Fuji Cantika', 'fujicantika@gmail.com', '$2y$10$XgdItogz20MstMmcqmEck.XgGicmVeAqOwS9CVbbY4dHmUPaW2o.6', 'Siswa'),
(1250, 'Glory Irene', 'gloryirene@gmail.com', '$2y$10$aBIZ1N2InaENMgFIpC/RjegD5/XkAOIjjiGFtC9JTO7MQW9jjghPK', 'Siswa'),
(1251, 'Hani Syakila', 'hanisyakila@gmail.com', '$2y$10$ZRpthz.aPp4t6iDuXJ0tguBoStWiVVfBNM0dpxQ5DVk/QhPUnwtni', 'Siswa'),
(1252, 'Iqbal Darmawan', 'iqbaldarmawan@gmail.com', '$2y$10$TJFKfC/Zw7itJyHvMPkybeIxNg3VyLcPFLLTbmenD88BSu781llNG', 'Siswa'),
(1253, 'Jihan Azzahra', 'jihanazzahra@gmail.com', '$2y$10$bMBzUL4vI7M3cc6zHJ53t.6ZsIyKU8H2zbtBJElxC1fQCZ2CYeekK', 'Siswa'),
(1254, 'M. Daffa Surya Alamsyah', 'mdaffasuryaalamsyah@gmail.com', '$2y$10$94Hkq1s7UhrQ5vF8WJKVMOOJoCLl/rbEvfgni6afh8/UrMi7EGdhW', 'Siswa'),
(1255, 'Miftahul Ardiansyah', 'miftahulardiansyah@gmail.com', '$2y$10$mT2JmrsA5Zmet66YVfsezeInPSLOHYyIumQCi8y03EU25AAkbz9IS', 'Siswa'),
(1256, 'Muhammad Abdizzikri Alfaj Diwi', 'muhammadabdizzikrialfajdiwi@gmail.com', '$2y$10$KNXLl3myXqTgbrgx1FSlVexWOyBqWmVeys5XqZjEGhxmf8W9Ppmiu', 'Siswa'),
(1257, 'MUHAMMAD AZKA ANDRIANO', 'muhammadazkaandriano@gmail.com', '$2y$10$Y9sIf7pz2jrBSbi6WxdUKe.BnyhAfIP3BEqbdevBtgHKRmUYbUt7G', 'Siswa'),
(1258, 'Nida Natriya', 'nidanatriya@gmail.com', '$2y$10$RdGAhkruwyxV8VMlytZppOPebTONFOqdIPS1LBbWOcU63K8n7NNQC', 'Siswa'),
(1259, 'NOVALIA SARI PUTRI', 'novaliasariputri@gmail.com', '$2y$10$.U7vfKuCqcP2BtmitdQTPeeSHEmE8spaPD1T7fKpj6eMY9kU80I8e', 'Siswa'),
(1260, 'Razin Rajma Anisa', 'razinrajmaanisa@gmail.com', '$2y$10$ldm.M2EtesTPu7tVGBrB2uNoEzD4a4M8rwcGNyDfsW0viCAFlGfEW', 'Siswa'),
(1261, 'Reyhan Mirtovani', 'reyhanmirtovani@gmail.com', '$2y$10$pJppvk88MuVnl3HQ1uxz2eAhQ25yj5D/nY/ndKOXxngM.y4joByqO', 'Siswa'),
(1262, 'Risnayogi Dwi Syafitri', 'risnayogidwisyafitri@gmail.com', '$2y$10$vdcuGkhcM/cPk4srnEdOE.sEQ5lNS0wBs6pldIhuhBfg4blPrj9.S', 'Siswa'),
(1263, 'Romi Wijaya', 'romiwijaya@gmail.com', '$2y$10$G2YHA/cgfVNFMDNZtHM0O.schTDl5vt2bpE0L/tf/oUXhAxyM6/Le', 'Siswa'),
(1264, 'Siti Saadah', 'sitisaadah@gmail.com', '$2y$10$vvZGHQ1VYE6Lx0IBWRsEa.dSkB/BVWkcVotoZVpWfbh2K5YNaQav.', 'Siswa'),
(1265, 'Al Musyowir Ilyas', 'almusyowirilyas@gmail.com', '$2y$10$SS0JiYH/ytu500e8UCzfHOlEPTpEeWUbrLML8mRovU7Lhv7690gEi', 'Siswa'),
(1266, 'Andri Maulana Hisbullah', 'andrimaulanahisbullah@gmail.com', '$2y$10$bjlp9VjNFVpDFlHEdcQbzuhGukPNlHWMZ4P/wapJFLJbEF.RLsgpK', 'Siswa'),
(1267, 'Azizah Wahyu Istiqomah', 'azizahwahyuistiqomah@gmail.com', '$2y$10$SIobSRaXdBAeolkZhBnseeJcYTRmSMGDVMBEcrALbtBSAZBUfKXdy', 'Siswa'),
(1268, 'Bagas Andhika Candra', 'bagasandhikacandra@gmail.com', '$2y$10$HrHyjeYikvrkOfNkSa5/K.lmexJyhkTThw0yGni3lG7aHyFv.2xDW', 'Siswa'),
(1269, 'Bayu Hermawan', 'bayuhermawan@gmail.com', '$2y$10$RwM1oxeowEYwVFEOlO64x.89/tf8xEdoXKkzqnYZUmsEuT7LXwOYi', 'Siswa'),
(1270, 'Daffa Satrio Pamungkas', 'daffasatriopamungkas@gmail.com', '$2y$10$7E5GF8Dnx4ClEhT7bL6hfOtcxWCgpJP1YJVgyJmhuQF6OBYBWSTDe', 'Siswa'),
(1271, 'Farrelio Dwi Fernando Foyi', 'farreliodwifernandofoyi@gmail.com', '$2y$10$r.Tf8OqdAJymUfR7wWAKyu5KtyKENnvO.1Y.4R2NEkUhDQ96OVWsC', 'Siswa'),
(1272, 'Fauzan Tri Wanda', 'fauzantriwanda@gmail.com', '$2y$10$Ma/SIxVxp7a6NvULg5KLUe7up5sP0vONc4VxS3HCiZ47ru.vsEuf6', 'Siswa'),
(1273, 'Ibna Itazhala Annur', 'ibnaitazhalaannur@gmail.com', '$2y$10$XNopX6oyGQBgIcLjYmMEqOPibIYnOF/NDoepWrLVomDglEdMOoiRa', 'Siswa'),
(1274, 'Ichfan Zikri', 'ichfanzikri@gmail.com', '$2y$10$PHfJR19FluLS/CPNa079ouU4Sh278zh3l1fmY7EpjfIVbG8/stdwq', 'Siswa'),
(1275, 'Irga Alpendi', 'irgaalpendi@gmail.com', '$2y$10$NHdScQXW5JUrYmtMdbsCtOY8/9RcPiujtxyGjrqKPBW/L2MPdCCVq', 'Siswa'),
(1276, 'Jefry Prasetya', 'jefryprasetya@gmail.com', '$2y$10$l.0SAvEplZfTINC2LXOd2eR9YrWTPZyWSzUg.HG/7uQ6QMJvXDjGW', 'Siswa'),
(1277, 'Jihan Az Zahra Hazirin', 'jihanazzahrahazirin@gmail.com', '$2y$10$lrqHtkQZk7olgh1fXg1bn.H9uJeFPcEkJnSKeC3CTZrRpLFgjsKdW', 'Siswa'),
(1278, 'Krisna Surya Putra Wardana', 'krisnasuryaputrawardana@gmail.com', '$2y$10$1PPCW2T4H5uK0SOoCZiXlegtl4M6QTzCQvK/Is23tGOJdz3/fgGkC', 'Siswa'),
(1279, 'Lia Permana', 'liapermana@gmail.com', '$2y$10$Rfr3mYZokYIIWsFvA1sM3uXz4mdCA2CdXgc694A0A/MwEImfzE05y', 'Siswa'),
(1280, 'Lianda Agustina', 'liandaagustina@gmail.com', '$2y$10$sD5w50W6P34Z7xFLqwbEYOS6IdN5QjKvRkeKm1H3bnGaDRCnkKrC.', 'Siswa'),
(1281, 'Mesi Nosi Dearti', 'mesinosidearti@gmail.com', '$2y$10$NU1AesaIuc6fLw0vhOfbQOwPi7R3hKtJYLxz2FkGgSDy5i3q2/2C2', 'Siswa'),
(1282, 'Morin Dwi Monisa', 'morindwimonisa@gmail.com', '$2y$10$G1qKEKXKnQ/qkneWhr3Ol.IZdt3emCMFNLQPEDpW4JA39Hg2Ok8bm', 'Siswa'),
(1283, 'Mouna Indo Minako', 'mounaindominako@gmail.com', '$2y$10$ux156LLktA/SUmvuFnTTE.CK1wrk2GvOueC/a9xh0k4ckzZExo8rW', 'Siswa'),
(1284, 'Muhammad Wenddy Pratama', 'muhammadwenddypratama@gmail.com', '$2y$10$KHvsfkV1tv79XZ6W0AO2E.MRzKw7ODOhGNT1AjyNZEmi8HRj9OYUu', 'Siswa'),
(1285, 'Nayla Khansa Afdansyaharani', 'naylakhansaafdansyaharani@gmail.com', '$2y$10$8W2RqTi8mkfJbP9goV2aPOSCNpD6/.sXDopZu/wTlg4z1PvJD9lK2', 'Siswa'),
(1286, 'Pinkan Nuansa Putri', 'pinkannuansaputri@gmail.com', '$2y$10$FfvqjlKMbrFPpmaC04txMO4w3HjB/5e8NiyBfMHt/XuGAmVXGlh0e', 'Siswa'),
(1287, 'Putri Melati', 'putrimelati@gmail.com', '$2y$10$lhvl7XbKCBTJiXI8EYkgSOWaKi9jYHcP0ySy/anOTkYCUjc1wEtw2', 'Siswa'),
(1288, 'Refal Juan Fernandes', 'refaljuanfernandes@gmail.com', '$2y$10$S5hHKpuYk1zR3DZtnpEYCefOiBPyDe8ABdPwJcS1G3GSysUZoR1ra', 'Siswa'),
(1289, 'Regina Saidina Putri', 'reginasaidinaputri@gmail.com', '$2y$10$b2H9PvoQV5CpP1NEWJsM9eOpnMFYU2qO7m2QOMx2U8rsIeYx75tQ2', 'Siswa'),
(1290, 'Rinjani', 'rinjani@gmail.com', '$2y$10$5mUOQap14nwycJUR.Y5WWOOveGsg.WpyUvpPytYaXr8I/0pCQ41We', 'Siswa'),
(1291, 'Saqi Azizah Baroza', 'saqiazizahbaroza@gmail.com', '$2y$10$4Ovj14lM6OSKmlNah3N5/O3dLxxM/LlxjbBBsfLApYeeivpFiLbpa', 'Siswa'),
(1292, 'Setiya Huda', 'setiyahuda@gmail.com', '$2y$10$AI9CbIL/JzRec8W7qjxg6.fvnx1MfU3WvXxVnPeoXo2dqVRWaucMi', 'Siswa'),
(1293, 'Sonia Dwi Yolanda', 'soniadwiyolanda@gmail.com', '$2y$10$97E0E3Ux8.g/B4Zy95SXreIcl8kySfbTy6jKaIdQE0qEJ60OpJZk6', 'Siswa'),
(1294, 'Wahyu Diffa Kusuma', 'wahyudiffakusuma@gmail.com', '$2y$10$iSU9vbTPPCRPMuSlkS3uUeDKyLukL80XrM2o7kNOmOcqH8uPQWVA.', 'Siswa'),
(1295, 'Yedhil Nofrian Saputra', 'yedhilnofriansaputra@gmail.com', '$2y$10$KOT4dCeewAHkwu3r.NDcS.VxVRvXHo/Cl61Q4pTOt2.IxQzM1UXIG', 'Siswa'),
(1296, 'Agnia Nurul Azizah', 'agnianurulazizah@gmail.com', '$2y$10$FX.qGS.Ao9x4haS8mAoHK.v7NBxIjUmvesEvkmNFS59b6jj0zPBNW', 'Siswa'),
(1297, 'Agus Triwardini', 'agustriwardini@gmail.com', '$2y$10$SZ0LXcmpTbG7JPjUpGVMKe48luEKKlWv03OSKBKh6EaP9rOhXN3xy', 'Siswa'),
(1298, 'Alif Arya Putra', 'alifaryaputra@gmail.com', '$2y$10$9w1qxfyrjjgf0PW9XxkXMuYw06E6cQy69FhLb8WRuVFTDV5N8wssS', 'Siswa'),
(1299, 'Amanda Yonira', 'amandayonira@gmail.com', '$2y$10$l/576XKYA7/hJGei0Ydz8u6orxycUU1GE9CNGXTnvDOHx7aKlQCKi', 'Siswa'),
(1300, 'Ana Widiyanti', 'anawidiyanti@gmail.com', '$2y$10$frUB6am2xulwlaptETP0C.asg0j6G1CYiYWwV85XuUWGk7E8PnLR.', 'Siswa'),
(1301, 'Angga Al Fitra', 'anggaalfitra@gmail.com', '$2y$10$uKanNdbL/qt0NYClFuWBw..Bgw.A1RS/76dt4jDVxRzT5lfIBPD4m', 'Siswa'),
(1302, 'Anggi Helpita', 'anggihelpita@gmail.com', '$2y$10$anzs2Jdw5rdaEjvZldV4K.sccD2u9wYi.IohDSD8QLNxSyB1WQg06', 'Siswa'),
(1303, 'Della Alzafirah', 'dellaalzafirah@gmail.com', '$2y$10$6sV8UGht8xPgpQxAJrIumeEGvvmgMLL37VpFn1326Z45QeZR9s7FS', 'Siswa'),
(1304, 'Dhea Muthia Anisa', 'dheamuthiaanisa@gmail.com', '$2y$10$DD87b1OWtU7HQSphNHVJG.ylFyv6J6qNjDq6fnOe0oIGZSphVsTxq', 'Siswa'),
(1305, 'Edwin Apriliano', 'edwinapriliano@gmail.com', '$2y$10$WAGTEY3CrjFcmAvJNdW4DuADkpcUDKYdpERTFWomje5XNmbY.1owe', 'Siswa'),
(1306, 'Fitri Ramadani', 'fitriramadani@gmail.com', '$2y$10$MWRvD5zogvTQco0Di0DySefowi9fYmYLx4.JIRDFaslBjrGyKoBQG', 'Siswa'),
(1307, 'Gilang Kurniawan', 'gilangkurniawan@gmail.com', '$2y$10$lNvHPfUoq9PGlUHMN/nCA.3ezSezGTRo9CDLFWbZYTvYKqdfSxQHa', 'Siswa'),
(1308, 'Kesi Desviza Putri', 'kesidesvizaputri@gmail.com', '$2y$10$KRIMfgqoK2.AeBLaJNOsbOGaWL/yXTDluEpxOjv4QaeTizarX1ljq', 'Siswa'),
(1309, 'M. Hendy Setiawan', 'mhendysetiawan@gmail.com', '$2y$10$LOfd3OOYoz4tuFD3ITxUu.wWX.E/Fpki5o7vBWK3xvezCyxKRaW.e', 'Siswa'),
(1310, 'M. Ihsan Abil', 'mihsanabil@gmail.com', '$2y$10$DxGr3hF7shRvvKbQ33XxwuDrXoFe4V0ySUr5.Swmywf1Rhs5staLO', 'Siswa'),
(1311, 'M. Nendi Ferdiansyah', 'mnendiferdiansyah@gmail.com', '$2y$10$qVbN1KmhoT4rx8FO9KwTQ.hlUqWjfrPTCvgBKRE3SHA8SWvv8Xfpi', 'Siswa'),
(1312, 'M. Rendi Arisky', 'mrendiarisky@gmail.com', '$2y$10$pFQvAURHtYX1cAd4QRNi5uAEHOiJL113NY/C2TGzFfYaQNTt9WJAO', 'Siswa'),
(1313, 'Muhammad Ilham Akbar', 'muhammadilhamakbar@gmail.com', '$2y$10$HjSqRbkRbvmq10zkuVoPYOP7FVEgCXByUT2Mx82DB915rHPK7i.Yi', 'Siswa'),
(1314, 'Muhammad Mirza Amrah', 'muhammadmirzaamrah@gmail.com', '$2y$10$xjWd2y/bJ94MB/yBkRtVougeRaSZS2HgTpEZvw.KTiGmJopIuWGJ6', 'Siswa'),
(1315, 'Muhammad Syafiq Alparizi', 'muhammadsyafiqalparizi@gmail.com', '$2y$10$BPUiMrNIocoNBzGoJd4J8Or2RjRJj6kmHBCxzlqMhWg8g0ZtFpmO2', 'Siswa'),
(1316, 'Nita Valeda', 'nitavaleda@gmail.com', '$2y$10$JLjNKUHwitV5FcSHM850UuhrLx80VTNb5cYNS/X.c7BZi9Zw04kyG', 'Siswa'),
(1317, 'Noval Romadhan', 'novalromadhan@gmail.com', '$2y$10$e4ycfz.3EbsMUFzfxVfAdus895psmXsDdrRm/8/IaUWkgMZ8MDuKW', 'Siswa'),
(1318, 'Olivia Sandra Hanifah', 'oliviasandrahanifah@gmail.com', '$2y$10$jNkJIT8athNjb0sMi0746OmMv/sxfnqJdfWAlPGHMYk9ibaUhEPju', 'Siswa'),
(1319, 'Paramananda Aqiela', 'paramanandaaqiela@gmail.com', '$2y$10$Sw2qu3uebZ/uBufSfh5hned9a6iIGrSScFcQG0vGhb.uDgg8zKCFK', 'Siswa'),
(1320, 'Rakhmat Ramadhan', 'rakhmatramadhan@gmail.com', '$2y$10$e3J/vvZFf06yJD6mGbxzcO5OmstSRFBtVislSteDiK9IRBS.R4i.S', 'Siswa'),
(1321, 'Sarah Mardiantika', 'sarahmardiantika@gmail.com', '$2y$10$YRP0Z3iGlSDB4yK9okT8de0FiLmg.rrjSc3JyjsXcrQCbxAqleXlW', 'Siswa'),
(1322, 'SUCI LESTARI.MS', 'sucilestarims@gmail.com', '$2y$10$TwncErKIrKPWHWtgc2hOG.VPeBVtpDt9UKgKyqy7fQ8G31NqMTFvy', 'Siswa'),
(1323, 'Suci Mainta Waode', 'sucimaintawaode@gmail.com', '$2y$10$dB0u0azX.PZq.EIva6GG2O5myDeG3HgLo8j6M.Zq5dZ0XTAwJtXLS', 'Siswa'),
(1324, 'Tita Aulya Nofira. Jk', 'titaaulyanofirajk@gmail.com', '$2y$10$.28E3bByJUR6CoW7fAFAS.ZSrFBF2wpfZBxBp13K8exBQ9Cqd8xXy', 'Siswa'),
(1325, 'Ulfa Uli Yanti', 'ulfauliyanti@gmail.com', '$2y$10$skvVfbbpKgsvSWvukdkgGOLj8tKxfpbRWm2qDMDBVxJ.SzMxF6f96', 'Siswa'),
(1326, 'Zufandri Nuzra Syifaa', 'zufandrinuzrasyifaa@gmail.com', '$2y$10$h/8qfvV87cG8gtfce.121eCC0DaHl663xhqif/qXbfvdqs13u1iT.', 'Siswa'),
(1327, 'Akbar Putra Perkasa', 'akbarputraperkasa@gmail.com', '$2y$10$WsNe3a1xQiKxfLDSegWR9umAGfUj6IBOf7cykWsK4Br/cj/rJc4Rq', 'Siswa'),
(1328, 'Allgani Allbar', 'allganiallbar@gmail.com', '$2y$10$3CibDkiotG60xzahoVksXuWpBh7CFKITeLsV2lRCfXrDXDehIBu7m', 'Siswa'),
(1329, 'Amanda Shasika Devina', 'amandashasikadevina@gmail.com', '$2y$10$clWUFLu81l.NDa1d3sddkO6IjG7blhMrFORIVAx9PyF.fNw4w51w6', 'Siswa'),
(1330, 'Amelia Damita Feodora', 'ameliadamitafeodora@gmail.com', '$2y$10$sHKJELf5IiymBe4RdNXrC.qa08m0eS9dyLQmnXYJ5al/0rxUmFtVe', 'Siswa'),
(1331, 'Anys', 'anys@gmail.com', '$2y$10$VO4dqgtufZTJVq5pIirI/uoc30D9c7oOoXQ7apZJIzeMu8ZImk9ei', 'Siswa'),
(1332, 'Aris Widodo', 'ariswidodo@gmail.com', '$2y$10$rAKLiNR5Xq9Rf03DL6MN5um7I4hv/OHEuEhPDXB8KWPZCkRgtfT1K', 'Siswa'),
(1333, 'Aura Salsabila', 'aurasalsabila@gmail.com', '$2y$10$0SbLUK3eWVN4Sx3KbTlTueLkFYkGDF3O9NP7q48OSKV9FYlbGkB/.', 'Siswa'),
(1334, 'Aurel Nabil Lubis', 'aurelnabillubis@gmail.com', '$2y$10$4L.rCfdODuS1fo.LShGJ5OXkWVkr8UTVPDf2FCPg49myXa/P4aU7i', 'Siswa'),
(1335, 'Ayu Rizkiy Vernanda', 'ayurizkiyvernanda@gmail.com', '$2y$10$zKbL9kf7Wt4Y2scWKxCtAuIaVmByTiybzVhUDKHswCg2f2fOQmMzG', 'Siswa'),
(1336, 'Cinta Gusriyanti', 'cintagusriyanti@gmail.com', '$2y$10$HxSLL2q.Ug8rSIy5HWwrJOBc0zzG2RY/OWmwUOiPYkAiS0kSJNNsa', 'Siswa'),
(1337, 'Delia Rahmah Syarifah', 'deliarahmahsyarifah@gmail.com', '$2y$10$iiK0Rfa94zOoTW0qAGTPlemB0X4FdTZdnp2KzI/ewvQ62IrLQNejG', 'Siswa'),
(1338, 'Dila Yogi Pratama', 'dilayogipratama@gmail.com', '$2y$10$PIEXa1lTaz5uDmnqsoqxteUTcK8nfAksxlQfuMtbGqBqLlIlCEXXq', 'Siswa'),
(1339, 'DIMAS ANDRIAN RAMADHAN', 'dimasandrianramadhan@gmail.com', '$2y$10$xhgbIXq8d9lLwryDXm0xmOKx7utvxmI814mjSFM.YE01oatvKt5kC', 'Siswa'),
(1340, 'Elsa Antoni', 'elsaantoni@gmail.com', '$2y$10$sjHVyIyzUVZk0Bye5tti6utQGYvfEnfp92OHwTeA4vxJ893dPGHdW', 'Siswa'),
(1341, 'Fabiola Darma Ramadhani', 'fabioladarmaramadhani@gmail.com', '$2y$10$q.VGHX60TI3h5mFPBsJobOBoPhz//OfMEc0nH6fTxlHpWmUXNnatu', 'Siswa'),
(1342, 'Farhat Nofrian Latif Maulana', 'farhatnofrianlatifmaulana@gmail.com', '$2y$10$5TJFqE11VUszm6lSGCpnWujuv0jZw1S2M2tKJb3uouM8S.D7fjd.i', 'Siswa'),
(1343, 'Fira Dahlia Wulandari', 'firadahliawulandari@gmail.com', '$2y$10$5kAUTt07syOQCXPuNC2K7e0y1PuJNdCGbfZk5nOz7LkLb5hvdSwn6', 'Siswa'),
(1344, 'Frisca Aulia Putri', 'friscaauliaputri@gmail.com', '$2y$10$QwhuDSJJltTFHiLheaV.ruvoLYzlTpDMq35gkp6XOd1zbGpK114uG', 'Siswa'),
(1345, 'Hegil Hidayatulah', 'hegilhidayatulah@gmail.com', '$2y$10$C7gKZesVLlkES2oelRyMIOR5Bv60V7hFqYoI0Y9q5jZkV6vrfa4aa', 'Siswa'),
(1346, 'Imelda Febrian', 'imeldafebrian@gmail.com', '$2y$10$jI5p4/lQGThgvL8IiWf6CecC1hdVHOtTq00ldFL9WBYZzTTunUMYy', 'Siswa'),
(1347, 'Indra Kesuma', 'indrakesuma@gmail.com', '$2y$10$//CovGBfnR1.PJPQsqaQ4OBW5oXznq73VDYgPcmUfbZEuskV6gB1K', 'Siswa'),
(1348, 'Junita Anggi Rahmawati', 'junitaanggirahmawati@gmail.com', '$2y$10$0oBnUOOYuwKfATfNPnLIMOp4KIWPjc6LGTsRIVf1ya47B9if4u5Se', 'Siswa'),
(1349, 'Khian Sandila Pamungkas', 'khiansandilapamungkas@gmail.com', '$2y$10$727XeGfJdO5j69IVChP9vu2SoKPCpCPbE11jcYXjgm4IPNQbnmFFC', 'Siswa'),
(1350, 'M. Padil Arfandi', 'mpadilarfandi@gmail.com', '$2y$10$ZQZVOJpFkptIQjUF.mDATOGTBzDqLyy6QzLFBCz36m1Qt.WbaOCNG', 'Siswa'),
(1351, 'Mhd Wandri Nurdiansyah', 'mhdwandrinurdiansyah@gmail.com', '$2y$10$I3q78Ck6jsdGxcJPQb3vBOr3dQWj2YzM.ycFz/BS6ITqxWuPyNY0u', 'Guru'),
(1352, 'Muhammat Amara Al Dzikra', 'muhammatamaraaldzikra@gmail.com', '$2y$10$IRjR2740xmFfiW94KA1Mo.84KB8IXCglvhuvlpa9O/tuOElZeF0ki', 'Guru'),
(1353, 'Putie Layun Apriani S', 'putielayunaprianis@gmail.com', '$2y$10$/tEls80yvVoJCCou439nJOpeMAViaWOcjQ45XzX61GzcVtfJfTVGm', 'Guru'),
(1354, 'Putri Aulia Rahmi', 'putriauliarahmi@gmail.com', '$2y$10$e9jddlCxWh13zB54aoKkAOROsIfVw05vLwAJN3ti0FmjUqoWgesja', 'Siswa'),
(1355, 'Putri Samapta', 'putrisamapta@gmail.com', '$2y$10$j2o2KurM0Bg5KMx4taXvv.esWy0.6Nt3jrwNXKJf1noB9oNjarCMC', 'Siswa'),
(1356, 'Ridho Fahrul Rozi', 'ridhofahrulrozi@gmail.com', '$2y$10$J.PPyT4o8iJb5pcqGVGBWOwf5eadUV2Y4cOj9FZ4t9RtVMKvN9X/2', 'Siswa'),
(1357, 'Shavira Chandra Kirana', 'shavirachandrakirana@gmail.com', '$2y$10$krawj/U43nK8IzEk2CR52uBWGb1uNEO.Fx.rk8lxipk35cR9kzw5u', 'Siswa'),
(1358, 'Agie Mustakim Saputra', 'agiemustakimsaputra@gmail.com', '$2y$10$k/A234bdKweut8rUSNCCx./LDYKfcQTwXy0YSQjI5M8GJquDgmvCi', 'Siswa'),
(1359, 'Alan Sodri', 'alansodri@gmail.com', '$2y$10$4UoBnHBtXvBBLDtB1kUiLOMIqP/8dic8VzxGKovF.cYRIpUHoMRzq', 'Siswa'),
(1360, 'Alio Heptiansah', 'alioheptiansah@gmail.com', '$2y$10$yzX01hpfsnVnyR5QkCkjGuBi9iwBoCj.wL4KbFGhWpz5irSCzylui', 'Siswa'),
(1361, 'Alvin Nofri Saputra', 'alvinnofrisaputra@gmail.com', '$2y$10$AbdBMnb8MBLdPCKIxB2e6uaQI5QPz2G2Fie3jOTK5jTr0SewATN/y', 'Siswa'),
(1362, 'Anang Makruf', 'anangmakruf@gmail.com', '$2y$10$oMc78A8VlGeeS9NcoA4Pn.UhZaBjQe/i2C9PWOSGYnVHmJBxV1IUG', 'Siswa'),
(1363, 'Annisa Putri', 'annisaputri@gmail.com', '$2y$10$8ccAH/HWXg8fqQu0m61Yru8cmwfu456SCulHyYy9Rf2C3ZHGXgMfi', 'Siswa'),
(1364, 'Bunga Meisy Astrisia', 'bungameisyastrisia@gmail.com', '$2y$10$DqqsIHANtUAdzUZTm4kbI./qLbRUEdFRYairoOsw8qz8D5pk2agSC', 'Siswa'),
(1365, 'Dela Dwi Amita', 'deladwiamita@gmail.com', '$2y$10$8H0d2dnMYnu.a66SXX0tgeuAKY45JKLJocivCXfwS/DDapc3Qpioe', 'Siswa'),
(1366, 'Delima Br. Nababan', 'delimabrnababan@gmail.com', '$2y$10$uzGLLVeIy.5nw52yeSR2m.8XLb6/coIOZ8NIM9rIIbu0NLkSH9tTG', 'Siswa'),
(1367, 'Dian Rahmadhani', 'dianrahmadhani@gmail.com', '$2y$10$7iTDWoj3DyhafXECqkADZu6IzDWyibyEG.Ew02DUUu1cMdl5vGvjK', 'Siswa'),
(1368, 'Elsa Safitri', 'elsasafitri@gmail.com', '$2y$10$Z9KJA9xHBv1DLZnmEyxHRuchfvsB70/3jNYJoZ8ExmTHJp/Zf.zEq', 'Siswa'),
(1369, 'Fachri Martianda Putra', 'fachrimartiandaputra@gmail.com', '$2y$10$RUL48j5SPgotE13Wr.T4q.cdRNaFHSpultGWNROQZIBfcGMQFqQWe', 'Siswa'),
(1370, 'Fadilla Holidra', 'fadillaholidra@gmail.com', '$2y$10$Sn/RykLk.Ob2hIde59H7G.0hnrCB4rxW1brO0exMAY8YlBtVCfmwi', 'Siswa'),
(1371, 'Lia Manjesna', 'liamanjesna@gmail.com', '$2y$10$ET3.nQmdRDqDeNGcb5MLwe6C5mem7/zU.mh9BY6UW2M6l3UvzNIRq', 'Siswa'),
(1372, 'Lingga Yumike', 'linggayumike@gmail.com', '$2y$10$/9z9yFiuUp9XYshSWbt2Tu8O1j69JSMY3XzP/iwNvZFgilvuEpWQ6', 'Siswa'),
(1373, 'Meri Mustika', 'merimustika@gmail.com', '$2y$10$CTPugwXiK21xFfgromU33.XRR2EMcVrnDZ1tHgZpG/dbqtrSC9Ciq', 'Siswa'),
(1374, 'Muhammad Faqih', 'muhammadfaqih@gmail.com', '$2y$10$iPHIqvG/OBJFw/fVsFGVAuybl8rYFAI9tU.1cUkuJRqy3Pc6DoF3W', 'Siswa'),
(1375, 'Muhammad Fathan Faj', 'muhammadfathanfaj@gmail.com', '$2y$10$eTN0haoJ3P5gSNnnoXtde.kZvsBi.ntepNMV5mAdO3K8MJrf0KQci', 'Siswa'),
(1376, 'Rabima Aulia', 'rabimaaulia@gmail.com', '$2y$10$PnHglEDh32OyLO9/TgpHLeU4kIig7hNWNT3aZ5YAu3/So.hj4e8jC', 'Siswa'),
(1377, 'Rifki Alfarezi', 'rifkialfarezi@gmail.com', '$2y$10$o3HwX..r6qgC1nN3Lbfc4.SgxfhG7oBpdwGP4ub5F4N7n8Xym9InS', 'Siswa'),
(1378, 'Septian Reinaldi', 'septianreinaldi@gmail.com', '$2y$10$TR/c53xmPTBT9HH1Z3dnMuuUxXZMwkJr5WHGsNf5PhJfV0fDWWlM6', 'Siswa'),
(1379, 'Serly Oktavia', 'serlyoktavia@gmail.com', '$2y$10$MdDVseE0hj.dapsP/L/N4eIcP7aBgFNoanJYSm4izPzor8WOmcsUG', 'Siswa'),
(1380, 'Sindi Permata Bunda', 'sindipermatabunda@gmail.com', '$2y$10$J9d6Aexh9OrRLSWawjPRLuPpOaab6MMHAFPTp2Zn94QcOcHOOQssu', 'Siswa'),
(1381, 'Taufik Hidayatullah', 'taufikhidayatullah@gmail.com', '$2y$10$ptwDuFqjFtPeZtXfh4rso.hg/ge/.kbnd8ErtqsWDFNsnmpSlW.GW', 'Siswa'),
(1382, 'Yugo Tianvero.s', 'yugotianveros@gmail.com', '$2y$10$SYIcIUSb6Grxx.pn5XzSY.ScnLaWmH4WCnDPwpcOvDm3xZ7GE4v0C', 'Siswa'),
(1383, 'tere', 'tere@gmail.com', '$2y$10$ME7Y7uVmlb79C/zzvI0.9uVJm3LpctcDADqQwmrkjCl5zsS311LN.', 'Siswa'),
(1384, 'ahmad', 'ahmad@gmail.com', '$2y$10$zVrr4yfvo8.gTUtZ17uk/uSd2700Ejt7a6g5jNl5qyY0yusdQ0ckK', 'Siswa'),
(1385, 'Budi sartono', 'budisartono@gmail.com', '$2y$10$SSqEOue2512SXHcwQg3Su.ZcCBy0m.UKYWdtCywX7m5V.CWzdbSum', 'Siswa'),
(1386, 'Budi artino', 'budiartino@gmail.com', '$2y$10$2yMTBfVcaIh6hVymP7QPKer/puJw/m336xuZc/wR5qf2hk1cGb0DS', 'Siswa'),
(1387, 'budi suratnoo', 'budisuratnoo@gmail.com', '$2y$10$G4LtWG.glQi3ZUX3nQ5d4uZ77mzB08x.GByJUyydXn4zxGno2dB.m', 'Siswa'),
(1388, 'gfhgfjfgj', 'gfhgfjfgj@gmail.com', '$2y$10$VYnaz1Wu04xUmPm1c4ooYe5kPHLlvC9jPEu5icrRgpNTMjy2z1kKO', 'Siswa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1389;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
