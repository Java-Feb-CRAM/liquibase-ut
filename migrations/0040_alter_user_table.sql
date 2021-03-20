--liquibase formatted sql
--changeset craig:alter-user-table
ALTER TABLE `utopia`.`user` 
ADD COLUMN `is_active` TINYINT NOT NULL DEFAULT 0 AFTER `phone`;
 --rollback ALTER TABLE `utopia`.`user` DROP COLUMN `is_active`;