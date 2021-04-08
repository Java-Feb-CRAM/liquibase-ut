--liquibase formatted sql
--changeset rob:alter-flight-table
SET FOREIGN_KEY_CHECKS = 0;
ALTER TABLE `flight` CHANGE `id` `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT;
SET FOREIGN_KEY_CHECKS = 1;
--rollback SET FOREIGN_KEY_CHECKS = 0;
--rollback ALTER TABLE `flight` CHANGE `id` `id` INT(10) UNSIGNED NOT NULL;
--rollback SET FOREIGN_KEY_CHECKS = 1;