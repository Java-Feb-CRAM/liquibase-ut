-- liquibase formatted sql

-- changeset robmaes:1616115086574-1
CREATE TABLE airplane (id INT UNSIGNED AUTO_INCREMENT NOT NULL, type_id INT UNSIGNED NOT NULL, CONSTRAINT PK_AIRPLANE PRIMARY KEY (id));

-- changeset robmaes:1616115086574-2
CREATE TABLE airplane_type (id INT UNSIGNED AUTO_INCREMENT NOT NULL, max_capacity INT UNSIGNED NOT NULL, CONSTRAINT PK_AIRPLANE_TYPE PRIMARY KEY (id), UNIQUE (id));

-- changeset robmaes:1616115086574-3
CREATE TABLE airport (iata_id CHAR(3) NOT NULL, city VARCHAR(45) NOT NULL, CONSTRAINT PK_AIRPORT PRIMARY KEY (iata_id), UNIQUE (iata_id));

-- changeset robmaes:1616115086574-4
CREATE TABLE booking (id INT UNSIGNED AUTO_INCREMENT NOT NULL, is_active TINYINT(3) DEFAULT 1 NOT NULL, confirmation_code VARCHAR(255) NOT NULL, CONSTRAINT PK_BOOKING PRIMARY KEY (id));

-- changeset robmaes:1616115086574-5
CREATE TABLE booking_agent (booking_id INT UNSIGNED NOT NULL, agent_id INT UNSIGNED NOT NULL, CONSTRAINT PK_BOOKING_AGENT PRIMARY KEY (booking_id));

-- changeset robmaes:1616115086574-6
CREATE TABLE booking_guest (booking_id INT UNSIGNED NOT NULL, contact_email VARCHAR(255) NOT NULL, contact_phone VARCHAR(45) NOT NULL, CONSTRAINT PK_BOOKING_GUEST PRIMARY KEY (booking_id));

-- changeset robmaes:1616115086574-7
CREATE TABLE booking_payment (booking_id INT UNSIGNED NOT NULL, stripe_id VARCHAR(255) NOT NULL, refunded TINYINT(3) DEFAULT 0 NOT NULL, CONSTRAINT PK_BOOKING_PAYMENT PRIMARY KEY (booking_id));

-- changeset robmaes:1616115086574-8
CREATE TABLE booking_user (booking_id INT UNSIGNED NOT NULL, user_id INT UNSIGNED NOT NULL, CONSTRAINT PK_BOOKING_USER PRIMARY KEY (booking_id));

-- changeset robmaes:1616115086574-9
CREATE TABLE flight (id INT UNSIGNED NOT NULL, route_id INT UNSIGNED NOT NULL, airplane_id INT UNSIGNED NOT NULL, departure_time datetime NOT NULL, reserved_seats INT UNSIGNED NOT NULL, seat_price FLOAT(12) NOT NULL, CONSTRAINT PK_FLIGHT PRIMARY KEY (id));

-- changeset robmaes:1616115086574-10
CREATE TABLE flight_bookings (flight_id INT UNSIGNED NOT NULL, booking_id INT UNSIGNED NOT NULL);

-- changeset robmaes:1616115086574-11
CREATE TABLE passenger (id INT UNSIGNED AUTO_INCREMENT NOT NULL, booking_id INT UNSIGNED NOT NULL, given_name VARCHAR(255) NOT NULL, family_name VARCHAR(255) NOT NULL, dob date NOT NULL, gender VARCHAR(45) NOT NULL, address VARCHAR(45) NOT NULL, CONSTRAINT PK_PASSENGER PRIMARY KEY (id));

-- changeset robmaes:1616115086574-12
CREATE TABLE route (id INT UNSIGNED AUTO_INCREMENT NOT NULL, origin_id CHAR(3) NOT NULL, destination_id CHAR(3) NOT NULL, CONSTRAINT PK_ROUTE PRIMARY KEY (id, origin_id, destination_id), UNIQUE (id));

