
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `avaliacao` (
  `id` int(11) NOT NULL,
  `qnt_estrela` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `avaliacao` (`id`, `qnt_estrela`, `created`, `modified`) VALUES
(1, 3, '2017-08-28 22:35:17', NULL),
(2, 5, '2017-08-28 22:35:35', NULL);

ALTER TABLE `avaliacao`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `avaliacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
