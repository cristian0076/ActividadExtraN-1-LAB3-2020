/*create database ActividadNº1*/
use ActividadNº1

create TABLE persona(
IDpersona int not null primary key identity(1,1),
nombre varchar(15) not null,
)
GO
create TABLE idioma(
IDidioma int not null primary key identity(1,1),
descripcion varchar(30) not null,
)
GO
create TABLE grado(
IDgrado int not null primary key identity(1,1),
descripcion varchar(15) not null,
)
GO
create TABLE idiomaXpersona(
nombre int foreign key references persona(IDpersona),
idioma int foreign key references idioma(IDidioma),
grado  int null foreign key references grado(IDgrado),
PRIMARY KEY(nombre,idioma),
)



/*INSERT en tabla persona*/

insert into persona(nombre)values('Jimena')
insert into persona(nombre) values('Carlos')
insert into persona(nombre) values('Analia')
insert into  persona(nombre) values('Kristopher')
insert into persona(nombre) values('Maria')

/*INSERT en tabla idioma*/
insert into idioma(descripcion)values('Ingles')
insert into idioma(descripcion)values('Frances')
insert into idioma(descripcion)values('Español')
insert into idioma(descripcion)values('Aleman')

/*INSERT en tabla grado*/
insert into grado(descripcion)values('Nativo')
insert into grado(descripcion)values('Deficiente')
insert into grado(descripcion)values('Correcto')

/*INSERT en tabla idiomaXpersona*/
insert into idiomaXpersona(nombre,idioma,grado)values
(1,1,1),
(1,2,2),
(2,3,1),
(3,1,1),
(3,2,3),
(3,3,1),
(4,4,1),

/*Select tables*/
Select * from persona
Select * from idioma
Select * from grado
Select * from idiomaXpersona
/*--------------------------fin----------------------------------*/