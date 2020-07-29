




CREATE SCHEMA `full-stack-directory`;
USE `full-stack-directory` ;

CREATE TABLE place (
  `place_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `place_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`place_id`));
  
  CREATE TABLE shop_category (
  `shop_id` INT(2) NOT NULL AUTO_INCREMENT,
  `shop_group` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`shop_id`));
  
  CREATE TABLE place_shop_link (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT, 
  `place_id` BIGINT(20) NOT NULL ,
  `shop_id` INT(2) NOT NULL ,
  `place_loc_url` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)) 


  INSERT into place (place_name) values ('WHITEFEILD');
  INSERT into place (place_name) values ('BTM');
  INSERT into place (place_name) values ('MurgeshPalya');
  
  insert into shop_category(shop_group) values ('Grocery');
  insert into shop_category(shop_group) values ('Medical');
  insert into shop_category(shop_group) values ('Resturant');
  
 

insert into place_shop_link(place_id,shop_id,place_loc_url) value ((select place_id from place where place_name = 'WHITEFEILD'),(select shop_id from shop_category where shop_group = 'Grocery'),'../url/path/place_loc');
insert into place_shop_link(place_id,shop_id,place_loc_url) value ((select place_id from place where place_name = 'WHITEFEILD'),(select shop_id from shop_category where shop_group = 'Medical'),'../url/path/place_loc');
insert into place_shop_link(place_id,shop_id,place_loc_url) value ((select place_id from place where place_name = 'WHITEFEILD'),(select shop_id from shop_category where shop_group = 'Resturant'),'../url/path/place_loc');
insert into place_shop_link(place_id,shop_id,place_loc_url) value ((select place_id from place where place_name = 'BTM'),(select shop_id from shop_category where shop_group = 'Grocery'),'../url/path/place_loc');
insert into place_shop_link(place_id,shop_id,place_loc_url) value ((select place_id from place where place_name = 'BTM'),(select shop_id from shop_category where shop_group = 'Medical'),'../url/path/place_loc');
insert into place_shop_link(place_id,shop_id,place_loc_url) value ((select place_id from place where place_name = 'BTM'),(select shop_id from shop_category where shop_group = 'Resturant'),'../url/path/place_loc');
insert into place_shop_link(place_id,shop_id,place_loc_url) value ((select place_id from place where place_name = 'MurgeshPalya'),(select shop_id from shop_category where shop_group = 'Grocery'),'../url/path/place_loc');
insert into place_shop_link(place_id,shop_id,place_loc_url) value ((select place_id from place where place_name = 'MurgeshPalya'),(select shop_id from shop_category where shop_group = 'Medical'),'../url/path/place_loc');