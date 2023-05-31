use mysql;

create user 'javauser'@'localhost' identified by 'mysql';
grant all privileges on jspdb.* to 'javauser'@'localhost' with grant option;
flush privileges;

create database javadb;

-- 2023-05-17
create table member(
id varchar(100) not null,
password varchar(100) not null,
email varchar(100) not null,
birth int,
reg_date datetime default now(),
last_login datetime,
Primary key(id));

-- 2023-05-18
create table board(
bno int not null auto_increment,
title varchar(100) not null,
writer varchar(100) not null,
read_count int default 0,
reg_date datetime default now(),
like_count int default 0,
primary key(bno));

-- 2023-05-18 추가
alter table board add content text;

-- 2023-05-21 생성
Create table comment(
cno int not null auto_increment,
bno int default 0,
writer varchar(100)default "익명",
content varchar(300) not null,
reg_date datetime default now(),
Primary key(cno));

