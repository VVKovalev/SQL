use geekbrains;

drop table if exists catalogs;

create table catalogs (
	id int unsigned,
	name varchar(255) COMMENT 'Название раздела'
) COMMENT = 'Разделы интеренет магазина';

insert into catalogs (id, name) values (1, 'plant');

drop table if exists users;
create table users (
	id int unsigned,
	name varchar(255) COMMENT 'Имя покупателя',
	birthday_at date COMMENT 'Date of  birth',
	created_at datetime default current_timestamp,
	updated_at datetime default current_timestamp on update current_timestamp
) COMMENT = 'Покупателя';

insert into users (id, name, birthday_at) values (1, 'Bob', '1919-01-29');

select *from users;

drop table if exists products;
create table products (
	id int unsigned,
	name varchar(255) COMMENT 'Название',
	description TEXT COMMENT 'Описание',
	price DECIMAL (11,2) COMMENT 'Цена',
	catalog_id INT unsigned
) COMMENT = 'Товарные позиции';


