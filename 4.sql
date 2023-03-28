#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '8', '1', 'Maxime mollitia provident repellat maxime fuga autem omnis. Dolores earum at ipsa provident distinctio. Dolor rerum quia quia nemo et.', 'sit', 787930, NULL, '1987-08-01 09:09:26', '2000-05-22 16:50:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '5', '2', 'Similique nemo eaque impedit debitis inventore deleniti. Ut eos dolorem eveniet sunt quae id temporibus numquam. Molestiae odit aut ipsam ut exercitationem hic veritatis.', 'facere', 5, NULL, '1984-09-02 08:01:46', '1999-03-30 11:56:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '2', '3', 'Veniam voluptatem exercitationem consequatur et sit. Voluptate autem provident aut ea architecto autem omnis autem. Ut ea est totam nemo est. Reprehenderit itaque doloribus commodi qui. Facilis repellat qui rerum consequatur quisquam aut.', 'vero', 128184337, NULL, '1986-12-22 22:38:45', '2012-01-29 23:45:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '4', '4', 'Et et et rem libero ex pariatur. Voluptatibus animi rem ea nisi. Omnis veniam magnam id voluptas.', 'accusantium', 269880, NULL, '1986-04-04 23:28:26', '1992-12-20 19:50:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '3', '5', 'Doloremque nihil eos quo ad corporis. Et non quis voluptas est debitis quibusdam veritatis. Maxime ipsum in voluptates veniam error perspiciatis. Ut exercitationem illo mollitia et nihil voluptatem blanditiis hic.', 'rerum', 70140867, NULL, '1980-02-17 18:06:28', '1978-05-22 12:55:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '6', '6', 'A officia facilis fuga aspernatur ipsa alias. Facilis suscipit nostrum blanditiis illo. Ipsum sequi nihil molestiae perferendis quos dolor. Reprehenderit vero qui labore sed ut. Pariatur rerum eaque velit voluptates asperiores corporis.', 'quia', 0, NULL, '1989-11-15 13:58:04', '2009-05-16 13:18:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '8', '7', 'Dicta voluptatem ipsa sequi iste eum non et. Voluptatem autem aut eius id autem et. Porro iure et voluptatum porro.', 'aperiam', 5551, NULL, '2019-07-09 07:28:40', '2013-06-06 00:42:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '10', '8', 'Neque enim qui perspiciatis illum atque. Eveniet voluptas dicta quis sunt est. Odit repellat est quos alias minima ea quos.', 'optio', 60648, NULL, '1998-06-01 23:59:58', '2012-07-10 06:29:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '8', '9', 'Consequatur eaque quo dolor beatae nulla. Temporibus ducimus explicabo molestiae nobis vitae quia doloribus. Est est nesciunt ut ea et dolor cupiditate. Quam est iure ut pariatur nulla beatae provident sed.', 'quasi', 538820290, NULL, '1980-04-04 21:30:06', '2013-05-05 01:31:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '9', '10', 'Dignissimos rerum facilis mollitia. Enim assumenda eos occaecati quis. Qui alias rem modi.', 'fuga', 6837, NULL, '1982-11-17 19:43:17', '2006-11-28 02:23:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '8', '11', 'Et blanditiis dolores ratione et. Eum suscipit consectetur cupiditate facere minima. Porro nesciunt consequatur modi sit voluptatibus perferendis.', 'dolorum', 46, NULL, '1989-09-06 21:44:57', '1976-08-10 05:23:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '4', '12', 'Perspiciatis sed rerum provident eius nulla ea. Aut reprehenderit in iste quas. Repellendus commodi odio dolorem.', 'quaerat', 6, NULL, '2012-02-26 16:55:06', '1970-11-22 04:46:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '3', '13', 'Ut aut iure corporis enim accusamus qui aut. Aliquid dolorem assumenda officia ducimus. Laboriosam ut et et odit.', 'veniam', 8198, NULL, '1997-04-28 14:59:12', '2010-03-05 19:42:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '8', '14', 'Voluptas non doloremque et consequuntur saepe similique est. Esse esse tenetur voluptas ut. Aut totam eius quasi recusandae architecto deleniti autem.', 'voluptas', 8, NULL, '1971-10-08 09:29:27', '2013-06-22 05:30:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '6', '15', 'Ut dolores atque soluta hic. Odit eos cupiditate corrupti pariatur quisquam molestiae ducimus. Laudantium non fuga quis.', 'vel', 40169, NULL, '1994-04-28 00:24:00', '1992-01-16 18:54:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '8', '16', 'Necessitatibus perspiciatis minima error non. Rem repellat illo harum quo error voluptas. Atque sint veniam et et ad dolorum quos.', 'in', 393009734, NULL, '2012-04-15 20:46:35', '1988-02-19 05:03:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '2', '17', 'Numquam quisquam et fuga quia omnis. At dolores consequatur et sunt nihil quam alias quas. Consequatur sit officiis ea eligendi. Qui voluptas eos est et quia.', 'mollitia', 196424, NULL, '1978-12-29 22:47:58', '1975-12-30 03:12:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '4', '18', 'Sunt in nemo aliquam rerum minima. Est dignissimos ab unde sint porro ratione. Ipsam doloribus eum voluptatum quia dolores. Beatae praesentium maiores eaque in.', 'voluptatem', 158, NULL, '1994-04-03 11:16:25', '1998-05-31 07:01:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '10', '19', 'Quia et commodi est. Fugit deserunt debitis eveniet tempora reiciendis iusto ut. Enim veniam consequatur molestias eligendi. Doloremque libero pariatur officia aperiam inventore.', 'vel', 0, NULL, '1974-01-03 12:20:43', '1998-12-27 08:55:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '10', '20', 'Dolore consequuntur accusantium natus minima voluptas commodi commodi nihil. Qui quod dolore temporibus asperiores. Et recusandae qui occaecati tempore dolorem voluptatem. Ut aut nisi minus dolorum recusandae quam. Maiores vitae et et eum consequatur doloribus.', 'cupiditate', 7, NULL, '1978-09-28 14:51:36', '1971-01-13 12:28:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '9', '21', 'Est in aliquid voluptatibus velit sint. Voluptatem et exercitationem dolorum voluptatem et est. Quod temporibus tempora assumenda itaque earum. Quaerat et autem qui quia beatae.', 'blanditiis', 17, NULL, '1977-05-23 22:25:27', '1994-09-27 20:15:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '6', '22', 'Illo culpa et sapiente velit earum tempora qui. Praesentium labore molestiae animi. Deleniti mollitia molestiae incidunt voluptate animi quis.', 'esse', 3067, NULL, '2019-07-31 10:44:46', '2010-07-30 05:20:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '5', '23', 'Vero culpa dolorum et aut sint debitis non. Culpa magni autem molestiae non mollitia vitae assumenda. Sit error architecto facere natus odit. Corporis deleniti dolor molestiae eaque quibusdam est.', 'necessitatibus', 89143, NULL, '2005-05-16 07:11:36', '1986-03-24 14:58:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '8', '24', 'Consequatur ut nesciunt sed beatae. Et temporibus rerum aut quas ut corporis. Quia illo ratione minima quos maxime sed. Dolorum vero qui consequuntur ut eos rerum repudiandae ratione.', 'aut', 43749, NULL, '1996-02-20 01:11:09', '1974-08-26 13:41:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '5', '25', 'Dolorum est est repudiandae id. Cum quis consequuntur doloremque et omnis.', 'dolore', 10, NULL, '1973-07-16 11:49:07', '2009-10-31 12:21:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '4', '26', 'Voluptates eius odio perspiciatis aliquid aut. Animi dolor quo sed sunt asperiores voluptas nam. Qui ut sint earum.', 'et', 49582, NULL, '1980-06-23 09:17:15', '2012-06-07 07:56:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '5', '27', 'Velit quam amet quae necessitatibus. Ducimus rerum est nostrum molestiae cum dolorem rerum. Fugit sint et laboriosam quae commodi enim. Error et quia doloribus saepe et.', 'sapiente', 680724663, NULL, '2022-12-18 13:12:53', '1978-12-17 07:48:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '4', '28', 'Expedita harum minima cumque sit. Expedita iure officiis velit voluptatibus. Amet iste distinctio ad non dolor. Officia sit soluta a qui quo mollitia. Iure quasi aut nam rerum iure delectus voluptas.', 'libero', 210570990, NULL, '2002-02-05 19:51:03', '1993-12-10 19:44:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '4', '29', 'Maiores aut quisquam ut laborum. Dolor reprehenderit rem quia iure. Repellat et laudantium non non corrupti at modi. Autem quos animi sit inventore pariatur consequatur minus.', 'neque', 938430, NULL, '1996-07-03 18:47:38', '2019-04-14 16:50:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '9', '30', 'In impedit voluptatem ducimus. Dolores quia aperiam ducimus nulla voluptas. Non vitae corporis et sint voluptas quasi nostrum minus. Quo quia incidunt animi iusto ab.', 'dicta', 4315, NULL, '1981-12-28 14:16:16', '1970-06-20 13:01:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '2', '31', 'Possimus consectetur quia voluptatibus. Ut quam inventore esse soluta non. Corrupti magnam ut ut corporis praesentium.', 'cupiditate', 38221, NULL, '2002-10-26 19:39:19', '2020-03-25 10:11:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '10', '32', 'Quibusdam qui est iusto assumenda est. Necessitatibus rerum modi est repellendus. Illo culpa fuga soluta quae sed.', 'aut', 6, NULL, '1979-02-08 09:32:05', '2017-02-26 17:23:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '5', '33', 'Repudiandae placeat aut porro est voluptates quis iusto et. Est sit neque quas cupiditate. Quibusdam distinctio ut magnam similique eveniet quis. Quas nobis quidem nulla ad voluptas.', 'aut', 2712986, NULL, '2003-05-05 17:32:37', '1997-01-20 05:18:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '5', '34', 'Quia est quibusdam consectetur. Harum dolorem iure eos vel debitis laudantium nobis. Ea perferendis qui amet id. Quasi consectetur consequatur hic qui. Quae quia aut non laboriosam suscipit reiciendis dignissimos.', 'minima', 0, NULL, '1990-12-24 10:55:53', '1983-09-22 13:20:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '2', '35', 'Provident fugit commodi quasi magnam veniam eaque. Delectus et nihil magnam cupiditate et nesciunt in. Et voluptatem ducimus tenetur suscipit dolor blanditiis impedit. Necessitatibus omnis officiis sit voluptas sed ut deserunt.', 'et', 306357, NULL, '1995-10-14 00:05:50', '1970-08-15 22:26:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '2', '36', 'Placeat saepe est eveniet est. Quasi officiis recusandae magnam qui. Possimus ipsum soluta nam commodi modi. Molestiae dolores inventore provident quo et eaque et.', 'itaque', 3889, NULL, '1999-06-18 18:38:58', '2002-05-01 02:50:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '8', '37', 'Blanditiis eligendi aut pariatur voluptas qui voluptates. Qui quia amet qui dignissimos sunt repellat. Maiores rerum modi ea debitis totam aut.', 'qui', 102446, NULL, '1999-01-26 02:00:28', '1996-04-13 12:02:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '7', '38', 'Ut nobis animi cupiditate dignissimos et eos facere. Repellat alias unde minima perspiciatis quia ut. Et repellat eveniet sint. Doloremque placeat exercitationem facilis nihil ducimus.', 'ut', 8359, NULL, '2018-04-18 09:54:22', '1980-12-12 21:16:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '5', '39', 'Nam ad consequatur dolorem optio voluptatem nesciunt beatae. Doloribus quae nisi esse et beatae explicabo aperiam. Deleniti voluptas fugiat praesentium ea accusantium. Omnis a maiores fugit.', 'quas', 0, NULL, '1985-12-04 18:36:14', '2011-10-28 05:22:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '1', '40', 'Temporibus voluptatem nisi occaecati corporis cumque. Asperiores veniam beatae nostrum. Placeat sint est ratione sint libero cum ea sunt. Quo vel blanditiis maxime voluptas.', 'et', 728187786, NULL, '1972-06-27 09:10:21', '1972-05-28 14:05:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '3', '41', 'Eligendi qui quia in dolorum. Velit quia sunt aut libero quisquam. Aut accusamus est porro voluptate cupiditate et officiis. Sunt quidem ut velit omnis doloribus quis cum quae.', 'rem', 923737886, NULL, '2011-11-12 08:37:47', '2021-01-18 15:05:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '7', '42', 'Recusandae qui nobis nobis sint mollitia. Aut porro velit voluptas dolorum perferendis facilis quae. Saepe impedit aut ea rerum iusto assumenda ducimus. Ut est sunt autem ad quam asperiores.', 'optio', 40, NULL, '1990-05-31 15:33:17', '1971-11-17 04:19:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '3', '43', 'Doloribus assumenda dolores ab enim quia qui nisi non. Similique ut nisi voluptatem sint harum quia molestiae. Illo eaque reiciendis qui minima temporibus ab totam. Vel dolorem aliquam quis.', 'rerum', 236726, NULL, '1992-05-11 06:07:52', '2015-12-23 13:28:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '1', '44', 'Possimus autem maiores dolorum officiis rem eaque. Repellendus ratione porro et et eum et. Cum consequatur et quibusdam quibusdam. Deleniti voluptatem quia omnis esse non voluptatem fuga. Illo repudiandae sunt enim neque suscipit reiciendis saepe quisquam.', 'doloribus', 31692, NULL, '1988-09-23 18:11:12', '2007-03-19 20:23:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '2', '45', 'Molestiae odit magni debitis sapiente dolores omnis ea. Incidunt nihil autem maiores labore labore veritatis. Ad ut dolores rem adipisci eum ipsam aliquam autem. Voluptatem deleniti rerum asperiores et velit quod sequi autem.', 'eius', 934673, NULL, '1978-08-23 15:47:38', '1989-04-23 17:25:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '8', '46', 'Quia voluptas ut et. Est quia quo quis neque. Quia saepe quis itaque fugiat voluptates minima quas.', 'in', 66005321, NULL, '1993-05-28 08:15:22', '1971-03-17 19:37:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '3', '47', 'Suscipit tempora et enim ex et accusamus. Placeat ipsum expedita nulla consequatur est.', 'accusamus', 1, NULL, '2000-04-25 15:29:25', '2012-11-14 17:12:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '1', '48', 'Provident id consequatur consequatur culpa. Vel adipisci eius sit culpa velit. Molestias magni quo ea occaecati qui maiores. Rerum aut temporibus dolores consequatur doloremque quia doloribus.', 'rerum', 912741371, NULL, '2015-12-15 19:07:46', '1987-08-16 13:56:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '10', '49', 'Laudantium sed enim iure natus. Fugiat aspernatur autem est quia consectetur iure. Sequi dolores consectetur nisi eligendi voluptatem.', 'illum', 3729326, NULL, '1984-04-02 20:46:39', '1995-09-02 03:37:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '10', '50', 'Recusandae voluptatibus non error provident nisi dolor. In itaque aut temporibus qui qui est dignissimos assumenda. Consectetur tenetur et nisi velit dolorem rerum autem voluptatem.', 'distinctio', 90892, NULL, '2020-12-28 07:38:19', '1976-10-18 07:54:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '5', '51', 'Ea velit quidem et architecto fuga deleniti. Enim consequatur vero accusamus ut qui. Quae laborum sit adipisci nulla hic voluptatum.', 'et', 57, NULL, '2013-12-12 12:22:45', '2012-11-10 23:37:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '9', '52', 'Nemo quos quas deserunt a sint. Reiciendis et fugit qui at labore autem.', 'distinctio', 540, NULL, '1975-07-19 15:36:07', '1998-08-12 22:47:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '10', '53', 'Perferendis nisi voluptas nihil quibusdam minima enim eos. Ad dolor et sit placeat eligendi. Sunt officia nihil sint quod. Fugiat et eos suscipit voluptatibus harum voluptatem in quis. Ipsa molestiae inventore cumque voluptatem et qui.', 'tempore', 7421, NULL, '2003-06-11 14:11:17', '1999-09-27 08:45:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '3', '54', 'Sit expedita accusantium ea accusantium et velit. Maxime adipisci et corrupti fuga consequatur.', 'officia', 22013764, NULL, '1996-06-18 14:09:12', '2005-05-27 01:47:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '2', '55', 'Ut perferendis modi sint ad rem non minima ex. Consectetur consequatur ipsa sit eos sint eligendi. Possimus sed quae repudiandae quia.', 'quisquam', 68920, NULL, '1994-01-27 12:35:40', '1989-12-28 18:11:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '3', '56', 'Sunt non est temporibus quos. Odio et dolorem veritatis illo aperiam. Quasi aut laboriosam animi.', 'consequatur', 242, NULL, '1997-05-16 14:18:07', '1996-12-02 23:20:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '5', '57', 'Sequi atque natus deserunt nostrum a quia voluptatem. Aliquam officia tempore sed ad iusto. Odit et occaecati asperiores dolor. Quo aliquid doloribus officiis nisi veritatis.', 'eum', 0, NULL, '1997-05-16 20:28:21', '1973-02-02 05:15:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '10', '58', 'Expedita suscipit veritatis dignissimos voluptatem sunt ut et id. Qui debitis tempora voluptatem esse molestias nostrum consequatur. Nesciunt nemo sit et voluptatem possimus.', 'incidunt', 58297, NULL, '2002-10-04 02:36:37', '2021-07-28 01:13:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '8', '59', 'Aut natus nisi eaque deserunt quia ut sed. Doloribus laboriosam dignissimos quod non itaque aut. In recusandae nihil eveniet minima. Deleniti quae facere ea dolorem.', 'eos', 31, NULL, '1974-10-16 12:08:19', '2007-01-13 23:18:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '7', '60', 'Odit adipisci qui quia quasi repudiandae optio molestiae. Velit id cum quis voluptatem. In laboriosam sed corrupti voluptate ab sit reiciendis.', 'totam', 968, NULL, '2020-08-18 14:10:35', '2017-10-29 00:53:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '10', '61', 'Qui deleniti qui quis error sunt beatae. Quos nostrum consectetur consequatur rerum placeat odio asperiores. Qui ea placeat quam culpa et animi. Incidunt dolore officia quae reprehenderit quia ipsa.', 'consequatur', 20, NULL, '1990-11-19 10:16:18', '2000-05-26 15:15:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '5', '62', 'Maiores vel officia minima exercitationem. Necessitatibus rem et facilis occaecati dolorem. Illum nihil et possimus sed.', 'error', 6074085, NULL, '2005-01-14 12:41:19', '2013-08-07 00:38:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '7', '63', 'Atque ipsa enim repellat corporis asperiores optio dolorem. Repudiandae enim eligendi animi corporis. Repudiandae ut quaerat exercitationem sunt. Modi quas voluptas voluptas ad.', 'saepe', 63, NULL, '1987-11-16 10:22:31', '1990-12-07 16:09:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '6', '64', 'Libero nostrum non illum officia repudiandae. Architecto quaerat molestiae velit et dolorem autem. Inventore voluptates ratione qui dolor quia repellat non.', 'neque', 13682, NULL, '1990-03-18 23:57:54', '2012-06-26 00:40:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '5', '65', 'Itaque officia maxime et eligendi libero consequuntur nihil. Cum sed illum ratione officiis excepturi deserunt fuga.', 'cupiditate', 80, NULL, '1974-06-06 20:36:46', '1987-05-29 21:06:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '1', '66', 'Sit et enim facilis natus. Ut in suscipit numquam sed sequi voluptatem non. Soluta architecto quos numquam dicta. Ratione eum earum amet omnis amet repellat quidem excepturi.', 'nemo', 6785, NULL, '2005-11-26 10:10:05', '1974-06-09 06:55:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '7', '67', 'Et nisi explicabo voluptate delectus. Molestiae consequatur sapiente ratione. Facere architecto ratione qui dolor consequuntur dolorem. Et laborum dolor eveniet sit nemo qui dolor. Vero et assumenda quod sint.', 'et', 38940672, NULL, '2004-04-26 13:44:38', '1997-10-18 20:19:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '9', '68', 'Quibusdam officia eos quos eum odio reprehenderit. Nihil nemo eum rerum et quod occaecati. Doloribus sed eum officiis qui dolore enim iusto. Quis ad natus repudiandae excepturi.', 'facilis', 515, NULL, '2003-12-13 18:19:00', '1985-01-11 01:40:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '7', '69', 'Non occaecati voluptatem est odio aut aut doloribus. Magni dolores libero consequatur sunt. Sequi ratione quia aut.', 'natus', 421260, NULL, '2004-12-09 17:49:31', '2008-07-03 03:21:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '2', '70', 'Nemo ut perspiciatis nisi adipisci natus. Adipisci dolor et optio at nostrum ea necessitatibus. Aut at sed qui esse. Quia modi laboriosam voluptas nemo ratione.', 'facere', 86, NULL, '1979-04-11 03:48:16', '1980-08-12 05:08:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '10', '71', 'Porro excepturi minima laudantium nam praesentium perferendis. Ut dolorem sed et accusantium eligendi. Animi fuga fugit nobis est deleniti ut labore. Est voluptatem et cumque odit dolorum.', 'voluptatum', 640851498, NULL, '1994-10-17 01:09:33', '2011-07-28 04:59:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '8', '72', 'Consequuntur voluptatem qui dolorum odit amet. Nihil eos et porro sit provident quae vero ut. Et fugiat quidem inventore. Eius qui dignissimos cupiditate in doloremque.', 'expedita', 2, NULL, '1975-11-23 00:00:16', '2008-04-04 08:43:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '6', '73', 'Quos accusamus reprehenderit harum libero ullam libero aut. Repudiandae error laudantium recusandae minima voluptates suscipit. Sit alias qui autem. Quae voluptates alias possimus numquam ut veniam illo.', 'ut', 63, NULL, '2018-08-05 21:01:29', '2003-02-05 10:42:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '6', '74', 'Itaque saepe nihil eos officia dicta. Voluptas quia unde accusantium eum. Magnam non tempora eum eligendi adipisci in. Ea quibusdam nostrum cupiditate quos tempora sunt.', 'iusto', 58, NULL, '2003-10-02 16:24:25', '2020-06-08 01:18:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '8', '75', 'Eum tempore sed officia excepturi quo. Cum reprehenderit ut vel possimus. Et sint itaque voluptates officia.', 'non', 0, NULL, '1990-02-22 01:38:49', '1974-08-16 08:11:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '4', '76', 'Sint vel ad atque autem deleniti. Cumque ipsam laboriosam perferendis rem. Rerum natus assumenda fugiat voluptate fugiat possimus omnis.', 'sit', 283399, NULL, '1984-05-07 21:18:32', '1999-12-27 02:33:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '8', '77', 'Sapiente quo vero dolor ducimus consectetur consequatur. Qui veritatis ut saepe adipisci vel fuga pariatur. Doloremque labore natus non soluta.', 'iure', 1821, NULL, '1990-03-15 05:04:36', '2007-09-28 02:56:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '2', '78', 'Non ea voluptatem ullam architecto. Officiis a voluptates dicta sed. Maiores suscipit temporibus reprehenderit saepe provident et quidem laboriosam.', 'a', 632870354, NULL, '1992-06-19 03:10:29', '2008-03-26 23:24:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '7', '79', 'Repudiandae dicta natus libero autem. Sit esse eum culpa nulla ea voluptates ea. Sed ab assumenda enim sed qui atque. Non sit inventore minima.', 'ipsum', 270, NULL, '2016-05-05 12:27:56', '1993-02-17 15:36:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '1', '80', 'Sed omnis voluptate eligendi eos. Libero unde laboriosam ipsum. Sequi vero voluptatem repudiandae magni qui corrupti.', 'rerum', 4, NULL, '2013-08-03 03:35:55', '1973-04-28 08:24:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '8', '81', 'Sit ex pariatur doloribus atque. Cupiditate vel aspernatur perspiciatis harum explicabo aut. Blanditiis vero a optio. Error explicabo rerum aut magni placeat consequatur.', 'occaecati', 229, NULL, '1993-03-07 06:39:11', '2004-10-03 21:05:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '3', '82', 'Laudantium illum voluptatem maxime consequatur molestiae est odit. Deserunt blanditiis aut voluptatem mollitia et. Et nobis aut unde mollitia nostrum aperiam qui.', 'quia', 327, NULL, '1998-11-12 10:18:52', '1994-09-14 13:27:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '2', '83', 'Odit et architecto est. Rem dolor incidunt asperiores rerum.', 'dignissimos', 0, NULL, '2012-11-27 05:13:07', '2004-05-19 11:29:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '6', '84', 'Veniam fuga itaque sed impedit autem. Eius beatae neque laboriosam. Repellendus dolor adipisci at eius possimus.', 'eos', 724320, NULL, '1979-07-24 21:18:38', '1997-06-02 00:16:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '9', '85', 'Accusamus quae distinctio est nisi ad eligendi doloremque. Quam aperiam fugiat omnis veritatis.', 'est', 849561, NULL, '1983-09-20 19:08:01', '2017-01-31 12:53:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '9', '86', 'Blanditiis fugiat iure qui. Aut quam beatae sint. Molestias ex sed similique fuga.', 'enim', 333562, NULL, '2022-02-07 22:18:07', '1985-01-09 18:17:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '10', '87', 'Ratione omnis et aspernatur aut accusamus incidunt. Autem laborum ea et provident ea suscipit minus. Nostrum modi laboriosam quia.', 'dolorem', 284505966, NULL, '1994-04-04 19:38:37', '2007-10-07 17:22:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '2', '88', 'Modi eos deleniti necessitatibus rerum et. Dignissimos rerum iste distinctio qui exercitationem aliquid error. Reiciendis voluptatem et placeat nemo quia ipsa ab. Fuga odio facere odio repellendus.', 'incidunt', 86934, NULL, '2017-05-15 23:48:25', '1970-11-29 16:32:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '5', '89', 'A necessitatibus vel rerum similique. Aliquam magnam repellat ut autem. Adipisci enim ut voluptatem sapiente voluptate quia delectus deserunt.', 'ut', 0, NULL, '2021-07-28 20:40:32', '2019-03-16 20:19:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '5', '90', 'Et alias facilis velit aut perspiciatis quod cupiditate. Eos est atque deserunt fugiat non vero iusto. Consequatur ullam voluptas a est enim.', 'qui', 88211, NULL, '1980-05-16 11:38:53', '2017-03-21 06:41:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '3', '91', 'Ad veritatis laudantium suscipit in vel nostrum. Laudantium totam aperiam et cumque ex.', 'explicabo', 7136, NULL, '1995-01-29 06:10:43', '1976-07-25 17:52:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '5', '92', 'Perspiciatis tempora cum sapiente saepe illo. Iste amet distinctio saepe voluptatem. Dicta non et voluptatem quisquam eaque hic. Ipsa voluptate officia id beatae. Est aspernatur aliquam excepturi iste rerum sapiente voluptatibus.', 'voluptatem', 684159, NULL, '2013-04-08 09:03:15', '1970-03-02 10:58:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '5', '93', 'Culpa molestiae autem nobis eveniet nam enim. Quod consequuntur iusto quidem unde. Sunt corrupti et incidunt sequi perferendis quasi. Omnis eos nemo cum omnis sit distinctio.', 'exercitationem', 906128, NULL, '2014-12-17 17:22:10', '2020-04-23 00:22:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '10', '94', 'Distinctio et dolorum perferendis modi maxime autem. Possimus soluta sit qui inventore voluptates voluptatem at. Ab maiores ex impedit libero est. Ad quidem quod magnam dolores nostrum nihil dolorem. Beatae reiciendis recusandae qui.', 'qui', 57, NULL, '1978-10-29 13:01:50', '1982-10-19 06:47:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '2', '95', 'Libero dolores officia et corrupti sed. Sunt quia neque explicabo cum deserunt. Consequatur labore quas veritatis beatae distinctio cumque minima.', 'quia', 0, NULL, '2008-07-09 01:21:13', '2014-10-26 17:18:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '10', '96', 'At id aut non voluptatibus rem consequuntur saepe. Quis velit quo rem quia omnis.', 'qui', 944277, NULL, '1990-06-05 21:37:17', '1992-04-09 08:35:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '4', '97', 'Nostrum et sed vel fugit. Ipsa et ea mollitia quia iure nostrum. Voluptatibus eius earum libero sit facilis.', 'dolor', 8, NULL, '2005-10-10 23:14:01', '1990-07-07 08:34:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '3', '98', 'Officia aut ipsa voluptatem cumque. Quia rem enim vel qui ex exercitationem nam. Voluptates omnis dolore aliquid natus sequi dolores tenetur. Rerum corrupti et ipsa voluptatem doloremque.', 'facilis', 0, NULL, '1971-01-12 22:22:10', '2017-04-08 13:11:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '8', '99', 'Ipsam labore laudantium et odio dolorem. Et ad qui officia cupiditate nisi. Nihil labore ea exercitationem. In enim autem sed.', 'molestiae', 914965, NULL, '2013-08-24 14:20:22', '1988-11-08 02:30:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '1', '100', 'Ut itaque est alias. Ullam quo et earum voluptatem reiciendis. Labore porro nihil est explicabo et iste.', 'omnis', 3, NULL, '2003-06-26 16:09:41', '1978-03-25 15:38:03');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'voluptas', '1970-04-15 04:07:22', '2004-02-27 07:31:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'aliquam', '2010-04-05 11:02:14', '2017-02-24 17:00:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'aut', '1970-06-17 06:27:46', '1976-03-08 01:07:58');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'aliquid', '2009-07-14 16:09:27', '1971-04-15 20:28:25');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'et', '1988-06-13 23:55:55', '2002-12-14 06:10:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'dignissimos', '2005-10-11 10:21:06', '2011-09-21 04:47:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'est', '2004-08-04 11:50:09', '2020-03-04 23:55:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'laudantium', '1978-04-06 09:51:02', '1977-12-29 17:52:06');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'distinctio', '1985-06-12 10:12:32', '1976-11-22 11:33:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'delectus', '1973-08-06 16:09:39', '2002-11-08 05:47:20');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: photo_albums
#

