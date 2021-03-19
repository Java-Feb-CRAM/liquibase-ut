--liquibase formatted sql
--changeset craig:insert-sample-data
START TRANSACTION;
USE `utopia`;
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('JFK', 'New York');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('PDX', 'Portland');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('AAA', 'Anaa');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('AAB', 'Arrabury');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('AAC', 'El Arish');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('AAD', 'Adado');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('AAE', 'Annaba');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('AAF', 'Apalachicola');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('AAG', 'Arapoti');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('AAH', 'Aachen');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('AAI', 'Arraias');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('BAA', 'Bialla');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('BAB', 'Marysville');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('CAA', 'Catacamas');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('CAB', 'Cabinda');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('DAA', 'Fort Belvoir');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('DAB', 'Daytona Beach');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('EAA', 'Eagle');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('EAB', 'Abbs');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('FAA', 'Faranah');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('FAB', 'Farnborough');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('GAA', 'Guamal');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('GAB', 'Gabbs');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('HAA', 'Hasvik');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('HAB', 'Hamilton');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('IAA', 'Igarka');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('IAB', 'Wichita');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('JAA', 'Jalalabad');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('JAB', 'Jabiru');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('KAA', 'Kasama');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('KAB', 'Kariba');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('LAA', 'Lamar');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('LAB', 'Lab Lab');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('MAA', 'Chennai');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('MAB', 'Marabá');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('NAA', 'Narrabri');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('NAC', 'Narcoorte');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('OAA', 'Gardez');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('OAG', 'Orange');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('PAA', 'Hpa-An');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('PAB', 'Bilaspur');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('QAQ', 'L\'Aquila');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('QBC', 'Bella Coola');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('RAA', 'Rakanda');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('RAB', 'Rabaul');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('SAA', 'Saratoga');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('SAB', 'Saba');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('TAA', 'Tarapaina');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('TAB', 'Tobago');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('UAB', 'Adana');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('UAC', 'San Luis Río Colorado');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('VAA', 'Vaasa');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('VAB', 'Yavarate');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('WAA', 'Wales');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('WAC', 'Wacca');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('XAI', 'Xinyang');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('XAL', 'Álamos');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('YAA', 'Anahim Lake');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('YAB', 'Arctic Bay');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('ZAA', 'Alice Arm');
INSERT INTO `utopia`.`airport` (`iata_id`, `city`) VALUES ('ZAC', 'York Landing');

COMMIT;


-- -----------------------------------------------------
-- Data for table `utopia`.`route`
-- -----------------------------------------------------
START TRANSACTION;
USE `utopia`;
INSERT INTO `utopia`.`route` (`id`, `origin_id`, `destination_id`) VALUES (1, 'JFK', 'PDX');
INSERT INTO `utopia`.`route` (`id`, `origin_id`, `destination_id`) VALUES (2, 'PDX', 'JFK');

COMMIT;


-- -----------------------------------------------------
-- Data for table `utopia`.`airplane_type`
-- -----------------------------------------------------
START TRANSACTION;
USE `utopia`;
INSERT INTO `utopia`.`airplane_type` (`id`, `max_capacity`) VALUES (1, 150);
INSERT INTO `utopia`.`airplane_type` (`id`, `max_capacity`) VALUES (2, 300);

COMMIT;


