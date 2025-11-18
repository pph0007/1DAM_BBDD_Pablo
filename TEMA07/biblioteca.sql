drop database if exists biblioteca;
create database biblioteca;
use biblioteca;

create table libro(
	ISBN varchar (10),
    titulo varchar (100) not null,
    anio date not null,
    autor varchar (9),
    primary key(ISBN),
    foreign key (autor) references autores(nombre)
    );
create table socio(
	cod_socio int (5),
    nombre varchar (15),
    apellidos varchar (20),
    primary key(cod_socio)
    );
create table prestamo(
	codigo int (7) auto_increment,
	fecha_prestamo date not null,
	fecha_devolucion date,
	libro int (5),
	primary key(codigo),
	foreign key (libro) references libro(ISBN)
    );
create table autor (
	cod_autor int (5),
    nombre varchar (50) not null,
    primary key (cod_autor)
    );