-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2020 at 11:42 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `session_lg`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `contact_number` varchar(64) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(512) NOT NULL,
  `access_level` varchar(16) NOT NULL,
  `access_code` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '0=pending,1=confirmed',
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='admin and customer users';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `contact_number`, `address`, `password`, `access_level`, `access_code`, `status`, `created`, `modified`) VALUES
(1, 'Mike', 'Dalisay', 'mike@example.com', '0999999999', 'Blk. 24 A, Lot 6, Ph. 3, Peace Village', '$2y$10$AUBptrm9sQF696zr8Hv31On3x4wqnTihdCLocZmGLbiDvyLpyokL.', 'Admin', '', 1, '0000-00-00 00:00:00', '2016-06-13 10:17:47'),
(2, 'Lauro', 'Abogne', 'lauro@eacomm.com', '08888888', 'Pasig City', '$2y$10$it4i11kRKrB19FfpPRWsRO5qtgrgajL7NnxOq180MsIhCKhAmSdDa', 'Customer', '', 1, '0000-00-00 00:00:00', '2015-03-23 23:00:21'),
(4, 'Darwin', 'Dalisay', 'darwin@example.com', '9331868359', 'Blk 24 A Lot 6 Ph 3\r\nPeace Village, San Luis', '$2y$10$tLq9lTKDUt7EyTFhxL0QHuen/BgO9YQzFYTUyH50kJXLJ.ISO3HAO', 'Customer', 'ILXFBdMAbHVrJswNDnm231cziO8FZomn', 1, '2014-10-29 17:31:09', '2016-06-13 10:18:25'),
(7, 'Marisol Jane', 'Dalisay', 'mariz@gmail.com', '09998765432', 'Blk. 24 A, Lot 6, Ph. 3, Peace Village', 'mariz', 'Customer', '', 1, '2015-02-25 09:35:52', '2015-03-23 23:00:21'),
(9, 'Marykris', 'De Leon', 'marykrisdarell.deleon@gmail.com', '09194444444', 'Project 4, QC', '$2y$10$uUy7D5qmvaRYttLCx9wnU.WOD3/8URgOX7OBXHPpWyTDjU4ZteSEm', 'Customer', '', 1, '2015-02-27 14:28:46', '2015-03-23 22:51:03'),
(10, 'Merlin', 'Duckerberg', 'merlin@gmail.com', '09991112333', 'Project 2, Quezon City', '$2y$10$VHY58eALB1QyYsP71RHD1ewmVxZZp.wLuhejyQrufvdy041arx1Kq', 'Admin', '', 1, '2015-03-18 06:45:28', '2015-03-23 23:00:21'),
(14, 'Charlon', 'Ignacio', 'charlon@gmail.com', '09876543345', 'Tandang Sora, QC', '$2y$10$Fj6O1tPYI6UZRzJ9BNfFJuhURN9DnK5fQGHEsfol5LXRu.tCYYggu', 'Customer', '', 1, '2015-03-24 08:06:57', '2015-03-23 23:48:00'),
(15, 'Kobe Bro', 'Bryant', 'kobe@gmail.com', '09898787674', 'Los Angeles, California', '$2y$10$fmanyjJxNfJ8O3p9jjUixu6EOHkGZrThtcd..TeNz2g.XZyCIuVpm', 'Customer', '', 1, '2015-03-26 11:28:01', '2015-03-25 19:39:52'),
(20, 'Tim', 'Duncan', 'tim@example.com', '9999999', 'San Antonio, Texas, USA', '$2y$10$9OSKHLhiDdBkJTmd3VLnQeNPCtyH1IvZmcHrz4khBMHdxc8PLX5G6', 'Customer', '0X4JwsRmdif8UyyIHSOUjhZz9tva3Czj', 1, '2016-05-26 01:25:59', '2016-05-25 09:25:59'),
(21, 'Tony', 'Parker', 'tony@example.com', '8888888', 'Blk 24 A Lot 6 Ph 3\r\nPeace Village, San Luis', '$2y$10$lBJfvLyl/X5PieaztTYADOxOQeZJCqETayF.O9ld17z3hcKSJwZae', 'Customer', 'THM3xkZzXeza5ISoTyPKl6oLpVa88tYl', 1, '2016-05-26 01:29:01', '2016-06-13 09:46:33'),
(22, 'sssss@mailer2.net', 'sssss@mailer2.net', 'sssss@mailer2.net', 'sssss@mailer2.net', 'sssss@mailer2.net', '$2y$10$5agZebV2gO5VgM8zFtSiiONvz06yfwm7DHuEOMr1Woh8a6FkCNJfu', 'Customer', 'p76kpbDN88bIqHt2bqnat3Ney2BDNh8P', 0, '2020-07-22 17:02:31', '2020-07-22 09:02:31'),
(23, 'haha@gmail.com', 'haha@gmail.com', 'haha@gmail.com', 'haha@gmail.com', 'haha@gmail.com', '$2y$10$TjnLVP2B6KxvWJv6HmyuZeQ0AAzvY/WSQw4Txoc0ApSlaQw6/PAQm', 'Customer', 'zkdTVcIoTWv7GQCgJwzvkD2WmbQlTXCW', 0, '2020-07-23 16:47:57', '2020-07-23 08:47:57'),
(24, 'rajini2509@tmauv.com', 'rajini2509@tmauv.com', 'rajini2509@tmauv.com', 'rajini2509@tmauv.com', 'rajini2509@tmauv.com', '$2y$10$QnsoULubhh8sWZqyaGeQ1OO5pVPPKiA5CEQ79unXIs2TkJjW8KRZu', 'Customer', 'pgHTl943LmrH40Tl9XK6s4dsrKgjIAJp', 1, '2020-07-23 16:51:55', '2020-07-23 08:55:25'),
(25, 'gepite3551@mailivw.com', 'gepite3551@mailivw.com', 'gepite3551@mailivw.com', 'gepite3551@mailivw.com', 'gepite3551@mailivw.com', '$2y$10$uz2qG79uQtR9anua72pNuePrrRlXMHCckNqCI3.usO2UEx.cmsgsm', 'Customer', 'dJpKZfsSto6sqnAO1u6p35YdlBrtZT51', 0, '2020-07-24 15:38:17', '2020-07-24 07:38:17'),
(26, 'vvv@mailer2.net', 'vvv@mailer2.net', 'vvv@mailer2.net', 'vvv@mailer2.net', 'vvv@mailer2.net', '$2y$10$/Y8CWbtcHxqfa691G9lLUuXwbbLleAsYuz5xtNAQkxTujNaNU5KbW', 'Customer', 'XjFqxEO1I8mKovmSVHtBxPcSb3IbwtVP', 1, '2020-07-24 15:41:23', '2020-07-24 07:51:16'),
(27, 'nawotof329@royalnt.net', 'nawotof329@royalnt.net', 'nawotof329@royalnt.net', 'nawotof329@royalnt.net', 'nawotof329@royalnt.net', '$2y$10$yPNnBQCQxGQvTWur1xphrulb/hAP6gW2oUfIbvd6peypIa6GOgMaG', 'Admin', 'f5mir4udwrP7EDLQGrm9P3RqdpxUf5ba', 1, '2020-07-25 16:24:03', '2020-07-25 08:25:34'),
(29, 'Low ', 'Yu Xuan', 'M-8717828@moe-dl.edu.my', '0123456789', 'Null', '$2y$10$5JdJS8n3cmi74Vk9S46uMOq1iLb3UCgHoP1E2YOSW6aaNLVUaOv4W', 'Customer', 'nSuQjqNOzKH7QvFGT7Y8CzmrMTybwKvx', 1, '2020-07-25 17:41:00', '2020-07-25 09:43:58'),
(30, 'levikom661@qlenw.com', 'levikom661@qlenw.com', 'levikom661@qlenw.com', 'levikom661@qlenw.com', 'levikom661@qlenw.com', '$2y$10$1oOzmRX0a1eDrXhat2KEc.30iK6XI5mnF0T9zFBfEg1vyG/oV9VIW', 'Admin', 'AwA6qLzlThsvOzm5JS7sMsCQykdrrBzl', 1, '2020-07-26 09:46:48', '2020-07-26 01:49:43'),
(31, 'lodini2172@royalnt.net', 'lodini2172@royalnt.net', 'lodini2172@royalnt.net', 'lodini2172@royalnt.net', 'lodini2172@royalnt.net', '$2y$10$.zCif2o.GVpsX5LrqFMvweoJjFM.itI/EX9GrD8cMHjM6zyzj6c22', 'Customer', 'NL8eUFbU6hSVFjQVG8DjwwFDbJVBS0GU', 0, '2020-07-26 10:05:43', '2020-07-26 02:05:43'),
(32, 'aaaa@mailer2.net', 'aaaa@mailer2.net', 'aaaa@mailer2.net', 'aaaa@mailer2.net', 'aaaa@mailer2.net', '$2y$10$TsWK9H1QgcE63KR3jha96OVpdSDZlDquVC/cnS3DIBF2z41GvaXvO', 'Customer', 'kpM6EcnhgAZP3sdTRN8662jLCyrb08Wz', 1, '2020-07-26 10:07:02', '2020-07-26 02:08:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
