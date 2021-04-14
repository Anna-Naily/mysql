#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'velit', '2020-05-16 12:45:17', '2012-08-30 02:57:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'et', '2020-11-21 11:19:41', '2020-10-30 08:18:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'necessitatibus', '2016-02-28 23:16:49', '2016-04-24 17:06:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'illo', '2019-06-28 03:13:15', '2019-11-11 17:47:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'eos', '2013-09-23 20:08:57', '2012-11-13 20:16:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'omnis', '2017-07-06 20:17:47', '2016-06-08 14:24:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'commodi', '2013-04-11 20:59:27', '2020-04-08 23:50:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'nihil', '2014-04-18 19:31:04', '2014-03-12 05:07:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'quia', '2018-06-12 14:55:25', '2014-01-12 18:02:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'quidem', '2017-10-08 13:06:14', '2015-10-15 01:15:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'sapiente', '2020-12-21 19:37:42', '2011-10-22 02:23:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'aut', '2020-05-25 20:53:48', '2012-03-03 03:57:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'iusto', '2016-02-06 03:25:27', '2018-05-29 18:38:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'quis', '2014-11-13 16:18:23', '2019-02-21 04:31:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'porro', '2018-08-27 20:56:04', '2011-09-05 02:12:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'ea', '2015-08-04 08:46:53', '2013-05-17 00:32:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'vel', '2020-09-10 07:24:00', '2017-08-05 04:40:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'quo', '2018-04-07 18:18:30', '2015-10-12 09:27:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'cum', '2020-02-01 06:50:02', '2015-04-17 18:53:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'beatae', '2017-11-11 08:15:17', '2013-11-10 06:07:46');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '2017-11-28 19:29:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 21, '2016-09-13 01:12:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 41, '2019-02-02 23:00:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 61, '2020-12-30 17:43:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 81, '2015-08-24 09:45:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '2012-10-09 12:07:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 22, '2015-11-06 15:34:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 42, '2018-06-02 04:43:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 62, '2016-06-11 00:00:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 82, '2015-10-23 16:52:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '2017-07-11 13:37:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 23, '2017-04-30 14:23:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 43, '2011-06-22 14:50:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 63, '2017-03-17 05:17:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 83, '2013-08-12 07:55:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '2018-11-24 06:21:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 24, '2017-06-13 04:26:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 44, '2014-05-14 06:00:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 64, '2019-08-18 05:56:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 84, '2021-02-08 15:50:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '2012-12-24 15:13:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 25, '2019-04-07 06:24:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 45, '2020-08-04 01:11:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 65, '2011-11-07 06:32:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 85, '2015-11-06 17:58:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '2018-08-11 17:40:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 26, '2015-08-23 04:45:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 46, '2018-08-21 09:33:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 66, '2018-12-27 05:59:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 86, '2019-08-28 06:25:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '2018-04-03 16:34:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 27, '2020-08-09 11:19:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 47, '2013-09-01 21:46:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 67, '2020-04-24 06:54:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 87, '2018-08-30 05:40:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '2013-01-01 03:04:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 28, '2011-04-19 07:17:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 48, '2015-02-18 21:26:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 68, '2014-04-17 09:59:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 88, '2015-12-27 13:57:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '2012-05-27 13:06:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 29, '2021-01-11 12:09:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 49, '2016-08-25 21:55:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 69, '2011-05-30 12:39:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 89, '2019-12-19 22:16:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '2013-12-05 15:38:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 30, '2016-07-22 03:20:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 50, '2017-10-01 11:44:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 70, '2015-03-26 18:11:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 90, '2017-07-25 05:56:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 11, '2014-06-30 05:59:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 31, '2017-12-22 11:48:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 51, '2014-06-02 16:45:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 71, '2015-03-10 16:35:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 91, '2014-12-17 13:01:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 12, '2012-10-19 09:24:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 32, '2018-08-15 00:40:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 52, '2011-06-13 05:50:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 72, '2012-07-02 00:40:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 92, '2014-04-13 01:12:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 13, '2012-05-24 02:35:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 33, '2016-09-23 12:36:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 53, '2016-09-25 07:25:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 73, '2013-10-10 14:56:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 93, '2020-09-18 04:53:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 14, '2017-01-18 00:54:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 34, '2013-11-16 15:24:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 54, '2014-08-06 15:17:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 74, '2015-02-07 00:27:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 94, '2012-01-07 04:33:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 15, '2017-01-15 15:10:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 35, '2020-02-22 16:43:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 55, '2021-02-14 19:31:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 75, '2014-03-03 11:11:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 95, '2013-06-25 12:59:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 16, '2016-06-02 18:45:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 36, '2013-02-26 21:54:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 56, '2018-01-02 05:17:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 76, '2018-03-22 21:01:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 96, '2016-07-20 11:17:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 17, '2018-05-07 03:25:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 37, '2020-06-23 06:22:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 57, '2012-04-26 09:12:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 77, '2016-10-26 04:24:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 97, '2015-03-23 05:50:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 18, '2018-02-19 03:52:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 38, '2018-06-08 04:33:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 58, '2012-06-22 03:29:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 78, '2012-05-31 11:26:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 98, '2018-06-28 05:35:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 19, '2019-06-02 15:33:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 39, '2018-03-30 16:41:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 59, '2019-04-20 18:55:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 79, '2013-10-23 08:48:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 99, '2020-04-28 05:08:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 20, '2012-04-10 00:37:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 40, '2021-02-25 05:31:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 60, '2014-01-17 21:36:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 80, '2013-02-08 13:31:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 100, '2020-08-05 20:15:27');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `friendship_status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 1, 1, '2020-12-28 23:38:30', '2021-04-05 00:33:08', '2021-04-10 23:18:39', '2021-03-29 01:54:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 2, 2, '2020-06-03 01:04:10', '2021-04-03 08:10:01', '2021-03-28 01:48:17', '2021-04-09 05:30:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 3, 3, '2021-01-13 01:26:41', '2021-03-21 17:06:38', '2021-03-14 19:36:48', '2021-04-04 13:57:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 4, 4, '2020-05-04 05:33:46', '2021-03-31 23:03:56', '2021-04-02 21:04:48', '2021-03-26 07:15:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 5, 1, '2021-02-10 19:29:25', '2021-03-30 05:49:49', '2021-03-15 00:41:49', '2021-04-09 17:33:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 6, 2, '2020-10-30 22:05:36', '2021-03-28 23:31:39', '2021-04-06 10:28:36', '2021-04-13 15:38:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 7, 3, '2020-08-22 04:45:38', '2021-03-29 06:06:36', '2021-03-28 06:20:47', '2021-03-20 11:16:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 8, 4, '2020-06-26 07:03:34', '2021-04-04 20:00:09', '2021-03-30 19:34:21', '2021-03-15 14:05:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 9, 1, '2020-08-25 19:27:42', '2021-03-30 12:49:59', '2021-03-20 07:06:40', '2021-03-23 06:35:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 10, 2, '2020-12-17 06:01:34', '2021-03-16 18:08:06', '2021-04-13 17:23:16', '2021-04-07 20:51:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 11, 3, '2020-08-01 01:01:18', '2021-04-06 17:03:13', '2021-03-17 14:59:41', '2021-03-15 17:42:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 12, 4, '2020-06-29 05:57:34', '2021-04-07 23:23:12', '2021-04-10 17:35:57', '2021-04-13 09:03:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 13, 1, '2020-04-23 20:00:25', '2021-03-23 17:19:21', '2021-04-13 16:08:32', '2021-03-30 11:03:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 14, 2, '2021-03-07 08:46:13', '2021-04-05 12:04:06', '2021-03-16 17:32:31', '2021-04-02 02:34:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 15, 3, '2021-03-05 15:45:14', '2021-04-05 10:08:55', '2021-04-13 23:20:38', '2021-03-29 13:39:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 16, 4, '2020-08-20 22:03:26', '2021-04-11 22:59:22', '2021-03-26 12:06:08', '2021-04-04 21:28:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 17, 1, '2020-04-17 21:28:41', '2021-04-13 02:13:23', '2021-03-28 03:30:48', '2021-04-13 10:57:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 18, 2, '2020-06-04 22:23:11', '2021-04-11 12:40:50', '2021-03-22 12:13:26', '2021-04-10 04:38:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 19, 3, '2021-03-05 09:05:08', '2021-03-24 13:05:46', '2021-04-06 11:08:36', '2021-04-07 17:44:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 20, 4, '2021-04-07 07:24:31', '2021-03-30 04:43:41', '2021-04-13 00:09:50', '2021-03-17 16:18:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 21, 1, '2020-05-24 10:38:08', '2021-03-17 17:16:55', '2021-03-17 07:41:33', '2021-04-07 13:56:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 22, 2, '2020-06-12 13:18:00', '2021-03-23 21:42:02', '2021-03-24 22:04:06', '2021-04-11 07:32:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 23, 3, '2021-02-08 22:15:11', '2021-03-31 03:17:57', '2021-03-16 04:02:02', '2021-04-05 00:14:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 24, 4, '2021-03-15 20:10:12', '2021-04-01 06:50:45', '2021-03-26 14:50:06', '2021-03-18 13:01:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 25, 1, '2020-11-02 09:29:59', '2021-04-10 11:58:54', '2021-03-23 13:13:06', '2021-03-16 21:42:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 26, 2, '2021-02-27 08:01:37', '2021-04-08 09:48:57', '2021-03-15 09:28:01', '2021-04-07 20:45:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 27, 3, '2021-03-19 02:21:29', '2021-04-05 15:55:27', '2021-03-22 10:31:25', '2021-03-22 13:34:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 28, 4, '2020-12-29 03:19:25', '2021-04-12 02:45:15', '2021-04-05 10:21:12', '2021-04-11 01:30:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 29, 1, '2021-03-01 22:46:15', '2021-04-07 02:06:32', '2021-04-08 21:12:27', '2021-04-08 14:46:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 30, 2, '2020-05-30 23:11:50', '2021-03-19 08:35:25', '2021-04-09 12:33:01', '2021-04-01 09:51:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 31, 3, '2021-04-02 07:56:04', '2021-04-03 08:13:31', '2021-03-24 01:43:27', '2021-04-07 05:34:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 32, 4, '2020-12-31 07:22:38', '2021-04-03 16:07:06', '2021-04-09 22:42:53', '2021-03-29 04:32:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 33, 1, '2020-04-24 05:04:04', '2021-03-24 02:23:59', '2021-04-12 15:55:47', '2021-04-13 12:44:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 34, 2, '2021-01-19 08:20:53', '2021-04-06 11:08:32', '2021-04-08 17:05:45', '2021-04-01 21:11:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 35, 3, '2020-08-16 23:34:46', '2021-03-18 08:03:36', '2021-03-25 17:09:38', '2021-03-17 11:17:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 36, 4, '2021-03-23 20:41:20', '2021-04-03 14:28:55', '2021-04-11 09:32:27', '2021-03-20 14:28:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 37, 1, '2020-09-04 19:29:43', '2021-03-24 13:51:02', '2021-04-01 19:35:45', '2021-03-17 01:34:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 38, 2, '2021-03-01 08:52:58', '2021-03-25 20:51:29', '2021-03-28 02:16:04', '2021-04-02 14:21:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 39, 3, '2020-11-23 10:51:00', '2021-04-13 17:04:54', '2021-04-03 19:32:04', '2021-03-16 19:20:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 40, 4, '2021-04-11 04:56:14', '2021-03-18 19:40:39', '2021-04-05 17:08:24', '2021-03-28 18:40:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 41, 1, '2021-01-31 11:36:57', '2021-04-06 23:35:03', '2021-03-16 09:38:24', '2021-03-28 01:17:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 42, 2, '2020-06-25 01:46:46', '2021-04-06 12:05:36', '2021-03-26 08:30:01', '2021-03-29 14:27:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 43, 3, '2020-11-21 02:34:40', '2021-04-11 15:17:50', '2021-03-29 05:38:14', '2021-03-27 07:17:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 44, 4, '2020-06-16 16:41:19', '2021-04-06 03:45:08', '2021-04-05 05:17:10', '2021-03-22 04:22:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 45, 1, '2021-02-06 10:58:57', '2021-03-17 00:04:59', '2021-03-17 08:24:42', '2021-03-17 07:49:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 46, 2, '2021-01-21 04:07:56', '2021-03-20 05:03:21', '2021-03-15 07:00:37', '2021-03-16 00:56:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 47, 3, '2020-10-31 20:49:14', '2021-03-31 12:48:51', '2021-03-24 07:05:39', '2021-04-07 18:51:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 48, 4, '2020-12-14 06:11:07', '2021-04-06 07:51:39', '2021-04-10 23:47:38', '2021-04-11 12:53:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 49, 1, '2020-06-28 04:58:06', '2021-03-30 23:09:07', '2021-03-25 06:13:06', '2021-03-28 07:13:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 50, 2, '2020-09-06 18:29:18', '2021-03-24 23:12:19', '2021-04-08 22:35:25', '2021-03-19 20:05:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 51, 3, '2021-03-25 17:13:07', '2021-04-14 04:01:31', '2021-03-28 19:46:20', '2021-03-26 23:36:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 52, 4, '2021-03-11 00:08:08', '2021-03-30 21:59:40', '2021-04-11 16:39:06', '2021-03-30 15:16:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 53, 1, '2020-11-07 09:12:12', '2021-04-07 06:55:14', '2021-04-13 15:37:38', '2021-03-18 18:50:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 54, 2, '2020-06-30 06:14:20', '2021-04-09 05:30:16', '2021-03-31 04:04:14', '2021-03-28 05:55:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 55, 3, '2020-11-22 12:05:58', '2021-04-10 00:18:32', '2021-03-22 16:04:31', '2021-04-09 16:50:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 56, 4, '2020-08-09 06:54:49', '2021-04-07 15:52:49', '2021-04-03 01:14:26', '2021-03-24 18:56:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 57, 1, '2020-11-10 14:06:48', '2021-04-13 02:22:07', '2021-03-15 20:58:06', '2021-03-21 19:23:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 58, 2, '2020-12-05 11:26:52', '2021-04-05 03:56:35', '2021-04-11 13:25:20', '2021-04-04 16:12:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 59, 3, '2020-09-12 09:06:11', '2021-04-09 01:48:54', '2021-03-26 00:49:13', '2021-04-13 09:34:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 60, 4, '2020-11-06 07:52:08', '2021-03-20 12:27:56', '2021-03-19 20:38:42', '2021-03-18 19:37:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 61, 1, '2020-08-10 19:40:17', '2021-04-11 13:53:04', '2021-04-05 08:29:27', '2021-03-27 00:17:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 62, 2, '2020-06-08 07:43:43', '2021-04-07 02:49:15', '2021-04-05 00:55:58', '2021-03-26 19:43:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 63, 3, '2020-06-18 23:13:08', '2021-03-26 09:33:48', '2021-04-01 13:00:48', '2021-03-28 03:44:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 64, 4, '2020-07-08 08:44:12', '2021-04-01 11:58:57', '2021-03-22 20:21:54', '2021-04-02 20:35:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 65, 1, '2021-03-23 22:07:10', '2021-03-27 08:53:55', '2021-04-12 13:28:43', '2021-03-25 06:42:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 66, 2, '2021-02-08 20:57:26', '2021-04-09 23:57:28', '2021-03-17 14:35:23', '2021-04-12 18:42:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 67, 3, '2020-11-09 14:54:09', '2021-03-24 17:11:48', '2021-04-05 08:04:43', '2021-03-17 14:34:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 68, 4, '2020-06-07 22:18:16', '2021-04-11 05:40:08', '2021-03-21 23:46:43', '2021-03-15 01:42:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 69, 1, '2020-07-14 04:51:26', '2021-03-22 17:42:55', '2021-04-06 11:03:28', '2021-03-27 01:21:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 70, 2, '2020-11-10 06:08:00', '2021-03-24 06:00:20', '2021-03-19 20:37:56', '2021-03-30 11:38:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 71, 3, '2020-10-24 11:02:03', '2021-03-22 14:04:21', '2021-03-15 14:47:15', '2021-03-25 08:07:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 72, 4, '2020-09-27 08:08:05', '2021-03-19 03:24:08', '2021-03-17 21:31:20', '2021-03-16 18:31:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 73, 1, '2020-08-13 17:43:25', '2021-03-20 08:30:50', '2021-04-12 02:06:10', '2021-03-23 03:22:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 74, 2, '2020-12-20 17:17:10', '2021-04-09 13:32:46', '2021-03-27 04:01:36', '2021-03-26 03:02:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 75, 3, '2021-04-08 03:40:26', '2021-04-10 19:49:31', '2021-04-11 06:54:30', '2021-03-21 01:33:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 76, 4, '2020-10-09 05:04:34', '2021-03-22 00:51:39', '2021-03-20 13:21:59', '2021-03-20 11:32:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 77, 1, '2020-09-08 11:49:52', '2021-04-06 02:51:20', '2021-03-21 20:49:01', '2021-03-14 20:21:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 78, 2, '2020-11-03 09:49:50', '2021-03-16 09:44:49', '2021-03-27 17:50:28', '2021-04-03 11:03:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 79, 3, '2020-11-09 21:14:40', '2021-03-16 07:46:57', '2021-03-30 06:53:37', '2021-03-18 16:49:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 80, 4, '2021-04-03 13:29:25', '2021-04-13 20:19:00', '2021-03-20 12:46:09', '2021-03-19 14:43:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 81, 1, '2020-05-06 15:37:18', '2021-04-03 07:27:51', '2021-03-28 06:10:13', '2021-04-13 16:53:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 82, 2, '2020-12-24 01:46:13', '2021-04-12 05:20:09', '2021-03-25 19:45:16', '2021-03-29 00:54:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 83, 3, '2020-06-24 10:50:32', '2021-03-26 21:45:54', '2021-04-13 08:23:21', '2021-03-24 10:59:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 84, 4, '2020-08-11 09:52:55', '2021-03-21 19:55:22', '2021-03-26 22:35:09', '2021-04-06 09:21:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 85, 1, '2021-03-15 17:31:21', '2021-04-11 02:30:28', '2021-03-24 00:04:12', '2021-04-04 06:22:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 86, 2, '2020-12-05 10:24:46', '2021-03-20 07:29:31', '2021-03-27 10:21:34', '2021-04-11 14:46:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 87, 3, '2021-03-13 03:10:11', '2021-03-30 21:14:38', '2021-04-09 20:26:31', '2021-04-02 00:25:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 88, 4, '2021-02-12 08:45:31', '2021-03-22 11:52:20', '2021-04-01 06:48:40', '2021-03-31 09:43:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 89, 1, '2020-05-04 04:25:22', '2021-04-04 13:36:43', '2021-03-27 19:13:31', '2021-04-05 23:04:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 90, 2, '2021-02-13 22:16:47', '2021-04-03 17:38:33', '2021-04-08 00:08:35', '2021-03-24 06:00:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 91, 3, '2020-07-02 18:54:32', '2021-03-31 06:08:26', '2021-04-13 13:45:54', '2021-04-13 18:23:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 92, 4, '2020-07-05 15:53:19', '2021-03-27 10:17:52', '2021-04-13 03:58:58', '2021-04-12 09:02:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 93, 1, '2020-09-09 23:48:13', '2021-03-24 11:22:20', '2021-04-12 20:43:46', '2021-03-21 09:38:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 94, 2, '2020-10-29 16:38:09', '2021-04-04 18:12:52', '2021-03-30 04:18:19', '2021-04-04 01:47:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 95, 3, '2020-07-14 06:07:34', '2021-03-26 13:18:24', '2021-03-29 19:35:51', '2021-03-16 09:20:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 96, 4, '2020-11-09 20:37:33', '2021-03-26 11:33:33', '2021-03-24 09:06:49', '2021-03-21 06:08:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 97, 1, '2020-08-03 10:56:04', '2021-03-29 22:37:00', '2021-04-04 12:57:10', '2021-04-08 03:50:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 98, 2, '2020-10-06 14:21:07', '2021-04-01 01:47:09', '2021-04-07 16:07:52', '2021-04-11 06:43:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 99, 3, '2020-12-22 14:36:41', '2021-04-08 02:23:24', '2021-03-15 19:20:46', '2021-03-20 11:22:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 100, 4, '2021-03-22 05:22:04', '2021-04-05 01:03:49', '2021-03-27 01:45:07', '2021-04-07 00:23:55');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'et', '2016-02-22 21:06:14', '2016-05-15 03:56:51');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'fuga', '2018-09-14 05:48:49', '2012-08-28 12:35:18');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'omnis', '2016-03-08 06:52:23', '2016-07-24 12:43:01');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'aut', '2018-05-13 08:44:50', '2017-12-27 17:55:01');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 1, 'aut', 14, '8', 1, '2012-01-09 01:00:21', '2016-05-30 05:28:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 2, 'ipsum', 658, '8', 2, '2013-08-24 10:16:49', '2011-08-27 23:12:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 3, 'a', 769619, '3', 3, '2014-03-28 23:33:52', '2016-07-15 09:53:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 4, 'ut', 10, '8', 4, '2018-04-07 00:29:26', '2012-05-01 01:41:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 5, 'ipsa', 7, '8', 5, '2012-06-26 23:08:37', '2014-03-27 07:07:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 6, 'quis', 47, '7', 1, '2011-08-08 22:38:07', '2021-04-01 18:30:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 7, 'ducimus', 42, '6', 2, '2019-03-21 21:52:53', '2018-08-17 16:17:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 8, 'est', 706, '7', 3, '2015-10-25 13:13:21', '2013-06-09 02:47:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 9, 'esse', 197692860, '7', 4, '2014-04-14 07:10:09', '2016-01-19 10:54:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 10, 'sint', 0, '2', 5, '2018-07-25 23:17:22', '2016-05-03 02:09:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 11, 'eos', 749659, '1', 1, '2020-05-17 09:11:50', '2015-06-11 02:56:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 12, 'enim', 910, '5', 2, '2017-02-13 18:01:33', '2013-12-07 21:30:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 13, 'voluptatum', 57912676, '4', 3, '2018-08-06 10:32:25', '2017-02-25 20:34:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 14, 'sed', 6, '2', 4, '2011-08-22 22:19:49', '2018-05-25 09:54:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 15, 'saepe', 6219, '6', 5, '2015-08-27 00:03:52', '2012-08-30 03:49:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 16, 'dolor', 23916473, '4', 1, '2015-10-03 15:23:38', '2013-07-19 09:11:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 17, 'aut', 957133818, '4', 2, '2019-05-04 09:01:00', '2017-02-03 12:54:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 18, 'provident', 3494, '7', 3, '2015-06-28 08:41:10', '2015-12-27 17:19:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 19, 'blanditiis', 39143479, '8', 4, '2016-11-26 19:09:42', '2021-02-21 04:53:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 20, 'odit', 875488741, '1', 5, '2018-06-06 15:26:04', '2018-10-20 04:34:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 21, 'vel', 293084688, '9', 1, '2020-12-12 17:21:03', '2019-07-07 13:23:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 22, 'porro', 308369143, '2', 2, '2011-12-19 04:29:54', '2017-01-07 20:49:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 23, 'eum', 315979201, '8', 3, '2014-09-07 08:37:50', '2018-10-15 15:23:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 24, 'dicta', 15902579, '8', 4, '2018-08-16 10:26:13', '2013-04-17 06:15:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 25, 'sit', 491406, '1', 5, '2019-05-04 21:57:55', '2018-09-03 10:40:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 26, 'qui', 754199552, '9', 1, '2019-01-02 12:16:48', '2021-04-01 09:57:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 27, 'distinctio', 955, '4', 2, '2017-12-26 14:39:01', '2016-04-18 11:57:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 28, 'perferendis', 83784, '2', 3, '2019-04-19 03:51:31', '2012-04-03 14:47:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 29, 'expedita', 0, '8', 4, '2018-04-22 08:46:47', '2017-03-18 19:03:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 30, 'nesciunt', 81645, '7', 5, '2018-06-01 03:25:33', '2012-06-11 02:27:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 31, 'pariatur', 6, '6', 1, '2019-06-03 15:04:03', '2018-10-01 01:44:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 32, 'est', 0, '4', 2, '2019-03-28 10:57:53', '2019-09-18 12:17:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 33, 'illo', 454, '8', 3, '2019-10-09 18:24:58', '2018-06-22 14:15:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 34, 'fuga', 59781, '8', 4, '2020-11-17 22:17:41', '2014-11-27 18:21:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 35, 'ea', 391, '6', 5, '2013-05-25 08:54:27', '2016-07-12 18:55:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 36, 'dolorem', 4924, '6', 1, '2014-10-21 07:34:12', '2018-02-04 23:59:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 37, 'inventore', 359569, '2', 2, '2019-09-07 10:01:53', '2019-07-11 18:11:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 38, 'similique', 62264055, '6', 3, '2015-09-07 07:56:33', '2013-03-08 10:05:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 39, 'itaque', 0, '8', 4, '2014-10-29 02:16:45', '2020-10-18 12:50:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 40, 'fuga', 843171085, '3', 5, '2014-08-20 16:44:50', '2015-01-07 22:38:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 41, 'et', 2, '3', 1, '2013-08-16 11:29:45', '2019-10-09 16:27:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 42, 'reprehenderit', 0, '9', 2, '2015-01-19 05:32:43', '2015-04-24 17:54:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 43, 'sunt', 7, '7', 3, '2016-11-21 15:44:53', '2018-03-28 17:28:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 44, 'recusandae', 5, '5', 4, '2017-07-07 18:17:17', '2018-01-08 16:47:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 45, 'reprehenderit', 0, '1', 5, '2018-11-22 04:07:49', '2011-06-25 15:07:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 46, 'et', 49, '4', 1, '2015-06-16 04:41:17', '2016-03-24 09:30:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 47, 'ut', 771151379, '1', 2, '2012-01-09 11:20:47', '2012-05-30 10:35:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 48, 'omnis', 0, '9', 3, '2018-12-06 04:52:39', '2018-11-20 11:09:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 49, 'unde', 31510, '3', 4, '2014-05-05 17:23:23', '2019-08-30 11:01:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 50, 'nulla', 8579333, '8', 5, '2019-02-17 04:33:44', '2014-06-08 16:10:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 51, 'corporis', 3505081, '9', 1, '2016-07-03 15:17:34', '2017-09-29 17:12:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 52, 'necessitatibus', 81611, '4', 2, '2014-05-01 01:36:40', '2013-02-14 07:05:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 53, 'ut', 51105860, '9', 3, '2011-05-17 10:58:26', '2015-12-30 07:24:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 54, 'sed', 978953085, '8', 4, '2011-09-05 04:01:22', '2017-04-11 09:04:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 55, 'odit', 57967742, '8', 5, '2014-10-25 15:03:15', '2017-01-22 23:15:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 56, 'neque', 65399, '3', 1, '2018-01-11 22:43:23', '2017-03-07 05:58:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 57, 'delectus', 16260, '6', 2, '2019-07-29 11:42:10', '2018-07-10 08:48:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 58, 'provident', 9702, '8', 3, '2016-03-25 07:16:09', '2011-10-02 20:57:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 59, 'doloribus', 918, '8', 4, '2016-02-02 21:25:09', '2020-10-20 22:01:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 60, 'molestiae', 0, '6', 5, '2011-10-30 16:25:49', '2016-05-20 14:39:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 61, 'nesciunt', 583, '2', 1, '2018-03-23 11:54:30', '2016-08-12 09:59:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 62, 'repellendus', 60, '6', 2, '2013-08-13 02:05:42', '2019-10-24 05:44:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 63, 'ea', 850280, '3', 3, '2017-02-13 02:01:27', '2015-02-14 09:56:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 64, 'inventore', 0, '8', 4, '2013-01-12 09:03:31', '2012-04-20 08:20:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 65, 'repudiandae', 707404493, '8', 5, '2014-12-14 19:24:04', '2018-07-30 14:53:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 66, 'impedit', 559873, '4', 1, '2020-07-04 20:18:59', '2017-05-06 23:36:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 67, 'aut', 51738, '4', 2, '2012-05-10 04:47:57', '2014-06-13 05:42:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 68, 'sunt', 147141, '3', 3, '2014-12-07 11:38:12', '2015-01-25 20:17:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 69, 'veniam', 0, '2', 4, '2020-06-11 22:09:24', '2021-01-31 10:38:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 70, 'omnis', 572, '8', 5, '2014-07-16 19:12:15', '2021-04-01 21:35:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 71, 'at', 446, '1', 1, '2021-03-09 10:08:34', '2014-09-06 20:25:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 72, 'ut', 0, '5', 2, '2017-02-05 05:41:43', '2020-01-04 13:20:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 73, 'iste', 1, '9', 3, '2020-01-25 06:44:42', '2017-02-10 12:01:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 74, 'dolores', 57187, '8', 4, '2017-09-18 10:31:33', '2012-12-15 14:34:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 75, 'exercitationem', 87695802, '4', 5, '2012-05-10 15:40:47', '2011-07-15 14:47:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 76, 'eum', 1244, '3', 1, '2012-06-10 06:52:01', '2013-10-29 03:18:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 77, 'accusantium', 8862, '8', 2, '2016-12-20 03:50:02', '2020-10-23 22:47:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 78, 'quo', 0, '5', 3, '2014-05-06 12:41:48', '2017-07-31 19:44:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 79, 'voluptate', 50479395, '9', 4, '2013-12-03 18:56:11', '2013-08-01 10:31:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 80, 'quas', 503177, '3', 5, '2018-12-12 09:38:48', '2016-03-07 09:45:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 81, 'hic', 8748, '6', 1, '2014-02-02 09:05:07', '2015-03-03 11:47:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 82, 'sapiente', 921, '2', 2, '2014-06-20 13:27:53', '2018-07-23 03:27:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 83, 'vel', 2303, '7', 3, '2020-09-04 06:21:49', '2014-09-02 00:51:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 84, 'sed', 89962884, '6', 4, '2019-09-02 03:36:09', '2013-11-19 20:02:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 85, 'repudiandae', 0, '5', 5, '2013-10-13 21:57:04', '2019-06-03 05:12:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 86, 'est', 91877969, '5', 1, '2017-01-08 10:19:14', '2018-09-18 18:40:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 87, 'quasi', 0, '5', 2, '2013-05-04 19:16:59', '2012-07-06 06:45:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 88, 'sit', 67, '3', 3, '2015-10-22 00:08:38', '2019-06-30 05:51:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 89, 'placeat', 47, '2', 4, '2019-03-28 13:40:22', '2017-04-15 17:00:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 90, 'facere', 23479278, '8', 5, '2013-08-15 08:34:02', '2017-08-06 17:15:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 91, 'facere', 73783787, '9', 1, '2011-10-29 05:12:50', '2015-03-15 21:29:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 92, 'quo', 71537, '6', 2, '2016-12-20 20:40:02', '2020-04-12 03:35:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 93, 'nihil', 839, '1', 3, '2020-03-30 01:26:13', '2016-08-18 22:13:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 94, 'est', 1, '2', 4, '2016-08-24 11:05:08', '2011-07-23 10:48:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 95, 'quos', 11894165, '9', 5, '2018-12-01 17:10:38', '2020-05-20 07:43:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 96, 'qui', 247062, '5', 1, '2011-10-09 23:28:29', '2018-12-15 00:41:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 97, 'quis', 9550, '5', 2, '2016-03-31 17:27:02', '2011-12-21 07:32:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 98, 'iste', 54, '8', 3, '2013-05-01 13:00:14', '2016-08-18 15:05:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 99, 'ut', 830137, '9', 4, '2016-09-14 18:53:32', '2019-02-06 06:19:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 100, 'et', 85405, '5', 5, '2015-03-06 18:12:07', '2015-06-09 03:21:00');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'recusandae', '2017-03-07 14:11:13', '2015-10-23 18:47:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'aspernatur', '2011-11-01 14:44:03', '2012-09-11 17:44:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'aut', '2014-03-12 17:27:02', '2019-11-08 14:41:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'quo', '2019-02-22 22:03:16', '2017-01-31 05:47:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'perferendis', '2012-10-07 14:14:23', '2015-07-04 21:48:43');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 1, 1, 'Autem quia sit sapiente voluptas dolor. Accusamus nemo voluptas voluptas sit voluptatem quia. Placeat exercitationem ea doloremque ut qui laudantium.', 1, 0, '2015-11-16 01:07:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 2, 2, 'Dolorem fuga placeat sed quia repudiandae. Nobis a et corrupti ea quis ea. Repudiandae et sunt cupiditate quis facere ut accusamus. Qui placeat aspernatur modi consequatur dolores.', 1, 1, '2014-06-21 16:32:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 3, 3, 'Vel aut illo veritatis sequi exercitationem. Qui voluptas non est facere. Suscipit cum aut id velit autem aliquam.', 1, 1, '2016-04-09 05:51:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 4, 4, 'Id voluptatem nihil asperiores ut eius aut. Quae praesentium repellendus mollitia dolor quis. Dolorum illum delectus consequuntur voluptatem voluptatem. Officiis dolore est non nostrum.', 0, 0, '2018-05-30 19:24:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 5, 5, 'Harum nemo id maiores. Animi sit unde nihil consectetur. Laudantium id architecto iure placeat et. Atque iste vel vel optio nemo vel.', 0, 0, '2011-08-12 19:18:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 6, 6, 'Voluptatibus occaecati quisquam sed eum aliquid. Debitis minus unde veritatis distinctio eos. Nulla aut esse sed vitae. Omnis corrupti occaecati ab incidunt aut mollitia voluptatem.', 1, 0, '2019-07-20 12:03:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 7, 7, 'Aut rerum qui delectus earum. Maxime commodi sed eligendi sunt explicabo eos. Sequi perspiciatis impedit exercitationem.', 0, 1, '2011-06-28 19:51:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 8, 8, 'Dolores pariatur quaerat assumenda cumque dolorem. Necessitatibus asperiores velit magni veniam. Qui rerum nulla consequuntur deleniti natus. Saepe dolores placeat eum rem praesentium sunt velit.', 1, 0, '2014-11-22 23:19:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 9, 9, 'Placeat ex et omnis atque omnis et ea. Quo ipsam alias non at. Fuga et sit similique ex non ex. Atque doloribus voluptatem molestiae repellat aliquid voluptatem nihil explicabo.', 1, 1, '2012-05-30 04:23:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 10, 10, 'Nostrum similique explicabo quam. Dolores numquam quo eos dolores aut vitae. Rerum beatae illum sit expedita ut quia ratione. Amet et dolor qui pariatur.', 1, 1, '2014-08-01 07:42:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 11, 11, 'Magnam quia velit officia voluptas adipisci architecto iste. Blanditiis sed iure inventore voluptas saepe voluptate itaque. Minima qui nihil temporibus voluptatem. Enim eum natus vero quisquam qui est nobis.', 1, 1, '2019-02-11 19:13:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 12, 12, 'Ut velit assumenda ab quos autem. Voluptatum optio minima id facere voluptatum dicta quidem. Animi aut dolor nam qui et quasi in ut. Aperiam quia sed necessitatibus quia consectetur quo autem voluptas.', 1, 0, '2012-03-12 19:08:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 13, 13, 'Assumenda ut et quasi ipsam et. Qui illo magni qui architecto et voluptas. Rerum illum eum id.', 1, 1, '2018-01-23 05:51:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 14, 14, 'Amet et est alias assumenda laboriosam eos at pariatur. Nihil magnam omnis autem. Recusandae incidunt aliquam minima reprehenderit tenetur qui.', 0, 1, '2017-04-06 13:08:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 15, 15, 'Eaque vel excepturi delectus ipsam adipisci sint voluptatibus a. Eum et asperiores maiores qui corrupti quos. Voluptate quo itaque voluptatibus dignissimos.', 1, 0, '2021-01-09 02:23:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 16, 16, 'Quia molestiae voluptatum nemo aut adipisci. Explicabo rerum et voluptatum consequatur. Dolor ut nihil et. Voluptate et adipisci nobis perferendis quod aut.', 1, 0, '2016-11-18 02:02:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 17, 17, 'Eos molestiae labore natus temporibus sed exercitationem. Earum vitae consequuntur laboriosam sunt dolorem ipsa. Sed rerum sapiente maxime repellat aliquam ducimus repellat. Cumque adipisci libero nisi molestias nisi ex.', 0, 1, '2014-05-20 08:13:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 18, 18, 'Praesentium excepturi ut fuga. A voluptatum fugiat iste eveniet. Corrupti quia qui repellat dignissimos eos.', 0, 0, '2019-02-15 21:13:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 19, 19, 'Ipsum aut expedita sed. Tenetur cumque quo quas doloremque fugit earum dolorum. Atque sit error quam rerum.', 1, 1, '2016-02-18 01:10:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 20, 20, 'Ut vel reiciendis enim assumenda provident ut. Distinctio aliquid ad voluptatum voluptatum animi sunt porro aut. Voluptates est omnis qui natus sed libero.', 0, 0, '2020-02-05 05:34:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 21, 21, 'Neque adipisci eos quae cum repellat velit. Aut quas asperiores autem ratione commodi nulla. Distinctio illo laboriosam sit itaque.', 1, 0, '2020-07-21 09:26:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 22, 22, 'Ut enim fugit sed rem. Similique totam quia at sint. Totam eius qui ut enim.', 0, 1, '2017-05-26 18:06:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 23, 23, 'Earum dolores porro illo nihil tempore reiciendis earum. Rem omnis in soluta eos vero. Harum temporibus distinctio tenetur aut eveniet iusto eum velit. Eligendi dolores et rerum illo rem.', 1, 0, '2015-03-22 00:39:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 24, 24, 'Eveniet inventore non repudiandae rerum impedit eum. Tenetur rerum voluptatem saepe necessitatibus. Consequatur labore et beatae.', 1, 1, '2013-01-25 08:45:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 25, 25, 'Veniam reiciendis aperiam modi dicta ut. Est qui sunt ea quasi quia et iusto. Velit eos nisi ipsa eius sed et est.', 0, 1, '2011-09-04 03:06:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 26, 26, 'Fuga omnis blanditiis explicabo sunt. Aspernatur voluptas aspernatur porro sit pariatur dolores cumque. Aliquam eum iste quia at.', 1, 0, '2012-06-19 10:27:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 27, 27, 'Eaque officiis aspernatur incidunt maiores aliquam. Placeat dolorem eligendi sed ut enim molestiae quod velit. A et minus doloremque rerum.', 0, 0, '2017-10-29 18:15:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 28, 28, 'Aut voluptatum voluptas iste sunt at et est. Est consequatur iure aspernatur nemo culpa voluptates consequatur. Nam id ducimus et id quia. Voluptate ut et voluptas illo.', 1, 1, '2016-12-05 03:30:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 29, 29, 'Facere veritatis minima a corrupti. Odio ducimus est quia sapiente accusamus laboriosam veritatis. Possimus atque excepturi reprehenderit pariatur voluptatem rerum.', 0, 0, '2012-02-16 10:20:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 30, 30, 'Aut occaecati quo quisquam. Assumenda dolor repudiandae illo dolorem expedita in. Qui odit quibusdam officia qui dolorum voluptates quo. Esse vel iure enim vel voluptatem dolorem. Eum ipsa velit aut quia rem reiciendis quis.', 1, 1, '2015-07-16 04:21:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 31, 31, 'Quia eligendi quis in molestias beatae. Inventore consequatur eligendi unde laboriosam fugit praesentium.', 0, 1, '2012-02-25 16:11:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 32, 32, 'In aut aut est provident. Quae neque optio doloribus.', 0, 1, '2013-12-14 04:49:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 33, 33, 'Quae itaque ab omnis eaque nihil ducimus. Sed optio quos sed eos qui. Consequatur et et est quod nemo quam.', 0, 0, '2019-04-18 07:38:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 34, 34, 'Sit accusamus et velit fugit debitis sit. Voluptatem doloribus deserunt enim impedit libero quo sunt quibusdam. Rerum a earum quam quia suscipit a eveniet. Rerum iste doloribus adipisci omnis cupiditate aut non. Adipisci sunt iste facere.', 1, 1, '2012-10-10 22:15:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 35, 35, 'Voluptatem delectus molestias aliquam sint et modi. Libero repellendus error dolores nobis animi accusantium repellendus dolorem. Facere dolorum autem hic. Sed sapiente voluptatem cum eum nulla. Repellat pariatur qui fugit enim nihil id et.', 1, 1, '2017-12-11 02:29:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 36, 36, 'Ea error sed nesciunt temporibus ut tempora. Aspernatur magni vel et ut reiciendis. At ducimus temporibus sit temporibus.', 1, 0, '2019-08-07 08:01:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 37, 37, 'Assumenda et sunt blanditiis dolorem provident qui. Vel quam ut qui fugiat. Tempora neque doloremque laboriosam quia architecto et. Odio quia et totam eum aut.', 1, 1, '2013-07-16 03:32:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 38, 38, 'Eum culpa est quae. Eaque suscipit quos ullam error similique. Quos assumenda neque fugit nam id. Illo doloribus atque pariatur omnis beatae dolores.', 0, 0, '2017-12-12 07:01:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 39, 39, 'Doloremque et libero porro similique. Minus sed libero aut sed maiores at. Qui nostrum consequuntur atque laboriosam sed nulla repellendus eum. Reiciendis architecto nesciunt nostrum quam.', 1, 1, '2013-03-23 07:03:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 40, 40, 'Id quibusdam debitis veritatis non et quis. Placeat veritatis nostrum ut velit et. Ut et quo quia quos voluptatem id recusandae a. Facilis voluptas cumque sint. Quos dolor amet eum consequuntur voluptas assumenda qui.', 1, 0, '2018-01-01 18:11:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 41, 41, 'Asperiores quia aut quibusdam aut enim. Id repellendus tempora ut quisquam et. Alias nihil laboriosam porro eaque. Dolores et laboriosam repellendus.', 1, 1, '2013-11-13 11:00:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 42, 42, 'Ut exercitationem dolores libero delectus ipsum. Ullam voluptatem adipisci qui ut molestiae veritatis deserunt. Ullam quod nesciunt rerum est cumque sunt.', 1, 1, '2012-07-07 09:59:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 43, 43, 'Fugiat et quia magnam reprehenderit possimus vero ut qui. Delectus impedit ab ipsa ut voluptas. Quia at recusandae vel commodi voluptatum a. Ut molestias debitis amet sapiente voluptate enim.', 1, 0, '2012-05-18 12:30:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 44, 44, 'Et est ut dolor aut at modi soluta. Et molestias ab alias unde ut. Quae sed omnis consequatur. Repellendus dicta corrupti dignissimos nihil ratione. Deserunt aut laborum labore et.', 0, 0, '2015-11-19 16:46:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 45, 45, 'Corrupti eligendi id et voluptatem non ut qui mollitia. Sit eum cupiditate ad voluptate in enim. Iure cumque ut quo doloribus occaecati. Pariatur quibusdam praesentium dolorem quibusdam architecto repudiandae numquam.', 1, 0, '2014-06-23 08:59:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 46, 46, 'Magni doloribus quis laborum iste. Quo ut autem sed id soluta quos similique placeat. Quia repellendus quam laborum dolorum.', 0, 0, '2019-09-25 22:42:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 47, 47, 'Doloribus voluptates consequatur debitis magni iure culpa. Minus molestias cum inventore vero. Nihil quos perferendis earum ea.', 1, 1, '2016-01-05 08:07:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 48, 48, 'Sint nulla molestiae dignissimos voluptatem debitis ex. Omnis sunt ex enim necessitatibus ipsam.', 1, 1, '2019-10-26 07:23:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 49, 49, 'Saepe esse voluptas tempora quos ea. Magnam maxime consequatur nam aut natus. Non labore quo ut sequi.', 1, 1, '2015-11-03 21:22:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 50, 50, 'Dolores quisquam quis temporibus nulla incidunt cupiditate rem magni. Et quasi sapiente error reiciendis. Et quibusdam a amet. Eos deleniti inventore itaque temporibus dolores ratione.', 1, 0, '2018-01-08 20:11:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 51, 51, 'Dolor aut voluptas animi vitae dignissimos est molestias. Incidunt est ut sed molestias.', 1, 1, '2015-04-19 22:06:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 52, 52, 'Illo ea est veniam vero. Magnam sequi enim hic qui sit consequatur non molestiae. Voluptas culpa aspernatur sint commodi sint ad aliquid.', 0, 1, '2018-05-11 10:58:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 53, 53, 'Saepe saepe culpa soluta quisquam magnam. Beatae eum incidunt cupiditate quia sequi sed. Et recusandae quo est adipisci. Dolores et velit et hic occaecati.', 0, 1, '2017-05-05 17:48:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 54, 54, 'Officiis ut perspiciatis quos omnis odio. Quae minus tempore ab libero assumenda reprehenderit. Ipsa a molestiae ex aut est tempore commodi impedit. Eveniet sunt laudantium et in sed. Vero et incidunt voluptatem alias ullam.', 1, 0, '2016-02-17 22:48:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 55, 55, 'Et nihil nam nobis quaerat nostrum culpa ex deserunt. Ipsam libero nostrum sed id. Sed dolorum molestias quod aspernatur voluptas autem sint. Sed quas explicabo officia.', 1, 0, '2020-09-05 03:36:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 56, 56, 'Sunt velit minus a provident blanditiis. Harum dolorum qui laudantium. Est totam quo eius ut accusantium saepe. Sequi voluptatem veritatis voluptatem quidem voluptate.', 1, 1, '2016-08-10 14:10:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 57, 57, 'Officiis exercitationem earum est quis quaerat. Aut autem consequuntur ad exercitationem minus occaecati pariatur. Eaque iure veritatis dolorem molestiae ad.', 1, 1, '2020-08-23 07:22:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 58, 58, 'Qui quis debitis iste magni vel. Autem amet minima corrupti alias quidem occaecati enim. Vel maiores et ipsam in enim non voluptates.', 0, 0, '2020-03-15 06:36:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 59, 59, 'Molestiae quidem sint explicabo et non. Ut autem natus assumenda vel. Inventore nulla veniam omnis quis eius esse sit. Aut vero est totam id dolor.', 1, 0, '2015-07-31 03:35:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 60, 60, 'Distinctio non blanditiis et eos molestias nostrum blanditiis. Dolorem quam dolor dolores omnis corporis at. Ipsam vel ullam officia corporis.', 1, 0, '2018-01-21 09:38:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 61, 61, 'Ad sed eaque et distinctio ut recusandae. Sed dolores molestiae possimus voluptatem. Alias numquam qui ea et. Aperiam et expedita magni voluptatibus aliquid perferendis aut eius.', 1, 1, '2017-01-19 08:52:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 62, 62, 'Dolorum in dolore suscipit quia quas. Et nesciunt odit repellat reiciendis aut in debitis facere.', 0, 1, '2016-11-17 07:31:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 63, 63, 'Esse tempora libero totam dolore. Voluptas quis itaque facilis quia ut et. Autem error consequuntur vel architecto. Iure itaque aut qui quia fugit.', 0, 0, '2016-12-28 18:18:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 64, 64, 'Veniam qui est quis iste minus delectus. Temporibus est rerum facere eaque veritatis et quod laboriosam. Numquam vero corporis nostrum et delectus commodi ex. Fugiat quisquam eligendi atque et totam.', 0, 1, '2017-05-22 00:06:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 65, 65, 'Eum beatae nam eos qui et provident magnam. Exercitationem eaque fugiat eum eveniet ab asperiores. Ex nihil iure non repellat.', 0, 1, '2015-04-20 10:26:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 66, 66, 'Natus quidem consequatur numquam sed molestias. Corporis non labore voluptates aut qui nihil. Mollitia aut eveniet impedit iusto illum adipisci vel. Excepturi nemo earum aliquid atque incidunt. Sunt doloremque fuga consequatur occaecati mollitia quasi consequatur.', 0, 0, '2012-08-28 21:48:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 67, 67, 'Fugiat sunt veniam qui et et et. Cum in similique sunt omnis aut enim quis. Tenetur qui optio quia veritatis.', 0, 1, '2012-12-17 00:11:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 68, 68, 'Adipisci animi facere nihil accusantium nihil. Necessitatibus totam minus voluptatem quia voluptas rerum. Eos odit eveniet quos cupiditate quia delectus. Veniam sit consectetur rerum praesentium laborum.', 0, 0, '2013-07-07 22:39:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 69, 69, 'Nihil pariatur natus facilis et. Maxime eum veritatis natus laborum perferendis recusandae. Et fugiat iusto voluptatem magni aperiam magni. Sapiente eaque ut perspiciatis facere. Saepe et sed et quo nisi recusandae.', 0, 0, '2012-06-03 18:25:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 70, 70, 'Praesentium ipsam exercitationem nemo odit quia. Deleniti tempore expedita quas eos nisi quis eaque. Sequi quaerat est voluptas quia consequatur. Ut suscipit unde consequatur dicta.', 0, 1, '2019-12-17 01:53:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 71, 71, 'Accusamus officiis praesentium placeat minus tenetur. Eveniet labore ullam minima ullam mollitia. Aliquid sit occaecati cum blanditiis.', 0, 0, '2017-04-08 07:08:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 72, 72, 'Qui libero labore repudiandae adipisci eius quis. Accusamus vel perferendis cum laboriosam inventore inventore. Ut quo omnis quidem odit qui voluptas veritatis.', 0, 0, '2020-03-29 08:21:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 73, 73, 'Minus dolorem dolor natus aliquam. Et nisi ad ut qui. Aut minima doloremque quo nihil explicabo nihil.', 1, 0, '2019-09-28 16:34:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 74, 74, 'Aliquid mollitia qui omnis enim nihil nisi. Autem sequi amet aperiam non id inventore. Atque quasi quas consectetur omnis assumenda culpa. Architecto similique unde consequuntur dolores.', 0, 0, '2016-10-03 07:10:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 75, 75, 'Aut ex saepe amet omnis vitae aut. Iure quis et culpa id. Exercitationem ea quia iusto impedit recusandae aperiam consectetur.', 1, 0, '2018-10-25 05:06:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 76, 76, 'Optio numquam est repellendus doloremque magnam enim vitae. Qui sed omnis unde voluptatem et incidunt qui. Aut dolorum omnis et atque.', 0, 1, '2015-07-06 16:52:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 77, 77, 'Est deserunt est temporibus quia. Tenetur nam et earum tempore at esse voluptas magnam. Quis quisquam omnis optio. Iusto earum earum at aut autem maxime.', 1, 1, '2017-05-29 12:45:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 78, 78, 'Exercitationem aperiam nihil repudiandae consequatur ad repudiandae. Quo aut dignissimos assumenda tenetur. Numquam natus quasi in voluptatem provident libero.', 0, 1, '2013-02-18 10:32:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 79, 79, 'Necessitatibus necessitatibus sed et. Voluptate dolorum qui ab eaque modi molestiae. Et ea dolorem suscipit recusandae.', 1, 1, '2015-01-26 01:05:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 80, 80, 'Alias voluptas voluptas iste hic. Similique dolores ut accusantium debitis et. Quaerat tempora fuga aut. Consequuntur quisquam assumenda nemo consequatur omnis blanditiis.', 0, 1, '2019-07-14 21:08:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 81, 81, 'Numquam qui quia sapiente explicabo ut. Voluptas sint voluptatibus nemo non et consequatur. Aperiam exercitationem ipsa asperiores rem expedita tenetur ullam. Voluptas debitis suscipit laboriosam veritatis.', 1, 1, '2015-03-19 13:47:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 82, 82, 'Neque eveniet et mollitia dolor corrupti fugit est. Illum et delectus in. Maiores ea ducimus libero alias nobis architecto est eveniet. Sit pariatur eum id quis ut nostrum.', 0, 1, '2011-08-28 12:11:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 83, 83, 'Nesciunt ut aut architecto at tenetur blanditiis non. Et alias quibusdam sed necessitatibus qui perferendis omnis. Eum odio ut excepturi perspiciatis et expedita delectus libero. Quo earum similique et qui. Expedita suscipit nulla qui illo.', 1, 1, '2021-02-08 02:25:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 84, 84, 'Beatae iste quos debitis minima. Eius ipsum voluptatem nihil aut. Rerum qui dignissimos distinctio hic quia nisi culpa.', 0, 1, '2019-08-08 06:58:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 85, 85, 'Laudantium quia voluptas reiciendis iusto earum mollitia. Et rerum sit et illum ratione nulla voluptatem illo. Officiis sapiente facilis qui aspernatur sit dicta officia.', 0, 0, '2017-09-29 06:44:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 86, 86, 'Eos aut quaerat et odit modi. Impedit pariatur excepturi modi facere commodi. Est minus sint enim ea. Laudantium ut nam consequatur consequatur.', 1, 0, '2014-08-21 17:41:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 87, 87, 'Sunt mollitia voluptatem est et. Adipisci debitis possimus et doloribus hic quasi nam. Iure est dolor excepturi repellat architecto eaque inventore aperiam. Vel quia maxime error ducimus nam nihil.', 0, 0, '2011-07-24 06:46:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 88, 88, 'Suscipit soluta et enim. Soluta omnis minima est delectus eveniet voluptatibus minus. Autem quis quisquam laborum ut tempore repudiandae. Ipsa tempora vel quod voluptatum dolores sed et. Ratione aliquam perferendis debitis ea labore et enim.', 1, 0, '2016-06-22 19:27:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 89, 89, 'Vel iure eius quod. Cupiditate hic ut quia quo ab consequatur accusantium. Aut ipsum voluptas esse.', 0, 1, '2011-10-01 08:25:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 90, 90, 'Assumenda soluta officiis aut et ab et. Consectetur nobis iusto distinctio ipsa vel. Est veritatis voluptatibus non nobis illo et et hic. Nihil soluta voluptates molestiae.', 1, 0, '2016-01-12 06:27:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 91, 91, 'Eaque velit labore et quia. Aliquid sapiente sit facilis assumenda officiis totam. Non aliquam omnis a impedit at iste accusantium consectetur.', 0, 1, '2018-06-18 09:19:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 92, 92, 'Earum dolorem cumque fugit rerum non. Eaque deserunt reprehenderit optio autem provident. Et harum nobis ut.', 0, 0, '2011-09-26 03:51:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 93, 93, 'Beatae expedita quidem neque et et iste in nam. Fugit fugiat dolorem non expedita. Commodi recusandae ex illo minus.', 1, 1, '2012-03-25 01:18:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 94, 94, 'Itaque sunt voluptas itaque voluptatibus rerum ea. Corrupti et quia recusandae velit vitae ut. Aut aut doloribus in fugiat pariatur blanditiis doloremque sed. Similique tempora eos ex impedit voluptas ab dolores.', 0, 0, '2015-01-02 15:33:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 95, 95, 'Ullam quidem distinctio et quasi cum. Ut et maiores amet nam et totam. Illo voluptatibus animi atque officiis et reprehenderit.', 0, 0, '2013-01-04 19:18:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 96, 96, 'Qui fuga soluta laboriosam aperiam eos maxime commodi. Sunt rerum et reprehenderit animi molestias. Rerum rem non qui. Cupiditate consequuntur perferendis ut est harum quae.', 1, 1, '2011-06-16 10:49:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 97, 97, 'Error qui consectetur numquam non reiciendis nihil voluptas id. Voluptates praesentium est id non. Quia ad velit sed aut rerum vel possimus. Tenetur ducimus omnis quidem culpa est culpa ipsa. Doloremque ipsa ut omnis.', 1, 0, '2017-11-13 14:31:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 98, 98, 'A vitae laboriosam unde repellat ut vitae. Voluptatibus quidem et delectus commodi officiis. Aut rem et eum enim ipsam ratione et ipsa.', 1, 1, '2014-05-31 08:59:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 99, 99, 'Dicta cumque eos laudantium consectetur sit facere blanditiis. Deserunt totam reiciendis dolor a suscipit aut nulla. Vel sit omnis facilis.', 0, 1, '2016-12-04 16:01:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 100, 100, 'Alias sunt et voluptate sint quod officiis. Recusandae tempora nulla adipisci aut adipisci sit. Autem et tenetur in qui esse labore aut. Aut ullam neque praesentium aspernatur eaque.', 0, 1, '2020-09-09 10:35:29');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `last_login` datetime DEFAULT NULL COMMENT 'Последний вход в систему',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (1, 'f', '2018-04-20', 'Brekkestad', 'Italy', '2012-05-27 16:52:09', '2018-09-17 05:05:49', '2020-05-20 19:20:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (2, 'm', '1980-05-12', 'North Antonia', 'Iraq', '2019-02-12 01:25:52', '2013-02-12 01:49:42', '2018-10-26 08:24:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (3, 'f', '1940-09-30', 'Kshlerinland', 'Luxembourg', '2017-02-11 08:09:43', '2017-07-02 07:15:30', '2018-05-15 18:43:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (4, 'f', '1964-04-02', 'Kozeymouth', 'Saudi Arabia', '2017-03-19 12:13:46', '2017-11-29 07:39:23', '2013-01-05 03:39:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (5, 'f', '1958-06-09', 'Heaneyberg', 'Sweden', '2016-02-22 03:09:50', '2015-08-19 18:57:29', '2014-05-03 01:06:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (6, 'f', '1963-10-25', 'Port Catherine', 'Zimbabwe', '2019-03-11 12:34:37', '2011-09-20 14:10:11', '2020-09-18 05:35:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (7, 'f', '1991-06-06', 'Port Obie', 'Guinea', '2011-07-17 14:22:45', '2014-08-07 13:02:31', '2011-09-02 01:09:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (8, 'm', '1964-06-06', 'West Sherman', 'Bahamas', '2016-07-25 15:29:49', '2013-12-22 23:41:37', '2019-02-12 09:36:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (9, 'f', '1943-09-14', 'Robynfurt', 'Korea', '2016-10-18 03:02:00', '2019-09-01 02:50:42', '2015-01-13 10:08:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (10, 'f', '1981-09-29', 'South Joelleshire', 'Albania', '2014-12-28 03:59:59', '2012-08-23 12:59:32', '2014-02-17 08:35:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (11, 'm', '1969-03-05', 'New Justina', 'Philippines', '2011-09-25 16:32:02', '2021-01-26 18:28:03', '2012-01-26 01:06:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (12, 'f', '2018-11-05', 'South Liza', 'Saint Helena', '2012-10-28 07:30:50', '2017-04-10 08:35:21', '2016-06-15 11:18:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (13, 'f', '2004-11-25', 'West Kileyborough', 'Suriname', '2012-10-11 15:21:18', '2014-08-28 07:16:38', '2020-10-06 19:19:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (14, 'm', '1961-07-13', 'Gislasonhaven', 'Greenland', '2020-04-18 15:00:16', '2014-07-07 10:02:06', '2019-07-20 18:48:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (15, 'f', '1986-02-26', 'New Lulushire', 'Latvia', '2011-08-04 21:28:42', '2018-11-06 09:53:35', '2018-11-26 15:10:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (16, 'f', '2014-05-08', 'Willmouth', 'Faroe Islands', '2015-03-04 14:48:17', '2021-03-04 23:40:20', '2018-10-30 04:26:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (17, 'm', '1931-01-24', 'North Hanna', 'Jamaica', '2011-08-07 04:39:51', '2020-01-04 17:29:50', '2016-07-14 13:16:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (18, 'm', '1991-05-17', 'Pfannerstillside', 'Nicaragua', '2012-03-08 05:25:27', '2012-03-19 23:24:31', '2021-03-11 04:50:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (19, 'f', '1934-03-28', 'Bernhardfurt', 'Ecuador', '2020-11-19 17:40:16', '2021-01-04 05:32:13', '2011-12-01 19:23:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (20, 'f', '1971-05-01', 'Port Johnathan', 'Sudan', '2018-06-09 20:18:31', '2017-03-29 23:35:43', '2021-04-14 07:24:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (21, 'f', '1964-02-19', 'New Maximomouth', 'Thailand', '2020-05-27 21:46:29', '2014-07-20 01:18:56', '2015-07-26 00:20:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (22, 'f', '1969-05-11', 'Dariusview', 'Yemen', '2020-03-15 02:00:27', '2011-10-15 18:07:00', '2019-04-10 18:09:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (23, 'f', '1947-10-23', 'West Pascale', 'Indonesia', '2016-06-06 14:40:43', '2012-06-30 05:52:40', '2015-08-27 23:45:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (24, 'm', '1938-05-17', 'Kulastown', 'Micronesia', '2015-03-04 15:23:05', '2019-06-26 09:58:58', '2012-10-31 11:37:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (25, 'f', '1985-04-30', 'Reillyfurt', 'Antigua and Barbuda', '2019-08-25 13:01:52', '2017-01-15 11:52:00', '2012-02-22 09:01:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (26, 'f', '1939-08-11', 'East Ofelia', 'United States Virgin Islands', '2019-12-10 01:01:23', '2018-11-02 21:08:53', '2015-02-20 20:11:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (27, 'f', '1978-03-21', 'Mayerttown', 'Mauritius', '2016-05-30 17:23:57', '2015-11-11 23:10:06', '2014-04-13 13:39:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (28, 'm', '1983-11-07', 'Spencermouth', 'Tokelau', '2016-08-18 12:27:08', '2014-12-10 10:34:33', '2015-11-28 01:39:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (29, 'f', '1936-05-11', 'Guillermofurt', 'Japan', '2017-09-15 22:33:29', '2020-10-14 17:25:23', '2018-10-04 16:48:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (30, 'm', '1973-10-24', 'Port Linneachester', 'Vietnam', '2017-04-06 11:39:50', '2013-11-01 06:39:32', '2015-07-06 06:20:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (31, 'f', '1985-10-12', 'West Devonview', 'Czech Republic', '2011-07-29 20:00:07', '2011-05-11 11:53:07', '2019-05-14 16:02:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (32, 'm', '2017-09-01', 'Port Silasland', 'Saint Helena', '2012-05-25 12:27:08', '2019-11-29 08:26:05', '2019-03-20 22:33:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (33, 'm', '2013-05-26', 'Jacobifurt', 'Gibraltar', '2018-12-05 18:16:46', '2015-05-30 08:20:35', '2019-12-17 11:37:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (34, 'f', '1946-10-21', 'Port Dorothyberg', 'Nepal', '2020-03-14 08:51:57', '2019-12-06 11:35:32', '2020-08-20 00:24:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (35, 'f', '2007-07-17', 'Vadaside', 'Iceland', '2016-12-20 03:11:24', '2015-02-15 20:21:18', '2011-04-15 16:04:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (36, 'm', '2001-05-03', 'Schimmelport', 'Botswana', '2011-05-09 07:09:05', '2013-07-07 06:13:30', '2015-02-20 06:46:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (37, 'm', '1969-01-17', 'Alfredafurt', 'Botswana', '2018-06-12 17:12:59', '2018-09-16 18:55:45', '2013-08-31 11:53:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (38, 'f', '2008-12-28', 'New Guido', 'San Marino', '2017-08-10 17:03:28', '2012-01-05 23:15:42', '2017-07-09 13:38:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (39, 'f', '1987-05-07', 'New Ansel', 'Switzerland', '2017-03-05 22:55:58', '2016-06-14 03:28:47', '2017-07-19 08:37:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (40, 'f', '1989-03-07', 'Lake Wanda', 'Malta', '2015-09-08 17:47:06', '2015-05-10 23:09:06', '2017-09-17 00:45:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (41, 'f', '1998-06-16', 'Niachester', 'Iraq', '2011-09-30 18:15:38', '2012-10-02 17:18:05', '2012-05-08 12:14:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (42, 'm', '1971-10-25', 'West Verlieburgh', 'Bangladesh', '2020-03-29 17:07:19', '2017-08-19 22:51:20', '2013-10-06 00:51:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (43, 'm', '1922-08-20', 'Enochland', 'Poland', '2013-01-29 21:49:17', '2019-10-05 21:51:23', '2013-05-15 21:42:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (44, 'f', '1982-12-19', 'North Salma', 'French Southern Territories', '2019-09-26 10:13:28', '2017-05-25 22:46:41', '2014-10-26 20:05:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (45, 'm', '1949-01-01', 'East Eleazarstad', 'Ecuador', '2013-03-24 21:27:45', '2020-09-12 09:26:53', '2019-11-10 07:19:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (46, 'm', '1991-12-03', 'North Milesstad', 'American Samoa', '2020-09-11 08:33:37', '2014-02-07 20:24:21', '2018-06-12 19:17:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (47, 'm', '1923-02-03', 'South Makenna', 'French Polynesia', '2016-12-28 06:56:41', '2012-05-07 21:56:03', '2012-02-14 07:55:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (48, 'f', '1924-07-14', 'West Mylene', 'Sri Lanka', '2015-11-09 05:14:59', '2017-02-11 06:22:10', '2020-08-31 11:34:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (49, 'm', '2007-09-21', 'Port Imani', 'New Zealand', '2014-06-13 15:19:37', '2020-10-19 11:10:48', '2015-01-05 01:19:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (50, 'f', '2018-12-11', 'Krajcikborough', 'United Arab Emirates', '2019-01-10 19:10:25', '2017-07-11 01:41:18', '2014-09-10 02:17:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (51, 'f', '1998-12-05', 'Dellberg', 'Hong Kong', '2016-04-10 20:53:06', '2013-11-24 21:13:17', '2017-04-18 12:34:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (52, 'f', '1972-08-23', 'Port Dixiefurt', 'French Southern Territories', '2012-05-27 04:49:32', '2016-01-22 02:45:50', '2020-04-05 05:17:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (53, 'm', '1989-06-07', 'Cyrilland', 'Mozambique', '2013-09-07 08:45:54', '2018-07-27 03:17:30', '2013-11-17 15:47:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (54, 'f', '2003-03-23', 'Adelaville', 'Togo', '2019-06-24 12:42:04', '2015-01-17 22:56:47', '2018-09-13 06:44:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (55, 'm', '1939-06-04', 'Ziemannbury', 'Lao People\'s Democratic Republic', '2021-01-29 10:45:33', '2015-12-26 06:39:13', '2020-04-10 11:34:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (56, 'm', '2011-09-04', 'Lake Deltahaven', 'Fiji', '2018-01-01 23:27:09', '2013-03-16 08:36:31', '2015-06-07 12:50:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (57, 'm', '1952-03-27', 'Reichelmouth', 'Philippines', '2011-05-12 04:43:55', '2018-12-31 14:50:18', '2014-01-19 04:41:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (58, 'm', '1951-06-27', 'West Brook', 'Argentina', '2011-07-31 10:44:07', '2019-08-18 11:28:24', '2013-01-19 06:26:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (59, 'm', '2016-11-21', 'Lake Zackary', 'Solomon Islands', '2011-09-05 04:15:03', '2013-11-06 03:36:43', '2015-07-03 09:57:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (60, 'm', '1973-10-08', 'Kyleemouth', 'Malaysia', '2015-03-12 09:35:17', '2016-09-02 02:19:38', '2012-02-19 23:01:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (61, 'm', '1949-12-19', 'Jastburgh', 'Saudi Arabia', '2018-08-20 03:08:53', '2018-04-22 12:03:51', '2019-12-01 16:09:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (62, 'f', '1935-06-06', 'Johnsville', 'Indonesia', '2015-08-20 04:44:57', '2014-04-14 20:12:35', '2013-11-28 14:55:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (63, 'm', '1954-03-15', 'South Leonoraborough', 'Germany', '2015-04-07 13:53:18', '2014-02-04 20:25:42', '2019-03-27 11:02:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (64, 'm', '2003-03-29', 'Schowalterfurt', 'Central African Republic', '2018-09-10 20:08:31', '2020-11-05 21:17:54', '2012-12-28 10:06:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (65, 'm', '2011-12-04', 'New Matilde', 'Congo', '2020-01-31 16:56:24', '2016-03-29 10:06:18', '2019-07-25 08:23:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (66, 'f', '1970-05-08', 'West Nigelville', 'Malta', '2015-12-19 06:51:26', '2014-08-06 05:28:05', '2016-01-11 13:00:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (67, 'm', '1940-08-22', 'New Mariammouth', 'Ukraine', '2015-08-03 07:42:37', '2013-11-29 10:33:11', '2019-10-01 20:21:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (68, 'f', '1922-07-10', 'East Ryanville', 'Liechtenstein', '2018-04-23 13:24:47', '2014-03-04 00:31:13', '2021-01-07 04:08:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (69, 'm', '1932-09-26', 'Joelville', 'Slovakia (Slovak Republic)', '2020-06-27 04:11:32', '2020-01-19 04:20:48', '2012-04-10 09:27:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (70, 'm', '1990-08-04', 'Lillieside', 'Bolivia', '2020-01-23 13:45:30', '2018-07-15 21:26:15', '2013-12-12 06:21:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (71, 'f', '2013-12-03', 'Noelville', 'Puerto Rico', '2016-10-13 05:07:41', '2011-06-04 17:21:11', '2011-12-03 18:53:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (72, 'f', '1975-08-10', 'Elzabury', 'United States of America', '2011-11-24 22:59:48', '2012-10-04 10:13:43', '2017-11-17 19:08:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (73, 'f', '2008-01-28', 'West Dangelostad', 'Saint Kitts and Nevis', '2014-04-06 00:12:57', '2013-08-15 01:53:48', '2012-10-16 03:29:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (74, 'm', '2015-12-06', 'Port Tamaraville', 'Namibia', '2012-12-27 21:24:02', '2018-09-27 16:23:33', '2012-01-29 02:17:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (75, 'f', '1982-10-18', 'South Jayneland', 'Bulgaria', '2015-06-13 16:05:23', '2016-02-17 10:01:21', '2014-05-17 21:04:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (76, 'f', '1993-06-08', 'Jessikahaven', 'Seychelles', '2020-04-08 08:25:01', '2017-04-26 17:24:46', '2018-04-05 22:32:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (77, 'f', '2015-05-04', 'East Ila', 'Poland', '2014-08-26 10:33:06', '2016-04-05 00:45:59', '2020-03-03 09:04:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (78, 'f', '1980-11-12', 'Emersonstad', 'Romania', '2012-06-27 10:22:22', '2017-08-03 03:46:30', '2019-08-23 20:04:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (79, 'f', '2016-06-29', 'Grahamhaven', 'Norway', '2014-11-06 12:35:34', '2019-10-01 15:45:12', '2017-01-06 06:40:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (80, 'm', '1922-02-02', 'Hillsville', 'Cote d\'Ivoire', '2013-05-22 17:35:14', '2014-07-27 15:11:57', '2016-11-06 12:55:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (81, 'f', '1925-01-20', 'Connfort', 'Myanmar', '2013-03-06 11:34:11', '2013-10-07 10:11:58', '2016-02-05 17:52:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (82, 'f', '1955-11-08', 'Hoppetown', 'Libyan Arab Jamahiriya', '2012-06-21 12:18:05', '2016-06-15 23:45:11', '2020-04-11 04:42:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (83, 'm', '1961-11-23', 'Zanefort', 'Lebanon', '2013-04-02 23:20:10', '2019-05-13 03:06:44', '2017-10-02 19:01:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (84, 'f', '1953-09-11', 'South Emanuel', 'Holy See (Vatican City State)', '2015-07-11 06:20:27', '2018-01-28 00:07:27', '2012-04-18 14:01:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (85, 'f', '1930-12-04', 'New Aletha', 'Mozambique', '2017-05-12 12:29:57', '2011-05-04 18:22:59', '2013-12-30 02:40:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (86, 'm', '2006-05-09', 'Maiaview', 'France', '2015-02-23 22:27:44', '2016-09-23 18:38:17', '2013-09-16 22:01:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (87, 'm', '1954-09-29', 'New Angusshire', 'Gambia', '2013-05-10 14:19:11', '2016-09-12 20:40:05', '2019-05-17 06:42:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (88, 'f', '1985-11-07', 'Gutmanntown', 'Sierra Leone', '2020-06-18 08:51:44', '2019-02-02 05:00:18', '2012-11-03 03:07:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (89, 'm', '1950-02-19', 'Cummingsfurt', 'Guatemala', '2011-08-04 03:11:15', '2012-02-27 05:07:43', '2017-01-16 13:06:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (90, 'm', '1961-06-22', 'Jacobiview', 'Saudi Arabia', '2015-05-27 01:24:53', '2020-01-06 22:15:21', '2014-07-29 16:35:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (91, 'f', '1976-11-18', 'Monahanfort', 'Malawi', '2012-07-20 18:05:38', '2011-08-05 22:12:38', '2019-01-04 10:04:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (92, 'm', '1952-08-04', 'Port Connerbury', 'Northern Mariana Islands', '2019-10-06 04:38:29', '2019-07-26 21:05:20', '2011-05-13 22:19:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (93, 'f', '1957-08-22', 'Lake Donport', 'Marshall Islands', '2019-03-11 02:15:07', '2020-10-12 19:12:23', '2018-12-24 10:47:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (94, 'm', '1930-03-17', 'East Florence', 'Christmas Island', '2013-07-08 12:47:13', '2012-05-22 16:17:34', '2016-05-30 11:49:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (95, 'f', '1933-06-26', 'Arvidport', 'Tanzania', '2016-03-30 07:20:15', '2016-07-28 22:21:49', '2015-06-18 15:26:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (96, 'f', '2013-01-13', 'Denesikview', 'Indonesia', '2018-11-20 06:48:02', '2018-02-22 17:10:49', '2019-07-16 03:29:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (97, 'm', '2008-03-27', 'Lake Bonitamouth', 'New Zealand', '2018-12-11 05:57:43', '2012-07-04 11:24:22', '2013-03-19 17:30:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (98, 'f', '1970-06-19', 'South Olga', 'Micronesia', '2015-12-08 16:39:46', '2018-05-02 15:55:07', '2013-10-06 02:13:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (99, 'f', '1954-02-21', 'Framiville', 'Tajikistan', '2015-08-20 10:05:56', '2015-07-01 00:30:28', '2011-05-10 12:48:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (100, 'f', '2008-07-19', 'Willaport', 'Monaco', '2013-08-26 20:25:20', '2018-12-03 06:34:18', '2021-04-07 21:26:08');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Clemens', 'Langosh', 'reinger.connie@example.com', '644-050-6999', '2013-03-17 01:36:21', '2021-01-22 19:57:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Arden', 'Thiel', 'patience69@example.org', '04117019705', '2018-07-16 11:05:48', '2015-03-18 21:01:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Autumn', 'Langosh', 'ishanahan@example.com', '(021)273-9652x81014', '2018-05-05 18:21:46', '2011-09-29 22:27:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Earl', 'Kutch', 'irma.fahey@example.org', '466.485.8538', '2012-01-11 15:30:51', '2017-04-25 15:43:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Layla', 'Beer', 'yasmin02@example.com', '(789)714-4593', '2019-07-25 14:56:16', '2017-09-03 04:59:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Tristian', 'Corkery', 'damaris.paucek@example.org', '538-853-8177x45391', '2012-03-15 07:30:14', '2018-06-07 06:35:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Liliane', 'Pollich', 'tanner89@example.org', '1-897-491-2061x82564', '2020-03-24 02:11:54', '2014-07-17 17:58:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Wyatt', 'Moore', 'yhickle@example.net', '1-110-635-3002x05800', '2011-05-26 06:47:44', '2020-07-11 11:19:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Liam', 'Schoen', 'bayer.johanna@example.net', '1-424-985-7165', '2018-07-18 04:30:03', '2013-05-13 13:38:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Jany', 'Corwin', 'bechtelar.piper@example.net', '272-920-4284x117', '2013-04-21 01:56:09', '2015-01-06 23:25:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Blaze', 'Howell', 'pbeier@example.com', '1-542-934-6215x6719', '2015-04-05 22:36:56', '2017-10-06 04:03:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Sheridan', 'Bins', 'wilfred68@example.org', '705-067-0279', '2014-04-02 03:13:00', '2016-08-11 04:04:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Shawna', 'Torphy', 'ariane.ferry@example.com', '(688)871-7488x7579', '2019-11-23 11:45:55', '2014-11-17 11:44:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Ada', 'Thompson', 'rocky.yost@example.org', '108.457.7460x73254', '2017-10-20 11:32:32', '2020-01-27 19:10:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Alexis', 'Cartwright', 'gleichner.daniela@example.net', '118.573.3493', '2016-05-10 09:57:15', '2015-10-10 21:19:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Shyann', 'Schaden', 'dare.gina@example.com', '703.172.3172x5437', '2019-01-28 02:01:10', '2018-01-01 01:27:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Mozelle', 'Howell', 'lennie.gislason@example.net', '251.412.6710x300', '2014-03-28 12:07:30', '2018-12-24 20:54:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Dasia', 'Jakubowski', 'pouros.morgan@example.com', '1-529-877-7264x5578', '2017-03-24 11:04:04', '2017-06-08 20:49:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Emory', 'Friesen', 'joseph87@example.org', '+71(4)0861200066', '2016-11-18 23:09:04', '2018-10-16 21:35:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Carolyne', 'Denesik', 'nienow.lura@example.net', '01621463016', '2012-09-07 22:35:32', '2019-06-18 05:18:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Rodrigo', 'Pagac', 'nswift@example.net', '578-228-7745', '2013-04-12 11:57:55', '2018-04-21 12:05:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Ulices', 'Willms', 'hoeger.henderson@example.com', '(825)822-9140x4805', '2020-06-03 03:13:42', '2011-04-23 14:45:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Scarlett', 'Schaefer', 'mupton@example.com', '(667)905-4503', '2012-09-01 00:12:24', '2020-12-02 14:28:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Frieda', 'Block', 'ondricka.sylvia@example.org', '1-830-968-6135x004', '2020-07-18 10:16:12', '2011-10-07 22:30:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Ole', 'Botsford', 'eupton@example.net', '766.607.1611x011', '2014-07-19 12:48:23', '2013-04-05 05:39:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Willa', 'Crist', 'bpfeffer@example.net', '115-580-7357', '2012-09-11 20:18:15', '2012-01-21 07:10:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Judy', 'Dare', 'jbeer@example.net', '415.541.9951', '2014-07-06 14:01:57', '2016-01-24 07:16:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Nichole', 'Langworth', 'bharvey@example.org', '1-832-517-5724x18754', '2011-05-20 23:10:45', '2021-01-20 13:31:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Lee', 'Satterfield', 'miles.simonis@example.com', '626.027.3960', '2014-09-07 20:23:34', '2017-07-28 08:43:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Pascale', 'Mueller', 'ezekiel.grant@example.net', '158.774.9069x90157', '2019-07-06 18:48:40', '2020-07-12 14:58:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Eleonore', 'Hermann', 'shanahan.kianna@example.org', '141-066-9030x706', '2016-12-30 04:51:20', '2012-09-29 13:27:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Nia', 'Beahan', 'alvis.kemmer@example.org', '529.561.7216', '2020-06-27 18:34:43', '2018-03-05 22:59:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Ellen', 'Schamberger', 'raheem91@example.org', '+09(2)9197262735', '2013-08-19 01:19:08', '2013-09-09 12:11:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Liana', 'Dicki', 'zola13@example.net', '529.914.9982', '2018-11-04 04:04:34', '2012-03-25 01:14:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Marcelle', 'Padberg', 'kunde.euna@example.org', '(752)226-0069', '2015-06-22 00:34:06', '2017-09-12 12:07:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Emily', 'Welch', 'muller.elisa@example.com', '+93(6)3995434169', '2015-03-15 14:20:44', '2020-02-21 12:52:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Zachariah', 'Murray', 'vandervort.fae@example.net', '08464940609', '2012-04-01 01:54:11', '2020-08-21 14:41:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Violette', 'Dickens', 'arnold22@example.com', '1-262-008-5284', '2013-03-12 07:59:42', '2015-06-04 01:55:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Eliezer', 'Hayes', 'iroberts@example.net', '726.612.9744x609', '2016-06-10 08:37:46', '2021-01-02 05:15:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Shanie', 'Boyer', 'friedrich86@example.com', '+08(9)9938884245', '2019-04-24 02:04:36', '2015-08-15 04:12:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Mazie', 'Schultz', 'myrtis26@example.net', '403-292-0664', '2018-07-01 09:08:56', '2013-09-17 22:14:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Melody', 'Ward', 'boris36@example.com', '003.568.9263x1294', '2012-01-13 05:29:39', '2011-08-12 19:45:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Kaycee', 'Purdy', 'colin.miller@example.net', '881.887.9068x11434', '2016-11-03 05:55:21', '2013-08-02 13:07:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Andy', 'Lakin', 'lwiegand@example.net', '(093)007-9915x97179', '2017-06-22 18:42:52', '2013-09-03 17:11:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Ramona', 'Rolfson', 'wullrich@example.org', '(497)413-8021x688', '2017-10-03 02:14:57', '2015-09-03 20:31:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Khalil', 'Bruen', 'rcrona@example.com', '475.169.8509x697', '2019-01-03 15:25:51', '2012-07-30 23:55:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Leilani', 'Schmitt', 'nya53@example.net', '136.075.2901', '2013-09-21 15:23:51', '2012-05-05 01:49:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Maya', 'Walker', 'don.spinka@example.org', '(492)212-7622', '2019-03-08 17:19:12', '2011-07-10 20:39:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Newton', 'Kilback', 'dbatz@example.net', '(551)250-0561', '2018-07-12 02:49:02', '2016-08-22 07:30:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Werner', 'Weissnat', 'kyundt@example.net', '(544)763-4808x3893', '2017-10-01 13:10:32', '2020-12-06 23:49:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Nora', 'Howell', 'thompson.evans@example.com', '+42(5)9784028104', '2013-10-03 02:26:41', '2020-07-30 19:44:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Leslie', 'Langworth', 'baylee37@example.net', '741.111.0395x2936', '2018-03-08 15:45:39', '2014-01-03 17:58:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Meggie', 'Haag', 'obrekke@example.net', '1-147-072-8798x71993', '2014-09-03 17:39:20', '2019-06-30 05:07:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Travis', 'Schuster', 'kemmer.nathan@example.net', '(535)918-3308x40696', '2016-05-27 12:24:08', '2019-11-21 16:32:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Nasir', 'Jacobson', 'jessika21@example.org', '358-746-4477x171', '2016-07-06 03:57:42', '2011-06-15 09:55:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Stephany', 'Toy', 'garry.nikolaus@example.com', '1-486-559-5998', '2019-09-05 19:04:18', '2015-08-08 03:32:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Santiago', 'Harris', 'donato.hartmann@example.org', '185.215.2235x90516', '2019-04-09 13:04:38', '2018-10-16 09:07:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Yasmine', 'Nolan', 'rylee68@example.com', '+61(4)6401289524', '2011-04-25 21:08:14', '2017-10-21 15:03:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Beverly', 'Nolan', 'morar.savion@example.net', '1-618-083-1277', '2014-09-22 21:14:53', '2020-02-24 13:46:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Annabell', 'Marks', 'ifriesen@example.com', '1-768-353-6446', '2018-02-03 07:29:31', '2011-12-26 04:45:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Jalen', 'McKenzie', 'omacejkovic@example.com', '06114502863', '2020-08-01 22:22:58', '2017-01-18 02:18:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Kody', 'Green', 'nkovacek@example.net', '297-979-3783x5077', '2012-06-11 06:19:39', '2013-05-03 04:39:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Filiberto', 'Smitham', 'zprosacco@example.org', '1-111-195-1652x4591', '2016-01-29 00:04:58', '2018-11-03 01:28:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Janick', 'Dietrich', 'krajcik.stacey@example.net', '02208529421', '2016-06-09 02:27:56', '2012-06-03 00:29:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Alek', 'Medhurst', 'crist.jack@example.net', '06353558924', '2011-05-24 06:27:08', '2015-02-09 22:01:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Damian', 'Bosco', 'fernando43@example.net', '09553015557', '2016-11-23 08:34:07', '2013-04-11 18:51:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Hilma', 'Price', 'abraham01@example.net', '+71(2)0585992725', '2019-06-12 01:22:19', '2013-07-04 13:32:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Krista', 'Stark', 'zhermann@example.org', '03344716119', '2012-01-28 19:53:01', '2016-06-10 20:01:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Aurelie', 'Hettinger', 'lsatterfield@example.net', '341.837.8151x883', '2020-12-08 22:14:53', '2012-06-12 14:47:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Aubree', 'Lehner', 'ettie.pagac@example.net', '574.994.6094x92084', '2014-03-19 15:32:29', '2017-01-20 18:59:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Colin', 'Lesch', 'lonzo.hackett@example.net', '397-210-2402', '2019-12-29 21:10:33', '2020-12-29 07:29:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Rudolph', 'Runolfsson', 'robert77@example.com', '(641)367-9646x1377', '2018-08-05 23:53:01', '2018-04-10 18:09:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Devon', 'Russel', 'rice.sienna@example.org', '1-789-333-2448x1245', '2018-10-17 07:10:58', '2015-03-08 23:40:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Gerald', 'Upton', 'jdicki@example.net', '558-507-2902x765', '2017-09-14 18:57:28', '2013-01-28 20:46:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Ryleigh', 'Torp', 'geichmann@example.com', '(820)540-5302x285', '2018-09-15 06:26:37', '2012-05-26 18:22:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Carley', 'Marvin', 'liam56@example.net', '1-886-277-4108', '2017-10-16 19:55:25', '2020-08-18 19:41:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Stone', 'Corwin', 'ratke.violet@example.net', '02273455694', '2012-05-02 17:44:25', '2014-05-17 15:27:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Elliot', 'Kling', 'tamara.beahan@example.org', '+73(0)0692052671', '2011-05-17 02:23:20', '2020-12-12 16:30:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Burnice', 'Nicolas', 'rowe.valentin@example.org', '(304)238-9609x8906', '2011-05-17 11:28:06', '2016-02-13 07:26:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Hector', 'Williamson', 'btromp@example.org', '1-274-778-1955x2441', '2020-10-10 08:14:02', '2016-05-12 21:26:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Florian', 'Torp', 'sjerde@example.org', '985.266.6868', '2019-02-28 05:56:16', '2012-08-16 11:44:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Michaela', 'Lueilwitz', 'waters.lyda@example.com', '646-746-3769', '2018-11-10 04:43:25', '2016-09-10 02:26:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Muhammad', 'Hamill', 'barton74@example.com', '(634)709-6911', '2015-06-05 12:26:16', '2015-06-12 17:35:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Herman', 'Schneider', 'delta.kuphal@example.org', '508.654.4612', '2020-06-13 13:45:20', '2015-08-26 17:26:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Randy', 'Marvin', 'vweimann@example.com', '1-335-105-5149', '2013-06-09 01:47:19', '2013-12-28 00:39:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Kennedi', 'Schultz', 'muller.golda@example.com', '312-295-6453', '2019-04-13 09:16:14', '2016-01-12 00:07:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Ardella', 'Mante', 'meda04@example.net', '04314896408', '2017-07-14 06:07:23', '2014-11-02 07:18:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Morgan', 'Feest', 'schuyler91@example.com', '373-447-9293x6147', '2019-06-11 16:48:21', '2011-05-31 02:17:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Maximillia', 'Nader', 'jeramie.stokes@example.com', '1-773-779-1695x5539', '2013-05-25 22:54:33', '2016-08-05 21:55:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Laisha', 'Zieme', 'huels.bettye@example.org', '1-853-921-7189x654', '2020-11-09 17:13:34', '2019-08-01 20:30:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Berenice', 'Hermann', 'streich.danielle@example.org', '906.033.7830x16414', '2011-09-08 15:04:34', '2012-04-13 16:31:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Sylvia', 'Wehner', 'christiana75@example.com', '047.521.9719x686', '2011-08-16 04:24:51', '2014-01-13 23:12:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Felicity', 'Kub', 'vidal20@example.net', '02095956551', '2016-12-25 20:28:14', '2020-12-01 11:59:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Lane', 'Schowalter', 'andrew.murray@example.com', '1-102-271-6330x44130', '2012-02-04 20:39:50', '2014-02-25 14:14:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Belle', 'Weimann', 'kgraham@example.org', '1-462-651-8639', '2013-07-01 09:44:55', '2016-08-14 19:42:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Elliott', 'Kuhn', 'lynch.candelario@example.org', '055-033-6724', '2013-03-13 07:51:40', '2018-11-04 07:56:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Arielle', 'Kuhlman', 'xgreenfelder@example.org', '277.431.1289', '2012-12-21 19:05:46', '2020-06-04 11:41:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Erin', 'Hand', 'macy45@example.net', '+28(0)6079348971', '2020-09-02 22:08:26', '2014-03-19 21:14:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Samir', 'Stark', 'hester59@example.org', '+67(3)4585348795', '2020-12-21 06:09:00', '2012-05-06 18:59:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Adolfo', 'Keebler', 'mann.bennie@example.org', '09314922087', '2020-12-31 00:26:02', '2020-10-25 02:11:09');