-- -----------------------------------------------------
-- Data for table `utopia`.`airplane`
-- -----------------------------------------------------
START TRANSACTION;
USE `utopia`;
INSERT INTO `utopia`.`airplane` (`id`, `type_id`) VALUES (1, 1);
INSERT INTO `utopia`.`airplane` (`id`, `type_id`) VALUES (2, 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `utopia`.`flight`
-- -----------------------------------------------------
START TRANSACTION;
USE `utopia`;
INSERT INTO `utopia`.`flight` (`id`, `route_id`, `airplane_id`, `departure_time`, `reserved_seats`, `seat_price`) VALUES (1, 1, 1, '2021-01-28 12:00:00', 30, 100.00);
INSERT INTO `utopia`.`flight` (`id`, `route_id`, `airplane_id`, `departure_time`, `reserved_seats`, `seat_price`) VALUES (2, 2, 1, '2021-01-28 12:00:00', 30, 100.00);

COMMIT;


-- -----------------------------------------------------
-- Data for table `utopia`.`booking`
-- -----------------------------------------------------
START TRANSACTION;
USE `utopia`;
INSERT INTO `utopia`.`booking` (`id`, `is_active`, `confirmation_code`) VALUES (1, 1, '123456');
INSERT INTO `utopia`.`booking` (`id`, `is_active`, `confirmation_code`) VALUES (2, 1, '234567');
INSERT INTO `utopia`.`booking` (`id`, `is_active`, `confirmation_code`) VALUES (3, 1, '345678');
INSERT INTO `utopia`.`booking` (`id`, `is_active`, `confirmation_code`) VALUES (4, 0, '456789');
INSERT INTO `utopia`.`booking` (`id`, `is_active`, `confirmation_code`) VALUES (5, 1, '567890');

COMMIT;


-- -----------------------------------------------------
-- Data for table `utopia`.`user_role`
-- -----------------------------------------------------
START TRANSACTION;
USE `utopia`;
INSERT INTO `utopia`.`user_role` (`name`) VALUES ('ROLE_ADMIN');
INSERT INTO `utopia`.`user_role` (`name`) VALUES ('ROLE_USER');
INSERT INTO `utopia`.`user_role` (`name`) VALUES ('ROLE_AGENT');

COMMIT;


-- -----------------------------------------------------
-- Data for table `utopia`.`user`
-- -----------------------------------------------------
START TRANSACTION;
USE `utopia`;
INSERT INTO `utopia`.`user` (`id`, `role_id`, `given_name`, `family_name`, `username`, `email`, `password`, `phone`) VALUES (1, 1, 'given1', 'family1', 'user1', 'user1@test.test', '$2b$10$canjw1GZw63fBLUCpgDh2eFLxlseC6Rk9tBgbFPpla4SCS7IcaMu6', '12223334444');
INSERT INTO `utopia`.`user` (`id`, `role_id`, `given_name`, `family_name`, `username`, `email`, `password`, `phone`) VALUES (2, 2, 'given2', 'family2', 'user2', 'user2@test.test', '$2b$10$ZjRvQ7GnNHEaBRpNZxAnRuHhUqcJ4Rphq2wltOD9N2hXKddYJBoIK', '23334445555');
INSERT INTO `utopia`.`user` (`id`, `role_id`, `given_name`, `family_name`, `username`, `email`, `password`, `phone`) VALUES (3, 2, 'given3', 'family3', 'user3', 'user3@test.test', '$2b$10$pwEp.EGA9NdOb1Q7pjq2qe3C55uFGondZmmSEEU9G3CaLILZRNDOC', '34445556666');
INSERT INTO `utopia`.`user` (`id`, `role_id`, `given_name`, `family_name`, `username`, `email`, `password`, `phone`) VALUES (4, 2, 'given4', 'family4', 'user4', 'user4@test.test', '$2b$10$pKOhkeAlum7VaB9/4kesbONjiYMdM/8igLTLlRgTJ/joFGN0imptC', '45556667777');
INSERT INTO `utopia`.`user` (`id`, `role_id`, `given_name`, `family_name`, `username`, `email`, `password`, `phone`) VALUES (5, 3, 'given5', 'family5', 'user5', 'user5@test.test', '$2b$10$hmZBExxU3.H2m.kVyf21WOm7YvA6W8XemHa7/MdEtoR09ZtqdqitK', '56667778888');
INSERT INTO `utopia`.`user` (`id`, `role_id`, `given_name`, `family_name`, `username`, `email`, `password`, `phone`) VALUES (6, 2, 'given6', 'family6', 'user6', 'user6@test.test', '$2a$11$OFJttcoJOuobBnH67CVji.A//xzw108cHRfUeDmLvQPyk/kz70ULy', '56660989888');
INSERT INTO `utopia`.`user` (`id`, `role_id`, `given_name`, `family_name`, `username`, `email`, `password`, `phone`) VALUES (7, 1, 'given7', 'family7', 'user7', 'user7@test.test', '$2a$11$OFJttcoJOuobBnH67CVji.A//xzw108cHRfUeDmLvQPyk/kz70ULy', '56760989888');

COMMIT;


-- -----------------------------------------------------
-- Data for table `utopia`.`passenger`
-- -----------------------------------------------------
START TRANSACTION;
USE `utopia`;
INSERT INTO `utopia`.`passenger` (`id`, `booking_id`, `given_name`, `family_name`, `dob`, `gender`, `address`) VALUES (1, 1, 'given1', 'family1', '2000/01/01', 'M', 'null island');
INSERT INTO `utopia`.`passenger` (`id`, `booking_id`, `given_name`, `family_name`, `dob`, `gender`, `address`) VALUES (2, 1, 'given2', 'family2', '2000/01/01', 'M', 'null island');
INSERT INTO `utopia`.`passenger` (`id`, `booking_id`, `given_name`, `family_name`, `dob`, `gender`, `address`) VALUES (3, 2, 'given3', 'family3', '2000/01/01', 'M', 'null island');
INSERT INTO `utopia`.`passenger` (`id`, `booking_id`, `given_name`, `family_name`, `dob`, `gender`, `address`) VALUES (4, 3, 'given4', 'family4', '2000/01/01', 'M', 'null island');
INSERT INTO `utopia`.`passenger` (`id`, `booking_id`, `given_name`, `family_name`, `dob`, `gender`, `address`) VALUES (5, 3, 'given5', 'family5', '2000/01/01', 'M', 'null island');
INSERT INTO `utopia`.`passenger` (`id`, `booking_id`, `given_name`, `family_name`, `dob`, `gender`, `address`) VALUES (6, 5, 'given6', 'family6', '2000/01/01', 'M', 'null island');
INSERT INTO `utopia`.`passenger` (`id`, `booking_id`, `given_name`, `family_name`, `dob`, `gender`, `address`) VALUES (7, 5, 'given7', 'family7', '2000/01/01', 'M', 'null island');
INSERT INTO `utopia`.`passenger` (`id`, `booking_id`, `given_name`, `family_name`, `dob`, `gender`, `address`) VALUES (8, 5, 'given8', 'family8', '2000/01/01', 'M', 'null island');

COMMIT;


-- -----------------------------------------------------
-- Data for table `utopia`.`flight_bookings`
-- -----------------------------------------------------
START TRANSACTION;
USE `utopia`;
INSERT INTO `utopia`.`flight_bookings` (`flight_id`, `booking_id`) VALUES (1, 1);
INSERT INTO `utopia`.`flight_bookings` (`flight_id`, `booking_id`) VALUES (1, 2);
INSERT INTO `utopia`.`flight_bookings` (`flight_id`, `booking_id`) VALUES (2, 3);
INSERT INTO `utopia`.`flight_bookings` (`flight_id`, `booking_id`) VALUES (2, 5);

COMMIT;


-- -----------------------------------------------------
-- Data for table `utopia`.`booking_user`
-- -----------------------------------------------------
START TRANSACTION;
USE `utopia`;
INSERT INTO `utopia`.`booking_user` (`booking_id`, `user_id`) VALUES (1, 2);
INSERT INTO `utopia`.`booking_user` (`booking_id`, `user_id`) VALUES (2, 3);
INSERT INTO `utopia`.`booking_user` (`booking_id`, `user_id`) VALUES (3, 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `utopia`.`booking_guest`
-- -----------------------------------------------------
START TRANSACTION;
USE `utopia`;
INSERT INTO `utopia`.`booking_guest` (`booking_id`, `contact_email`, `contact_phone`) VALUES (5, 'guest1@test.test', '12223334444');

COMMIT;


-- -----------------------------------------------------
-- Data for table `utopia`.`booking_agent`
-- -----------------------------------------------------
START TRANSACTION;
USE `utopia`;
INSERT INTO `utopia`.`booking_agent` (`booking_id`, `agent_id`) VALUES (2, 5);

COMMIT;
--rollback SET FOREIGN_KEY_CHECKS = 0; 
--rollback TRUNCATE TABLE utopia.flight_bookings;
--rollback TRUNCATE TABLE utopia.booking;
--rollback TRUNCATE TABLE utopia.user;
--rollback TRUNCATE TABLE utopia.user_role;
--rollback TRUNCATE TABLE utopia.booking_agent;
--rollback TRUNCATE TABLE utopia.booking_user;
--rollback TRUNCATE TABLE utopia.booking_guest;
--rollback TRUNCATE TABLE utopia.flight;
--rollback TRUNCATE TABLE utopia.route;
--rollback TRUNCATE TABLE utopia.airplane;
--rollback TRUNCATE TABLE utopia.airplane_type;
--rollback TRUNCATE TABLE utopia.passenger;
--rollback TRUNCATE TABLE utopia.airport;
--rollback SET FOREIGN_KEY_CHECKS = 1; 