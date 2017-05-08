create database paginakonrad;

use paginakonrad;

CREATE TABLE type_user (
   cod_type int(11) NOT NULL,
   non_type varchar(20) DEFAULT NULL,
   PRIMARY KEY (cod_type)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8
;

CREATE TABLE usuario(
   email_user varchar(50) NOT NULL,
   nom_user varchar(50) DEFAULT NULL,
   lastname_user varchar(50) DEFAULT NULL,
   doc_user varchar(50) DEFAULT NULL,
   celular bigint(20) DEFAULT NULL,
   password_user varchar(50) DEFAULT NULL,
   cod_type int(11) DEFAULT NULL,
   PRIMARY KEY (email_user),
   KEY cod_type (cod_type),
   CONSTRAINT user_ibfk_1 FOREIGN KEY (cod_type) REFERENCES type_user(cod_type)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;


create table expositor(
doc_expositor varchar(30) primary key,
name_expositor varchar(50),
last_name varchar(50),
profecion varchar(50),
description varchar(300),
inves varchar(800)
);

create table classroom(
cod_classroom int not null primary key,
name_classroom varchar(11),
share_available int
);

create table conference(
cod_conference int primary key auto_increment, 
name_conference varchar(50), 
introduction_conference varchar(300), 
description_conference varchar(800),
share_conference int(11),
image varchar(50),
doc_expositor varchar(30),
 foreign key (doc_expositor) references expositor(doc_expositor)
);

create table session_conference(
cod_user varchar(50),
cod_conference int,
cod_classroom int,
date_conference datetime,
foreign key (cod_user) references usuario(email_user),
foreign key (cod_conference) references conference(cod_conference),
foreign key (cod_classroom) references classroom(cod_classroom)
);
/*tabla horario

create table schelude(
cod_schelude int not null primary key,
date_conference datetime
);
*/
/*tabla salon donde se hara la conferencia
*/
/*
create table day(
cod_day int primary key,
nom_day varchar(10)
);

insert into day values(1,'Lunes');
insert into day values(2,'Martes');
insert into day values(3,'Miercoles');
insert into day values(4,'Jueves');
insert into day values(5,'Viernes');
insert into day values(6,'Sabado');
insert into day values(7,'Domingo');*/