-- changeset robmaes:1616115086574-13
CREATE TABLE user (id INT UNSIGNED AUTO_INCREMENT NOT NULL, role_id INT UNSIGNED NOT NULL, given_name VARCHAR(255) NOT NULL, family_name VARCHAR(255) NOT NULL, username VARCHAR(45) NOT NULL, email VARCHAR(255) NOT NULL, password VARCHAR(255) NOT NULL, phone VARCHAR(45) NOT NULL, CONSTRAINT PK_USER PRIMARY KEY (id), UNIQUE (username), UNIQUE (email), UNIQUE (phone));

-- changeset robmaes:1616115086574-14
CREATE TABLE user_role (id INT UNSIGNED AUTO_INCREMENT NOT NULL, name VARCHAR(45) NOT NULL, CONSTRAINT PK_USER_ROLE PRIMARY KEY (id), UNIQUE (name));

-- changeset robmaes:1616115086574-15
ALTER TABLE flight_bookings ADD PRIMARY KEY (booking_id, flight_id);

-- changeset robmaes:1616115086574-16
ALTER TABLE booking_agent ADD CONSTRAINT booking_id_UNIQUE UNIQUE (booking_id);

-- changeset robmaes:1616115086574-17
ALTER TABLE booking_guest ADD CONSTRAINT booking_id_UNIQUE UNIQUE (booking_id);

-- changeset robmaes:1616115086574-18
ALTER TABLE booking_payment ADD CONSTRAINT booking_id_UNIQUE UNIQUE (booking_id);

-- changeset robmaes:1616115086574-19
ALTER TABLE booking_user ADD CONSTRAINT booking_id_UNIQUE UNIQUE (booking_id);

-- changeset robmaes:1616115086574-20
ALTER TABLE airplane ADD CONSTRAINT id_UNIQUE UNIQUE (id);

-- changeset robmaes:1616115086574-21
ALTER TABLE booking ADD CONSTRAINT id_UNIQUE UNIQUE (id);

-- changeset robmaes:1616115086574-22
ALTER TABLE flight ADD CONSTRAINT id_UNIQUE UNIQUE (id);

-- changeset robmaes:1616115086574-23
ALTER TABLE passenger ADD CONSTRAINT id_UNIQUE UNIQUE (id);

-- changeset robmaes:1616115086574-24
ALTER TABLE user ADD CONSTRAINT id_UNIQUE UNIQUE (id);

-- changeset robmaes:1616115086574-25
ALTER TABLE user_role ADD CONSTRAINT id_UNIQUE UNIQUE (id);

-- changeset robmaes:1616115086574-26
ALTER TABLE route ADD CONSTRAINT unique_route UNIQUE (origin_id, destination_id);

-- changeset robmaes:1616115086574-27
CREATE INDEX fk_airplane_airplane_model1_idx ON airplane(type_id);

-- changeset robmaes:1616115086574-28
CREATE INDEX fk_booking_booker_user1_idx ON booking_agent(agent_id);

-- changeset robmaes:1616115086574-29
CREATE INDEX fk_flight_airplane1_idx ON flight(airplane_id);

-- changeset robmaes:1616115086574-30
CREATE INDEX fk_flight_bookings_booking ON flight_bookings(booking_id);

-- changeset robmaes:1616115086574-31
CREATE INDEX fk_flight_bookings_flight ON flight_bookings(flight_id);

-- changeset robmaes:1616115086574-32
CREATE INDEX fk_route_airport1_idx ON route(origin_id);

-- changeset robmaes:1616115086574-33
CREATE INDEX fk_route_airport2_idx ON route(destination_id);

-- changeset robmaes:1616115086574-34
CREATE INDEX fk_tbl_flight_tbl_route1_idx ON flight(route_id);

