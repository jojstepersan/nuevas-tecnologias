create database paginakonrad .

use paginakonrad

create table expositor(
doc_expositor varchar(30) primary key,
name_expositor varchar(50),user
last_name varchar(50),
profecion varchar(50),
description varchar(300),
inves varchar(800)
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

CREATE TABLE type_user (
   cod_type int(11) NOT NULL,
   non_type varchar(20) DEFAULT NULL,
   PRIMARY KEY (cod_type)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8
 
 
create table session_conference(
cod_session int not null primary key,
cod_user varchar(50),
cod_conference int,
cod_classroom int,
cod_schelude int,
share_available int ,
foreign key (cod_user) references user (email_user),
foreign key (cod_conference) references conference(cod_conference),
foreign key (cod_classroom) references classroom(cod_classroom),
foreign key (cod_schelude) references schelude(cod_schelude)
);

/*tabla horario*/

create table schelude(
cod_schelude int not null primary key,
date_conference datetime
);

/*tabla salon donde se hara la conferencia
*/

create table classroom(
cod_classroom int not null primary key,
name_classroom varchar(11)
);

