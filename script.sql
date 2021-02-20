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


create table comvende(
n_numevende int not null auto_increment,
c_codivende varchar(10),
c_nomevende varchar(100),
c_razavende varchar(100),
c_fonevende varchar(20),
n_porcvende float(10,2),
primary key(n_numevende));

desc comvende;

create table comprodu(
n_numeprodu int not null auto_increment,
c_codiprodu varchar(20),
c_descprodu varchar(100),
n_valoprodu float(10,2),
c_situprodu varchar(1),
n_numeforne int(11),
primary key(n_numeprodu));

desc comprodu;

create table comvenda(
n_numevenda int not null auto_increment,
c_codivenda varchar(10),
n_numeclien int not null,
n_numeforne int not null,
n_numevende int not null,
n_valovenda float(10,2),
n_descvenda float(10,2),
n_totavenda float(10,2),
d_datavenda date,
primary key(n_numevenda));

desc comvenda;

create table comvendas (
n_numevenda int not null auto_increment,
c_codivenda varchar(10),
n_numeclien int not null,
n_numeforne int not null,
n_numevende int not null,
n_valovenda float(10,2),
n_descvenda float(10,2),
n_totavenda float(10,2),
d_datavenda date,
primary key(n_numevenda));

desc comvendas;

create table comivenda(
n_numeivenda int not null auto_increment,
n_numevenda int not null,
n_numeprod int not null,
n_valoivenda float(10,2),
n_qtdeivenda int,
n_descivenda float(10,2),
primary key(n_numeivenda));

desc comivenda;


















































