-- MySQL Script generated by MySQL Workbench
-- Thu Sep 29 13:57:13 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema memes
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema memes
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `memes` DEFAULT CHARACTER SET utf8 ;
USE `memes` ;

-- -----------------------------------------------------
-- Table `memes`.`categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `memes`.`categories` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `memes`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `memes`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `id_admin` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `memes`.`memes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `memes`.`memes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `file` VARCHAR(45) NULL,
  `title` VARCHAR(45) NULL,
  `likes` VARCHAR(45) NULL,
  `hash_tags` VARCHAR(45) NULL,
  `users_id` INT NOT NULL,
  `categories_id` INT NOT NULL,
  `admin_id` INT NOT NULL,
  `deleted_at` VARCHAR(45) NULL,
  `edited_at` VARCHAR(45) NULL,
  `created_at` VARCHAR(45) NULL,
  PRIMARY KEY (`id`, `users_id`, `categories_id`, `admin_id`),
  CONSTRAINT `fk_memes_users`
    FOREIGN KEY (`users_id`)
    REFERENCES `memes`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_memes_categories1`
    FOREIGN KEY (`categories_id`)
    REFERENCES `memes`.`categories` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_memes_users1`
    FOREIGN KEY (`admin_id`)
    REFERENCES `memes`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `memes`.`comments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `memes`.`comments` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `content` VARCHAR(45) NULL,
  `memes_id` INT NOT NULL,
  `users_id` INT NOT NULL,
  PRIMARY KEY (`id`, `memes_id`, `users_id`),
  CONSTRAINT `fk_comments_memes1`
    FOREIGN KEY (`memes_id`)
    REFERENCES `memes`.`memes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comments_users1`
    FOREIGN KEY (`users_id`)
    REFERENCES `memes`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
