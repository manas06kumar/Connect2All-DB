




CREATE SCHEMA `full-stack-directory`;
USE `full-stack-directory` ;

CREATE  TABLE place (
  `place_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `place_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`place_id`));
  
  CREATE TABLE shop_category (
  `shop_id` INT(2) NOT NULL AUTO_INCREMENT,
  `shop_group` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`shop_id`));
  
  CREATE TABLE place_shop_link (
  `link_id` BIGINT(20) NOT NULL AUTO_INCREMENT, 
  `place_id` BIGINT(20) NOT NULL ,
  `shop_id` INT(2) NOT NULL ,
  PRIMARY KEY (`link_id` )) 

CREATE  TABLE place_shop_detail (
  `detail_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `link_id` BIGINT(20) NOT NULL ,
  `shop_name` VARCHAR(255) NULL DEFAULT NULL,
  `shop_website` VARCHAR(255) NULL DEFAULT NULL,
  `shop_contact` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`detail_id`));

CREATE TABLE place_shop_list (
  `detail_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `place_name` VARCHAR(255) NULL DEFAULT NULL,
  `shop_group` VARCHAR(255) NULL DEFAULT NULL,
  `shop_name` VARCHAR(255) NULL DEFAULT NULL,
  `shop_website` VARCHAR(255) NULL DEFAULT NULL,
  `shop_contact` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`detail_id`));


  INSERT into place (place_name) values ('WHITEFEILD');
  INSERT into place (place_name) values ('BTM');
  INSERT into place (place_name) values ('MurgeshPalya');
  
  insert into shop_category(shop_group) values ('Grocery');
  insert into shop_category(shop_group) values ('Medical');
  insert into shop_category(shop_group) values ('Resturant');
  
 

insert into place_shop_link(place_id,shop_id) value ((select place_id from place where place_name = 'WHITEFEILD'),(select shop_id from shop_category where shop_group = 'Grocery'));
insert into place_shop_link(place_id,shop_id) value ((select place_id from place where place_name = 'WHITEFEILD'),(select shop_id from shop_category where shop_group = 'Medical'));
insert into place_shop_link(place_id,shop_id) value ((select place_id from place where place_name = 'WHITEFEILD'),(select shop_id from shop_category where shop_group = 'Resturant'));
insert into place_shop_link(place_id,shop_id) value ((select place_id from place where place_name = 'BTM'),(select shop_id from shop_category where shop_group = 'Grocery'));
insert into place_shop_link(place_id,shop_id) value ((select place_id from place where place_name = 'BTM'),(select shop_id from shop_category where shop_group = 'Medical'));
insert into place_shop_link(place_id,shop_id) value ((select place_id from place where place_name = 'BTM'),(select shop_id from shop_category where shop_group = 'Resturant'));
insert into place_shop_link(place_id,shop_id) value ((select place_id from place where place_name = 'MurgeshPalya'),(select shop_id from shop_category where shop_group = 'Grocery'));
insert into place_shop_link(place_id,shop_id) value ((select place_id from place where place_name = 'MurgeshPalya'),(select shop_id from shop_category where shop_group = 'Medical'));

insert into place_shop_list(place_name,shop_group,shop_name,shop_contact) value('WHITEFEILD','Grocery','G VegetableShop','989989898');
insert into place_shop_list(place_name,shop_group,shop_name,shop_contact) value('WHITEFEILD','Grocery','G1 VegetableShop','98000');
insert into place_shop_list(place_name,shop_group,shop_name,shop_contact) value('WHITEFEILD','Medical','M1VegetableShop','989989898');
insert into place_shop_list(place_name,shop_group,shop_name,shop_contact) value('BTM','Medical','M2 VegetableShop','989989898');
insert into place_shop_list(place_name,shop_group,shop_name,shop_contact) value('BTM','Grocery','G3 VegetableShop','989989898');
insert into place_shop_list(place_name,shop_group,shop_name,shop_contact) value('WHITEFEILD','Resturant','R1 VegetableShop','989989898');