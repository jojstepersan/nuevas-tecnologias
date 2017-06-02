create database paginakonrad;

use paginakonrad;

CREATE TABLE type_user (
   cod_type int(11) NOT NULL,
   non_type varchar(20) DEFAULT NULL,
   PRIMARY KEY (cod_type)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
imagen varchar(100),
bibliografia varchar(300)
);

create table classroom(
cod_classroom int not null primary key,
share_available int
);

create table conference(
cod_conference int primary key auto_increment, 
name_conference varchar(50), 
classroom int,
parrafo_1 varchar(1000),
parrafo_2 varchar(1000),
parrafo_3 varchar(1000),
parrafo_4 varchar(1000),
parrafo_5 varchar(1000),
image varchar(50),
fecha datetime,
doc_expositor varchar(30),
foreign key (classroom) references classroom(cod_classroom),
foreign key (doc_expositor) references expositor(doc_expositor)
);

create table session_conference(
cod_user varchar(50),
cod_conference int,
foreign key (cod_user) references usuario(email_user),
foreign key (cod_conference) references conference(cod_conference)
);

insert into type_uer values(1,'admin');
insert into type_uer values(2,'normal');
insert into classroom values(1,50);
insert into classroom values(2,50);
insert into classroom values(3,50);
insert into classroom values(4,50);
insert into classroom values(5,50);
insert into usuario values('admin@gmail.com','admin',' ',0,0,'MOQSUMOQS',1);