-- changeset robmaes:1616115086574-35
CREATE INDEX fk_traveler_booking1_idx ON passenger(booking_id);

-- changeset robmaes:1616115086574-36
CREATE INDEX fk_user_bookings_user1_idx ON booking_user(user_id);

-- changeset robmaes:1616115086574-37
CREATE INDEX fk_user_user_role1_idx ON user(role_id);

-- changeset robmaes:1616115086574-38
ALTER TABLE airplane ADD CONSTRAINT fk_airplane_airplane_model1 FOREIGN KEY (type_id) REFERENCES airplane_type (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset robmaes:1616115086574-39
ALTER TABLE booking_agent ADD CONSTRAINT fk_booking_booker_booking1 FOREIGN KEY (booking_id) REFERENCES booking (id) ON UPDATE CASCADE ON DELETE CASCADE;

-- changeset robmaes:1616115086574-40
ALTER TABLE booking_agent ADD CONSTRAINT fk_booking_booker_user1 FOREIGN KEY (agent_id) REFERENCES user (id) ON UPDATE CASCADE ON DELETE CASCADE;

-- changeset robmaes:1616115086574-41
ALTER TABLE booking_guest ADD CONSTRAINT fk_booking_guest_booking1 FOREIGN KEY (booking_id) REFERENCES booking (id) ON UPDATE CASCADE ON DELETE CASCADE;

-- changeset robmaes:1616115086574-42
ALTER TABLE booking_payment ADD CONSTRAINT fk_booking_payment_booking1 FOREIGN KEY (booking_id) REFERENCES booking (id) ON UPDATE CASCADE ON DELETE CASCADE;

-- changeset robmaes:1616115086574-43
ALTER TABLE flight ADD CONSTRAINT fk_flight_airplane1 FOREIGN KEY (airplane_id) REFERENCES airplane (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset robmaes:1616115086574-44
ALTER TABLE flight_bookings ADD CONSTRAINT fk_flight_bookings_booking FOREIGN KEY (booking_id) REFERENCES booking (id) ON UPDATE CASCADE ON DELETE CASCADE;

-- changeset robmaes:1616115086574-45
ALTER TABLE flight_bookings ADD CONSTRAINT fk_flight_bookings_flight FOREIGN KEY (flight_id) REFERENCES flight (id) ON UPDATE CASCADE ON DELETE CASCADE;

-- changeset robmaes:1616115086574-46
ALTER TABLE route ADD CONSTRAINT fk_route_airport1 FOREIGN KEY (origin_id) REFERENCES airport (iata_id) ON UPDATE CASCADE ON DELETE CASCADE;

-- changeset robmaes:1616115086574-47
ALTER TABLE route ADD CONSTRAINT fk_route_airport2 FOREIGN KEY (destination_id) REFERENCES airport (iata_id) ON UPDATE CASCADE ON DELETE CASCADE;

-- changeset robmaes:1616115086574-48
ALTER TABLE flight ADD CONSTRAINT fk_tbl_flight_tbl_route1 FOREIGN KEY (route_id) REFERENCES route (id) ON UPDATE CASCADE ON DELETE CASCADE;

-- changeset robmaes:1616115086574-49
ALTER TABLE passenger ADD CONSTRAINT fk_traveler_booking1 FOREIGN KEY (booking_id) REFERENCES booking (id) ON UPDATE CASCADE ON DELETE CASCADE;

-- changeset robmaes:1616115086574-50
ALTER TABLE booking_user ADD CONSTRAINT fk_user_bookings_booking1 FOREIGN KEY (booking_id) REFERENCES booking (id) ON UPDATE CASCADE ON DELETE CASCADE;

-- changeset robmaes:1616115086574-51
ALTER TABLE booking_user ADD CONSTRAINT fk_user_bookings_user1 FOREIGN KEY (user_id) REFERENCES user (id) ON UPDATE CASCADE ON DELETE CASCADE;

-- changeset robmaes:1616115086574-52
ALTER TABLE user ADD CONSTRAINT fk_user_user_role1 FOREIGN KEY (role_id) REFERENCES user_role (id) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset robmaes:1616115086574-53
CREATE VIEW flight_passengers AS select `utopia`.`flight_bookings`.`flight_id` AS `flight_id`,`utopia`.`flight_bookings`.`booking_id` AS `booking_id`,`utopia`.`passenger`.`id` AS `passenger_id` from ((`utopia`.`flight_bookings` join `utopia`.`passenger` on((`utopia`.`flight_bookings`.`booking_id` = `utopia`.`passenger`.`booking_id`))) join `utopia`.`booking` on((`utopia`.`flight_bookings`.`booking_id` = `utopia`.`booking`.`id`))) where (`utopia`.`booking`.`is_active` = TRUE);

-- changeset robmaes:1616115086574-54
CREATE VIEW flight_status AS select `utopia`.`flight`.`id` AS `id`,`utopia`.`flight`.`route_id` AS `route_id`,`utopia`.`flight`.`airplane_id` AS `airplane_id`,`utopia`.`flight`.`departure_time` AS `departure_time`,`utopia`.`flight`.`reserved_seats` AS `reserved_seats`,`utopia`.`flight`.`seat_price` AS `seat_price`,`airplane_capacity`.`max_capacity` AS `max_capacity`,`flight_passenger_count`.`passenger_count` AS `passenger_count`,((`airplane_capacity`.`max_capacity` - `utopia`.`flight`.`reserved_seats`) - `flight_passenger_count`.`passenger_count`) AS `available_seats` from ((`utopia`.`flight` join (select `utopia`.`airplane`.`id` AS `id`,`utopia`.`airplane_type`.`max_capacity` AS `max_capacity` from (`utopia`.`airplane` join `utopia`.`airplane_type` on((`utopia`.`airplane`.`type_id` = `utopia`.`airplane_type`.`id`)))) `airplane_capacity` on((`utopia`.`flight`.`airplane_id` = `airplane_capacity`.`id`))) join (select `utopia`.`flight_passengers`.`flight_id` AS `flight_id`,count(0) AS `passenger_count` from `utopia`.`flight_passengers` group by `utopia`.`flight_passengers`.`flight_id`) `flight_passenger_count` on((`utopia`.`flight`.`id` = `flight_passenger_count`.`flight_id`)));

-- changeset robmaes:1616115086574-55
CREATE VIEW guest_booking AS select `utopia`.`booking`.`id` AS `id`,`utopia`.`booking`.`is_active` AS `is_active`,`utopia`.`booking`.`confirmation_code` AS `confirmation_code`,`utopia`.`booking_guest`.`contact_email` AS `contact_email`,`utopia`.`booking_guest`.`contact_phone` AS `contact_phone`,`utopia`.`booking_agent`.`agent_id` AS `agent_id` from ((`utopia`.`booking` join `utopia`.`booking_guest` on((`utopia`.`booking`.`id` = `utopia`.`booking_guest`.`booking_id`))) left join `utopia`.`booking_agent` on((`utopia`.`booking`.`id` = `utopia`.`booking_agent`.`booking_id`)));

-- changeset robmaes:1616115086574-56
CREATE VIEW user_booking AS select `utopia`.`booking`.`id` AS `id`,`utopia`.`booking`.`is_active` AS `is_active`,`utopia`.`booking`.`confirmation_code` AS `confirmation_code`,`utopia`.`booking_user`.`user_id` AS `user_id`,`utopia`.`booking_agent`.`agent_id` AS `agent_id` from ((`utopia`.`booking` join `utopia`.`booking_user` on((`utopia`.`booking`.`id` = `utopia`.`booking_user`.`booking_id`))) left join `utopia`.`booking_agent` on((`utopia`.`booking`.`id` = `utopia`.`booking_agent`.`booking_id`)));

