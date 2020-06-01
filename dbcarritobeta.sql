-- MySQL Script generated by MySQL Workbench
-- Sun May 31 23:58:17 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema doomshop
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `doomshop` ;

-- -----------------------------------------------------
-- Schema doomshop
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `doomshop` DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci ;
USE `doomshop` ;

-- -----------------------------------------------------
-- Table `doomshop1`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `doomshop`.`Usuario` (
  `id_cli` INT NOT NULL AUTO_INCREMENT,
  `Nombre_cli` VARCHAR(45) NOT NULL,
  `Appat_cli` VARCHAR(45) NOT NULL,
  `id direc_e` VARCHAR(45) NOT NULL,
  `usuario` VARCHAR(45) NOT NULL,
  `correo_cli` VARCHAR(45) NOT NULL,
  `codigo_targeta` VARCHAR(5) NOT NULL,
  `Password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_cli`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `doomshop1`.`Historial`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `doomshop`.`Historial` (
  `id_histo` INT NOT NULL,
  `id_cli` INT NOT NULL,
  `Fecha` DATE NOT NULL,
  PRIMARY KEY (`id_Histo`),
  CONSTRAINT `id_cli`
    FOREIGN KEY (id_cli)
    REFERENCES `doomshop`.`Usuario` (id_cli)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `doomshop1`.`Detalle_prod`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `doomshop`.`Detalle_prod` (
  `id_dp` INT NOT NULL AUTO_INCREMENT,
  `id_histo` INT NOT NULL,
  `precio_tot` DOUBLE NOT NULL,
  `id_cprod` INT NOT NULL,
  `Cantidad_cc` INT NOT NULL,
  PRIMARY KEY (`id_dp`),
  CONSTRAINT `id_histo`
    FOREIGN KEY (id_histo)
    REFERENCES `doomshop`.`Historial` (id_histo)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `doomshop1`.`Cproducto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `doomshop`.`Cproducto` (
  `id_cprod` INT NOT NULL AUTO_INCREMENT,
  `Nombre_prod` VARCHAR(45) NOT NULL,
  `caratula_img` VARCHAR(100) NOT NULL,
  `precio_prod` double NOT NULL,
  `stock` INT NOT NULL,
  PRIMARY KEY (`id_cprod`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `doomshop1`.`C_tipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `doomshop`.`C_tipo` (
  `id_tipo` INT NOT NULL AUTO_INCREMENT,
  `tipo_personaje` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_tipo`),
  CONSTRAINT `idtipo`
    FOREIGN KEY (idtipo)
    REFERENCES `doomshop`.`Personaje` (idtipo)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;