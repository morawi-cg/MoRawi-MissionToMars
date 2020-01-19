#!/bin/bash
mysql -u root -p
CREATE DATABASE `todoapp`;
CREATE USER 'guest' IDENTIFIED BY 'Guest0000!';
GRANT USAGE ON `todoapp`.* TO 'guest'@localhost IDENTIFIED BY 'Guest0000!';
GRANT ALL privileges ON `todoapp`.* TO 'guest'@localhost;
FLUSH PRIVILEGES;
