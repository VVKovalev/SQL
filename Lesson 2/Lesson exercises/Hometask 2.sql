use example;


create table if not exists users (
	id int unsigned,
	name VARCHAR(250) COMMENT 'User name'
);