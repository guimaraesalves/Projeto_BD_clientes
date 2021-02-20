show databases;
use comercial;

CREATE table comclien(
n_numeclien int not null auto_increment,
c_codiclien varchar(10),
c_nomeclien varchar(100),
c_razaclien varchar(100),
d_dataclien date,
c_cnpjclien varchar(20),
c_foneclien varchar(20),
primary key(n_numeclien));

desc comclien;

use comercial;

create table comforne (
n_numeforne int not null auto_increment,
c_codiforne varchar(10),
c_nomeforne varchar(100),
c_razaforne varchar(100),
c_foneforne varchar(20),
primary key(n_numeforne));

desc comforne;

show tables;