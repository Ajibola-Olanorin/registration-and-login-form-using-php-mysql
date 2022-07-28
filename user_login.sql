CREATE DATABASE IF NOT EXISTS `user_login` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;

USE `user_login`;

CREATE  TABLE IF NOT EXISTS `user_login`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(40) NOT NULL,
  `lastname` VARCHAR(40) NOT NULL,
  `email` VARCHAR(40) NOT NULL,
  `username` VARCHAR(40) NOT NULL,
  `password` VARCHAR(32) NOT NULL,
  PRIMARY KEY (`id`) )

ENGINE = InnoDB;

INSERT INTO `users`(`firstname`,`lastname`,`email`,`username`,`password`) VALUES
('Ajibola','Olanorin','aolanorin@gmail.com','AOlanorin','pass101'),
('Joel','Adeniyi','jadeniyi@gmail.com','Jadeniyi','pass102'),
('Eromosele','Albert','ealbert@gmail.com','Ealbert','pass103'),
('Eremie','Gillowei','egillowei@gmail.com','Egillowei','pass104'),
('Kelvin', 'Pere','Kpere@gmail.com','Kpere','pass105');

CREATE USER 'login_user'@'localhost' IDENTIFIED BY 'password';
GRANT USAGE ON *.* TO 'login_user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON `user_login`.* TO 'login_user'@'localhost';