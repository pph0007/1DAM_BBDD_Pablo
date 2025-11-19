drop database if exists biblioteca;
create database biblioteca;
use biblioteca;


create table socio(
	cod_socio int,
    nombre varchar (15),
    apellidos varchar (20),
    telefono varchar (9),
    primary key(cod_socio)
    );

create table autor (
	cod_autor int,
    nombre varchar (50) not null,
    primary key (cod_autor)
    );
create table libro(
	isbn varchar (10),
    titulo varchar (100) not null,
    anio date not null,
    autor int,
    primary key(isbn),
    foreign key (autor) references autor(cod_autor)
    );
create table prestamo(
	codigo int auto_increment,
	fecha_prestamo date not null,
	fecha_devolucion date,
	libro varchar (10),
    socio int not null,
	primary key(codigo),
	foreign key (libro) references libro(isbn)
    );

alter table socio add direccion varchar(50);
alter table libro modify titulo varchar(150);
alter table socio modify telefono varchar (9) not null;
alter table prestamo add foreign key (socio) references socio(cod_socio) on update cascade;
alter table autor add f_nac date;
