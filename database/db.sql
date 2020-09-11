create database database_links;

use database_links;

--USERS TABLE

create Table users(

    id int (11) NOT NULL,
    username VARCHAR (16),
    password VARCHAR (60) NOT NULL,
    fullname VARCHAR (100) NOT NULL
);

ALTER TABLE users 
    ADD PRIMARY KEY (id);

ALTER TABLE users
    MODIFY id INT (11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;


DESCRIBE users;

-- LINKS TABLE

create table links (
id int (11) not null,
title VARCHAR(150) not null,
url VARCHAR(255)NOT null,
DESCRIPTION text,
user_id int(11),
created_at TIMESTAMP not null default CURRENT_TIMESTAMP,
CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id)
 

);

alter table links 
add PRIMARY KEY (id);

alter table links
MODIFY id int(11) not null AUTO_INCREMENT, AUTO_INCREMENT = 2;