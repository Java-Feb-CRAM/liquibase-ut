--liquibase formatted sql
--changeset craig:create-verification-token-table
CREATE TABLE `verification_token` (
   `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
   `user_id` INT UNSIGNED NOT NULL,
   `token` VARCHAR(64) NULL,
   `expiry_date` DATE NULL,
   PRIMARY KEY (`id`),
   UNIQUE INDEX `id_UNIQUE` (`id` ASC),
   INDEX `fk_verification_user_id_idx` (`user_id` ASC),
   CONSTRAINT `fk_verification_user_id`
     FOREIGN KEY (`user_id`)
     REFERENCES `utopia`.`user` (`id`)
     ON DELETE NO ACTION
     ON UPDATE NO ACTION)
 ENGINE = InnoDB;
 --rollback DROP TABLE verification_token