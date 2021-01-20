
ALTER TABLE `<DB_PREFIX>modules` CHANGE `name` `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL;
ALTER TABLE `<DB_PREFIX>modules` CHANGE `name_const` `name_const` varchar(40) CHARACTER SET latin1 NOT NULL;
ALTER TABLE `<DB_PREFIX>modules` CHANGE `settings_page` `settings_page` varchar(40) CHARACTER SET latin1 NOT NULL;
ALTER TABLE `<DB_PREFIX>modules` CHANGE `settings_const` `settings_const` varchar(40) CHARACTER SET latin1 NOT NULL;


-- 22.03.2017 --
INSERT INTO `<DB_PREFIX>vocabulary` (`id`, `language_id`, `key_value`, `key_text`) VALUES (NULL, 'en', '_NO_ROOMS_FOUND_AUTOMATIC_RE_SEARCH_ROOM', 'Sorry, there are no rooms match your search criteria. But we''ve found hotels where you can stay in several rooms'), (NULL, 'es', '_NO_ROOMS_FOUND_AUTOMATIC_RE_SEARCH_ROOM', 'Lo sentimos, no hay habitaciones que correspondan a sus criterios de búsqueda. Pero hemos encontrado hoteles donde se puede alojar en varias habitaciones'), (NULL, 'de', '_NO_ROOMS_FOUND_AUTOMATIC_RE_SEARCH_ROOM', 'Es tut uns leid, es gibt keine Zimmer zu Ihren Suchkriterien. Aber wir haben Hotels gefunden, wo man in mehreren Zimmern übernachten kann');

-- 12.04.2017 --
INSERT INTO `<DB_PREFIX>modules_settings` (`id`, `module_name`, `settings_key`, `settings_value`, `settings_name_const`, `settings_description_const`, `key_display_type`, `key_is_required`, `key_display_source`) VALUES
(NULL, 'booking', 'customer_booking_in_past', 'no', '_MSN_CUSTOMER_BOOKING_IN_PAST', '_MS_CUSTOMER_BOOKING_IN_PAST', 'yes/no', 1, '');


INSERT INTO `<DB_PREFIX>vocabulary` (`id`, `language_id`, `key_value`, `key_text`) VALUES
(NULL, 'de', '_DISCOUNT_FOR_FIVE_OR_MORE_ROOMS', 'Rabatt für 5. + Zimmer'),
(NULL, 'en', '_DISCOUNT_FOR_FIVE_OR_MORE_ROOMS', 'Discount for 5th+ rooms'),
(NULL, 'es', '_DISCOUNT_FOR_FIVE_OR_MORE_ROOMS', 'Descuento para 5ª y más habitaciones'),
(NULL, 'de', '_DISCOUNT_FOR_FOUR_ROOMS', 'Rabatt für 4. Zimmer'),
(NULL, 'en', '_DISCOUNT_FOR_FOUR_ROOMS', 'Discount for 4th rooms'),
(NULL, 'es', '_DISCOUNT_FOR_FOUR_ROOMS', 'Descuento 4ª cuartos'),
(NULL, 'de', '_DISCOUNT_FOR_THREE_ROOMS', 'Rabatt für 3. Zimmer'),
(NULL, 'en', '_DISCOUNT_FOR_THREE_ROOMS', 'Discount for 3rd rooms'),
(NULL, 'es', '_DISCOUNT_FOR_THREE_ROOMS', 'Descuento 3ª cuartos'),
(NULL, 'de', '_ROOMS_3', '3. Zimmer'),
(NULL, 'en', '_ROOMS_3', '3rd rooms'),
(NULL, 'es', '_ROOMS_3', '3ª cuartos'),
(NULL, 'de', '_ROOMS_4', '4. Zimmer'),
(NULL, 'en', '_ROOMS_4', '4th rooms'),
(NULL, 'es', '_ROOMS_4', '4ª cuartos'),
(NULL, 'de', '_ROOMS_5', '5. Zimmer'),
(NULL, 'en', '_ROOMS_5', '5th rooms'),
(NULL, 'es', '_ROOMS_5', '5ª cuartos'),
(NULL, 'de', '_ROOMS_DISCOUNT', 'Zimmer Rabatt'),
(NULL, 'en', '_ROOMS_DISCOUNT', 'Room Discount'),
(NULL, 'es', '_ROOMS_DISCOUNT', 'Descuento Habitaciones'),
(NULL, 'en', '_MESSAGE_DISCOUNTS_ROOMS', 'The price of the room depends on the total number of rooms when ordering.<br/>Price per room when ordering for 3 rooms _PRICE_3_PEOPLE_<br/>Price per room when ordering for 4 rooms _PRICE_4_PEOPLE_<br/>Price per room when ordering for 5 or more rooms _PRICE_5_PEOPLE_'),
(NULL, 'es', '_MESSAGE_DISCOUNTS_ROOMS', 'El precio de la habitación depende del número total de habitaciones al momento de realizar el pedido. <br/> Precio por habitación en pedido de 3 habitaciones _PRICE_3_PEOPLE_ <br/> Precio por habitación en pedido de 4 habitaciones _PRICE_4_PEOPLE_ <br/> Precio por habitación en pedido Para 5 o más habitaciones _PRICE_5_PEOPLE_'),
(NULL, 'de', '_MESSAGE_DISCOUNTS_ROOMS', 'Der Preis des Zimmers hängt von der Gesamtzahl der Zimmer bei der Bestellung ab. <br/> Preis pro Zimmer bei der Bestellung für 3 Zimmer _PRICE_3_PEOPLE_ <br/> Preis pro Zimmer bei der Bestellung für 4 Zimmer _PRICE_4_PEOPLE_ <br/> Preis pro Zimmer bei der Bestellung Für 5 oder mehr zimmer _PRICE_5_PEOPLE_');

INSERT INTO `<DB_PREFIX>vocabulary` (`id`, `language_id`, `key_value`, `key_text`) VALUES 
(NULL, 'en', '_MSN_CUSTOMER_BOOKING_IN_PAST', 'Booking in the Past for customer'),
(NULL, 'es', '_MSN_CUSTOMER_BOOKING_IN_PAST', 'Reserva en el pasado para el cliente'),
(NULL, 'de', '_MSN_CUSTOMER_BOOKING_IN_PAST', 'Buchung in der Vergangenheit für Kunden'),
(NULL, 'en', '_MS_CUSTOMER_BOOKING_IN_PAST', 'Specifies whether to allow booking in the past for customers and guests (one day ago)'),
(NULL, 'es', '_MS_CUSTOMER_BOOKING_IN_PAST', 'Especifica si se permite reservar en el pasado para clientes e invitados (hace un día)'),
(NULL, 'de', '_MS_CUSTOMER_BOOKING_IN_PAST', 'Gibt an, ob die Buchung in der Vergangenheit für Kunden und Gäste (vor einem Tag)');

UPDATE `<DB_PREFIX>vocabulary` SET  `key_text` = 'Booking in the Past for admin' WHERE `language_id` = 'en' AND `key_value` = '_MSN_ADMIN_BOOKING_IN_PAST';
UPDATE `<DB_PREFIX>vocabulary` SET  `key_text` = 'Reserva en el pasado para admin' WHERE `language_id` = 'es' AND `key_value` = '_MSN_ADMIN_BOOKING_IN_PAST';
UPDATE `<DB_PREFIX>vocabulary` SET  `key_text` = 'Buchung in der Vergangenheit für admin' WHERE `language_id` = 'de' AND `key_value` = '_MSN_ADMIN_BOOKING_IN_PAST';

-- 14.04.2017 --
INSERT INTO `<DB_PREFIX>vocabulary` (`id`, `language_id`, `key_value`, `key_text`) VALUES
(NULL, 'en', '_MESSAGE_DISCOUNTS_NIGHT', 'The price of the room depends on the total of night reserved.<br/>Price per room when ordering for 3 nights is _PRICE_3_NIGHT_<br/>Price per room when ordering for 4 nights is _PRICE_4_NIGHT_<br/>Price per room when ordering for 5 or more nights is _PRICE_5_NIGHT_'),
(NULL, 'es', '_MESSAGE_DISCOUNTS_NIGHT', 'El precio de la habitación depende del total de la noche reservada. <br/> Precio por habitación cuando se solicite 3 noches es _PRICE_3_NIGHT_ <br/> Precio por habitación al hacer el pedido por 4 noches es _PRICE_4_NIGHT_<br/>Precio por habitación al realizar el pedido Para 5 o más noches es _PRICE_5_NIGHT_'),
(NULL, 'de', '_MESSAGE_DISCOUNTS_NIGHT', 'Der Preis des Zimmers hängt von der Gesamtnote ab.<br/>Preis pro Zimmer bei Bestellung für 3 Nächte _PRICE_3_NIGHT_<br/>Preis pro Zimmer bei Bestellung für 4 Nächte _PRICE_4_NIGHT_<br/>Preis pro Zimmer bei Bestellung Für 5 oder mehr Nächte ist _PRICE_5_NIGHT_');

-- 19.04.2017 --
INSERT INTO `<DB_PREFIX>vocabulary` (`id`, `language_id`, `key_value`, `key_text`) VALUES
(NULL, 'en', '_FIELD_INCORRECT_VALUE', 'The field _FIELD_ has incorrect value! Please re-enter.'),
(NULL, 'es', '_FIELD_INCORRECT_VALUE', 'El campo _FIELD_ tiene valor incorrecto! Vuelve a ingresar.'),
(NULL, 'de', '_FIELD_INCORRECT_VALUE', 'Das Feld _FIELD_ hat falschen Wert! Bitte erneut eingeben.');

-- 26.04.2017 --
INSERT INTO `<DB_PREFIX>vocabulary` (`id`, `language_id`, `key_value`, `key_text`) VALUES (NULL, 'en', '_THERE_NO_AVAILABLE_ROOMS', 'There are no available rooms from _DATE_FROM_ to _DATE_TO_. Try changing the reservation date or room type'), (NULL, 'es', '_THERE_NO_AVAILABLE_ROOMS', 'No hay habitaciones disponibles de _DATE_FROM_ a _DATE_TO_. Intente cambiar la fecha de la reserva o el tipo de habitación'), (NULL, 'de', '_THERE_NO_AVAILABLE_ROOMS', 'Es stehen keine verfügbaren Zimmer von _DATE_FROM_ bis _DATE_TO_ zur Verfügung. Versuchen Sie, das Reservierungsdatum oder die Zimmertypen zu ändern');
ALTER TABLE `<DB_PREFIX>accounts` CHANGE `room_numbers` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '';

-- 22.05.2017 --
INSERT INTO `<DB_PREFIX>vocabulary` (`id`, `language_id`, `key_value`, `key_text`) VALUES (NULL, 'en', '_MIN_BEDS', 'Min. Beds'), (NULL, 'es', '_MIN_BEDS', 'Min. Beds'), (NULL, 'de', '_MIN_BEDS', 'Min. Beds'); 

-- 24.05.2017 --
ALTER TABLE `<DB_PREFIX>bookings` ADD `nights_discount` DECIMAL(10,2) UNSIGNED NOT NULL DEFAULT '0.00' AFTER `guests_discount`;

-- 14.06.2017 --
ALTER TABLE `<DB_PREFIX>bookings_rooms` ADD `discount` DECIMAL(10,2) UNSIGNED NOT NULL DEFAULT '0.00' AFTER `price`;

-- 16.06.2017 --
ALTER TABLE  `<DB_PREFIX>accounts` CHANGE  `oa_date_created`  `oa_date_created` DATETIME NULL DEFAULT NULL;
ALTER TABLE  `<DB_PREFIX>accounts` CHANGE  `date_created`  `date_created` DATETIME NULL DEFAULT NULL;
ALTER TABLE  `<DB_PREFIX>accounts` CHANGE  `date_lastlogin`  `date_lastlogin` DATETIME NULL DEFAULT NULL;

ALTER TABLE  `<DB_PREFIX>bookings` CHANGE  `created_date`  `created_date` DATETIME NULL DEFAULT NULL;
ALTER TABLE  `<DB_PREFIX>bookings` CHANGE  `payment_date`  `payment_date` DATETIME NULL DEFAULT NULL;
ALTER TABLE  `<DB_PREFIX>bookings` CHANGE  `cancel_payment_date`  `cancel_payment_date` DATE NULL DEFAULT NULL;
ALTER TABLE  `<DB_PREFIX>bookings` CHANGE  `status_changed`  `status_changed` DATETIME NULL DEFAULT NULL;

ALTER TABLE  `<DB_PREFIX>bookings_rooms` CHANGE  `checkin`  `checkin` DATE NULL DEFAULT NULL;
ALTER TABLE  `<DB_PREFIX>bookings_rooms` CHANGE  `checkout`  `checkout` DATE NULL DEFAULT NULL;

ALTER TABLE  `<DB_PREFIX>campaigns` CHANGE  `start_date`  `start_date` DATE NULL DEFAULT NULL;
ALTER TABLE  `<DB_PREFIX>campaigns` CHANGE  `finish_date`  `finish_date` DATE NULL DEFAULT NULL;

ALTER TABLE  `<DB_PREFIX>comments` CHANGE  `date_created`  `date_created` DATETIME NULL DEFAULT NULL;
ALTER TABLE  `<DB_PREFIX>comments` CHANGE  `date_published`  `date_created` DATETIME NULL DEFAULT NULL;

ALTER TABLE  `<DB_PREFIX>coupons` CHANGE  `date_started`  `date_started` DATE NULL DEFAULT NULL;
ALTER TABLE  `<DB_PREFIX>coupons` CHANGE  `date_finished`  `date_finished` DATE NULL DEFAULT NULL;

ALTER TABLE  `<DB_PREFIX>customers` CHANGE  `birth_date`  `birth_date` DATE NULL DEFAULT NULL;
ALTER TABLE  `<DB_PREFIX>customers` CHANGE  `date_created`  `date_created` DATETIME NULL DEFAULT NULL;
ALTER TABLE  `<DB_PREFIX>customers` CHANGE  `date_lastlogin`  `date_lastlogin` DATETIME NULL DEFAULT NULL;
ALTER TABLE  `<DB_PREFIX>customers` CHANGE  `notification_status_changed`  `notification_status_changed` DATETIME NULL DEFAULT NULL;

ALTER TABLE  `<DB_PREFIX>customer_funds` CHANGE  `date_added`  `date_added` DATETIME NULL DEFAULT NULL;
ALTER TABLE  `<DB_PREFIX>customer_funds` CHANGE  `removal_date`  `removal_date` DATETIME NULL DEFAULT NULL;

ALTER TABLE  `<DB_PREFIX>events_registered` CHANGE  `date_registered`  `date_registered` DATETIME NULL DEFAULT NULL;

ALTER TABLE  `<DB_PREFIX>hotel_periods` CHANGE  `start_date`  `start_date` DATE NULL DEFAULT NULL;
ALTER TABLE  `<DB_PREFIX>hotel_periods` CHANGE  `finish_date`  `finish_date` DATE NULL DEFAULT NULL;

ALTER TABLE  `<DB_PREFIX>mass_mail_log` CHANGE  `date_created`  `date_created` DATETIME NULL DEFAULT NULL;

ALTER TABLE  `<DB_PREFIX>news` CHANGE  `date_created`  `date_created` DATETIME NULL DEFAULT NULL;

ALTER TABLE  `<DB_PREFIX>news_subscribed` CHANGE  `date_subscribed`  `date_subscribed` DATETIME NULL DEFAULT NULL;

ALTER TABLE  `<DB_PREFIX>packages` CHANGE  `start_date`  `start_date` DATE NULL DEFAULT NULL;
ALTER TABLE  `<DB_PREFIX>packages` CHANGE  `finish_date`  `finish_date` DATE NULL DEFAULT NULL;

ALTER TABLE  `<DB_PREFIX>pages` CHANGE  `date_created`  `date_created` DATETIME NULL DEFAULT NULL;
ALTER TABLE  `<DB_PREFIX>pages` CHANGE  `date_updated`  `date_updated` DATETIME NULL DEFAULT NULL;
ALTER TABLE  `<DB_PREFIX>pages` CHANGE  `status_changed`  `status_changed` DATETIME NULL DEFAULT NULL;
ALTER TABLE  `<DB_PREFIX>pages` CHANGE  `finish_publishing`  `finish_publishing` DATE NULL DEFAULT NULL;


ALTER TABLE  `<DB_PREFIX>reviews` CHANGE  `date_created`  `date_created` DATETIME NULL DEFAULT NULL;

ALTER TABLE  `<DB_PREFIX>rooms_prices` CHANGE  `date_from`  `date_from` DATE NULL DEFAULT NULL;
ALTER TABLE  `<DB_PREFIX>rooms_prices` CHANGE  `date_to`  `date_to` DATE NULL DEFAULT NULL;

ALTER TABLE  `<DB_PREFIX>wishlist` CHANGE  `date_added`  `date_added` DATETIME NULL DEFAULT NULL;

-- 20.06.2017 --
INSERT INTO `<DB_PREFIX>vocabulary` (`id`, `language_id`, `key_value`, `key_text`) VALUES (NULL, 'en', '_COUPON_DISCOUNT', 'Coupon Discount'), (NULL, 'es', '_COUPON_DISCOUNT', 'Descuento de cupones'), (NULL, 'de', '_COUPON_DISCOUNT', 'Gutscheinrabatt'); 
