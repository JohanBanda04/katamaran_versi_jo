/*
 Navicat Premium Data Transfer

 Source Server         : johan local
 Source Server Type    : MySQL
 Source Server Version : 100427
 Source Host           : localhost:3306
 Source Schema         : katamaranapi

 Target Server Type    : MySQL
 Target Server Version : 100427
 File Encoding         : 65001

 Date: 22/05/2023 15:35:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for agenda
-- ----------------------------
DROP TABLE IF EXISTS `agenda`;
CREATE TABLE `agenda`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `nama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` time(0) NOT NULL,
  `jam_selesai` time(0) NOT NULL,
  `tempat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pakaian` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `peserta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `url_data_dukung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `why` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` datetime(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime(0) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_users`(`id_user`) USING BTREE,
  CONSTRAINT `id_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 203 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of agenda
-- ----------------------------
INSERT INTO `agenda` VALUES (41, 1, 'Bimtek Siswas P3DN', 'b', '2022-07-07', '08:00:00', '10:00:00', 'aula kanwil', 'PDH', 'pimti, pejabat struktural, ', 'null', 'x', NULL, '2022-07-13 03:55:06', '2022-07-13 03:55:06');
INSERT INTO `agenda` VALUES (42, 4, 'Pembukaan Semarak HDKD 77', 'Dibuka oleh wamen', '2022-07-15', '15:00:00', '16:01:00', 'Ruang Rapat', 'Pakaian Olahraga', 'Pimti dan Pejabat struktural', 'null', 'x', NULL, '2022-07-15 10:18:49', '2022-07-15 10:18:49');
INSERT INTO `agenda` VALUES (44, 4, 'KEGIATAN RAPAT KOORDINAS MPN DAN MKN DI BALI', 'ACARA BERLANGSUNG SAMPAI TANGGAL 26 JULI SESUAI SP', '2022-07-23', '08:00:00', '17:00:00', 'BALI ', 'PSL', 'SESUAI SP', 'null', 'x', NULL, '2022-07-25 04:54:33', '2022-07-25 04:54:33');
INSERT INTO `agenda` VALUES (45, 4, ' 	KEGIATAN RAPAT KOORDINAS MPN DAN MKN DI BALI', 'SESUAI SP', '2022-07-25', '08:00:00', '16:00:00', 'BALI', 'PSL', 'SESUAI SP', 'null', 'x', NULL, '2022-07-25 04:55:39', '2022-07-25 04:55:39');
INSERT INTO `agenda` VALUES (46, 4, ' 	KEGIATAN RAPAT KOORDINAS MPN DAN MKN DI BALI', 'SESUAI SP', '2022-07-26', '08:00:00', '16:00:00', 'BALI', 'PSL', 'SESUAI SP', 'null', 'x', NULL, '2022-07-25 04:56:38', '2022-07-25 04:56:38');
INSERT INTO `agenda` VALUES (47, 4, 'Rapat Monitoring dan Evaluasi Pelaksanaan Reformasi Birokrasi B06', 'Rapat Monitoring dan Evaluasi Pelaksanaan Reformasi Birokrasi B06', '2022-07-26', '09:00:00', '12:00:00', 'Ruang Rapat Gedung Utama', 'PDH II', 'Pejabat dan Pegawai yang mengemban fungsi Reformasi Birokrasi', 'null', 'x', NULL, '2022-07-25 08:11:40', '2022-07-25 08:11:40');
INSERT INTO `agenda` VALUES (49, 4, 'Undangan Peringatann Hari Anak Nasional', 'UNDANGAN SEKRETARIAT DAERAH ', '2022-07-28', '08:30:00', '12:00:00', 'TAMAN BUDAYA MATARAM', 'MENYESUAKAN', '-', 'null', 'x', NULL, '2022-07-27 00:19:32', '2022-07-27 00:19:32');
INSERT INTO `agenda` VALUES (50, 4, 'BAKSOS KUMHAM PEDULI DESA TERPENCIL', 'Dalam rangka hdkd', '2022-07-28', '07:00:00', '12:00:00', 'LIAS GANGGA KAB KLU', 'OLAHRAGA', 'seluruh upt', 'null', 'x', NULL, '2022-07-29 01:11:41', '2022-07-29 01:11:41');
INSERT INTO `agenda` VALUES (51, 4, ' Sosialisasi Aplikasi Sistem Informasi Penyelesaian Kerugian Negara', 'Tempat : Media virtual zoom meeting (https://bit.ly/SosialisasiSIPKN)\r\nMeeting id : 650 455 8400\r\nPasscode : SIPKN2022\r\n', '2022-08-02', '08:45:00', '12:00:00', 'ruang rapat (zoom)', '-', '-', 'null', 'x', NULL, '2022-07-29 01:15:18', '2022-07-29 01:15:18');
INSERT INTO `agenda` VALUES (52, 4, 'Donor Darah', 'Donor darah dalam rangka HDKD', '2022-08-01', '08:00:00', '12:00:00', 'Ruang Rapat Gedung Utama', 'PDH II', 'Seluruh ASN', 'null', 'x', NULL, '2022-07-29 02:16:02', '2022-07-29 02:16:02');
INSERT INTO `agenda` VALUES (53, 4, 'Wisudawan Purnabhakti sekaligus Sertijab Kepala Balitbang Kumham ', 'Wisudawan Purnabhakti sekaligus Sertijab Kepala Balitbang Kumham  secara virtual', '2022-08-01', '10:00:00', '12:00:00', 'Aula Kanwil', 'PDU II', 'Pimti, dan Wisudawan', 'null', 'x', NULL, '2022-07-29 02:17:25', '2022-07-29 02:17:25');
INSERT INTO `agenda` VALUES (54, 4, 'Penandatanganan Kontrak Addenndum Bantuan Hukum', 'Penandatanganan Kontrak Addenndum Bantuan Hukum', '2022-08-01', '14:59:00', '16:00:00', 'Ruang Rapat Gedung Utama', 'PDH II', 'Kakanwil, Kadiv Yankum dan OBH', 'null', 'x', NULL, '2022-07-29 02:19:00', '2022-07-29 02:19:00');
INSERT INTO `agenda` VALUES (55, 4, 'Pelaksanaan Ujian Tertulis Diksuskim', 'Pelaksanaan Ujian Tertulis Diksuskim', '2022-08-02', '09:00:00', '12:00:00', 'Aula Kanwil', 'PDH II', 'peserta ujian Diksuskim jumlah 24 orang', 'null', 'x', NULL, '2022-07-29 02:34:39', '2022-07-29 02:34:39');
INSERT INTO `agenda` VALUES (56, 4, 'Undangan pernikahan', 'Muhammad Javier Adam & Tania Muji lestari ', '2022-08-07', '18:00:00', '09:00:00', 'GOLDEN BALLROOM The Sultan Hotel & Residence Ballroom ', 'Menyesauikan', '-', 'null', 'x', NULL, '2022-08-01 01:47:44', '2022-08-01 01:47:44');
INSERT INTO `agenda` VALUES (57, 4, 'Undangan Penutupan Latsar CPNS Gel I (Eksternal)', 'hari, tanggal : Kamis, 4 Agustus 2022\r\npukul : 15.00 WIB s.d. Selesai\r\ntempat : Zoom Meeting\r\nID: 846 1464 3741\r\nPasscode: 241648', '2022-08-04', '15:00:00', '16:00:00', '-', '-', '-', 'null', 'x', NULL, '2022-08-01 03:22:51', '2022-08-01 03:22:51');
INSERT INTO `agenda` VALUES (58, 4, 'Undangan pembukaan Futsal', '-', '2022-08-02', '08:00:00', '10:00:00', 'Lapangan Futsal Al-Kamal Narmada', 'Menyesauikan', 'UPT SELOMBOK ', 'null', 'x', NULL, '2022-08-01 07:37:02', '2022-08-01 07:37:02');
INSERT INTO `agenda` VALUES (59, 4, 'Undangan Pembukaan Rekon BMN secara Virtual', 'Kegiatab dibuka oleh Sekjen', '2022-08-02', '09:00:00', '12:01:00', 'Ruang Rapat Gedung Utama', 'PDH II', 'Kakanwil, Para Kadiv, Pejabat Struktural', 'null', 'x', NULL, '2022-08-01 07:43:05', '2022-08-01 07:43:05');
INSERT INTO `agenda` VALUES (60, 4, 'RAPAT PARIPURNA ISTIMEWA DPRD KAB LOMBOK UTARA ', 'DALAM RANGKA PERESMIAN DAN PENGUCAPAN SUMPAH JANJI PERGANTIAN ANTAR WAKTU KETUA DPRD KLU', '2022-08-03', '10:00:00', '11:00:00', 'Ruang Sidang DPRD KLU', 'PSL (FULL DRESS)', '-', 'null', 'x', NULL, '2022-08-02 07:14:12', '2022-08-02 07:14:12');
INSERT INTO `agenda` VALUES (61, 4, 'Undangan Kegiatan Seminar Hukum dengan Topik Akselerasi Indonesia Sadar Hukum Dalam Menghadapi Dinamika Bidang Hukum dan HAM di Era Globalisme', 'hari/tanggal : Rabu 10 Agustus 2022;\r\nwaktu : (jadwal terlampir);\r\ntempat : Zoom Meeting Conference\r\nMeeting ID: 812 4668 5874\r\nPasscode: KUMHAM-RWI\r\nhttps://us02web.zoom.us/j/81246685874?pwd=cmFrcmQzMnQwZVovSU\r\nFacFhsTXB4dz09', '2022-08-10', '09:00:00', '10:00:00', 'ruang rapat', 'Menyesuaikan ', '-', 'null', 'x', NULL, '2022-08-03 01:34:10', '2022-08-03 01:34:10');
INSERT INTO `agenda` VALUES (62, 4, 'Undangan Pembahasan Virtual Run Dalam Rangka HDKD Ke- 77', 'Hari/Tanggal : Rabu, 03 Agustus 2022\r\nPukul : 15.00 WIT s.d selesai\r\nTempat : Ruang Kerja masing-masing\r\nMeeting ID dan Passcode : ( Akan disiapkan oleh PUSDATIN )', '2022-08-03', '15:00:00', '16:00:00', 'Ruang Kerja masing-masing', '-', 'kepala kantor wilayah', 'null', 'x', NULL, '2022-08-03 01:41:07', '2022-08-03 01:41:07');
INSERT INTO `agenda` VALUES (63, 4, ' Undangan Kegiatan Penguatan Tugas dan Fungsi Kehumasan', 'tautan : https://bit.ly/PenguatanKehumasan\r\nmeeting ID : 874 0739 9467\r\npasscode : HUMAS-22', '2022-08-15', '09:00:00', '12:00:00', 'Hadir virtual dari kantor masing – masing', 'Menyesuaikan', 'giat Penguatan Kehumasan yang akan dipimpin langsung oleh Bapak Sekretaris Jenderal secara hybrid', 'null', 'x', NULL, '2022-08-12 08:36:01', '2022-08-12 08:36:01');
INSERT INTO `agenda` VALUES (64, 4, 'Kegiatan pembukaan rakor MKN', '-', '2022-08-15', '08:30:00', '09:30:00', 'Aruna Hotel, senggigi', 'PDH', 'notaris, APH dan Pimti ', 'null', 'x', NULL, '2022-08-12 08:42:35', '2022-08-12 08:42:35');
INSERT INTO `agenda` VALUES (65, 4, 'undangan dari Danlanud ', 'undangan dari Danlanud dalam rangka acara penutupan giat pelangi nusantara pada \r\nHari : Minggu\r\nTanggal : 28 Agustus 2022\r\nPukul : 08.30 WITA\r\nTempat : Ex Bandara Selaparang', '2022-08-28', '08:30:00', '10:00:00', 'Exs Bandara selaparang', '-', '-', 'null', 'x', NULL, '2022-08-29 02:04:23', '2022-08-29 02:04:23');
INSERT INTO `agenda` VALUES (66, 4, 'Pembukaan Kegiatan Diseminasi Layanan Partai Politik', 'Pembukaan Kegiatan Diseminasi Layanan Partai Politik', '2022-08-29', '08:00:00', '10:00:00', 'Prime Park Mataram', 'PDH II', '-', 'null', 'x', NULL, '2022-08-29 02:31:45', '2022-08-29 02:31:45');
INSERT INTO `agenda` VALUES (67, 4, 'Undangan Webinar ', 'Undangan Webinar Griya Abhipraya Komitmen Kolaborasi Pemasyarakatan, Bersama Pasti Bisa\r\n', '2022-08-29', '09:00:00', '13:00:00', 'Ruang Rapat Gedung Utama', 'PDH II', '-', 'null', 'x', NULL, '2022-08-29 02:34:46', '2022-08-29 02:34:46');
INSERT INTO `agenda` VALUES (68, 4, 'Upacara Tabur Bunga', 'Seluruh upt', '2022-08-11', '07:30:00', '09:00:00', 'Taman makam pahlawan', 'PDU II', 'Seluruh upt', 'null', 'x', NULL, '2022-08-29 04:19:42', '2022-08-29 04:19:42');
INSERT INTO `agenda` VALUES (69, 4, 'Obrolan Perancang PP', 'Seluruh upt', '2022-08-11', '10:30:00', '12:00:00', 'Ruang Rapat Gedung Utama', 'PDU II', 'Seluruh upt', 'null', 'x', NULL, '2022-08-29 04:21:46', '2022-08-29 04:21:46');
INSERT INTO `agenda` VALUES (70, 4, 'Pembukaan pekan olahraga', 'a', '2022-08-16', '07:30:00', '09:59:00', 'rubasan', 'olahraga', 'Seluruh upt', 'null', 'x', NULL, '2022-08-29 04:23:30', '2022-08-29 04:23:30');
INSERT INTO `agenda` VALUES (71, 4, 'Undangan Workshop Penyelesaian Substansi Paten DJKI', 'DJKI', '2022-08-30', '13:30:00', '14:30:00', 'Hotel Aston inn Mataram', 'PDH II', 'DJKI', 'null', 'x', NULL, '2022-08-29 08:45:35', '2022-08-29 08:45:35');
INSERT INTO `agenda` VALUES (72, 4, 'Undangan Rapat Pembahasan Materi II Tim Kelompok Kerja Analis dan Evaluasi Hukum', 'UNDANGAN', '2022-08-30', '09:00:00', '10:00:00', 'Ruang Legal Drafter Kanwil NTB', 'PDH II', 'A', 'null', 'x', NULL, '2022-08-29 08:46:50', '2022-08-29 08:46:50');
INSERT INTO `agenda` VALUES (73, 4, 'Pembukaan Kegiatan Mobile IP Clinic Property', 'Kegiatan dibuka oleh Plt. Direktur Jenderal Kekayaan Intelektual', '2022-09-01', '08:30:00', '12:00:00', 'Hotel Prime Park Mataram', 'PDH III', 'Dinas Koperasi dan UMKM', 'null', 'x', NULL, '2022-08-30 01:34:00', '2022-08-30 01:34:00');
INSERT INTO `agenda` VALUES (74, 4, 'Undangan Diskusi Teknis Layanan Kewarganegaraan', 'Kebijakan kewarganegaraan pasca berlakunya pp no 21 tahun 2022 tentang perubahan atas pp no 2 tahun 2007', '2022-09-01', '09:00:00', '12:00:00', 'Ruang Rapat Gedung Utama', 'PDH III', 'Keynote speech : Dirjen AHU', 'null', 'x', NULL, '2022-08-30 01:38:51', '2022-08-30 01:38:51');
INSERT INTO `agenda` VALUES (75, 4, 'Undangan Pembukaan Kegiatan Peningkatan Pemahaman Penyusunan Prolegda dan Naskah Akademik', 'Undangan Pembukaan Kegiatan Peningkatan Pemahaman Penyusunan Prolegda dan Naskah Akademik', '2022-09-14', '09:00:00', '19:00:00', 'Hotel Golden Palace Mataram', 'PDH III', 'JF Perancang PerUUan dan Analis Hukum', 'null', 'x', NULL, '2022-08-30 02:07:59', '2022-08-30 02:07:59');
INSERT INTO `agenda` VALUES (76, 4, 'Kunjungan plt. Dirjen kekayaan Intelektual', 'Tamu', '2022-09-01', '07:00:00', '22:00:00', 'Lombok', 'Menyesauikan', 'KANWIL DAN SATKER', 'null', 'x', NULL, '2022-08-30 09:09:39', '2022-08-30 09:09:39');
INSERT INTO `agenda` VALUES (77, 4, 'Rangkaian kegiatan Plt Dirjen KI', 'Layanan Konsultasi dan Pengajuan\r\nPermohonan dan atau Pencatatan KI:\r\nHak Cipta, Merek, Desain Industri, Paten,\r\nKIK & IG (disupport oleh Tim TI-KI)', '2022-09-02', '09:00:00', '11:31:00', 'KANTOR WILAYAH KEMENTERIAN HUKUM DAN HAM NTB', 'Menyesauikan', 'Panitia Kanwil dan Tim DJKI', 'null', 'x', NULL, '2022-09-01 07:05:48', '2022-09-01 07:05:48');
INSERT INTO `agenda` VALUES (78, 4, 'Undangan kegiatan Podcast opera', 'Meeting ID : 823 2147 8732 \r\npasscode : 733537', '2022-09-06', '10:00:00', '12:00:00', 'ruang rapat (zoom)', 'MENYESUAKAN', '-', 'null', 'x', NULL, '2022-09-05 09:25:45', '2022-09-05 09:25:45');
INSERT INTO `agenda` VALUES (79, 4, 'Pembukaan rakernis pas', 'Pembukaan rakernis pas', '2022-09-06', '19:15:00', '20:00:00', 'jayakarta hotel', 'batik', 'UPT ', 'null', 'x', NULL, '2022-09-05 09:32:43', '2022-09-05 09:32:43');
INSERT INTO `agenda` VALUES (80, 4, 'Penutupan Program Unggulan Mobile Intellectual Property Clinic Tahun 2022', 'Kegiatan Penutupan acara  Program Unggulan Mobile Intellectual Property Clinic Tahun 2022 yang dilakukan secara virtual (Zoom).\r\nMeeting ID: 85930650826 Pass:MIC2022', '2022-09-23', '15:00:00', '17:00:00', 'Kantor Wilayah Kemenkumham NTB', 'PDH', 'Kepala Kantor Wilayah dan jajaran', 'null', 'x', NULL, '2022-09-14 11:52:27', '2022-09-14 11:52:27');
INSERT INTO `agenda` VALUES (81, 4, 'Undangan Kegiatan Podcast Opera', 'Narasumber : Plt. Dirjen PP', '2022-09-15', '10:00:00', '12:00:00', 'Ruang Rapat Gedung Utama', 'Batik', 'JF Perancang PerUUan dan Analis Hukum', 'null', 'x', NULL, '2022-09-15 02:10:43', '2022-09-15 02:10:43');
INSERT INTO `agenda` VALUES (82, 4, 'Penjemputan Kepala BNN RI', 'penjemputan Kepala BNN', '2022-09-15', '13:30:00', '15:00:00', 'Bandara International ZAM', 'Batik', 'TNI, POLRI dan BNNP', 'null', 'x', NULL, '2022-09-15 02:14:00', '2022-09-15 02:14:00');
INSERT INTO `agenda` VALUES (83, 4, 'Apel Besar NTB Bersinar Bersama TNI, Polri dan Komponen Masyarakat', 'apel bersama', '2022-09-15', '15:30:00', '17:30:00', 'Lapangan Bharadaksa Polda NTB', 'PDH yang berlaku', 'TNI, POLRI dan Komponen Masyarakat', 'null', 'x', NULL, '2022-09-15 02:15:58', '2022-09-15 02:15:58');
INSERT INTO `agenda` VALUES (84, 4, 'Malam Akrab - Membangun Sinergitas & Networking Bidang Pemberantasan', 'Makan Malam dan hiburan', '2022-09-15', '19:00:00', '22:00:00', 'Sea View Aruna Senggigi', 'Western Country', 'TNI, Polri dan Stakeholder', 'null', 'x', NULL, '2022-09-15 03:26:19', '2022-09-15 03:26:19');
INSERT INTO `agenda` VALUES (85, 4, 'Pembukaan Rakor PPNS', 'Rakor PPNS', '2022-09-19', '08:00:00', '12:00:00', 'Ballroom 1 Hotel Aruna Senggigi', 'PDH III', 'PPNS', 'null', 'x', NULL, '2022-09-18 11:42:45', '2022-09-18 11:42:45');
INSERT INTO `agenda` VALUES (86, 4, 'Technical Meeting Persiapan Pelaksanaan Dialog RKUHP', 'TM Dialog RKUHP', '2022-09-20', '09:00:00', '12:00:00', 'Ruang Rapat Gedung Utama', 'PDH II', 'Para Pimti', 'null', 'x', NULL, '2022-09-18 11:43:56', '2022-09-19 09:32:56');
INSERT INTO `agenda` VALUES (88, 4, 'Rapat Koordinasi Pencegahan Tindak Kekerasan Terhadap Perempuan dan Anak', 'Pembahasan pencegahan tindak kekerasan terhadap perempuan dan anak', '2022-09-21', '08:01:00', '12:01:00', 'Aula Kantor DP3AP2KB', 'PDH III', 'Stakeholder terkait', 'null', 'x', NULL, '2022-09-18 11:54:47', '2022-09-18 11:54:47');
INSERT INTO `agenda` VALUES (89, 4, 'Pembukaan Rapat Timpora', 'Rapat Tim Pengawasan Orang Asing', '2022-09-20', '08:00:00', '12:00:00', 'Hotel Aston Mataram', 'PDH II', 'Anggota Tim PORA Provinsi dan Kab. Lombok Utara', 'null', 'x', NULL, '2022-09-19 01:55:29', '2022-09-19 01:55:29');
INSERT INTO `agenda` VALUES (90, 4, 'Refreshment IKPA', 'Refreshment IKPA', '2022-09-21', '10:00:00', '10:30:00', 'Aula Kanwil', 'PDH III', 'Pejabat keuangan dan operator', 'null', 'x', NULL, '2022-09-20 03:30:11', '2022-09-20 16:47:38');
INSERT INTO `agenda` VALUES (91, 4, 'Undangan Rapat Kominda', 'Undangan Rapat Kominda (Komunitas Intelijen Daerah)', '2022-09-21', '13:00:00', '15:00:00', 'Ruang Rapat Presisi Mapolda NTB', 'PDH III ', 'Stakeholder', 'null', 'x', NULL, '2022-09-20 08:49:53', '2022-09-20 08:49:53');
INSERT INTO `agenda` VALUES (92, 4, 'Pelantikan Notaris Pengganti', 'Pelantikan Notaris Pengganti', '2022-09-21', '10:00:00', '12:00:00', 'Ruang Legal Drafter', 'PSL', 'Notaris Pengganti', 'null', 'x', NULL, '2022-09-20 08:50:53', '2022-09-20 08:50:53');
INSERT INTO `agenda` VALUES (93, 4, 'Rapat Koordinasi Penyusunan Metadata Indikator Indeks Hak Asasi Manusia', 'Rapat Koordinasi Penyusunan Metadata Indikator Indeks Hak Asasi Manusia', '2022-09-29', '08:30:00', '12:00:00', 'Ruang Rapat Gedung Utama', 'Menyesuaikan', 'Biro Hukum, Bakesbangpoldagri, LSM, Pusham, Akademisi, dan pegawai Div Yankum', 'null', 'x', NULL, '2022-09-20 08:54:00', '2022-09-21 17:55:35');
INSERT INTO `agenda` VALUES (94, 4, 'Seminar PKN Secara Daring', 'Kakanwil sebagai mentor', '2022-09-26', '11:00:00', '11:45:00', 'Menyesuaikan', 'PDH II', 'Kepala Divisi Pelayanan Hukum dan HAM', 'null', 'x', NULL, '2022-09-22 01:20:22', '2022-09-22 01:20:22');
INSERT INTO `agenda` VALUES (95, 4, 'Presentasi Kajian SIPKUMHAM secara daring', 'Presentasi Kajian SIPKUMHAM secara daring', '2022-09-26', '09:00:00', '12:00:00', 'Ruang Rapat Gedung Utama', 'PDH II', 'Bidang HAM', 'null', 'x', NULL, '2022-09-22 05:45:23', '2022-09-22 05:45:23');
INSERT INTO `agenda` VALUES (96, 4, 'Rapat Koordinasi Penyusunan Metadata Indikator Indeks HAM', 'Dihadiri Direktur Instrumen HAM', '2022-09-30', '08:30:00', '12:30:00', 'Aula Kanwil Kemenkumham NTB', 'Batik / Menyesuaikan', 'Biro Hukum, dan Pegawai Kanwil', 'null', 'x', NULL, '2022-09-22 05:54:55', '2022-09-22 13:55:23');
INSERT INTO `agenda` VALUES (97, 4, 'Pengukuhan GTD Bisnis HAM dan Pencanangan P2 HAM', 'Pengukuhan GTD Bisnis HAM dan Pencanangan P2 HAM', '2022-10-06', '08:59:00', '12:00:00', 'Hotel Senggigi (Tentatif)', 'Menyesuaikan', 'Dirjen HAM, Dir kerjasama ham dan Dir. Penguatan Ham', 'null', 'x', NULL, '2022-09-22 05:57:11', '2022-09-22 05:57:11');
INSERT INTO `agenda` VALUES (98, 4, 'Penandatanganan PKS dengan BNNP NTB', 'Penandatanganan PKS dengan BNNP NTB', '2022-09-26', '13:00:00', '15:00:00', 'BNNP NTB', 'PDH II', 'BNN dan Kanwil Kemenkumham NTB', 'null', 'x', NULL, '2022-09-26 07:48:32', '2022-09-26 07:48:32');
INSERT INTO `agenda` VALUES (99, 4, 'Diseminasi Layanan Partai Politik', 'Diseminasi Layanan Partai Politik', '2022-09-30', '08:00:00', '12:00:00', 'Hotel Astoria Mataram', 'Menyesuaikan', 'Anggota Partai Politik', 'null', 'x', NULL, '2022-09-26 07:51:08', '2022-09-26 07:51:08');
INSERT INTO `agenda` VALUES (100, 4, 'Pembukaan DJKI Mengajar', 'Pembukaan DJKI Mengajar', '2022-09-28', '10:30:00', '12:00:00', 'Ruang Rapat Gedung Utama Kanwil NTB', 'PDH III', 'Kakanwil, Para Pimti dan Pejabat Struktural', 'null', 'x', NULL, '2022-09-26 07:54:35', '2022-09-26 16:19:06');
INSERT INTO `agenda` VALUES (101, 4, 'Pengukuhan dan rapat koordinasi satgas oleh plt. dirjen imigrasi', 'Pengukuhan dan rapat koordinasi satgas oleh plt. dirjen imigrasi', '2022-10-04', '09:30:00', '00:00:00', 'Ruang Rapat Kanwil ', 'PDH II', 'Dihadiri  Menkumham ', 'null', 'x', NULL, '2022-10-04 01:34:43', '2022-10-04 01:34:43');
INSERT INTO `agenda` VALUES (102, 4, 'Pengukuhan dan Rapat Koordinasi Satgas Oleh Plt. Dirjen Imigrasi', 'JADWAL KEGIATAN KANTOR WILAYAH KEMENKUMHAM NTB RABU, 05 OKTOBER 2022 \r\n1. Pengukuhan dan Rapat Koordinasi Satgas Oleh Plt. Dirjen Imigrasi09.0 WITA\r\nRuang Rapat Kanwil\r\n PDH II\r\n Dihadiri langsung oleh Menkumham', '2022-10-05', '09:00:00', '11:00:00', 'Ruang Rapat Kanwil', ' PDH II', 'Dihadiri langsung oleh Menkumham', 'null', 'x', NULL, '2022-10-25 01:44:47', '2022-10-25 01:44:47');
INSERT INTO `agenda` VALUES (103, 4, 'Kunjungan Kerja Pimpinan DPRD Kab Sumbawa Barat (konsultasi terkait pembangunan kantor Pengadilan Negeri di kab Sumbawa Barat dan pemanfaatan Kantor Imigrasi di Kab Sumbawa Barat)', 'Kunjungan Kerja Pimpinan DPRD Kab Sumbawa Barat\r\n(konsultasi terkait pembangunan kantor Pengadilan Negeri di kab Sumbawa Barat dan pemanfaatan Kantor Imigrasi di Kab Sumbawa Barat)\r\n14.00 Wita s/d selesai\r\nKanwil kemenkumham NTB \r\nMenyesuaikan', '2022-10-06', '14:00:00', '15:00:00', ' Kanwil kemenkumham NTB ', 'Kanwil kemenkumham NTB ', 'Menyesuaikan', 'null', 'x', NULL, '2022-10-25 01:48:06', '2022-10-25 01:48:06');
INSERT INTO `agenda` VALUES (104, 4, '1. Sepeda Santai Bersama Kemenkumham NTB dan Kejati NTB', 'JADWAL KEGIATAN KEPALA KANTOR WILAYAH KEMENKUMHAM NTB JUMAT, 07 OKTOBER 2022\r\n\r\n1. Sepeda Santai Bersama Kemenkumham NTB dan Kejati NTB\r\n 07.00 Wita s/d selesai\r\nStart : Kantor Kejaksaan Tinggi NTB\r\nFinish : Kanwil Kemenkumham NTB \r\n Olahraga', '2022-10-07', '07:00:00', '09:00:00', 'Start : Kantor Kejaksaan Tinggi NTB Finish : Kanwil Kemenkumham NTB ', ' Olahraga', 'kajati ', 'null', 'x', NULL, '2022-10-25 01:50:18', '2022-10-25 01:50:18');
INSERT INTO `agenda` VALUES (105, 4, '2. Kunjungan DPRD Kab. Sumbawa (Harmonisasi, Pembulatan dan Pematangan Konsepsi Raperda)', '2. Kunjungan DPRD Kab. Sumbawa (Harmonisasi, Pembulatan dan Pematangan Konsepsi Raperda)\r\n 09.00 WITA\r\nRuang Legal Drafter Kanwil\r\nMenyesuaikan', '2022-10-07', '09:00:00', '11:00:00', ' Ruang Legal Drafter Kanwil', ' Menyesuaikan', 'divisi yankum', 'null', 'x', NULL, '2022-10-25 01:51:23', '2022-10-25 01:51:23');
INSERT INTO `agenda` VALUES (106, 4, '1. Pembahasan Nota Kesepahaman bersama KPU NTB', 'Senin, 10 Oktober 2022\r\n1. Pembahasan Nota Kesepahaman bersama KPU NTB\r\n 10.00 WITA\r\n Ruang Legal Drafter\r\n PDH II\r\nHadir : Tim Perancang, Analis Hukum dan Tim Divisi Pemasyarakatan serta perwakilan KPU', '2022-10-10', '10:00:00', '12:00:00', ' Ruang Legal Drafter', 'PDH II', ' Hadir : Tim Perancang, Analis Hukum dan Tim Divisi Pemasyarakatan serta perwakilan KPU', 'null', 'x', NULL, '2022-10-25 01:52:51', '2022-10-25 09:53:18');
INSERT INTO `agenda` VALUES (107, 4, '1. Kegiatan Edukasi Pencegahan Pelanggaran Hak Kekayaan Intelektual', 'Selasa, 11 Oktober 2022\r\n1. Kegiatan Edukasi Pencegahan Pelanggaran Hak Kekayaan Intelektual\r\n08.00 Wita s/d selesai\r\n Hotel Kaloka Sumbawa\r\n PDH II', '2022-10-11', '08:00:00', '11:00:00', 'Hotel Kaloka Sumbawa', ' PDH II', '-', 'null', 'x', NULL, '2022-10-25 01:54:27', '2022-10-25 01:54:27');
INSERT INTO `agenda` VALUES (108, 4, '1. Konsinyering Penyusunan Pedoman Pengelolaan Komunikasi ', 'Rabu, 12 Oktober 2022\r\n1. Konsinyering Penyusunan Pedoman Pengelolaan Komunikasi Krisis di Lingkungan Ditjen Imigrasi\r\n⏰ 19.00 WITA\r\n Hotel Katamaran Sengiggi\r\n Menyesuaikan', '2022-10-12', '19:00:00', '20:00:00', ' Hotel Katamaran Sengiggi', ' Menyesuaikan', 'IMIGRASI', 'null', 'x', NULL, '2022-10-25 01:57:07', '2022-10-25 01:57:07');
INSERT INTO `agenda` VALUES (109, 4, '1. Undangan Kegiatan Mekanisme Penertiban Register dan ', 'Kamis, 13 Oktober 2022\r\n1. Undangan Kegiatan Mekanisme Penertiban Register dan Pemutakhiran Data Penerimaan Hibah Tw III TA. 2022 secara virtual\r\n 10.00 WITA s.d selesai\r\nRuang Rapat Gedung Utama\r\nbuka oleh Kepala Biro Keuangan\r\nMeeting id : 869 9199 7906\r\npasscode : REGISTER22', '2022-10-13', '10:00:00', '11:00:00', 'Ruang Rapat Gedung Utama', 'Menyesuaikan', ' Kepala Biro Keuangan', 'null', 'x', NULL, '2022-10-25 01:58:36', '2022-10-25 01:58:36');
INSERT INTO `agenda` VALUES (110, 4, '1. Sosialisasi SPIP', 'Selasa, 18 Oktober 2022\r\n1. Sosialisasi SPIP\r\n 09.00 Wita s/d selesai\r\n Ruang Rapat\r\nPDH II\r\n Dihadiri oleh 1 (satu) orang perwakilan Satuan Kerja se-Kota Mataram, sedangkan peserta diluar Kota Mataram mengikuti secara daring\r\nId Zoom : 879 1499 4797\r\npasscode : SPIP2022', '2022-10-18', '09:00:00', '11:00:00', 'Ruang Rapat', 'PDH II', ' Dihadiri oleh 1 (satu) orang perwakilan Satuan Kerja se-Kota Mataram, sedangkan peserta diluar Kota Mataram mengikuti secara daring', 'null', 'x', NULL, '2022-10-25 02:16:40', '2022-10-25 10:18:18');
INSERT INTO `agenda` VALUES (111, 4, '2. Undangan Pembukaan Kegiatan Evaluasi IKPA Triwulan III Tahun 2022 ', '2. Undangan Pembukaan Kegiatan Evaluasi IKPA Triwulan III Tahun 2022 \r\n10.00 Wita s/d selesai\r\n Ruang Rapat\r\n PDH II\r\n Dibuka oleh Kepala Biro Keuangan \r\nId Zoom : 889 6687 5770\r\npasscode : IKPA-III', '2022-10-18', '10:00:00', '11:00:00', 'Ruang Rapat', ' PDH II', 'Dibuka oleh Kepala Biro Keuangan ', 'null', 'x', NULL, '2022-10-25 02:18:05', '2022-10-25 02:18:05');
INSERT INTO `agenda` VALUES (112, 4, '3. Undangan Entry Meeting BPK (Pemeriksaan Kinerja Terperinci atas Efektivitas Perlindungan Pekerja Migran Indonesia di Luar Negeri)', '3. Undangan Entry Meeting BPK (Pemeriksaan Kinerja Terperinci atas Efektivitas Perlindungan Pekerja Migran Indonesia di Luar Negeri)\r\n11.00 Wita s/d selesai\r\n Ruang Rapat\r\n PDH II\r\nPeserta : Kepala Divisi Keimigrasian se-Indonesia\r\nId Zoom : 260 010 1950\r\npasscode : keuimi', '2022-10-18', '11:00:00', '12:00:00', 'Ruang Rapat', 'PDH II', 'Kepala Divisi Keimigrasian se-Indonesia', 'null', 'x', NULL, '2022-10-25 02:19:49', '2022-10-25 02:19:49');
INSERT INTO `agenda` VALUES (113, 4, '1. Workshop Pengembangan Kompetensi JF Perancang Peraturan PerUUan', 'Rabu, 19 Oktober 2022\r\n1. Workshop Pengembangan Kompetensi JF Perancang Peraturan PerUUan\r\n 08.00 WITA s.d. 14.00 WITA\r\n Ruang Legal Drafter\r\nPDH III\r\nPeserta : Kepala Divisi Yankum, Kepala Biro Hukum Pemprov dan Kabag Hukum Pemkab/Pemkot\r\nMeeting ID: 835 7440 0689\r\nPasscode: BPSDM123', '2022-10-19', '08:00:00', '11:00:00', ' Ruang Legal Drafter', 'PDH III', 'Kepala Divisi Yankum, Kepala Biro Hukum Pemprov dan Kabag Hukum Pemkab/Pemkot', 'null', 'x', NULL, '2022-10-25 02:27:59', '2022-10-25 02:27:59');
INSERT INTO `agenda` VALUES (114, 4, 'Pelaksanaan Koordinasi dan Konsultasi Penanganan Dugaan Pelanggaran HAM oleh Tim Ditjen HAM', 'Senin, 24 Oktober 2022\r\n1. Pelaksanaan Koordinasi dan Konsultasi Penanganan Dugaan Pelanggaran HAM oleh Tim Ditjen HAM (24-28 Oktober 2022)\r\nKegiatan dilaksanakan di Kab. Lombok Timur dan Kab. Dompu', '2022-10-24', '07:55:00', '12:00:00', 'Kab. Lombok Timur dan Kab. Dompu', 'menyesuaikan', '-', 'null', 'x', NULL, '2022-10-27 03:58:28', '2022-10-27 03:58:28');
INSERT INTO `agenda` VALUES (116, 4, '1. Diseminasi Layanan Legalisasi Apostille', 'Selasa, 25 Oktober 2022\r\n1. Diseminasi Layanan Legalisasi Apostille\r\n10.00 Wita s/d selesai\r\n Hotel Prime Park Lombok\r\n PDH II', '2022-10-25', '10:00:00', '12:00:00', ' Hotel Prime Park Lombok', ' PDH II', '-', 'null', 'x', NULL, '2022-10-27 03:59:52', '2022-10-27 03:59:52');
INSERT INTO `agenda` VALUES (118, 4, '2. Penguatan Unit Pemberantasan Pungli dan Unit Pengendali Gratifikasi', '2. Penguatan Unit Pemberantasan Pungli dan Unit Pengendali Gratifikasi\r\n 09.00 Wita\r\n Ruang Rapat Gedung Utama\r\nPDH II\r\nNarasumber : Perwakilan BPKP NTB', '2022-10-25', '09:00:00', '12:00:00', ' Ruang Rapat Gedung Utama', 'PDH II', 'Narasumber : Perwakilan BPKP NTB', 'null', 'x', NULL, '2022-10-27 04:03:35', '2022-10-27 04:03:35');
INSERT INTO `agenda` VALUES (119, 4, '3. Undangan Rakor MKN dan Pelantikan MKNW (25-27 Oktober 2022)', '3. Undangan Rakor MKN dan Pelantikan MKNW (25-27 Oktober 2022)\r\n Hotel Grand Sahid Jaya Jakarta\r\nPSL\r\n Hari 1 : Registrasi \r\nHari 2 : Pelantikan dan Diskusi Panel\r\nHari 3 : Penyelesaian Administrasi dan Check out', '2022-10-25', '08:00:00', '12:00:00', ' Hotel Grand Sahid Jaya Jakarta', 'PSL', '- ', 'null', 'x', NULL, '2022-10-27 04:06:01', '2022-10-27 04:06:01');
INSERT INTO `agenda` VALUES (120, 4, '1.Sosialisasi Pengawasan Daam Rangka Penindakan Keimigrasian dan Diseminasi Permenkumham No 39 Thn 2021', '1.Sosialisasi Pengawasan Daam Rangka Penindakan Keimigrasian dan Diseminasi Permenkumham No 39 Thn 2021\r\n19.00 WITA\r\nHotel Golden Palace Mataram\r\nMenyesuaikan', '2022-10-26', '19:00:00', '20:00:00', 'Hotel Golden Palace Mataram', 'Menyesuaikan', '-', 'null', 'x', NULL, '2022-10-27 04:08:05', '2022-10-27 04:08:05');
INSERT INTO `agenda` VALUES (121, 4, '1. Pembentukan Satker WBK/WBBM ', '1. Pembentukan Satker WBK/WBBM \r\n09.00 WITA \r\n Kanwil Kemenkumham NTB\r\nMenyesuaikan\r\nNarasumber : KPPN Mataram sebagai Satker yang memperoleh predikat WBBM', '2022-10-27', '09:03:00', '11:00:00', ' Kanwil Kemenkumham NTB', 'menyesuaikan', ' Narasumber : KPPN Mataram sebagai Satker yang memperoleh predikat WBBM', 'null', 'x', NULL, '2022-10-27 04:09:16', '2022-10-27 04:09:16');
INSERT INTO `agenda` VALUES (122, 4, '1. Undangan Launching Digitalisasi Pembentukan Peraturan Perundang-undangan secara virtual', '1. Undangan Launching Digitalisasi Pembentukan Peraturan Perundang-undangan secara virtual\r\n10.30 WITA \r\nRuang Rapat Kanwil\r\n Menyesuaikan\r\nLaunching oleh Menkumham\r\nMeeting id : 883 7047 0175\r\nPasscode : ditjenpp\r\nLive streaming youtube (djpp.kemenkumham)', '2022-10-28', '10:30:00', '12:00:00', 'Ruang Rapat Kanwil', 'menyesuaikan', '-', 'null', 'x', NULL, '2022-10-27 04:11:28', '2022-10-27 04:11:28');
INSERT INTO `agenda` VALUES (123, 4, '1. Rapat Koordinasi Teknis Bidang Kekayaan Intelektual (30 Oktober - 2 November 2022)', '1. Rapat Koordinasi Teknis Bidang Kekayaan Intelektual (30 Oktober - 2 November 2022)\r\n  Discovery Kartika Plaza Hotel Bali\r\n Menyesuaikan', '2022-10-30', '07:55:00', '12:00:00', 'Discovery Kartika Plaza Hotel Bali', 'menyesuaikan', '-', 'null', 'x', NULL, '2022-10-27 04:15:30', '2022-10-27 04:15:30');
INSERT INTO `agenda` VALUES (124, 4, 'Penanda tangannan MOU dengan pengadilan tinggi', 'jadwal lengkap menyusul', '2022-11-03', '09:03:00', '10:30:00', 'kanwil kemenkumham ', 'menyesuaikan', 'kepala pengadilan tinggi ', 'null', 'x', NULL, '2022-10-27 04:18:58', '2022-10-27 04:18:58');
INSERT INTO `agenda` VALUES (125, 4, 'Pembukaan Kegiatan Kick Off Meeting Penyusunan Renstra  Kementerian Hukum dan HAM 2025 - 2029', 'Hari/Tanggal : Selasa, 08 November 2022\r\nWaktu : 19.30 WITA\r\nTempat : Holiday Resort Lombok\r\n\r\nJl.Raya Mangsit Senggigi Beach Lombok, Senggigi, Lombok, Nusa\r\nTenggara Barat, 80361\r\n\r\nAcara : Pembukaan Kegiatan Kick Off Meeting Penyusunan Renstra\r\n\r\nKementerian Hukum dan HAM 2025 - 2029', '2022-11-08', '19:30:00', '21:00:00', 'Holiday Resort Lombok', 'Menyesauikan', 'Sekretaris Jenderal', 'null', 'x', NULL, '2022-11-01 06:18:04', '2022-11-01 06:18:04');
INSERT INTO `agenda` VALUES (126, 4, 'Undangan kegiatan FMD LP Mataram', '-', '2022-11-02', '07:30:00', '11:00:00', 'Lombok refting lingsar', 'menyesuaikan', 'LP Mataram', 'null', 'x', NULL, '2022-11-03 00:39:01', '2022-11-03 00:39:01');
INSERT INTO `agenda` VALUES (127, 4, 'Undangan hari jadi ITJEN ke 56', '-', '2022-11-03', '09:30:00', '11:00:00', 'Ruang Rapat', 'menyesuaikan ', '-', 'null', 'x', NULL, '2022-11-03 00:40:28', '2022-11-03 00:40:28');
INSERT INTO `agenda` VALUES (129, 4, 'TTD MOU dengan Bupati Loteng ', '-', '2022-11-08', '09:00:00', '11:00:00', 'Aula Kanwil ', 'menyesuaikan', '-', 'null', 'x', NULL, '2022-11-03 00:44:47', '2022-11-03 00:44:47');
INSERT INTO `agenda` VALUES (130, 4, 'Kunjungan kerja DPRD sumbawa barat ', 'AGENDA HARMONISASI 3 RANCANGAN PERATURAN DAERAH KABUPATEN SUMBAWA BARAT ', '2022-11-04', '09:00:00', '11:00:00', 'kanwil kemenkumham NTB ', 'menyesuaikan', 'WAKIL KETUA DPRD', 'null', 'x', NULL, '2022-11-03 03:28:20', '2022-11-03 03:28:20');
INSERT INTO `agenda` VALUES (131, 4, 'FGD Raperda (DPRD)', '10-12 NOVEMBER ', '2022-11-10', '15:30:00', '17:00:00', 'Hotel Aruna senggigi ', 'Menyesuaikan', 'Kepala dinas dll', 'null', 'x', NULL, '2022-11-03 04:24:46', '2022-11-03 12:33:28');
INSERT INTO `agenda` VALUES (132, 4, 'FGD Raperda (DPRD)', '-', '2022-11-11', '15:30:00', '17:00:00', 'Hotel Aruna senggigi', 'Menyesuaikan', 'Kepala dinas dll', 'null', 'x', NULL, '2022-11-03 04:53:25', '2022-11-03 04:53:25');
INSERT INTO `agenda` VALUES (133, 4, 'FGD Raperda (DPRD)', 'Nama Kegiatan	:	FGD Raperda (DPRD)\r\nTanggal	:	Kamis, 10 Nov 2022\r\nJam Mulai	:	15:30\r\nJam Selesai	:	17:00\r\nTempat	:	Hotel Aruna senggigi\r\nPakaian	:	Menyesuaikan\r\nPeserta	:	Kepala dinas dll\r\nDeskripsi	:	10-12 NOVEMBER', '2022-11-12', '15:30:00', '17:00:00', 'Hotel Aruna senggigi ', 'Menyesuaikan', 'Kepala dinas dll', 'null', 'x', NULL, '2022-11-03 04:57:08', '2022-11-03 04:57:08');
INSERT INTO `agenda` VALUES (135, 4, 'Undangan Dies Natalis Ke-58 Politeknik Ilmu Pemasyarakatan', 'pukul : 13.00 WIB s.d. selesai (diawali makan siang)\r\ntempat : Virtual Zoom Meeting\r\n(https://us02web.zoom.us/j/89561220705?pwd=YlNHdlAyOFZvK21ONno3bGw0L2pwdz09)\r\nMeeting Id : 895 6122 0705 Password : poltekip\r\nPakaian : a. Pejabat/Pegawai : PDH\r\nb. Undangan lainnya : PSL/ Batik', '2022-11-07', '14:00:00', '15:00:00', 'Ruang rapat', 'PDh', 'direktur poltekip', 'null', 'x', NULL, '2022-11-04 00:52:44', '2022-11-04 00:52:44');
INSERT INTO `agenda` VALUES (136, 4, 'Undangan Kegiatan Focus Group Discussion (FGD)', 'Hari/Tanggal : Kamis, 17 November 2022\r\nPukul : 13.00 WITA s/d selesai\r\nTempat : Ruang Legal Drafter, Kantor Wilayah Kementerian Hukum dan HAM\r\nNusa Tenggara Barat', '2022-11-17', '13:00:00', '14:00:00', 'Ruang Legal Drafter, Kantor Wilayah Kementerian Hukum dan HAM', 'Menyesuaikan', 'IM POKJA ANALISIS DAN EVALUASI HUKUM (AE) KANWIL KEMENKUMHAM NTB ', 'null', 'x', NULL, '2022-11-07 09:46:47', '2022-11-07 09:46:47');
INSERT INTO `agenda` VALUES (137, 4, 'Upacara Bendera Memperingati Hari Pahlawan ke 77', 'Upacara Bendera Memperingati Hari Pahlawan ke 77', '2022-11-10', '08:00:00', '09:00:00', 'Lapangan Bumi Gora Kantor Gubernur NTB', 'Menyesuaikan', '-', 'null', 'x', NULL, '2022-11-08 04:04:39', '2022-11-08 04:04:39');
INSERT INTO `agenda` VALUES (138, 4, 'Undangan rapat koordinasi penyelenggaraan WSBK 2022', '(DISPOSISI DIWAKILKAN KADIVIM)\r\nUndangan rapat koordinasi dan kunjungan lapangan persiapan penyelenggaraan WSBK 2022', '2022-11-09', '09:00:00', '10:00:00', 'Ruang rapat kantor ITDC Mandalika', 'Menyesuaikan', 'polda NTB, kadishub NTB, ITDC, dan MGPA', 'null', 'x', NULL, '2022-11-08 04:08:20', '2022-11-08 12:09:24');
INSERT INTO `agenda` VALUES (139, 4, 'Undangan Pisah Sambut Kepala Bapas kelas I Mataram', 'Undangan Pisah Sambut Kepala Bapas kelas I Mataram', '2022-11-09', '10:00:00', '11:00:00', 'Bapas Mataram ', 'PDH III', '-', 'null', 'x', NULL, '2022-11-08 04:14:32', '2022-11-08 04:14:32');
INSERT INTO `agenda` VALUES (140, 4, 'Pelantikan pengurus MW KAHMI NTB dan Dialog kebangsaan', '-', '2022-11-10', '09:00:00', '10:00:00', 'Hotel prime park ', 'Menyesuaikan', '-', 'null', 'x', NULL, '2022-11-09 01:52:33', '2022-11-09 09:53:17');
INSERT INTO `agenda` VALUES (141, 4, 'Undangan Pembukaan FGD Sinkronisasi dan Inventarisasi Program Pelatihan Pengembangan Kompetensi ASN TA 2024', 'Hari/Tanggal : Rabu, 16 November 2022\r\nWaktu : 08.30 s.d selesai\r\nPakaian : PDH III\r\nTempat : Senggigi Ballroom (Lantai 2)\r\nAston Inn Mataram\r\nJl. Panca Usaha No.1, Cilinaya, Kec. Cakranegara, Kota Mataram, Nusa Tenggara\r\nBarat\r\nLink Zoom : https://us06web.zoom.us/j/86319038608?pwd=OU9JcUhLeUR3VzJ3NUZDZ0Z4TW5qZz09\r\nMeeting ID : 863 1903 8608\r\nPasscode : badiklat', '2022-11-16', '08:30:00', '10:00:00', 'Aston inn (ballroom senggigi)', 'PDH III', '-', 'null', 'x', NULL, '2022-11-09 02:35:35', '2022-11-14 19:27:37');
INSERT INTO `agenda` VALUES (142, 4, 'Permohonan Kuliah Umum [Universitas Mataram]', '-', '2022-11-17', '14:00:00', '16:00:00', 'Kanwil Kemenkumham NTB', 'Menyesuaikan', '-', 'null', 'x', NULL, '2022-11-14 01:13:33', '2022-11-14 09:13:49');
INSERT INTO `agenda` VALUES (143, 4, 'Undangan Webinar Penguatan Pengelolaan JDIH Tahun 2022', 'Hari/Tanggal : Kamis / 17 November 2022\r\nWaktu : 09.00 WIB s.d. selesai\r\nTempat : Aplikasi Zoom Meeting\r\n\r\nMeeting ID : 858 8653 9183\r\nPasscode : JDIHN', '2022-11-17', '10:00:00', '11:00:00', 'Menyesuaikan', 'Menyesuaikan', 'Menyesuaikan', 'null', 'x', NULL, '2022-11-14 10:42:48', '2022-11-14 10:42:48');
INSERT INTO `agenda` VALUES (144, 4, '1.	Kegiatan pendampingan dari inspektorat jenderal kementerian ', 'Kegiatan pendampingan dari inspektorat jenderal kementerian hukum dan HAM terkait TUNAS INTEGRITAS\r\n', '2022-11-15', '09:00:00', '10:00:00', 'Aula kanwil', 'PDH', '-', 'null', 'x', NULL, '2022-11-15 02:01:25', '2022-11-15 02:01:25');
INSERT INTO `agenda` VALUES (145, 4, '2. Kunjungan kedubes malaysia', '2. Kunjungan kedubes malaysia', '2022-11-15', '09:00:00', '09:30:00', 'Ruang kerja kakanwil', 'PDH', '-', 'null', 'x', NULL, '2022-11-15 02:03:41', '2022-11-15 02:03:41');
INSERT INTO `agenda` VALUES (146, 4, '3. Penandatanganan kontrak adendum pelaksanan bankum', '3. Penandatanganan kontrak adendum pelaksanan bankum', '2022-11-15', '10:00:00', '11:00:00', 'ruang rapat bawah', 'PDH', '-', 'null', 'x', NULL, '2022-11-15 02:05:37', '2022-11-15 02:05:37');
INSERT INTO `agenda` VALUES (147, 4, 'Audiensi bersama Gubernur NTB', 'audiensi terkait kegiatan roving seminar KI', '2022-11-16', '09:00:00', '10:00:00', 'Ruangan kakanwil NTB ', 'Menyesuaikan', 'Gubernur NTB', 'null', 'x', NULL, '2022-11-23 00:02:58', '2022-11-23 00:02:58');
INSERT INTO `agenda` VALUES (148, 4, 'ROVING  seminar KI', '-', '2022-11-21', '08:00:00', '12:00:00', 'Jakarta', 'Menyesuaikan', '-', 'null', 'x', NULL, '2022-11-23 07:20:26', '2022-11-23 07:20:26');
INSERT INTO `agenda` VALUES (149, 4, 'ROVING  seminar KI', '-', '2022-11-22', '08:00:00', '12:00:00', 'Jakarta', 'Menyesuaikan', '-', 'null', 'x', NULL, '2022-11-23 07:22:43', '2022-11-23 07:22:43');
INSERT INTO `agenda` VALUES (150, 4, 'Yasonna Mendengar', '-', '2022-11-21', '19:00:00', '21:00:00', 'Jakarta', 'Menyesuaikan', '-', 'null', 'x', NULL, '2022-11-23 07:24:58', '2022-11-23 07:24:58');
INSERT INTO `agenda` VALUES (151, 4, ' 	ROVING seminar KI', '-', '2022-11-23', '08:00:00', '10:00:00', 'Jakarta', 'Menyesuaikan', '-', 'null', 'x', NULL, '2022-11-23 07:26:01', '2022-11-23 07:26:01');
INSERT INTO `agenda` VALUES (152, 4, 'Rakor evaluasi pengendalian kinerja semester II', '-', '2022-11-23', '19:00:00', '20:30:00', 'Jakarta', 'Menyesuaikan', '-', 'null', 'x', NULL, '2022-11-23 07:27:20', '2022-11-23 07:27:20');
INSERT INTO `agenda` VALUES (153, 4, 'Rakor evaluasi pengendalian kinerja semester II', '-', '2022-11-24', '08:00:00', '12:00:00', 'Jakarta', 'Menyesuaikan', '-', 'null', 'x', NULL, '2022-11-23 07:28:04', '2022-11-23 07:28:04');
INSERT INTO `agenda` VALUES (154, 4, 'Pembahasan draft surat edaran gubernur NTB tentang joki cilik', '-', '2022-11-25', '08:30:00', '10:00:00', 'Aula kantor DP3AP2KB provinsi NTB', 'Menyesuaikan', '-', 'null', 'x', NULL, '2022-11-23 07:29:36', '2022-11-23 07:29:36');
INSERT INTO `agenda` VALUES (155, 4, 'Undangan Pembukaan Kegiatan FMD Lapas Perempuan Mataram', 'Undangan Pembukaan Kegiatan FMD Lapas Perempuan Mataram', '2022-11-28', '08:00:00', '17:00:00', 'Lapangan Tembak Yonif 742/SWY', 'Olahraga', 'Pegawai LPP', 'null', 'x', NULL, '2022-11-28 00:40:15', '2022-11-28 00:40:15');
INSERT INTO `agenda` VALUES (156, 4, 'Undangan Ditjen Kerjasama Multilateral Kemenlu ', 'Kegiatan Jaring Masukan Daerah untuk Penyusunan Laporan Konvensi Hak Pekerja Migran', '2022-11-29', '09:30:00', '16:00:00', 'Hotel Katamaran Senggigi', 'PDH II', 'Peserta', 'null', 'x', NULL, '2022-11-28 00:41:28', '2022-11-28 00:41:28');
INSERT INTO `agenda` VALUES (157, 4, 'Acara Puncak HUT KORPRI', 'HUT KORPRI', '2022-11-29', '10:00:00', '12:00:00', 'Aula Kantor Wilayah', 'Batik KORPRI + Peci Hitam', 'Pegawai', 'null', 'x', NULL, '2022-11-28 00:42:57', '2022-11-28 00:42:57');
INSERT INTO `agenda` VALUES (158, 4, 'Undangan Sebagai Narasumber Sosialisasi Dinas Kemen Koperasi dan UKM', 'Narasumber Sosialisasi', '2022-12-02', '10:14:00', '12:00:00', 'Hotel Grand Legi Mataram', 'Batik', 'UMKM', 'null', 'x', NULL, '2022-11-28 00:44:31', '2022-11-28 00:44:31');
INSERT INTO `agenda` VALUES (159, 4, 'Undangan Diskusi Publik Rekomendasi Kebijakan', 'Undangan Diskusi Publik Rekomendasi Kebijakan dengan tema \"Pemenuhan Hak WBP dalam mendapatkan pelayanan kesehatan mental pada Lapas dan Rutan di Lingkungan Kemenkumham', '2022-12-01', '14:00:00', '17:00:00', 'Ruang Rapat Gedung Utama Kanwil NTB', 'Menyesuaikan', 'Seluruh Kanwil secara Hybrid', 'null', 'x', NULL, '2022-11-28 01:19:05', '2022-11-28 01:19:05');
INSERT INTO `agenda` VALUES (160, 4, 'Undangan Upacara Hari Bhakti Pekerjaan Umum', 'Upacara Hari Bhakti Pekerjaan Umum ke-77', '2022-12-05', '07:30:00', '08:30:00', 'Kantor Dinas PUPR - JL. Majapahit', 'Menyesuaikan', 'Kepala Dinas Pekerjaan Umum dan Jajaran', 'null', 'x', NULL, '2022-12-05 04:25:50', '2022-12-05 04:25:50');
INSERT INTO `agenda` VALUES (161, 4, 'Undangan Penyerahan DIPA dan Alokasi TKD TA 2023', 'Penyerahan DIPA K/L dan Alokasi TKD Tahun Anggaran 2023 Wilayah Nusa Tenggara Barat dengan tema \"Optimis dan Waspada Menghadapi Tantangan Mewujudkan NTB Gemilang dan Sejahtera\"', '2022-12-05', '09:30:00', '10:45:00', 'Hotel Lombok Raya', 'Menyesuaikan', 'Kepala Daerah Tingkat II dan Kepala Instansi baik tingkat pusat maupun daerah pada Provinsi Nusa Tenggara Barat', 'null', 'x', NULL, '2022-12-05 04:27:57', '2022-12-05 12:28:10');
INSERT INTO `agenda` VALUES (162, 4, '1. Undangan Acara Anugerah Keterbukaan Informasi Publik', 'SENIN 19 DESEMBER 2022\r\nUndangan Acara Anugerah Keterbukaan Informasi Publik\r\n08.30 WITA\r\nHotel Lombok Raya Mataram\r\nMenyesuaikan', '2022-12-19', '08:30:00', '10:00:00', 'Hotel Lombok Raya Mataram', 'Menyesuaikan', '-', 'null', 'x', NULL, '2022-12-20 02:34:41', '2022-12-20 02:34:41');
INSERT INTO `agenda` VALUES (163, 4, 'Undangan Pengukuhan Kepala BPKP Prov. NTB', 'Undangan Pengukuhan Kepala BPKP Prov. NTB', '2022-12-19', '10:00:00', '11:00:00', ' Pendopo Tengah Gubernur NTB', 'PSL', '-', 'null', 'x', NULL, '2022-12-20 02:36:41', '2022-12-20 02:36:41');
INSERT INTO `agenda` VALUES (164, 4, '1. Undangan Sertijab Ketua Ombudsman Perwakilan NTB', 'RABU 21 DESEMBER 2022\r\nUndangan Sertijab Ketua Ombudsman Perwakilan NTB\r\nGedung Sekretariat DPRD Prov. NTB\r\nBatik Lengan Panjang', '2022-12-21', '10:00:00', '11:00:00', 'Gedung Sekretariat DPRD Prov. NTB', 'Batik Lengan Panjang', '-', 'null', 'x', NULL, '2022-12-20 02:49:24', '2022-12-20 02:49:24');
INSERT INTO `agenda` VALUES (165, 4, 'DWP Fashion Moms Dalam Rangka Peringatan Hari Ibu ke-94', 'KAMIS 22 ESEMBER 2022\r\n1. DWP Fashion Moms Dalam Rangka Peringatan Hari Ibu ke-94\r\n15.00 WITA\r\nLapangan Kanwil \r\nMenyesuaikan', '2022-12-22', '15:00:00', '16:00:00', 'Lapangan Kanwil ', 'Menyesuaikan', 'Menyesuaikan', 'null', 'x', NULL, '2022-12-20 02:52:18', '2022-12-20 02:52:18');
INSERT INTO `agenda` VALUES (166, 4, 'Kunjungan Ketua KPU Provinsi NTB', 'Kunjungan Ketua KPU Provinsi NTB dalam rangka audiensi', '2022-12-27', '09:00:00', '12:00:00', 'Ruang Kepala Kantor Wilayah', 'PDH II', 'Pimpinan instansi', 'null', 'x', NULL, '2022-12-27 01:07:03', '2022-12-27 01:07:03');
INSERT INTO `agenda` VALUES (167, 4, 'Kunjungan Monev BPIP', 'Kunjungan Monev BPIP dalam rangka monev rekomendasi hasil kajian peraturan walikota bima tentang jumat khusyuk dan internalisasi indikator nilai Pancasila', '2022-12-27', '10:00:00', '12:00:00', 'Ruang Kepala Kantor Wilayah dan Legal Drafter', 'PDH II', 'Direktur BPIP dan 10 Anggotanya', 'null', 'x', NULL, '2022-12-27 01:08:21', '2022-12-27 01:08:21');
INSERT INTO `agenda` VALUES (168, 4, 'Koordinasi dan Visitasi Tim Sekretariat Kabinet', 'Koordinasi dan Visitasi Tim Sekretariat Kabinet', '2022-12-27', '13:00:00', '15:00:00', 'Ruang Rapat Gedung Utama', 'PDH II', 'Peserta kegiatan berjumlah 21 orang', 'null', 'x', NULL, '2022-12-27 01:10:05', '2022-12-27 01:10:05');
INSERT INTO `agenda` VALUES (169, 4, 'Pisah Sambut Pimti dan Pelepasan Purnabhakti', 'Pisah Sambut Pimti dan Pelepasan Purnabhakti', '2022-12-29', '14:00:00', '18:00:00', 'Aula Kanwil', 'Menyesuaikan', 'Seluruh ASN', 'null', 'x', NULL, '2022-12-27 01:44:49', '2022-12-27 01:44:49');
INSERT INTO `agenda` VALUES (170, 4, 'KUNKER DPRD SUMBAWA BARAT', 'KUNJUNGAN KERJA DPRD SUMBAWA BARAT \r\nPRIHAL : HARMONISASI ', '2023-01-11', '14:00:00', '15:00:00', 'KANWIL KEMENKUMHAM', 'Menyesuaikan', '-', 'null', 'x', NULL, '2023-01-09 01:06:07', '2023-01-09 09:06:52');
INSERT INTO `agenda` VALUES (171, 4, 'PELANTIKAN PEJABAT ADMINISTRASI ', 'PELANTIKAN PEJABAT ADMINISTRASI ', '2023-01-11', '10:00:00', '11:00:00', 'AULA KANWIL', 'PDU II', 'PEJABAT TERLANTIK', 'null', 'x', NULL, '2023-01-09 01:16:56', '2023-01-09 01:16:56');
INSERT INTO `agenda` VALUES (172, 4, 'REKON DATA LAPORAN KEUANGAN ', 'REKON DATA LAPORAN KEUANGAN DI KANWIL \r\nTGL 18-20 ', '2023-01-18', '08:00:00', '09:00:00', 'KANWIL KEMENKUMHAM', 'Menyesuaikan', '-', 'null', 'x', NULL, '2023-01-09 01:20:07', '2023-01-09 01:20:07');
INSERT INTO `agenda` VALUES (173, 4, 'APEL AWAL TAHUN ', 'APEL AWAL TAHUN DAN DEKLARASI ASN', '2023-01-04', '07:30:00', '08:00:00', 'AULA KANWIL KEMENKUMHAM', 'PDH', 'SELURUH ASN KANWIL', 'null', 'x', NULL, '2023-01-09 01:26:40', '2023-01-09 01:26:40');
INSERT INTO `agenda` VALUES (174, 4, 'Undangan pelantikan advokat', 'UNDANGAN PELANTIKAN ADVOKAT', '2023-01-11', '09:00:00', '10:00:00', 'LOMBOK ASTORIA MATARAM', 'Menyesuaikan', '-', 'null', 'x', NULL, '2023-01-09 08:05:08', '2023-01-09 08:05:08');
INSERT INTO `agenda` VALUES (175, 1, 'teess', 'teess', '1970-01-01', '00:00:00', '00:00:00', 'teess', '', 'teess', 'null', 'x', 'teess', '2023-03-15 14:46:32', '2023-03-15 14:46:32');
INSERT INTO `agenda` VALUES (176, 1, 'teess', 'teess', '1970-01-01', '00:00:00', '00:00:00', 'teess', '', 'teess', 'null', 'x', 'teess', '2023-03-15 14:47:20', '2023-03-15 14:47:20');
INSERT INTO `agenda` VALUES (177, 1, 'Kunjungan Tim Inspektorat Jenderal Dalam Rangka Audit Tusi di LPKA Loteng', 'Kunjungan Tim Inspektorat Jenderal Dalam Rangka Audit Tusi di LPKA Loteng', '2023-03-15', '00:00:00', '00:00:00', 'Kunjungan Tim Inspektorat Jenderal Dalam Rangka Audit Tusi di LPKA Loteng', 'pdh iii', 'Kunjungan Tim Inspektorat Jenderal Dalam Rangka Audit Tusi di LPKA Loteng', 'null', 'x', 'Kunjungan Tim Inspektorat Jenderal Dalam Rangka Audit Tusi di LPKA Loteng', '2023-03-15 14:51:32', '2023-05-12 16:01:25');
INSERT INTO `agenda` VALUES (178, 1, 'do_upload', 'do_upload', '2023-03-15', '13:05:00', '13:05:00', 'do_upload', 'hh', 'do_upload', 'null', 'x', 'do_upload', '2023-03-15 15:02:55', '2023-03-16 14:21:12');
INSERT INTO `agenda` VALUES (179, 1, 'Bahanz Berita edit 2', 'Bahanz Berita', '2023-03-15', '00:00:00', '00:00:00', 'Bahanz Berita', '', 'Bahanz Berita', 'null', 'x', 'Bahanz Berita', '2023-03-15 15:04:54', '2023-03-16 14:59:36');
INSERT INTO `agenda` VALUES (182, 1, 'zzzzz', 'swwwewezzz', '2023-03-16', '00:00:00', '00:00:00', 'swwwewe', '', 'swwwewe', 'null', 'x', 'swwwewe', '2023-03-16 17:16:50', '2023-03-20 08:07:05');
INSERT INTO `agenda` VALUES (183, 1, 'Tes aaa', 'Silaturahmi', '2022-07-07', '11:15:05', '11:15:05', 'Tes tempat', 'PDH - II', 'Kakanwil,Kadivmin', 'null', 'tesstatus', 'tes why tgl 20', '2023-03-20 08:11:55', '2023-03-21 08:05:03');
INSERT INTO `agenda` VALUES (185, 1, 'rees', 'ree', '2023-03-21', '00:00:00', '00:00:00', 'ree', 'tess', 'ree', '[\"file\\/daduk\\/ucapanramadhankemenkumhamntb-f44fc99b-3c15-4439-b1c1-c2a59e5edea8.jpg\"]', 'x', 'ree', '2023-03-21 11:23:20', '2023-03-21 18:23:00');
INSERT INTO `agenda` VALUES (186, 1, 'tes agenda', 'Pelantikan Notariss', '2023-03-25', '08:30:00', '10:30:00', 'Aula', 'PDH III', 'Seluruh ASN Kanwil', '{\"1\":\"file\\/bahan_berita\\/coconut_tree.jpeg\"}', 'x', 'tes why', '2023-03-25 16:21:35', '2023-03-27 10:17:33');
INSERT INTO `agenda` VALUES (188, 1, 'Kegiatan tanggal 27 Maret 2023', 'lancarr', '2023-03-27', '00:00:00', '00:00:00', 'wqeqeqqw', '', 'wqeqqeqew', '[\"file\\/bahan_berita\\/pengayoman-removebg-preview.png\"]', 'x', 'wqeqeqe', '2023-03-27 10:14:48', '2023-03-27 10:16:53');
INSERT INTO `agenda` VALUES (189, 1, 'afaafa', 'afaafa', '2023-03-23', '00:00:00', '00:00:00', 'afaafa', '', 'afaafa', '[\"file\\/bahan_berita\\/pengayoman-removebg-preview1.png\"]', 'x', 'afaafa', '2023-03-27 10:18:15', '2023-03-27 10:21:31');
INSERT INTO `agenda` VALUES (190, 1, 'adafa', 'adafa', '2023-04-01', '00:00:00', '00:00:00', 'adafa', '', 'adafa', '{\"1\":\"file\\/bahan_berita\\/pengayoman-removebg-preview2.png\",\"2\":\"file\\/bahan_berita\\/peresean-img1.png\"}', 'x', 'adafa', '2023-03-27 10:22:28', '2023-05-10 20:03:50');
INSERT INTO `agenda` VALUES (191, 1, 'tes 31 maret', 'tes 31 maret', '2023-03-01', '00:00:00', '00:00:00', 'tes 31 maret', ' ', 'tes 31 maret', '[\"file\\/bahan_berita\\/WhatsApp_Image_2023-03-30_at_14.33.20.jpeg\",\"file\\/bahan_berita\\/KANWIL_TAMPAK_DEPAN_cerah1.jpg\"]', 'x', 'tes 31 maret', '2023-03-31 10:54:30', '2023-03-31 10:56:06');
INSERT INTO `agenda` VALUES (193, 1, 'ujicobas', 'ujicobas', '1970-01-01', '00:00:00', '00:00:00', 'ujicobas', ' ', 'ujicobas', '[\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.07.41.jpeg\",\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.07.png\",\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.06.09.jpeg\",\"file\\/bahan_berita\\/peresean-img.png\"]', 'x', 'ujicobas', '2023-05-10 17:57:10', '2023-05-10 19:53:33');
INSERT INTO `agenda` VALUES (194, 1, 'ujicobas', 'ujicobass2', '1970-01-01', '00:00:00', '00:00:00', 'ujicobas', ' ', 'ujicobass2', '{\"0\":\"file\\/bahan_berita\\/KANWIL_TAMPAK_DEPAN_cerah1.jpg\",\"1\":\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.06.091.jpeg\",\"3\":\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.071.png\",\"4\":\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.072.png\"}', 'x', 'ujicobass2', '2023-05-10 17:59:33', '2023-05-10 19:58:08');
INSERT INTO `agenda` VALUES (195, 1, 'Ujicobaz', 'Ujicobaz', '1970-01-01', '00:00:00', '00:00:00', 'Ujicobaz', ' ', 'Ujicobaz', '{\"1\":\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.073.png\",\"2\":\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.07.411.jpeg\",\"3\":\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.06.092.jpeg\",\"4\":\"file\\/bahan_berita\\/344146552_236324428991049_3570631344557291404_n.jpg\"}', 'x', 'Ujicobaz', '2023-05-10 20:05:01', '2023-05-10 20:05:27');
INSERT INTO `agenda` VALUES (196, 1, 'ujicobax', 'ujicobax', '1970-01-01', '00:00:00', '00:00:00', 'ujicobax', ' ', 'ujicobax', '{\"1\":\"file\\/bahan_berita\\/KANWIL_TAMPAK_DEPAN.jpeg\",\"2\":\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.074.png\"}', 'x', 'ujicobax', '2023-05-10 20:10:36', '2023-05-10 20:13:46');
INSERT INTO `agenda` VALUES (199, 1, 'Pembinaan Rohani Warga Binaan di Lapas Mataram', 'Romi Yudianto dalam sambutan meminta agar para pegawai meningkatkan displin dan terus meningkatkan kualitas pelayanan publik.', '2023-05-10', '00:00:00', '00:00:00', 'Ruang Legal Drafter Kanwil Kemenkumham NTB', ' ', 'Kepala Kantor Wilayah Kemenkumham NTB Romi Yudianto mengunjungi Kantor Imigrasi Kelas I TPI Mataram, Senin (13/2).', '{\"0\":\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.075.png\",\"2\":\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.07.412.jpeg\",\"3\":\"file\\/bahan_berita\\/KANWIL_TAMPAK_DEPAN_cerah1.jpg\"}', 'x', 'Romi Yudianto berkunjung ke Kantor Imigrasi Kelas I TPI Mataram dalam rangka monitoring dan evaluasi.', '2023-05-10 20:23:21', '2023-05-10 20:24:01');
INSERT INTO `agenda` VALUES (201, 1, 'Pengawasan Pelaksanaan Bantuan Hukum Tingkat Daerah di Pulau Sumbawa / Monitoring dan Evaluasi Pelaksanaan Bantuan Hukum di Pulau Sumbawa', 'Guna Mencapai Indeks Kepuasan Layanan Bantuan Hukum yang Baik, Panwasda Laksanakan Monev ntb.kemenkumham.go.id – Tim Monitoring dan Evaluasi Bantuan Hukum Kanwil Kemenkumham NTB melaksanakan pengawasan pelaksanaan bantuan hukum tingkat daerah di Pulau Sumbawa sejak Selasa (9/05) hingga Kamis (11/05). Pada kegiatan ini, Tim Monev Bankum mengunjungi kantor LKBH Universitas Samawa, Pos Bantuan Hukum Dompu, LBH Ksatria dan Posbakumadin Bima. Dalam kunjungan ini, Puri Adriatik Chasanova selaku Kepala Bidang Hukum, menyampaikan pelaksanaan pemberian bantuan hukum kepada orang atau kelompok orang tidak mampu harus dilaksanakan oleh OBH dengan Profesional, Akuntabel, Sinergi, Transparan, dan Inovatif (PASTI). Puri juga mengingatkan terkait bantuan hukum non litigasi khususnya Penyuluhan Hukum agar dapat diberikan kepada masyarakat adat yang ada di Pulau Sumbawa. Di samping kunjungan pada kantor OBH, Tim Monev juga melakukan survei langsung kepada penerima layanan bantuan hukum di Lapas Kelas IIB Dompu, Rumah Tahanan Kelas IIB Bima dan Lapas Kelas IIA Sumbawa Besar. Hasil monitoring dan evaluasi terhadap kinerja Pemberi Bantuan Hukum dengan menggunakan metode survei layanan bantuan hukum diharapkan Indeks Kepuasan Layanan Bantuan Hukum mendapatkan nilai persepsi baik. ***', '2023-05-09', '00:00:00', '00:00:00', 'LKBH Universitas Samawa, Pos Bantuan Hukum Dompu, LBH Ksatria dan Posbakumadin Bima, Lapas Kelas IIB Dompu, Rumah Tahanan Kelas IIB Bima dan Lapas Kelas IIA Sumbawa Besar.', ' ', 'Tim Monitoring dan Evaluasi Panwasda Bantuan Hukum yang dipimpin oleh Kepala Bidang Hukum, Puri Adriatik Chasanova.', '[\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.077.png\",\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.07.413.jpeg\",\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.06.093.jpeg\"]', 'x', 'Dalam rangka pemenuhan target kinerja Divisi Pelayanan Hukum dan HAM yakni Pelaksanaan Monitoring dan Evaluasi Pemberi Bantuan Hukum melalui Survey Layanan Bantuan Hukum terhadap Penerima Bantuan Hukum.', '2023-05-11 11:57:04', '2023-05-11 11:57:04');
INSERT INTO `agenda` VALUES (202, 1, 'UJICOBA WHAT', 'UJICOBA How', '2023-05-15', '00:00:00', '00:00:00', 'UJICOBA Where', ' ', 'UJICOBA Who', '[\"file\\/bahan_berita\\/KANWIL_TAMPAK_DEPAN_(1)3.jpeg\",\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_22.42.35.jpeg\"]', 'x', 'UJICOBA Why', '2023-05-15 13:10:19', '2023-05-15 13:10:50');

-- ----------------------------
-- Table structure for notifikasi
-- ----------------------------
DROP TABLE IF EXISTS `notifikasi`;
CREATE TABLE `notifikasi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pesan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_user_pengirim` int(11) NOT NULL,
  `id_user_penerima` int(11) NOT NULL,
  `id_for_link` int(11) NOT NULL,
  `created_at` datetime(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime(0) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `foreign_key_notifikasi_id_user_pengirim`(`id_user_pengirim`) USING BTREE,
  INDEX `foreign_key_notifikasi_id_user_penerima`(`id_user_penerima`) USING BTREE,
  CONSTRAINT `foreign_key_notifikasi_id_user_penerima` FOREIGN KEY (`id_user_penerima`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `foreign_key_notifikasi_id_user_pengirim` FOREIGN KEY (`id_user_pengirim`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `whatsapp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_paraf` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_ttd` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(0) NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime(0) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_2`(`username`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 419 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'superadmin', '1234', '', '', 'superadmin', '', '', '2023-05-22 14:22:32', '2021-10-14 12:48:52', '2021-10-14 12:48:52');
INSERT INTO `users` VALUES (2, 'kakanwil', 'saS3eimg8Mg1M', 'Romi Yudianto', '081234', 'pimti', '', '', '2022-07-18 14:32:03', '2021-10-15 14:27:50', '2022-07-13 08:53:04');
INSERT INTO `users` VALUES (3, 'kadivmin', 'saS3eimg8Mg1M', 'Saefur Rochim', '', 'pimti', '', '', '2021-10-15 14:27:50', '2021-10-15 14:27:50', '2022-07-13 08:53:21');
INSERT INTO `users` VALUES (4, 'sespimti', '1234', 'Sekretaris PIMTI', '1234', 'superadmin', '', '', '2023-01-13 07:46:49', '2022-02-23 10:01:34', '2022-02-23 10:04:53');
INSERT INTO `users` VALUES (101, 'kakanwil2', '1234', 'kakanwil2', '', '', '', '', '2022-08-29 06:43:32', '2022-08-29 06:43:32', '2022-08-29 06:43:32');
INSERT INTO `users` VALUES (102, 'kadivmin2', '1234', 'kadivmin2', '', '', '', '', '2022-08-29 06:43:32', '2022-08-29 06:43:32', '2022-08-29 06:43:32');
INSERT INTO `users` VALUES (103, 'kadivyankumham', '1234', 'kadivyankumham', '', '', '', '', '2022-08-29 06:43:32', '2022-08-29 06:43:32', '2022-08-29 06:43:32');
INSERT INTO `users` VALUES (104, 'kadivpas', '1234', 'kadivpas', '', '', '', '', '2022-08-29 06:43:32', '2022-08-29 06:43:32', '2022-08-29 06:43:32');
INSERT INTO `users` VALUES (105, 'kadivim', '1234', 'kadivim', '', '', '', '', '2022-08-29 06:43:32', '2022-08-29 06:43:32', '2022-08-29 06:43:32');
INSERT INTO `users` VALUES (399, 'subkepegawaian', '1234', 'Sub Bagian Kepegawaian, Tata Usaha, dan Rumah Tangga', '', '', '', '', '2022-08-30 10:10:13', '2022-08-29 06:43:32', '2022-08-29 06:43:32');
INSERT INTO `users` VALUES (400, 'subpp', '1234', 'Sub Bagian Program dan Pelaporan', '', '', '', '', '2022-08-29 06:43:32', '2022-08-29 06:43:32', '2022-08-29 06:43:32');
INSERT INTO `users` VALUES (401, 'subhumas', '1234', 'Sub Bagian Hubungan Masyarakat, Reformasi Birokrasi, dan Teknologi Informasi', '', '', '', '', '2022-08-29 06:43:32', '2022-08-29 06:43:32', '2022-08-29 06:43:32');
INSERT INTO `users` VALUES (402, 'subkeuangan', '1234', 'Sub Bagian Pengelolaan Keuangan dan Barang Milik Negara', '', '', '', '', '2022-08-29 06:43:32', '2022-08-29 06:43:32', '2022-08-29 06:43:32');
INSERT INTO `users` VALUES (403, 'subpembinaan', '1234', 'Sub Bidang Pembinaan, Teknologi Informasi, dan Kerjasama', '', '', '', '', '2022-08-29 06:43:32', '2022-08-29 06:43:32', '2022-08-29 06:43:32');
INSERT INTO `users` VALUES (404, 'subbimbingan', '1234', 'Sub Bidang Bimbingan dan Pengentasan Anak', '', '', '', '', '2022-08-29 06:43:32', '2022-08-29 06:43:32', '2022-08-29 06:43:32');
INSERT INTO `users` VALUES (405, 'subkeamanan', '1234', 'Sub Bidang Pengelolaan Benda Sitaan, Barang Rampasan Negara, dan Keamanan', '', '', '', '', '2022-08-29 06:43:32', '2022-08-29 06:43:32', '2022-08-29 06:43:32');
INSERT INTO `users` VALUES (406, 'subyantah', '1234', 'Sub Bidang Pelayanan Tahanan, Perawatan Kesehatan, dan Rehabilitasi', '', '', '', '', '2022-08-29 06:43:32', '2022-08-29 06:43:32', '2022-08-29 06:43:32');
INSERT INTO `users` VALUES (407, 'subinfokim', '1234', 'Sub Bidang Informasi Keimigrasian', '', '', '', '', '2022-08-29 06:43:32', '2022-08-29 06:43:32', '2022-08-29 06:43:32');
INSERT INTO `users` VALUES (408, 'subintelkim', '1234', 'Sub Bidang Intelijen Keimigrasian', '', '', '', '', '2022-08-29 06:43:32', '2022-08-29 06:43:32', '2022-08-29 06:43:32');
INSERT INTO `users` VALUES (409, 'subpenindakan', '1234', 'Sub Bidang Penindakan Keimigrasian', '', '', '', '', '2022-08-29 06:43:32', '2022-08-29 06:43:32', '2022-08-29 06:43:32');
INSERT INTO `users` VALUES (410, 'subperizinan', '1234', 'Sub Bidang Perizinan Keimigrasian', '', '', '', '', '2022-08-29 06:43:32', '2022-08-29 06:43:32', '2022-08-29 06:43:32');
INSERT INTO `users` VALUES (411, 'subahu', '1234', 'Sub Bidang Pelayanan Administrasi Hukum Umum ', '', '', '', '', '2022-08-29 06:43:32', '2022-08-29 06:43:32', '2022-08-29 06:43:32');
INSERT INTO `users` VALUES (412, 'jfpenyuluh', '1234', 'Sub Bidang Penyuluhan Hukum, Bantuan Hukum dan Jaringan Dokumentasi Informasi Hukum', '', '', '', '', '2022-08-29 06:43:32', '2022-08-29 06:43:32', '2022-08-29 06:43:32');
INSERT INTO `users` VALUES (413, 'jfperancang', '1234', 'Sub Bidang Fasilitasi Pembentukan Produk Hukum Daerah', '', '', '', '', '2022-08-29 06:43:32', '2022-08-29 06:43:32', '2022-08-29 06:43:32');
INSERT INTO `users` VALUES (414, 'subki', '1234', 'Sub Bidang Pelayanan Kekayaan Intelektual', '', '', '', '', '2022-08-29 06:43:32', '2022-08-29 06:43:32', '2022-08-29 06:43:32');
INSERT INTO `users` VALUES (415, 'subpemajuanham', '1234', 'Sub Bidang Pemajuan HAM', '', '', '', '', '2022-08-29 06:43:32', '2022-08-29 06:43:32', '2022-08-29 06:43:32');
INSERT INTO `users` VALUES (416, 'subbalitbang', '1234', 'Sub Bidang Pengkajian, Penelitian, dan Pengembangan Hukum dan HAM', '', '', '', '', '2022-08-29 06:43:32', '2022-08-29 06:43:32', '2022-08-29 06:43:32');
INSERT INTO `users` VALUES (417, 'user_dummy', '1234', 'user_dummy', '081234', 'USER_DUMMY', 'url', 'url', '2022-03-18 10:39:38', '2022-03-18 10:39:38', '2022-03-18 10:39:38');
INSERT INTO `users` VALUES (418, 'budi', 'saS3eimg8Mg1M', 'budi', 'x', 'pimti', 'x', 'x', '2023-05-04 08:37:54', '2023-05-04 08:37:54', '2023-05-04 08:37:54');

-- ----------------------------
-- Table structure for users_authentication
-- ----------------------------
DROP TABLE IF EXISTS `users_authentication`;
CREATE TABLE `users_authentication`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expired_at` datetime(0) NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime(0) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 221 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users_authentication
-- ----------------------------
INSERT INTO `users_authentication` VALUES (1, 1, 'coPkIpgHNUppQ', '2023-07-07 23:50:06', '2022-05-17 08:50:06', '2022-05-17 08:50:06');
INSERT INTO `users_authentication` VALUES (2, 1, 'a', '2024-07-12 00:27:24', '2022-05-17 09:24:39', '2023-05-22 09:27:24');
INSERT INTO `users_authentication` VALUES (3, 1, 'colple6IJ0X9s', '2023-08-19 00:00:31', '2022-06-28 08:22:41', '2022-06-28 09:00:31');
INSERT INTO `users_authentication` VALUES (4, 1, 'coRBU3HmYkS6c', '2023-08-19 00:04:02', '2022-06-28 09:00:44', '2022-06-28 09:04:02');
INSERT INTO `users_authentication` VALUES (5, 1, 'cooWRcG4vi53I', '2023-08-19 00:04:14', '2022-06-28 09:04:14', '2022-06-28 09:04:14');
INSERT INTO `users_authentication` VALUES (6, 1, 'co5dJkxzqoL2I', '2023-08-19 00:37:56', '2022-06-28 09:37:56', '2022-06-28 09:37:56');
INSERT INTO `users_authentication` VALUES (7, 1, 'cofFSXyvgi5mI', '2023-08-19 01:00:40', '2022-06-28 09:58:35', '2022-06-28 10:00:40');
INSERT INTO `users_authentication` VALUES (8, 1, 'coCh242yfqjfA', '2023-08-20 00:49:59', '2022-06-29 08:53:04', '2022-06-29 09:49:59');
INSERT INTO `users_authentication` VALUES (9, 1, 'codzOjAyy/hko', '2023-08-24 23:05:10', '2022-07-04 07:55:47', '2022-07-04 08:05:10');
INSERT INTO `users_authentication` VALUES (10, 1, 'coe40zQAGnTLw', '2023-08-25 00:49:40', '2022-07-04 08:14:58', '2022-07-04 09:49:40');
INSERT INTO `users_authentication` VALUES (11, 1, 'coQayDASOweX2', '2023-08-26 01:56:21', '2022-07-05 10:55:50', '2022-07-05 10:56:21');
INSERT INTO `users_authentication` VALUES (12, 1, 'co60DLJBmGlAE', '2023-08-27 23:53:21', '2022-07-07 08:50:49', '2022-07-07 08:53:21');
INSERT INTO `users_authentication` VALUES (13, 1, 'coRvDt.X2fGsQ', '2023-08-28 00:54:13', '2022-07-07 08:53:33', '2022-07-07 09:54:13');
INSERT INTO `users_authentication` VALUES (14, 1, 'co1kCt4YBkfNs', '2023-09-02 23:37:49', '2022-07-13 00:29:00', '2022-07-13 08:37:49');
INSERT INTO `users_authentication` VALUES (15, 4, 'coujeDN2hayEM', '2023-09-02 23:41:36', '2022-07-13 00:36:30', '2022-07-13 08:41:36');
INSERT INTO `users_authentication` VALUES (16, 4, 'coCHs.WcDuG1g', '2023-09-02 23:53:21', '2022-07-13 00:51:28', '2022-07-13 08:53:21');
INSERT INTO `users_authentication` VALUES (17, 1, 'coP2eKxW.syJo', '2023-09-03 00:03:46', '2022-07-13 00:59:17', '2022-07-13 09:03:46');
INSERT INTO `users_authentication` VALUES (18, 4, 'coFhttglzOpEQ', '2023-09-03 00:02:29', '2022-07-13 01:01:36', '2022-07-13 09:02:29');
INSERT INTO `users_authentication` VALUES (19, 1, 'coAsAs9TNuxEc', '2023-09-03 02:55:06', '2022-07-13 03:54:39', '2022-07-13 11:55:06');
INSERT INTO `users_authentication` VALUES (20, 4, 'cobd6Orhlq8O.', '2023-09-05 10:00:29', '2022-07-15 10:15:31', '2022-07-15 19:00:29');
INSERT INTO `users_authentication` VALUES (21, 4, 'co.edJknywzQ.', '2023-09-05 10:03:04', '2022-07-15 11:02:23', '2022-07-15 19:03:04');
INSERT INTO `users_authentication` VALUES (22, 1, 'cougqpOdXFYzI', '2023-09-08 00:13:53', '2022-07-18 01:08:43', '2022-07-18 09:13:53');
INSERT INTO `users_authentication` VALUES (23, 1, 'co3zPZIjT7I/k', '2023-09-08 00:14:42', '2022-07-18 01:14:15', '2022-07-18 09:14:42');
INSERT INTO `users_authentication` VALUES (24, 1, 'coSiLUhZRK94o', '2023-09-08 00:27:07', '2022-07-18 01:26:14', '2022-07-18 09:27:07');
INSERT INTO `users_authentication` VALUES (25, 2, 'coD9p97lNuoIM', '2023-09-08 05:32:03', '2022-07-18 06:32:03', '2022-07-18 14:32:03');
INSERT INTO `users_authentication` VALUES (26, 4, 'coNjvxgWbJbEk', '2023-09-15 00:20:03', '2022-07-25 01:16:14', '2022-07-25 09:20:03');
INSERT INTO `users_authentication` VALUES (27, 4, 'coT408fi3z8Y2', '2023-09-15 02:22:18', '2022-07-25 02:43:58', '2022-07-25 11:22:18');
INSERT INTO `users_authentication` VALUES (28, 4, 'coWbh8crKkn.s', '2023-09-15 07:11:40', '2022-07-25 03:22:15', '2022-07-25 16:11:40');
INSERT INTO `users_authentication` VALUES (29, 4, 'coTEwR6aL11Sc', '2023-09-15 03:56:38', '2022-07-25 03:33:09', '2022-07-25 12:56:38');
INSERT INTO `users_authentication` VALUES (30, 4, 'co0MU7pJFHWwc', '2023-09-15 07:39:47', '2022-07-25 08:39:44', '2022-07-25 16:39:47');
INSERT INTO `users_authentication` VALUES (31, 4, 'cotXnaHc5EKJw', '2023-09-16 00:38:57', '2022-07-26 00:05:39', '2022-07-26 09:38:57');
INSERT INTO `users_authentication` VALUES (32, 4, 'coaENeKqG0J2g', '2023-09-16 05:19:08', '2022-07-26 06:19:06', '2022-07-26 14:19:08');
INSERT INTO `users_authentication` VALUES (33, 4, 'coZol47ywA5j.', '2023-09-16 23:19:32', '2022-07-26 23:58:38', '2022-07-27 08:19:32');
INSERT INTO `users_authentication` VALUES (34, 4, 'coRDBZBYqFvgE', '2023-09-17 00:31:00', '2022-07-27 01:30:50', '2022-07-27 09:31:00');
INSERT INTO `users_authentication` VALUES (35, 4, 'coSdb3q86fDU2', '2023-09-17 03:51:55', '2022-07-27 04:51:48', '2022-07-27 12:51:55');
INSERT INTO `users_authentication` VALUES (36, 4, 'co0JcijuzKKJA', '2023-09-18 07:34:50', '2022-07-28 08:33:48', '2022-07-28 16:34:50');
INSERT INTO `users_authentication` VALUES (37, 4, 'coPPmJcviKXao', '2023-09-19 00:15:18', '2022-07-29 01:09:47', '2022-07-29 09:15:18');
INSERT INTO `users_authentication` VALUES (38, 4, 'covF4CbkhAQMI', '2023-09-19 01:34:39', '2022-07-29 01:22:11', '2022-07-29 10:34:39');
INSERT INTO `users_authentication` VALUES (39, 4, 'coSdC4vbab2L.', '2023-09-21 06:30:16', '2022-07-31 07:25:07', '2022-07-31 15:30:16');
INSERT INTO `users_authentication` VALUES (40, 4, 'co3DAnw2TsWZU', '2023-09-22 00:47:44', '2022-08-01 01:11:51', '2022-08-01 09:47:44');
INSERT INTO `users_authentication` VALUES (41, 4, 'coopRz4HooQ8Q', '2023-09-22 02:22:51', '2022-08-01 03:02:38', '2022-08-01 11:22:51');
INSERT INTO `users_authentication` VALUES (42, 4, 'cop/np3qgAcOQ', '2023-09-22 04:10:07', '2022-08-01 05:10:06', '2022-08-01 13:10:07');
INSERT INTO `users_authentication` VALUES (43, 4, 'co3NiiGBitd5M', '2023-09-22 04:44:05', '2022-08-01 05:43:27', '2022-08-01 13:44:05');
INSERT INTO `users_authentication` VALUES (44, 4, 'coiPgRz4qzWVg', '2023-09-22 08:11:03', '2022-08-01 07:34:41', '2022-08-01 17:11:03');
INSERT INTO `users_authentication` VALUES (45, 4, 'coDMTulgLGfAw', '2023-09-22 06:43:06', '2022-08-01 07:39:01', '2022-08-01 15:43:06');
INSERT INTO `users_authentication` VALUES (46, 4, 'coAMfJo9yqZPk', '2023-09-22 08:14:45', '2022-08-01 09:14:41', '2022-08-01 17:14:45');
INSERT INTO `users_authentication` VALUES (47, 4, 'coanoiX8V/Iq6', '2023-09-23 02:37:33', '2022-08-02 03:11:38', '2022-08-02 11:37:33');
INSERT INTO `users_authentication` VALUES (48, 4, 'cordy9S.HhITE', '2023-09-23 06:14:13', '2022-08-02 07:07:39', '2022-08-02 15:14:13');
INSERT INTO `users_authentication` VALUES (49, 4, 'co2QFmqR4FugQ', '2023-09-24 00:43:52', '2022-08-03 01:28:40', '2022-08-03 09:43:52');
INSERT INTO `users_authentication` VALUES (50, 4, 'coeKa.4v1.KgU', '2023-09-24 05:52:41', '2022-08-03 06:48:42', '2022-08-03 14:52:41');
INSERT INTO `users_authentication` VALUES (51, 4, 'colv8AGDghnNs', '2023-09-24 08:57:52', '2022-08-03 09:57:48', '2022-08-03 17:57:52');
INSERT INTO `users_authentication` VALUES (52, 4, 'coH8F4L1t5LGQ', '2023-09-26 01:07:57', '2022-08-05 02:07:57', '2022-08-05 10:07:57');
INSERT INTO `users_authentication` VALUES (53, 4, 'cogFZ4l8NJdkM', '2023-09-26 09:10:06', '2022-08-05 10:09:55', '2022-08-05 18:10:06');
INSERT INTO `users_authentication` VALUES (54, 4, 'coYIJ3jm0IsFM', '2023-09-28 11:09:36', '2022-08-07 12:09:22', '2022-08-07 20:09:36');
INSERT INTO `users_authentication` VALUES (55, 4, 'coo5T.qykP7SA', '2023-09-29 06:22:14', '2022-08-08 07:22:04', '2022-08-08 15:22:14');
INSERT INTO `users_authentication` VALUES (56, 4, 'coziGcoCy.D8I', '2023-09-29 12:02:38', '2022-08-08 13:02:24', '2022-08-08 21:02:38');
INSERT INTO `users_authentication` VALUES (57, 4, 'coEQNXn1dr5VA', '2023-09-30 10:44:32', '2022-08-09 11:25:53', '2022-08-09 19:44:32');
INSERT INTO `users_authentication` VALUES (58, 4, 'coeayq5WApFqU', '2023-10-01 02:19:08', '2022-08-10 03:13:58', '2022-08-10 11:19:08');
INSERT INTO `users_authentication` VALUES (59, 4, 'coh.tXtnoMYiY', '2023-10-03 07:42:35', '2022-08-12 08:30:31', '2022-08-12 16:42:35');
INSERT INTO `users_authentication` VALUES (60, 4, 'coEB5bSLSqssk', '2023-10-06 02:13:41', '2022-08-15 03:13:41', '2022-08-15 11:13:41');
INSERT INTO `users_authentication` VALUES (61, 4, 'coHiI4407Zf2Y', '2023-10-06 05:53:20', '2022-08-15 06:45:35', '2022-08-15 14:53:20');
INSERT INTO `users_authentication` VALUES (62, 4, 'coaBX270lCb4Q', '2023-10-20 03:24:18', '2022-08-29 02:01:14', '2022-08-29 12:24:18');
INSERT INTO `users_authentication` VALUES (63, 4, 'coxDL2UIuEbXU', '2023-10-20 07:46:51', '2022-08-29 08:44:32', '2022-08-29 16:46:51');
INSERT INTO `users_authentication` VALUES (64, 4, 'coSy/qX8naFSk', '2023-10-21 01:08:00', '2022-08-30 01:29:57', '2022-08-30 10:08:00');
INSERT INTO `users_authentication` VALUES (65, 399, 'cowK5KowpNFGw', '2023-10-21 01:10:15', '2022-08-30 02:10:13', '2022-08-30 10:10:15');
INSERT INTO `users_authentication` VALUES (66, 4, 'coRAhiQTeQyIQ', '2023-10-21 08:09:39', '2022-08-30 08:46:08', '2022-08-30 17:09:39');
INSERT INTO `users_authentication` VALUES (67, 4, 'coXgO98ls7vsU', '2023-10-22 07:10:37', '2022-08-31 08:10:37', '2022-08-31 16:10:37');
INSERT INTO `users_authentication` VALUES (68, 4, 'coBdGi6qvXz/g', '2023-10-23 06:05:48', '2022-09-01 07:00:22', '2022-09-01 15:05:48');
INSERT INTO `users_authentication` VALUES (69, 4, 'coirCHcTqSB8Y', '2023-10-27 08:32:43', '2022-09-05 09:19:56', '2022-09-05 17:32:43');
INSERT INTO `users_authentication` VALUES (70, 4, 'cowph0A.fEFzo', '2023-11-04 06:44:23', '2022-09-13 07:44:23', '2022-09-13 15:44:23');
INSERT INTO `users_authentication` VALUES (71, 4, 'cox7PfwA7foKY', '2023-11-04 08:21:36', '2022-09-13 08:38:22', '2022-09-13 17:21:36');
INSERT INTO `users_authentication` VALUES (72, 4, 'coRtPi66S90..', '2023-11-05 00:00:51', '2022-09-14 00:31:31', '2022-09-14 09:00:51');
INSERT INTO `users_authentication` VALUES (73, 4, 'cof3MvlwTeciw', '2023-11-05 10:57:00', '2022-09-14 11:48:44', '2022-09-14 19:57:00');
INSERT INTO `users_authentication` VALUES (74, 4, 'coyTfUjOS0Xxg', '2023-11-06 02:26:19', '2022-09-15 02:08:12', '2022-09-15 11:26:19');
INSERT INTO `users_authentication` VALUES (75, 4, 'corYglN9W4snE', '2023-11-09 10:54:47', '2022-09-18 11:41:50', '2022-09-18 19:54:47');
INSERT INTO `users_authentication` VALUES (76, 4, 'coLIZ851M7TW.', '2023-11-10 00:55:29', '2022-09-19 01:32:25', '2022-09-19 09:55:29');
INSERT INTO `users_authentication` VALUES (77, 4, 'coHQpReZ7cz46', '2023-11-11 02:30:12', '2022-09-20 03:26:14', '2022-09-20 11:30:12');
INSERT INTO `users_authentication` VALUES (78, 4, 'coTyFTFJiGkBM', '2023-11-11 08:29:54', '2022-09-20 08:46:26', '2022-09-20 17:29:54');
INSERT INTO `users_authentication` VALUES (79, 4, 'coR/Q/6sq34oE', '2023-11-12 03:24:00', '2022-09-21 02:26:46', '2022-09-21 12:24:00');
INSERT INTO `users_authentication` VALUES (80, 4, 'cofLajAAfpHL6', '2023-11-12 08:55:49', '2022-09-21 09:54:46', '2022-09-21 17:55:49');
INSERT INTO `users_authentication` VALUES (81, 4, 'cobz4KgIWO2Rs', '2023-11-13 00:20:22', '2022-09-22 01:18:43', '2022-09-22 09:20:22');
INSERT INTO `users_authentication` VALUES (82, 4, 'cowfUYwQp5rgs', '2023-11-13 04:58:50', '2022-09-22 05:43:56', '2022-09-22 13:58:50');
INSERT INTO `users_authentication` VALUES (83, 4, 'coOMZ23Cyy6Fs', '2023-11-13 23:53:39', '2022-09-23 00:53:32', '2022-09-23 08:53:39');
INSERT INTO `users_authentication` VALUES (84, 4, 'coBa5Tcfgk8EA', '2023-11-17 07:19:06', '2022-09-26 07:45:19', '2022-09-26 16:19:06');
INSERT INTO `users_authentication` VALUES (85, 4, 'coPEzWW2rTwPU', '2023-11-25 00:35:15', '2022-10-04 01:29:57', '2022-10-04 09:35:15');
INSERT INTO `users_authentication` VALUES (86, 1, 'cokvJ4zYKzZ26', '2023-12-15 00:57:14', '2022-10-24 01:56:57', '2022-10-24 09:57:14');
INSERT INTO `users_authentication` VALUES (87, 4, 'co5txMe/NH4e6', '2023-12-16 01:50:01', '2022-10-25 01:42:37', '2022-10-25 10:50:01');
INSERT INTO `users_authentication` VALUES (88, 4, 'co5GEaQsuJz/2', '2023-12-18 03:18:59', '2022-10-27 03:38:45', '2022-10-27 12:18:59');
INSERT INTO `users_authentication` VALUES (89, 4, 'coaYBJ6KnglNM', '2023-12-18 03:22:03', '2022-10-27 03:58:07', '2022-10-27 12:22:03');
INSERT INTO `users_authentication` VALUES (90, 4, 'cokjRgpLvEQfA', '2023-12-23 07:07:03', '2022-11-01 06:14:27', '2022-11-01 16:07:03');
INSERT INTO `users_authentication` VALUES (91, 4, 'cojWkXRfg3vJg', '2023-12-24 23:44:47', '2022-11-03 00:36:33', '2022-11-03 08:44:47');
INSERT INTO `users_authentication` VALUES (92, 4, 'co0eHNbZ0.rZ2', '2023-12-25 02:28:20', '2022-11-03 03:20:34', '2022-11-03 11:28:20');
INSERT INTO `users_authentication` VALUES (93, 4, 'co6MGsVKZynJE', '2023-12-25 04:07:59', '2022-11-03 04:21:40', '2022-11-03 13:07:59');
INSERT INTO `users_authentication` VALUES (94, 4, 'cod3lyeHgwKTM', '2023-12-25 07:05:51', '2022-11-03 07:25:16', '2022-11-03 16:05:51');
INSERT INTO `users_authentication` VALUES (95, 4, 'coLb4eGcSOCVE', '2023-12-26 00:18:27', '2022-11-04 00:51:06', '2022-11-04 09:18:27');
INSERT INTO `users_authentication` VALUES (96, 4, 'co9UnU33ONjno', '2023-12-26 07:10:53', '2022-11-04 08:10:49', '2022-11-04 16:10:53');
INSERT INTO `users_authentication` VALUES (97, 4, 'copxyvel6BrHo', '2023-12-29 08:58:34', '2022-11-07 09:43:51', '2022-11-07 17:58:34');
INSERT INTO `users_authentication` VALUES (98, 4, 'co0luUCXwHIGE', '2023-12-30 03:14:32', '2022-11-08 01:45:38', '2022-11-08 12:14:32');
INSERT INTO `users_authentication` VALUES (99, 4, 'cof7wxeCuw1Wg', '2023-12-31 01:36:28', '2022-11-09 00:43:32', '2022-11-09 10:36:28');
INSERT INTO `users_authentication` VALUES (100, 4, 'coTGcz37e.J0o', '2023-12-31 08:27:43', '2022-11-09 09:27:36', '2022-11-09 17:27:43');
INSERT INTO `users_authentication` VALUES (101, 4, 'coy7BbzK6STW2', '2024-01-05 00:13:49', '2022-11-14 01:11:45', '2022-11-14 09:13:49');
INSERT INTO `users_authentication` VALUES (102, 4, 'co.kdmIqPvsXw', '2024-01-05 10:29:12', '2022-11-14 10:37:09', '2022-11-14 19:29:12');
INSERT INTO `users_authentication` VALUES (103, 4, 'colns2CZRuXsU', '2024-01-06 01:07:28', '2022-11-15 01:45:04', '2022-11-15 10:07:28');
INSERT INTO `users_authentication` VALUES (104, 4, 'coKbtHoniNxMk', '2024-01-12 23:30:33', '2022-11-22 00:30:20', '2022-11-22 08:30:33');
INSERT INTO `users_authentication` VALUES (105, 4, 'cokG.AqQ3JN1k', '2024-01-13 23:02:58', '2022-11-22 23:49:12', '2022-11-23 08:02:58');
INSERT INTO `users_authentication` VALUES (106, 4, 'co4id9D79I.T6', '2024-01-14 01:03:37', '2022-11-23 02:03:34', '2022-11-23 10:03:37');
INSERT INTO `users_authentication` VALUES (107, 4, 'cog1y/Toquob2', '2024-01-14 06:29:36', '2022-11-23 07:15:35', '2022-11-23 15:29:36');
INSERT INTO `users_authentication` VALUES (108, 4, 'codrwk5PH/f5Y', '2024-01-17 01:54:10', '2022-11-26 02:54:10', '2022-11-26 10:54:10');
INSERT INTO `users_authentication` VALUES (109, 4, 'coDgmtXccidiE', '2024-01-19 00:19:05', '2022-11-28 00:39:05', '2022-11-28 09:19:05');
INSERT INTO `users_authentication` VALUES (110, 4, 'codyn1wcKBAJE', '2024-01-26 03:28:11', '2022-12-05 04:21:51', '2022-12-05 12:28:11');
INSERT INTO `users_authentication` VALUES (111, 4, 'cofIq8KHACe.Q', '2024-01-28 23:55:05', '2022-12-08 00:55:05', '2022-12-08 08:55:05');
INSERT INTO `users_authentication` VALUES (112, 4, 'coOkPEq8.kQSs', '2024-01-29 02:42:13', '2022-12-08 03:15:58', '2022-12-08 11:42:13');
INSERT INTO `users_authentication` VALUES (113, 4, 'comqHgCXtbOy2', '2024-02-10 01:52:19', '2022-12-20 02:32:38', '2022-12-20 10:52:19');
INSERT INTO `users_authentication` VALUES (114, 1, 'coCMSoSoXT9YE', '2024-02-16 05:39:01', '2022-12-26 04:23:12', '2022-12-26 14:39:01');
INSERT INTO `users_authentication` VALUES (115, 1, 'coRqYSyRVb7E2', '2024-02-16 06:00:21', '2022-12-26 07:00:21', '2022-12-26 15:00:21');
INSERT INTO `users_authentication` VALUES (116, 4, 'coD8U.DxXZeWo', '2024-02-17 00:44:49', '2022-12-27 01:05:01', '2022-12-27 09:44:49');
INSERT INTO `users_authentication` VALUES (117, 4, 'coN76VjX7.Z/2', '2024-03-01 00:26:40', '2023-01-09 00:52:39', '2023-01-09 09:26:40');
INSERT INTO `users_authentication` VALUES (118, 4, 'coXRKspFoZEoE', '2024-03-01 07:05:08', '2023-01-09 08:02:06', '2023-01-09 16:05:08');
INSERT INTO `users_authentication` VALUES (119, 4, 'colJFYRmVd1Pc', '2024-03-02 00:10:46', '2023-01-10 01:10:44', '2023-01-10 09:10:46');
INSERT INTO `users_authentication` VALUES (120, 1, 'coYnXmDEcPLTs', '2024-03-02 01:52:32', '2023-01-10 02:38:59', '2023-01-10 10:52:32');
INSERT INTO `users_authentication` VALUES (121, 1, 'coSAY9qtUv2zE', '2024-03-02 02:08:22', '2023-01-10 03:08:12', '2023-01-10 11:08:22');
INSERT INTO `users_authentication` VALUES (122, 4, 'cooTVwDRNjSlc', '2024-03-03 02:54:34', '2023-01-11 03:50:33', '2023-01-11 11:54:34');
INSERT INTO `users_authentication` VALUES (123, 1, 'coXUZlYpUj482', '2024-03-03 06:57:36', '2023-01-11 07:57:09', '2023-01-11 15:57:36');
INSERT INTO `users_authentication` VALUES (124, 4, 'coOjNPIMkTxME', '2024-03-04 22:48:44', '2023-01-12 23:46:49', '2023-01-13 07:48:44');
INSERT INTO `users_authentication` VALUES (125, 1, 'cobPQqZqZ8WiM', '2024-03-08 01:36:05', '2023-01-16 02:35:38', '2023-01-16 10:36:05');
INSERT INTO `users_authentication` VALUES (126, 1, 'coIxL4KtK1IoY', '2024-03-09 06:51:31', '2023-01-17 15:51:31', '2023-01-17 15:51:31');
INSERT INTO `users_authentication` VALUES (127, 1, 'coDs/VQy/OvSI', '2024-03-09 06:59:01', '2023-01-17 15:58:28', '2023-01-17 15:59:01');
INSERT INTO `users_authentication` VALUES (128, 1, 'co6W0W8Nf7PXE', '2024-03-09 12:38:42', '2023-01-17 21:28:39', '2023-01-17 21:38:42');
INSERT INTO `users_authentication` VALUES (129, 1, 'covF.vuurgedo', '2024-03-09 20:31:49', '2023-01-18 05:31:29', '2023-01-18 05:31:49');
INSERT INTO `users_authentication` VALUES (130, 1, 'co7HZhYkJXMhE', '2024-03-10 19:06:26', '2023-01-19 04:05:12', '2023-01-19 04:06:26');
INSERT INTO `users_authentication` VALUES (131, 1, 'coQ9EtOgtmeQE', '2024-03-10 19:07:31', '2023-01-19 04:06:37', '2023-01-19 04:07:31');
INSERT INTO `users_authentication` VALUES (132, 1, 'coL0y6kU7/h2A', '2024-03-10 19:11:32', '2023-01-19 04:11:30', '2023-01-19 04:11:32');
INSERT INTO `users_authentication` VALUES (133, 1, 'coC7ff1/RFtY2', '2024-03-10 22:32:28', '2023-01-19 07:31:49', '2023-01-19 07:32:28');
INSERT INTO `users_authentication` VALUES (134, 1, 'coQSADs39wPto', '2024-03-11 06:57:43', '2023-01-19 09:36:44', '2023-01-19 15:57:43');
INSERT INTO `users_authentication` VALUES (135, 1, 'co1VTkEUWBTxg', '2024-03-11 02:53:05', '2023-01-19 11:51:12', '2023-01-19 11:53:05');
INSERT INTO `users_authentication` VALUES (136, 1, 'coP0KVqip4S6o', '2024-03-11 06:57:56', '2023-01-19 14:38:55', '2023-01-19 15:57:56');
INSERT INTO `users_authentication` VALUES (137, 1, 'cogSBnFNIhhBw', '2024-03-17 06:07:47', '2023-01-25 14:58:07', '2023-01-25 15:07:47');
INSERT INTO `users_authentication` VALUES (138, 1, 'cokE6IiRA21Nk', '2024-03-22 22:53:41', '2023-01-31 07:53:41', '2023-01-31 07:53:41');
INSERT INTO `users_authentication` VALUES (139, 1, 'cowZr/q4eGOz2', '2024-03-23 00:00:02', '2023-01-31 08:57:10', '2023-01-31 09:00:02');
INSERT INTO `users_authentication` VALUES (140, 1, 'comK5bgS/QPmU', '2024-03-23 02:17:47', '2023-01-31 11:14:22', '2023-01-31 11:17:47');
INSERT INTO `users_authentication` VALUES (141, 1, 'coDEK7uWn5rRo', '2024-03-23 05:49:12', '2023-01-31 14:04:35', '2023-01-31 14:49:12');
INSERT INTO `users_authentication` VALUES (142, 1, 'coAmjD8dUethw', '2024-04-28 23:25:24', '2023-03-09 08:25:10', '2023-03-09 08:25:24');
INSERT INTO `users_authentication` VALUES (143, 1, 'coXAjbBwcuYnM', '2024-05-04 02:31:32', '2023-03-14 11:03:55', '2023-03-14 11:31:32');
INSERT INTO `users_authentication` VALUES (144, 1, 'coQuZHApFacnI', '2024-05-05 00:12:58', '2023-03-15 07:50:15', '2023-03-15 09:12:58');
INSERT INTO `users_authentication` VALUES (145, 1, 'co8C.d9rDUc86', '2024-05-05 07:19:04', '2023-03-15 11:45:15', '2023-03-15 16:19:04');
INSERT INTO `users_authentication` VALUES (146, 1, 'coa0BNc8.4f5E', '2024-05-05 13:06:19', '2023-03-15 20:58:51', '2023-03-15 22:06:19');
INSERT INTO `users_authentication` VALUES (147, 1, 'coULtc0iZVDB6', '2024-05-06 10:31:11', '2023-03-16 14:17:11', '2023-03-16 19:31:11');
INSERT INTO `users_authentication` VALUES (148, 1, 'co0kvUBRvGDqo', '2024-05-06 21:30:09', '2023-03-17 06:27:06', '2023-03-17 06:30:09');
INSERT INTO `users_authentication` VALUES (149, 1, 'coO/gc7xzwBQc', '2024-05-10 03:08:32', '2023-03-20 08:06:03', '2023-03-20 12:08:32');
INSERT INTO `users_authentication` VALUES (150, 1, 'coWclVmAmvGJY', '2024-05-10 07:10:18', '2023-03-20 14:18:19', '2023-03-20 16:10:18');
INSERT INTO `users_authentication` VALUES (151, 1, 'colv1jgEM3opk', '2024-05-10 13:27:06', '2023-03-20 22:01:05', '2023-03-20 22:27:06');
INSERT INTO `users_authentication` VALUES (152, 1, 'coMGe/j11Dcns', '2024-05-11 00:00:48', '2023-03-21 07:44:08', '2023-03-21 09:00:48');
INSERT INTO `users_authentication` VALUES (153, 1, 'co0CCbuxjkbSk', '2024-05-11 09:23:00', '2023-03-21 11:14:37', '2023-03-21 18:23:00');
INSERT INTO `users_authentication` VALUES (154, 1, 'co7AeZJX24foY', '2024-05-15 07:26:16', '2023-03-25 16:18:24', '2023-03-25 16:26:16');
INSERT INTO `users_authentication` VALUES (155, 1, 'coXUY813aTRpo', '2024-05-17 01:22:53', '2023-03-27 08:20:31', '2023-03-27 10:22:53');
INSERT INTO `users_authentication` VALUES (156, 1, 'cochJd9LueIKg', '2024-05-21 01:56:06', '2023-03-31 10:53:58', '2023-03-31 10:56:06');
INSERT INTO `users_authentication` VALUES (157, 1, 'coxKkiySgvUY6', '2024-06-23 01:31:04', '2023-05-03 10:31:04', '2023-05-03 10:31:04');
INSERT INTO `users_authentication` VALUES (158, 1, 'coSe9Yj83giNs', '2024-06-24 05:21:40', '2023-05-04 08:04:09', '2023-05-04 14:21:40');
INSERT INTO `users_authentication` VALUES (159, 1, 'coWdqDdXQjkME', '2024-06-24 01:14:56', '2023-05-04 10:14:48', '2023-05-04 10:14:56');
INSERT INTO `users_authentication` VALUES (160, 1, 'coPpprsZ1xqPU', '2024-06-24 06:03:20', '2023-05-04 14:45:02', '2023-05-04 15:03:20');
INSERT INTO `users_authentication` VALUES (161, 1, 'co0A5KGymUGZU', '2024-06-24 23:30:42', '2023-05-05 07:34:45', '2023-05-05 08:30:42');
INSERT INTO `users_authentication` VALUES (162, 1, 'coenDUbu3eqZM', '2024-06-24 23:00:36', '2023-05-05 08:00:25', '2023-05-05 08:00:36');
INSERT INTO `users_authentication` VALUES (163, 1, 'coHXC5aIKjVhg', '2024-06-25 02:28:53', '2023-05-05 10:50:00', '2023-05-05 11:28:53');
INSERT INTO `users_authentication` VALUES (164, 1, 'coDheh5fmMgoU', '2024-06-25 04:39:44', '2023-05-05 13:39:44', '2023-05-05 13:39:44');
INSERT INTO `users_authentication` VALUES (165, 1, 'coiqQbzkWQLLo', '2024-06-25 04:42:25', '2023-05-05 13:42:25', '2023-05-05 13:42:25');
INSERT INTO `users_authentication` VALUES (166, 1, 'co586rmhrKCfI', '2024-06-25 04:48:59', '2023-05-05 13:48:59', '2023-05-05 13:48:59');
INSERT INTO `users_authentication` VALUES (167, 1, 'co8VS6tTb/S26', '2024-06-25 04:52:39', '2023-05-05 13:52:39', '2023-05-05 13:52:39');
INSERT INTO `users_authentication` VALUES (168, 1, 'coYRN6oZ5kaH2', '2024-06-25 05:12:09', '2023-05-05 14:04:18', '2023-05-05 14:12:09');
INSERT INTO `users_authentication` VALUES (169, 1, 'coM0.Zy08wRgs', '2024-06-25 13:49:41', '2023-05-05 22:25:03', '2023-05-05 22:49:41');
INSERT INTO `users_authentication` VALUES (170, 1, 'cokutOOiUEv6c', '2024-06-27 22:33:11', '2023-05-08 07:31:19', '2023-05-08 07:33:11');
INSERT INTO `users_authentication` VALUES (171, 1, 'coTMVMRu8nOb6', '2024-06-30 08:55:07', '2023-05-10 15:01:48', '2023-05-10 17:55:07');
INSERT INTO `users_authentication` VALUES (172, 1, 'cowpqgv8dzI72', '2024-06-30 09:21:36', '2023-05-10 17:55:28', '2023-05-10 18:21:36');
INSERT INTO `users_authentication` VALUES (173, 1, 'core2lpQ/Nd5w', '2024-06-30 09:23:58', '2023-05-10 18:21:47', '2023-05-10 18:23:58');
INSERT INTO `users_authentication` VALUES (174, 1, 'coEFfix0QTQkk', '2024-06-30 09:49:56', '2023-05-10 18:25:00', '2023-05-10 18:49:56');
INSERT INTO `users_authentication` VALUES (175, 1, 'co5Fg.XenWi0c', '2024-06-30 09:51:02', '2023-05-10 18:50:10', '2023-05-10 18:51:02');
INSERT INTO `users_authentication` VALUES (176, 1, 'coKvgGIFSt4lk', '2024-06-30 09:51:51', '2023-05-10 18:51:18', '2023-05-10 18:51:51');
INSERT INTO `users_authentication` VALUES (177, 1, 'coO1xe3td5pzY', '2024-06-30 09:53:28', '2023-05-10 18:52:04', '2023-05-10 18:53:28');
INSERT INTO `users_authentication` VALUES (178, 1, 'coro3WlTpQMg2', '2024-06-30 09:54:14', '2023-05-10 18:53:37', '2023-05-10 18:54:14');
INSERT INTO `users_authentication` VALUES (179, 1, 'cootfQkeOpV66', '2024-06-30 09:55:36', '2023-05-10 18:55:04', '2023-05-10 18:55:36');
INSERT INTO `users_authentication` VALUES (180, 1, 'co.UtsdAW7P/g', '2024-06-30 10:13:48', '2023-05-10 18:55:53', '2023-05-10 19:13:48');
INSERT INTO `users_authentication` VALUES (181, 1, 'coYAreuczhbvU', '2024-06-30 10:15:47', '2023-05-10 19:14:16', '2023-05-10 19:15:47');
INSERT INTO `users_authentication` VALUES (182, 1, 'co4Tvt9wxpShM', '2024-06-30 10:16:38', '2023-05-10 19:16:28', '2023-05-10 19:16:38');
INSERT INTO `users_authentication` VALUES (183, 1, 'coGTt1rsVwJ5g', '2024-06-30 10:20:48', '2023-05-10 19:17:33', '2023-05-10 19:20:48');
INSERT INTO `users_authentication` VALUES (184, 1, 'co8DGmKvL5w8Y', '2024-06-30 10:33:39', '2023-05-10 19:21:14', '2023-05-10 19:33:39');
INSERT INTO `users_authentication` VALUES (185, 1, 'coACXQdCtEE1E', '2024-06-30 10:45:29', '2023-05-10 19:35:08', '2023-05-10 19:45:29');
INSERT INTO `users_authentication` VALUES (186, 1, 'colionYaGU16o', '2024-06-30 11:05:27', '2023-05-10 19:45:40', '2023-05-10 20:05:27');
INSERT INTO `users_authentication` VALUES (187, 1, 'coybJOndRaMsY', '2024-06-30 11:24:01', '2023-05-10 20:09:46', '2023-05-10 20:24:01');
INSERT INTO `users_authentication` VALUES (188, 1, 'co2i8QxbaN9Iw', '2024-06-30 23:02:15', '2023-05-11 07:40:31', '2023-05-11 08:02:15');
INSERT INTO `users_authentication` VALUES (189, 1, 'corPnnaztzarU', '2024-06-30 23:01:17', '2023-05-11 08:01:17', '2023-05-11 08:01:17');
INSERT INTO `users_authentication` VALUES (190, 1, 'coG3QwxiEd7.o', '2024-06-30 23:12:21', '2023-05-11 08:09:38', '2023-05-11 08:12:21');
INSERT INTO `users_authentication` VALUES (191, 1, 'coqBekP4fPdOE', '2024-06-30 23:12:59', '2023-05-11 08:12:59', '2023-05-11 08:12:59');
INSERT INTO `users_authentication` VALUES (192, 1, 'co/p9Ez1rSCEE', '2024-06-30 23:15:14', '2023-05-11 08:15:14', '2023-05-11 08:15:14');
INSERT INTO `users_authentication` VALUES (193, 1, 'co0gxrZm.VD6w', '2024-06-30 23:22:27', '2023-05-11 08:22:07', '2023-05-11 08:22:27');
INSERT INTO `users_authentication` VALUES (194, 1, 'cofZ7k2x0Jo1M', '2024-06-30 23:44:15', '2023-05-11 08:24:09', '2023-05-11 08:44:15');
INSERT INTO `users_authentication` VALUES (195, 1, 'cosjfdFi6FsLE', '2024-07-01 02:59:30', '2023-05-11 10:56:21', '2023-05-11 11:59:30');
INSERT INTO `users_authentication` VALUES (196, 1, 'coRTq2FnUpPEo', '2024-07-01 06:24:28', '2023-05-11 15:22:28', '2023-05-11 15:24:28');
INSERT INTO `users_authentication` VALUES (197, 1, 'cowCjwiCxnvJc', '2024-07-02 07:12:12', '2023-05-12 14:11:24', '2023-05-12 16:12:12');
INSERT INTO `users_authentication` VALUES (198, 1, 'co3JusZvB7nU6', '2024-07-04 09:56:55', '2023-05-14 15:30:53', '2023-05-14 18:56:55');
INSERT INTO `users_authentication` VALUES (199, 1, 'commvFGSqCzVo', '2024-07-04 20:29:12', '2023-05-15 05:29:02', '2023-05-15 05:29:12');
INSERT INTO `users_authentication` VALUES (200, 1, 'coRv6DmcDSCpo', '2024-07-05 00:49:25', '2023-05-15 09:46:56', '2023-05-15 09:49:25');
INSERT INTO `users_authentication` VALUES (201, 1, 'co3RmgiiLxV1U', '2024-07-05 00:48:43', '2023-05-15 09:48:31', '2023-05-15 09:48:43');
INSERT INTO `users_authentication` VALUES (202, 1, 'cozOqIkrRPL4E', '2024-07-05 01:04:15', '2023-05-15 09:55:55', '2023-05-15 10:04:15');
INSERT INTO `users_authentication` VALUES (203, 1, 'cohqsvbYF7rg6', '2024-07-05 04:22:25', '2023-05-15 11:16:14', '2023-05-15 13:22:25');
INSERT INTO `users_authentication` VALUES (204, 1, 'corMwKhLoX3zI', '2024-07-05 03:15:40', '2023-05-15 11:22:51', '2023-05-15 12:15:40');
INSERT INTO `users_authentication` VALUES (205, 1, 'coU5U86eDmR8c', '2024-07-05 07:33:58', '2023-05-15 16:33:47', '2023-05-15 16:33:58');
INSERT INTO `users_authentication` VALUES (206, 1, 'cofK0BdY2RlsE', '2024-07-06 05:54:21', '2023-05-16 13:22:46', '2023-05-16 14:54:21');
INSERT INTO `users_authentication` VALUES (207, 1, 'coZHGo8ulAmKk', '2024-07-06 05:12:33', '2023-05-16 13:26:42', '2023-05-16 14:12:33');
INSERT INTO `users_authentication` VALUES (208, 1, 'cokbJKrzDYEl.', '2024-07-06 06:28:11', '2023-05-16 15:20:24', '2023-05-16 15:28:11');
INSERT INTO `users_authentication` VALUES (209, 1, 'co9ZUCXriew8E', '2024-07-06 07:00:03', '2023-05-16 15:32:37', '2023-05-16 16:00:03');
INSERT INTO `users_authentication` VALUES (210, 1, 'co0wubs/SfD32', '2024-07-06 19:04:55', '2023-05-17 03:56:58', '2023-05-17 04:04:55');
INSERT INTO `users_authentication` VALUES (211, 1, 'coyMRicKwmnlY', '2024-07-06 19:03:03', '2023-05-17 03:57:05', '2023-05-17 04:03:03');
INSERT INTO `users_authentication` VALUES (212, 1, 'cool/OjM7GguQ', '2024-07-07 04:23:19', '2023-05-17 07:31:17', '2023-05-17 13:23:19');
INSERT INTO `users_authentication` VALUES (213, 1, 'coUHboBGBpfS.', '2024-07-06 23:40:48', '2023-05-17 07:31:46', '2023-05-17 08:40:48');
INSERT INTO `users_authentication` VALUES (214, 1, 'coInvpHKT43hI', '2024-07-07 01:31:49', '2023-05-17 10:31:33', '2023-05-17 10:31:49');
INSERT INTO `users_authentication` VALUES (215, 1, 'copTX.Le9WjW6', '2024-07-09 08:36:35', '2023-05-19 14:24:47', '2023-05-19 17:36:35');
INSERT INTO `users_authentication` VALUES (216, 1, 'cozBUP87.XgCU', '2024-07-09 05:28:24', '2023-05-19 14:24:55', '2023-05-19 14:28:24');
INSERT INTO `users_authentication` VALUES (217, 1, 'co0fTJ5N3Q6hw', '2024-07-12 02:36:39', '2023-05-22 09:07:01', '2023-05-22 11:36:39');
INSERT INTO `users_authentication` VALUES (218, 1, 'coOpZE7yB.8/6', '2024-07-12 03:09:17', '2023-05-22 09:07:31', '2023-05-22 12:09:17');
INSERT INTO `users_authentication` VALUES (219, 1, 'cosw3i57Q0u0Q', '2024-07-12 06:26:47', '2023-05-22 14:22:25', '2023-05-22 15:26:47');
INSERT INTO `users_authentication` VALUES (220, 1, 'cobrtsz.W0L42', '2024-07-12 06:27:46', '2023-05-22 14:22:32', '2023-05-22 15:27:46');

SET FOREIGN_KEY_CHECKS = 1;
