-- MySQL Script generated by MySQL Workbench
-- Mon May 16 21:51:07 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`patients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`patients` (
  `index` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NULL DEFAULT NULL,
  `MRN` VARCHAR(50) NULL DEFAULT NULL,
  `DOB` VARCHAR(50) NULL DEFAULT NULL,
  `age` VARCHAR(50) NULL DEFAULT NULL,
  `weight` VARCHAR(50) NULL DEFAULT NULL,
  `height` VARCHAR(50) NULL DEFAULT NULL,
  `gender` VARCHAR(50) NULL DEFAULT NULL,
  `race` VARCHAR(50) NULL DEFAULT NULL,
  `performance_status` VARCHAR(50) NULL DEFAULT NULL,
  `treatment_site` VARCHAR(50) NULL DEFAULT NULL,
  `T` VARCHAR(50) NULL DEFAULT NULL,
  `N` VARCHAR(50) NULL DEFAULT NULL,
  `M` VARCHAR(50) NULL DEFAULT NULL,
  `risk_group` VARCHAR(50) NULL DEFAULT NULL,
  `primary_site` VARCHAR(50) NULL DEFAULT NULL,
  `metastasis` VARCHAR(50) NULL DEFAULT NULL,
  `nodes_num` VARCHAR(50) NULL DEFAULT NULL,
  `staging_system` VARCHAR(50) NULL DEFAULT NULL,
  `histology` VARCHAR(50) NULL DEFAULT NULL,
  `margin` VARCHAR(50) NULL DEFAULT NULL,
  `PSA` VARCHAR(50) NULL DEFAULT NULL,
  `gleason` VARCHAR(50) NULL DEFAULT NULL,
  `recurrence` VARCHAR(50) NULL DEFAULT NULL,
  `volume_size` VARCHAR(50) NULL DEFAULT NULL,
  `dimension_size` VARCHAR(50) NULL DEFAULT NULL,
  `location` VARCHAR(50) NULL DEFAULT NULL,
  `clinical_risk` VARCHAR(50) NULL DEFAULT NULL,
  `treatment_intent` VARCHAR(50) NULL DEFAULT NULL,
  `retreat` VARCHAR(50) NULL DEFAULT NULL,
  `prior_RT` VARCHAR(50) NULL DEFAULT NULL,
  `surgery` VARCHAR(50) NULL DEFAULT NULL,
  `chemtherapy` VARCHAR(50) NULL DEFAULT NULL,
  `hormone` VARCHAR(50) NULL DEFAULT NULL,
  `immunotherapy` VARCHAR(50) NULL DEFAULT NULL,
  `ADT` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`index`))
ENGINE = InnoDB
AUTO_INCREMENT = 15
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`protocols`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`protocols` (
  `index` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL DEFAULT NULL,
  `description` VARCHAR(100) NULL DEFAULT NULL,
  `source` VARCHAR(100) NULL DEFAULT NULL,
  `PMID` VARCHAR(200) NULL DEFAULT NULL,
  `date` VARCHAR(30) NULL DEFAULT NULL,
  `study_size` VARCHAR(30) NULL DEFAULT NULL,
  `study_type` VARCHAR(200) NULL DEFAULT NULL,
  `analysis_type` VARCHAR(200) NULL DEFAULT NULL,
  `country` VARCHAR(200) NULL DEFAULT NULL,
  `DOI` VARCHAR(200) NULL DEFAULT NULL,
  `treatment_site` VARCHAR(100) NULL DEFAULT NULL,
  `T` VARCHAR(100) NULL DEFAULT NULL,
  `N` VARCHAR(100) NULL DEFAULT NULL,
  `M` VARCHAR(100) NULL DEFAULT NULL,
  `risk_group` VARCHAR(100) NULL DEFAULT NULL,
  `primary_site` VARCHAR(100) NULL DEFAULT NULL,
  `metastasis` VARCHAR(10) NULL DEFAULT NULL,
  `nodes_num` VARCHAR(50) NULL DEFAULT NULL,
  `staging_system` VARCHAR(100) NULL DEFAULT NULL,
  `histology` VARCHAR(100) NULL DEFAULT NULL,
  `margin` VARCHAR(50) NULL DEFAULT NULL,
  `PSA` VARCHAR(30) NULL DEFAULT NULL,
  `gleason` VARCHAR(30) NULL DEFAULT NULL,
  `recurrence` VARCHAR(10) NULL DEFAULT NULL,
  `volume_size` VARCHAR(100) NULL DEFAULT NULL,
  `dimension_size` VARCHAR(100) NULL DEFAULT NULL,
  `location` VARCHAR(50) NULL DEFAULT NULL,
  `clinical_risk` VARCHAR(100) NULL DEFAULT NULL,
  `performance_status` VARCHAR(50) NULL DEFAULT NULL,
  `age` VARCHAR(30) NULL DEFAULT NULL,
  `weight` VARCHAR(30) NULL DEFAULT NULL,
  `height` VARCHAR(30) NULL DEFAULT NULL,
  `gender_ratio` VARCHAR(20) NULL DEFAULT NULL,
  `race` VARCHAR(100) NULL DEFAULT NULL,
  `treatment_intent` VARCHAR(50) NULL DEFAULT NULL,
  `retreat` VARCHAR(20) NULL DEFAULT NULL,
  `prior_RT` VARCHAR(30) NULL DEFAULT NULL,
  `surgery` VARCHAR(50) NULL DEFAULT NULL,
  `chemtherapy` VARCHAR(30) NULL DEFAULT NULL,
  `hormone` VARCHAR(30) NULL DEFAULT NULL,
  `immunotherapy` VARCHAR(30) NULL DEFAULT NULL,
  `ADT` VARCHAR(100) NULL DEFAULT NULL,
  `Regimen_I` VARCHAR(200) NULL DEFAULT NULL,
  `RI_base_dose_fractions` VARCHAR(100) NULL DEFAULT NULL,
  `RI_boost_dose_modality` VARCHAR(100) NULL DEFAULT NULL,
  `RI_other_therapies` VARCHAR(100) NULL DEFAULT NULL,
  `RI_TCP_median_follow_up` VARCHAR(100) NULL DEFAULT NULL,
  `RI_local_control` VARCHAR(100) NULL DEFAULT NULL,
  `RI_overall_survival` VARCHAR(100) NULL DEFAULT NULL,
  `RI_PFS` VARCHAR(100) NULL DEFAULT NULL,
  `RI_bPFS` VARCHAR(100) NULL DEFAULT NULL,
  `RI_DFS` VARCHAR(100) NULL DEFAULT NULL,
  `RI_FFS` VARCHAR(100) NULL DEFAULT NULL,
  `RI_MFS` VARCHAR(100) NULL DEFAULT NULL,
  `RI_CSS` VARCHAR(100) NULL DEFAULT NULL,
  `RI_DMFS` VARCHAR(100) NULL DEFAULT NULL,
  `RI_BCR` VARCHAR(100) NULL DEFAULT NULL,
  `RI_NTCP_median_follow_up` VARCHAR(100) NULL DEFAULT NULL,
  `RI_toxicity_system` VARCHAR(100) NULL DEFAULT NULL,
  `RI_acute` VARCHAR(200) NULL DEFAULT NULL,
  `RI_G1` VARCHAR(200) NULL DEFAULT NULL,
  `RI_G2` VARCHAR(200) NULL DEFAULT NULL,
  `RI_G3` VARCHAR(200) NULL DEFAULT NULL,
  `RI_G4` VARCHAR(200) NULL DEFAULT NULL,
  `RI_G5` VARCHAR(200) NULL DEFAULT NULL,
  `Regimen_II` VARCHAR(200) NULL DEFAULT NULL,
  `RII_base_dose_fractions` VARCHAR(100) NULL DEFAULT NULL,
  `RII_boost_dose_modality` VARCHAR(100) NULL DEFAULT NULL,
  `RII_other_therapies` VARCHAR(100) NULL DEFAULT NULL,
  `RII_TCP_median_follow_up` VARCHAR(100) NULL DEFAULT NULL,
  `RII_local_control` VARCHAR(100) NULL DEFAULT NULL,
  `RII_overall_survival` VARCHAR(100) NULL DEFAULT NULL,
  `RII_PFS` VARCHAR(100) NULL DEFAULT NULL,
  `RII_bPFS` VARCHAR(100) NULL DEFAULT NULL,
  `RII_DFS` VARCHAR(100) NULL DEFAULT NULL,
  `RII_FFS` VARCHAR(100) NULL DEFAULT NULL,
  `RII_MFS` VARCHAR(100) NULL DEFAULT NULL,
  `RII_CSS` VARCHAR(100) NULL DEFAULT NULL,
  `RII_DMFS` VARCHAR(100) NULL DEFAULT NULL,
  `RII_NTCP_median_follow_up` VARCHAR(100) NULL DEFAULT NULL,
  `RII_toxicity_system` VARCHAR(100) NULL DEFAULT NULL,
  `RII_acute` VARCHAR(200) NULL DEFAULT NULL,
  `RII_G1` VARCHAR(200) NULL DEFAULT NULL,
  `RII_G2` VARCHAR(200) NULL DEFAULT NULL,
  `RII_G3` VARCHAR(200) NULL DEFAULT NULL,
  `RII_G4` VARCHAR(200) NULL DEFAULT NULL,
  `RII_G5` VARCHAR(200) NULL DEFAULT NULL,
  `modality` VARCHAR(100) NULL DEFAULT NULL,
  `planning` VARCHAR(100) NULL DEFAULT NULL,
  `delivery` VARCHAR(100) NULL DEFAULT NULL,
  `imaging` VARCHAR(100) NULL DEFAULT NULL,
  `setup` VARCHAR(100) NULL DEFAULT NULL,
  `key_conclusion` VARCHAR(500) NULL DEFAULT NULL,
  `target_dose_constraints` VARCHAR(500) NULL DEFAULT NULL,
  `OAR_constraints` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`index`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`Group`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Group` (
  `Id` INT NOT NULL,
  `GroupName` VARCHAR(45) NULL,
  `GroupDetail` VARCHAR(45) NULL,
  `GroupStatus` VARCHAR(45) NULL,
  `CreateDateTime` DATETIME NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Users` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `UserName` VARCHAR(45) NULL,
  `Password` VARCHAR(45) NULL,
  `Last Name` VARCHAR(45) NULL,
  `First Name` VARCHAR(45) NULL,
  `Institution` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  `Type` VARCHAR(45) NULL COMMENT 'User type, Free of charge 0, Membership Basic 1, Prime 2 ',
  `Group_Id` INT NULL,
  PRIMARY KEY (`Id`),
  INDEX `fk_Users_Group1_idx` (`Group_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Users_Group1`
    FOREIGN KEY (`Group_Id`)
    REFERENCES `mydb`.`Group` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`UseLog`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`UseLog` (
  `Id` INT NOT NULL,
  `Users_Id` INT NOT NULL,
  `LoginDateTime` DATETIME NULL,
  PRIMARY KEY (`Id`),
  INDEX `fk_UseLog_Users_idx` (`Users_Id` ASC) VISIBLE,
  CONSTRAINT `fk_UseLog_Users`
    FOREIGN KEY (`Users_Id`)
    REFERENCES `mydb`.`Users` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Permission`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Permission` (
  `Id` INT NOT NULL,
  `Protocols_View` VARCHAR(45) NULL,
  `Protocols_Enter` VARCHAR(45) NULL,
  `Protocols_Edit` VARCHAR(45) NULL,
  `Protocols_Delete` VARCHAR(45) NULL,
  `Protocols_Share` VARCHAR(45) NULL,
  `Protocols_Search` VARCHAR(45) NULL,
  `Protocols_Publish` VARCHAR(45) NULL,
  `Protocols_Analytics` VARCHAR(45) NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Membership`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Membership` (
  `Id` INT NOT NULL,
  `Basic` VARCHAR(45) NULL,
  `Advanced` VARCHAR(45) NULL,
  `Users_Id` INT NOT NULL,
  `Permission_Id` INT NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `fk_Membership_Users1_idx` (`Users_Id` ASC) VISIBLE,
  INDEX `fk_Membership_Permission1_idx` (`Permission_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Membership_Users1`
    FOREIGN KEY (`Users_Id`)
    REFERENCES `mydb`.`Users` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Membership_Permission1`
    FOREIGN KEY (`Permission_Id`)
    REFERENCES `mydb`.`Permission` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
