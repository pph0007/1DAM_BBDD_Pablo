drop database if exists tienda;
create database tienda;
use tienda;

create table cliente(
	nombre varchar (50),
    apellidos varchar (100),
    direccion varchar (150),
    fecha_nac date,
    dni varchar (9) primary key
);

create table proveedor(
	nombre varchar (50),
    direccion varchar (100),
    nif varchar (9) primary key
);

create table producto(
	nombre varchar (50),
    precio_unidad int,
    codigo int auto_increment,
    nif_proveedor varchar(10),
    primary key(codigo,nif_proveedor),
    foreign key (nif_proveedor) references proveedor(nif)
);

create table cliente_compra_producto(
	dni_cliente varchar (9),
    codigo_producto int,
    foreign key (dni_cliente) references cliente(dni),
    foreign key (codigo_producto) references producto(codigo),
    primary key(dni_cliente, codigo_producto)
);
