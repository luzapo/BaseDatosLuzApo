-- MySQL Script generated by MySQL Workbench
-- Wed Aug 30 21:01:24 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema artesanal
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema artesanal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `artesanal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `artesanal` ;

-- -----------------------------------------------------
-- Table `artesanal`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `artesanal`.`categorias` (
  `id_categoria` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) NOT NULL,
  `detalle` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id_categoria`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `artesanal`.`cervezas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `artesanal`.`cervezas` (
  `id_cerveza` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) NOT NULL,
  `detalle` VARCHAR(255) NOT NULL,
  `id_categoria` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_cerveza`),
  INDEX `id_categoria` (`id_categoria` ASC) VISIBLE,
  CONSTRAINT `cervezas_ibfk_1`
    FOREIGN KEY (`id_categoria`)
    REFERENCES `artesanal`.`categorias` (`id_categoria`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `artesanal`.`matprima`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `artesanal`.`matprima` (
  `id_materiap` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) NOT NULL,
  `detalle` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id_materiap`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `artesanal`.`cervezas_matprima`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `artesanal`.`cervezas_matprima` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_cerveza` INT NOT NULL,
  `id_materiap` INT NOT NULL,
  `unidad` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_cerveza` (`id_cerveza` ASC) VISIBLE,
  INDEX `id_materiap` (`id_materiap` ASC) VISIBLE,
  CONSTRAINT `cervezas_matprima_ibfk_1`
    FOREIGN KEY (`id_cerveza`)
    REFERENCES `artesanal`.`cervezas` (`id_cerveza`),
  CONSTRAINT `cervezas_matprima_ibfk_2`
    FOREIGN KEY (`id_materiap`)
    REFERENCES `artesanal`.`matprima` (`id_materiap`))
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `artesanal`.`tipos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `artesanal`.`tipos` (
  `id_tipo` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id_tipo`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `artesanal`.`tipos_categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `artesanal`.`tipos_categorias` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_tipo` INT NOT NULL,
  `id_categoria` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `id_tipo` (`id_tipo` ASC) VISIBLE,
  INDEX `id_categoria` (`id_categoria` ASC) VISIBLE,
  CONSTRAINT `tipos_categorias_ibfk_1`
    FOREIGN KEY (`id_tipo`)
    REFERENCES `artesanal`.`tipos` (`id_tipo`),
  CONSTRAINT `tipos_categorias_ibfk_2`
    FOREIGN KEY (`id_categoria`)
    REFERENCES `artesanal`.`categorias` (`id_categoria`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;