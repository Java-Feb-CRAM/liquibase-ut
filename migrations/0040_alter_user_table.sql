--liquibase formatted sql
--changeset craig:alter-user-table
ALTER TABLE `utopia`.`user` ADD COLUMN `active` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 AFTER `phone`;
 --rollback ALTER TABLE `utopia`.`user` DROP COLUMN `active`;