DROP TABLE IF EXISTS `photo_albums`;

CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'quam', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'nemo', '57');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'asperiores', '38');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'rerum', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'architecto', '91');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'sed', '47');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'dolorem', '72');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'nihil', '79');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'dicta', '59');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'optio', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'ipsum', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'temporibus', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'maiores', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'fugit', '97');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'ducimus', '100');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'ea', '100');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'illo', '22');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'qui', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'rerum', '41');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'velit', '86');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('21', 'est', '53');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('22', 'esse', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('23', 'accusamus', '71');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('24', 'dolores', '10');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('25', 'minima', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('26', 'nisi', '35');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('27', 'enim', '73');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('28', 'non', '48');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('29', 'neque', '61');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('30', 'nulla', '15');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('31', 'illum', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('32', 'quasi', '30');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('33', 'facilis', '49');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('34', 'id', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('35', 'doloribus', '58');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('36', 'est', '56');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('37', 'temporibus', '41');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('38', 'magni', '30');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('39', 'dolor', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('40', 'omnis', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('41', 'omnis', '68');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('42', 'sit', '85');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('43', 'qui', '56');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('44', 'est', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('45', 'dolorum', '86');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('46', 'quidem', '23');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('47', 'suscipit', '28');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('48', 'delectus', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('49', 'reiciendis', '14');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('50', 'accusantium', '35');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('51', 'ex', '90');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('52', 'reiciendis', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('53', 'molestiae', '80');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('54', 'deleniti', '79');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('55', 'corporis', '74');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('56', 'vero', '71');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('57', 'eaque', '13');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('58', 'aspernatur', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('59', 'autem', '41');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('60', 'voluptas', '30');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('61', 'et', '79');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('62', 'id', '58');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('63', 'commodi', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('64', 'aut', '34');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('65', 'illum', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('66', 'culpa', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('67', 'et', '95');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('68', 'quia', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('69', 'rerum', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('70', 'harum', '18');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('71', 'eaque', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('72', 'excepturi', '94');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('73', 'impedit', '85');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('74', 'sit', '72');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('75', 'vero', '48');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('76', 'et', '4');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('77', 'repudiandae', '9');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('78', 'corrupti', '33');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('79', 'qui', '28');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('80', 'dolor', '35');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('81', 'non', '65');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('82', 'perferendis', '30');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('83', 'consequatur', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('84', 'est', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('85', 'aspernatur', '73');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('86', 'commodi', '48');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('87', 'impedit', '33');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('88', 'eum', '25');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('89', 'ipsum', '82');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('90', 'et', '72');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('91', 'temporibus', '53');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('92', 'consequatur', '20');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('93', 'nostrum', '85');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('94', 'corrupti', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('95', 'aut', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('96', 'perspiciatis', '10');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('97', 'quidem', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('98', 'corrupti', '97');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('99', 'sed', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('100', 'reprehenderit', '95');


#
# TABLE STRUCTURE FOR: photos
#

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '14', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '84', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '82', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '54', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '24', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '32', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '32', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '44', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '62', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '26', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('11', '93', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('12', '23', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('13', '92', '13');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('14', '27', '14');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('15', '81', '15');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('16', '39', '16');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('17', '58', '17');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('18', '25', '18');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('19', '52', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('20', '73', '20');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('21', '43', '21');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('22', '68', '22');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('23', '78', '23');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('24', '23', '24');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('25', '18', '25');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('26', '78', '26');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('27', '24', '27');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('28', '35', '28');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('29', '70', '29');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('30', '53', '30');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('31', '69', '31');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('32', '35', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('33', '86', '33');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('34', '64', '34');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('35', '21', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('36', '41', '36');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('37', '51', '37');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('38', '85', '38');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('39', '54', '39');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('40', '30', '40');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('41', '25', '41');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('42', '33', '42');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('43', '76', '43');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('44', '60', '44');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('45', '18', '45');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('46', '6', '46');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('47', '18', '47');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('48', '12', '48');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('49', '45', '49');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('50', '79', '50');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('51', '30', '51');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('52', '57', '52');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('53', '57', '53');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('54', '36', '54');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('55', '28', '55');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('56', '40', '56');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('57', '1', '57');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('58', '19', '58');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('59', '30', '59');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('60', '8', '60');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('61', '62', '61');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('62', '16', '62');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('63', '65', '63');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('64', '28', '64');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('65', '59', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('66', '63', '66');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('67', '41', '67');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('68', '46', '68');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('69', '19', '69');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('70', '24', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('71', '1', '71');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('72', '13', '72');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('73', '61', '73');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('74', '84', '74');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('75', '19', '75');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('76', '45', '76');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('77', '2', '77');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('78', '17', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('79', '87', '79');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('80', '27', '80');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('81', '65', '81');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('82', '68', '82');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('83', '98', '83');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('84', '63', '84');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('85', '28', '85');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('86', '81', '86');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('87', '79', '87');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('88', '100', '88');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('89', '12', '89');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('90', '71', '90');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('91', '59', '91');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('92', '54', '92');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('93', '29', '93');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('94', '60', '94');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('95', '49', '95');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('96', '34', '96');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('97', '69', '97');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('98', '3', '98');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('99', '99', '99');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('100', '58', '100');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_photo_id` (`photo_id`),
  CONSTRAINT `fk_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', 'f', '1980-05-21', '7', '1991-01-03 12:10:46', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', 'm', '1984-01-25', '62', '2011-10-18 16:23:38', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', 'f', '1987-10-25', '33', '1989-01-03 09:38:17', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', 'f', '2013-09-12', '97', '2017-04-28 02:18:31', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', 'f', '2000-07-09', '61', '2016-08-18 09:16:26', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', 'f', '1980-04-23', '32', '1995-11-19 22:32:27', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', 'm', '1990-01-12', '83', '1975-06-14 06:27:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', 'm', '2022-12-04', '1', '2007-02-15 04:41:10', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', 'f', '2009-07-25', '51', '1981-12-09 05:56:21', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', 'm', '1996-02-27', '11', '1984-04-30 20:10:14', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('11', 'f', '1972-05-17', '81', '1999-10-15 02:41:25', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('12', 'f', '2017-04-02', '47', '1988-10-04 12:45:19', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('13', 'f', '1970-04-05', '6', '1998-08-29 10:03:32', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('14', 'm', '2007-05-18', '4', '2004-12-10 04:28:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('15', 'm', '1995-01-08', '7', '1999-02-09 13:51:37', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('16', 'f', '1984-04-26', '1', '1982-04-16 17:45:47', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('17', 'f', '1982-03-29', '15', '1973-11-05 20:07:05', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('18', 'f', '2005-02-27', '51', '1971-01-14 17:51:40', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('19', 'f', '2007-11-11', '91', '2019-03-24 10:21:54', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('20', 'm', '2005-07-29', '73', '1974-03-07 04:17:16', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('21', 'f', '1989-01-06', '98', '2001-02-12 07:06:31', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('22', 'f', '2018-02-04', '50', '2006-07-24 05:57:49', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('23', 'm', '2017-08-06', '48', '2004-09-30 05:18:27', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('24', 'm', '1982-02-03', '50', '1993-09-06 13:59:23', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('25', 'm', '1985-12-23', '2', '1990-07-10 09:13:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('26', 'm', '1994-05-14', '7', '2006-03-14 16:15:58', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('27', 'f', '1983-06-01', '35', '1978-07-06 14:43:06', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('28', 'm', '1984-09-28', '31', '2008-01-16 18:51:39', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('29', 'f', '2013-01-22', '38', '2019-01-28 14:02:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('30', 'f', '1989-10-18', '63', '2007-10-27 23:12:17', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('31', 'm', '2018-01-26', '86', '1997-06-19 05:30:17', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('32', 'f', '1994-09-07', '53', '2017-08-15 10:20:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('33', 'f', '2010-09-17', '68', '1971-04-21 04:29:31', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('34', 'm', '1997-03-17', '97', '1974-04-22 20:48:38', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('35', 'f', '1971-05-30', '63', '2002-07-28 01:09:52', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('36', 'm', '2015-10-26', '77', '2017-09-11 15:16:05', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('37', 'f', '2014-05-02', '41', '2012-12-07 10:35:29', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('38', 'm', '1976-07-05', '81', '1981-09-22 06:32:54', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('39', 'm', '1981-11-16', '91', '2020-03-31 04:12:23', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('40', 'f', '1991-11-24', '76', '1981-01-15 20:41:14', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('41', 'f', '2020-09-24', '44', '1972-05-19 03:40:29', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('42', 'f', '1972-07-20', '97', '2019-04-05 04:39:30', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('43', 'f', '1988-09-22', '91', '1991-12-17 14:59:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('44', 'f', '2019-03-08', '60', '2006-05-10 04:20:32', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('45', 'f', '1997-12-04', '25', '2020-11-01 17:51:06', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('46', 'm', '1987-06-03', '98', '1978-03-10 15:07:51', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('47', 'f', '1986-10-06', '5', '1996-11-09 16:07:31', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('48', 'f', '1980-04-21', '1', '1981-04-21 00:43:56', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('49', 'f', '1991-09-25', '82', '2019-07-11 02:24:54', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('50', 'm', '1977-06-14', '90', '2020-06-05 02:11:57', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('51', 'm', '1970-07-06', '17', '2022-05-08 02:26:49', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('52', 'f', '2008-07-01', '12', '1998-06-13 07:43:05', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('53', 'f', '1983-10-09', '61', '2007-01-31 07:11:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('54', 'm', '1993-05-02', '7', '1982-07-30 08:35:26', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('55', 'm', '1971-02-14', '63', '1999-05-02 18:34:16', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('56', 'm', '1989-06-11', '4', '2013-02-02 22:57:28', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('57', 'f', '1981-02-08', '43', '2021-08-05 07:56:58', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('58', 'f', '1975-11-26', '94', '1979-07-14 14:55:38', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('59', 'm', '2003-09-27', '96', '2001-04-23 07:01:53', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('60', 'f', '1972-11-21', '93', '2006-02-24 05:45:39', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('61', 'm', '2021-09-12', '62', '2009-01-04 09:11:33', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('62', 'f', '2016-11-11', '36', '1986-01-01 09:02:33', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('63', 'm', '1990-03-03', '22', '1998-05-07 16:51:03', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('64', 'm', '1994-02-01', '7', '1985-11-13 16:19:12', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('65', 'f', '1987-11-15', '2', '2013-08-15 06:59:02', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('66', 'm', '1974-02-03', '38', '2014-02-09 17:09:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('67', 'm', '1988-12-22', '92', '1976-08-09 13:00:25', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('68', 'm', '1978-04-20', '34', '1994-03-18 15:51:28', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('69', 'm', '2012-10-19', '48', '1974-04-10 08:40:49', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('70', 'm', '1989-04-05', '67', '2003-10-28 08:17:57', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('71', 'f', '2000-06-11', '55', '1982-09-01 12:34:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('72', 'm', '1999-02-14', '57', '2010-12-11 04:31:48', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('73', 'm', '1985-07-30', '33', '1993-09-03 08:37:53', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('74', 'f', '1982-05-21', '71', '1993-06-03 00:27:22', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('75', 'm', '2005-07-22', '6', '1982-07-07 14:23:24', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('76', 'f', '2018-06-06', '79', '2004-03-06 13:13:30', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('77', 'm', '2011-07-30', '86', '1989-04-03 02:13:29', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('78', 'm', '2017-09-22', '84', '1971-08-05 14:47:27', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('79', 'f', '1974-08-22', '30', '2000-05-22 13:46:26', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('80', 'f', '2011-12-14', '85', '1981-08-17 07:42:36', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('81', 'm', '2021-01-24', '23', '1980-11-17 08:47:23', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('82', 'f', '2003-03-03', '96', '1984-07-02 02:22:00', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('83', 'm', '2011-06-13', '12', '2004-07-28 20:10:08', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('84', 'm', '2014-05-15', '78', '1982-07-04 20:53:21', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('85', 'f', '2006-04-26', '10', '2014-11-09 18:06:48', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('86', 'm', '2014-04-15', '47', '2004-10-02 16:44:24', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('87', 'f', '1994-04-19', '9', '1993-10-19 22:11:03', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('88', 'f', '1996-11-27', '100', '2000-04-09 22:26:53', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('89', 'm', '2000-03-18', '98', '1973-07-20 19:18:09', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('90', 'm', '1987-06-05', '84', '1974-05-19 09:07:10', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('91', 'm', '2006-10-25', '44', '2016-08-13 19:19:16', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('92', 'm', '1992-06-22', '66', '1972-07-28 09:13:38', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('93', 'f', '1998-09-03', '18', '1981-01-10 10:09:01', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('94', 'm', '1987-01-07', '77', '1996-04-10 11:57:54', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('95', 'f', '2008-06-08', '81', '2001-07-28 05:00:18', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('96', 'f', '2010-03-23', '73', '2005-06-02 20:10:04', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('97', 'm', '1993-05-04', '72', '1986-05-07 12:22:46', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('98', 'm', '2001-06-04', '32', '2016-12-02 23:48:36', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('99', 'f', '2018-08-06', '26', '2017-03-29 05:11:37', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('100', 'm', '2019-09-22', '25', '2020-11-14 12:19:58', NULL);


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('1', 'Oscar', 'Haag', 'weldon.bogisich@example.org', 'bde287d1206c88df19dda98712cf89198e16b969', '45409222387', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('2', 'Heidi', 'DuBuque', 'jacobi.evan@example.com', '3384f3b9ac3641e58c6ea68c09d2c24c00677333', '24936738580', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('3', 'Wilber', 'Bins', 'kling.jairo@example.org', 'feb0357033e780e4b5401a81970de8be3c029530', '17694677299', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('4', 'Stephany', 'Rogahn', 'hermiston.luther@example.com', '141f82549d81f5ebb338311c144fdb499249932a', '23803160900', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('5', 'Brandy', 'Monahan', 'jaden.hayes@example.org', 'd848974d0a5f7fd690fddaa305ccaad775e8ffbf', '22461613744', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('6', 'Alayna', 'Nienow', 'schuyler.cassin@example.com', 'ab17b52a8a6b12972ba25e1a8b40fcc82020de1e', '8957583056', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('7', 'Rickie', 'Pouros', 'gwindler@example.org', '97ee7a388a9349df07c9ca8c07d9c21cb6fd2a9c', '86677556324', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('8', 'Gage', 'Anderson', 'genevieve54@example.com', 'bc388e99de95510e43c4d189a3f1a077a3b59c83', '753535442', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('9', 'Jairo', 'Mraz', 'fidel.hauck@example.org', '6bf6071887e663bb90dc288df2f510551cf188b5', '65977239187', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('10', 'Chadrick', 'Macejkovic', 'hansen.alexander@example.org', '92f5f05f71bbd443bc738a6c2ba14ccd2d81c267', '40283017247', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('11', 'Llewellyn', 'Goyette', 'stroman.aryanna@example.com', '0eee88e633ef73c7d6d5672bf83481f6a933e5be', '10199948326', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('12', 'Lempi', 'Wunsch', 'corrine71@example.com', '3d85bafe446b3d9438d8216e64b5deb7e4f55f0e', '59996031853', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('13', 'Clay', 'Torphy', 'sstark@example.net', 'bc474df79f9c33f34dfe41c66e1f84b239abeed3', '33659157158', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('14', 'Mark', 'McGlynn', 'ystoltenberg@example.org', '313b79fd640228f9c6e2e3ea317767e6f763e27d', '11481627068', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('15', 'Adrianna', 'Weimann', 'qgraham@example.com', 'db10180656592271497d5b9882b59813e2ddfd2b', '70456353020', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('16', 'Forest', 'Corwin', 'lester55@example.org', 'aeb62775a638ba1e193b9047c276cf1b28ab83ab', '62880999400', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('17', 'Rhea', 'Hegmann', 'muller.alvina@example.net', '5d635cfeed81a9a53664b95a2f882e69f5fdc063', '81637585293', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('18', 'Jerod', 'Emard', 'mzieme@example.com', '69a73e900e7aa12f84ce9dce9601063a7582b38e', '3942132026', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('19', 'Amara', 'Wehner', 'ywill@example.com', '59784fdbce82e64aa81dcea6e5e10002b74e0c69', '66505946212', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('20', 'Jude', 'Yundt', 'mayer.maurine@example.com', 'bf198d45f4b278d8e48eb286d091ab57e0bf81a5', '39943542331', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('21', 'Tara', 'Crona', 'johnson.koch@example.net', '9306bff01b8107ba71c49d42c9e1571504dd4738', '86849880039', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('22', 'Ressie', 'Schmeler', 'mayert.fredrick@example.net', 'e84916c87f6cb572d63bf61b7d1d45a716797a60', '31629359234', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('23', 'Shayne', 'Conn', 'hailey.bernier@example.com', 'eb5e1a8ffedcca4d8a7d4bac4bc4f925d25858c8', '76648639224', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('24', 'Ressie', 'Oberbrunner', 'kendall45@example.net', 'dcd3d6068cd804826f797f4fa76cbb86e00f119f', '48027529324', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('25', 'Fiona', 'Dickinson', 'layla81@example.org', 'b7e496e0a3dbafb68062d4e27cfd467e6de53e01', '33852391501', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('26', 'Chadd', 'Kreiger', 'parker.justen@example.org', 'e5a077afbede31f8b7d44ed150db0637b7428349', '70404392094', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('27', 'Sophia', 'Buckridge', 'bernadine.brekke@example.org', '4f3035dae6ffd396cb212c7d2a9ab8145631bf8d', '41056805463', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('28', 'Antone', 'Bashirian', 'lauryn33@example.net', 'c6b60496917a5ec500a86c1ba4bb8767da1cbee3', '79380682510', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('29', 'Orlo', 'Erdman', 'reichert.shea@example.com', '9932dfb0b1fa245af2c55510d6532b283f402fa5', '10272967862', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('30', 'Tina', 'Bednar', 'eveline.ebert@example.com', 'abf7ed36e121b43e537b715d8bb100f0af821198', '61545442077', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('31', 'Marisa', 'Krajcik', 'eldridge.lehner@example.org', 'eeb74c4221c3f84b76fab46322bfa0769a097a99', '66782535229', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('32', 'Monique', 'Herman', 'lera53@example.org', '0a75090e799af3908827f29a80924447988cb58c', '69359106197', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('33', 'Deven', 'Schimmel', 'grimes.zoie@example.org', 'feef4770e092899a09cbfa42c507239cb5520498', '79129987707', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('34', 'Louie', 'Lockman', 'walter.juliet@example.net', '196325566e91d3adead137fe390291ba96979b6b', '76860405661', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('35', 'Chloe', 'McCullough', 'qmetz@example.net', '33263935815a98fd3f3fd6861dc26bbc54c3db55', '87832566027', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('36', 'Marlene', 'Reinger', 'florencio84@example.org', '3b42b039926c126a5bf599f4576243b0e4e1ac57', '42541675829', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('37', 'Ellie', 'Walter', 'domenic.crooks@example.org', 'bc44d0bb97c2bd2025f1d540e6ff1ebf645121e3', '49661321509', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('38', 'Sydnee', 'Schowalter', 'weston90@example.com', '05f1f660bde3bb58e7bbf2c32b1c602e144e1d2e', '21921977178', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('39', 'Chase', 'Denesik', 'herman.alisa@example.net', '56244886ae8bd7fd80f63d08c8df2390a7af209b', '51410413729', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('40', 'Asa', 'Williamson', 'jose.haag@example.com', '342aae6fb3023549d57dae36953cd8c7cb18ced3', '68301655141', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('41', 'Emely', 'Kuvalis', 'qrobel@example.com', 'a1a1a58f1039d750b24001c10adc607ab0480a4e', '53113322501', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('42', 'Dustin', 'Boyer', 'zachariah79@example.com', '4f98271cf60eddf0309906a4a94fb90a479ef8fd', '73600320160', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('43', 'Ardith', 'Davis', 'orion08@example.com', 'bbd45d71b55d09d8d9c3a557735f91be058940a4', '58726220670', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('44', 'Otha', 'Beatty', 'bridie09@example.net', 'fb095661e4d4ea98dbf75b5877606bcd26a4fa91', '78679880177', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('45', 'Mckenzie', 'Lehner', 'uroberts@example.org', 'c06151bfc5cb9c6f1634f616e3090c7b3dcee924', '50952041391', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('46', 'Christop', 'Conn', 'bernita86@example.net', '3b883397743cf176f660bb39f429e531ddff3340', '87630052499', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('47', 'Bradford', 'Hahn', 'eric69@example.net', 'ec8d0aff0f3d5e36f8c8330344c8dc933e52800b', '60162486391', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('48', 'Nannie', 'Leuschke', 'carissa.jaskolski@example.net', '4f943624e7dab97ba85a3989659db93bc4453c25', '18982143956', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('49', 'Kylie', 'Balistreri', 'jsmitham@example.org', '0aef4f658567679fea046023bf30a210e9d1dc6f', '77113582974', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('50', 'Mabel', 'Berge', 'amani.schmeler@example.com', 'ded91ae9e7c17ffdfbd74f2d9245e80818a4b7f6', '24424435149', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('51', 'Nedra', 'Dickinson', 'weissnat.lorenzo@example.net', '2e874807093ce1f83b1f699bba46bd3368fa0027', '56526746119', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('52', 'Dasia', 'Boyer', 'towne.josh@example.org', '27d1a171d6282fba3e59c40c73c32f86bc28ec35', '89728091018', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('53', 'Daisha', 'Friesen', 'kemmer.lane@example.net', 'fc518aee283819c084e57162451eeda374dec663', '89050723355', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('54', 'Ocie', 'Langosh', 'kariane71@example.net', 'abf4542912856e67b579c96209876bda98af0ff7', '46712782926', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('55', 'Erick', 'Hirthe', 'kaylie.ziemann@example.net', '8452d21b195f3d29caf7099619795628a1814446', '1818600661', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('56', 'Maya', 'McCullough', 'schuster.george@example.com', '8fa261f179eb70fba5069ce8f6f97ab57550601c', '55257707831', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('57', 'Guadalupe', 'Koss', 'judah99@example.org', '20cac787543e4d0b0a437fba896868a2b6dacec8', '65579130135', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('58', 'Christopher', 'Jones', 'gleichner.royal@example.org', 'cbed58b6ae81e26e3c51c2b8dfb2bb11c9519a3e', '23944020291', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('59', 'Audreanne', 'Mueller', 'zkuhic@example.com', '56469420275c9313c1961d5002a8cb884c62d72b', '31294783247', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('60', 'Aniyah', 'Jacobson', 'nelle.halvorson@example.net', 'c701b52809a028a98f8e42be320a2390334514cf', '32014904945', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('61', 'Marielle', 'Fadel', 'farrell.rupert@example.org', 'ee263ce1dbe7a008868878ad936c86d4ba70f892', '41777627175', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('62', 'Jamar', 'Pfannerstill', 'noemie44@example.net', '914de110f04c7cfc0b8131341667452d86c7ca27', '36835252091', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('63', 'Norwood', 'Murazik', 'nolan58@example.com', '56d9492819a3bd7965a793ce80aae2b7b68f1833', '76078840212', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('64', 'Ian', 'Rogahn', 'aufderhar.filomena@example.net', '65e7d0bcbe8a868b62bd68117e4c76bf5ece1192', '58178908712', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('65', 'Gus', 'Wunsch', 'clangosh@example.org', '7cd2b76d01d79422ff1c5fcd2facb51d958e0f7c', '32343867068', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('66', 'Assunta', 'Bauch', 'glebsack@example.org', 'a1c6193516f1adca569fd0bd8ea586e77b550a73', '39742666250', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('67', 'Maximo', 'Kautzer', 'bianka04@example.com', '5a12d7da319d63da7c40602dacc29b84d6cef583', '83393145158', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('68', 'Modesto', 'Beier', 'nicole.stamm@example.net', '8ffb1725af3ce267257187b25fb2f22ec3771117', '12931783364', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('69', 'Curt', 'Botsford', 'kulas.garnet@example.net', '56f39df3a0249984bc6e2d11a6149825b1ceec6f', '16475149615', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('70', 'Braulio', 'Quitzon', 'german56@example.com', 'a61897c05b8d44023e2e644ca481451c3f68ca27', '5526143459', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('71', 'Branson', 'Shields', 'norwood.gerlach@example.com', 'c4175caf5e0344da2bcf7bbf40bffe3ab58b8c6f', '31269551288', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('72', 'Susan', 'Goyette', 'chanel.o\'hara@example.com', '00abde511bc4e29d1200e3e2053ea6862f8079a5', '20179608418', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('73', 'Jeffry', 'Keebler', 'carmela09@example.com', '6022e99df3475a3683112c0706ed3ab8fc89b859', '17963045597', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('74', 'Millie', 'Bode', 'neal30@example.net', '0c775870241cc373b3ee901aea7410fafe772738', '2649719167', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('75', 'Chance', 'Upton', 'yondricka@example.net', 'e5f82de3834c1266f2669e3988e81a9cbaaa0ec1', '54029512463', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('76', 'Israel', 'Pacocha', 'joshua.shields@example.net', 'e39244aecfab8f739a11df8c7faedd1c89e5f759', '86892618399', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('77', 'Ashleigh', 'Bogan', 'hegmann.alexanne@example.com', 'df3ad8d0fa6283a86927622fdbf9402026d3a1e6', '24500179474', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('78', 'Vladimir', 'Padberg', 'jared47@example.net', '137529beab389241957f889813ee06ab33f510ed', '1531880941', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('79', 'Emmy', 'Lockman', 'hildegard87@example.net', '612d2303d74a5e8deba4ff06592ad09585cb3780', '43406292150', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('80', 'Orpha', 'Miller', 'durgan.myrna@example.org', 'b79cbc1a88aac779d62ed1399169993b00bd8524', '75148719234', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('81', 'Layne', 'Doyle', 'obogisich@example.org', '9d93334e7a30a0d0682fd43c69bf8fa2273bb7bd', '77250809313', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('82', 'Mariela', 'Hirthe', 'marcia.hodkiewicz@example.com', '2cedb80d79c2370e72cf1a9f72a225c9aabfbf45', '56416657239', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('83', 'Taurean', 'Heathcote', 'rolfson.hannah@example.org', 'b19a88261c9de96df98f4de0482eda116950bfe5', '40909323990', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('84', 'Rodrick', 'Wiegand', 'collin.heller@example.net', '8457e57535879f56a05149ba3c5f7f3433a5e2c6', '17316350628', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('85', 'Lillian', 'Spencer', 'tmayer@example.net', 'e8cbd1ec3caa72e477c9d1e505ce4c2cbb591d4c', '8930357838', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('86', 'Sonia', 'O\'Keefe', 'barry.sipes@example.com', '6a916c7041d51309faf79b392553ba52e233f3b5', '8361280006', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('87', 'Kylee', 'Davis', 'ydouglas@example.com', 'f4a2040589d360677dfd54c04371aee16361d45f', '16004567778', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('88', 'Evelyn', 'Herzog', 'nathaniel41@example.com', 'fee2c164c8e744bcd0b548a8e8231533993136eb', '67777376778', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('89', 'Amelia', 'Raynor', 'thompson.meghan@example.org', '8bc116e3c9f9a2c8da5f7a1a28c21e0f8cac2dcf', '29846345326', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('90', 'Dorthy', 'Fahey', 'lebsack.julien@example.org', '6e0110021a27576e6127659bdb0d08277593b824', '29392841029', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('91', 'Preston', 'Powlowski', 'devin.welch@example.net', 'be3710a83fe9a58b7dfa18a4dd0b3e26b054f998', '86327227724', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('92', 'Kiley', 'Crooks', 'skiles.selmer@example.net', '385b917ab4f870696418332e12e042148337a9de', '857897010', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('93', 'Eleonore', 'Rempel', 'trantow.frank@example.org', '625b55beeecbf1318c25de61afbea9414dee2046', '64735323774', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('94', 'Tristian', 'Zulauf', 'velda.maggio@example.org', 'acda9d039cf90b6d0b762e682aceae9fdd1bbb12', '10053811688', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('95', 'Freeda', 'Crist', 'lorena.runolfsdottir@example.org', '10c3548cded0cb8b686a5b0d98c4b4b4a689d293', '14452750396', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('96', 'Myrtis', 'Boehm', 'wwaelchi@example.net', '7677950cf3213483ce02aa4d1a3e88dd32cf4d2d', '18531654085', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('97', 'Matteo', 'Wisozk', 'habbott@example.com', '4a73d4565e8e67e2e45ca321c1bf3c718db0afc7', '45644096934', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('98', 'Jayce', 'Muller', 'elittel@example.org', '6a970f0aa6efd6f48ae1787fc4ed6c7a39b5036e', '77380445798', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('99', 'Sedrick', 'Carroll', 'mitchell.ursula@example.com', 'f8e9b046296f7056c52cd550de0409a014a77cff', '3231865015', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('100', 'Braulio', 'Krajcik', 'kenneth43@example.net', '69c076e1105b6207d49ae8244cf212d666960109', '40835416769', '0');


