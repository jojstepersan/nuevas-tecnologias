create database paginakonrad 
use paginakonrad

create table expositor(
doc_expositor varchar(30) primary key,
name_expositor varchar(50),user
last_name varchar(50),
profecion varchar(50),
description varchar(300),
inves varchar(800)
);
drop table expositor
select*from expositor

select*from conference
drop table conference

create table conference(
cod_type int primary key auto_increment, 
name_conference varchar(50), 
introduction_conference varchar(300), 
description_conference varchar(800),
share_conference int(11),
image varchar(50),
doc_expositor varchar(30),
 foreign key (doc_expositor) references expositor(doc_expositor)
);
CREATE TABLE user (
   email_user varchar(50) NOT NULL,
   nom_user varchar(50) DEFAULT NULL,
   lastname_user varchar(50) DEFAULT NULL,
   doc_user varchar(50) DEFAULT NULL,
   celular bigint(20) DEFAULT NULL,
   password_user varchar(50) DEFAULT NULL,
   cod_type int(11) DEFAULT NULL,
   PRIMARY KEY (email_user),
   KEY cod_type (cod_type),
   CONSTRAINT user_ibfk_1 FOREIGN KEY (cod_type) REFERENCES type_user (cod_type)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8

show create table type_user;
CREATE TABLE type_user (
   cod_type int(11) NOT NULL,
   non_type varchar(20) DEFAULT NULL,
   PRIMARY KEY (cod_type)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8