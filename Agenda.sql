

Create database agenda

go 

use agenda

go

create table Rol(
IdRol int primary key,
Descripcion varchar(50)
)

go

insert into Rol(IdRol,Descripcion) values(1,'Administrador')

insert into Rol(IdRol,Descripcion) values(2,'Estandar')


Create table USUARIOS(
Nombres varchar(50),
Correo varchar(50),
Clave varchar(50),
IdRol int references Rol(IdRol)
)

go

insert into USUARIOS(Nombres,Correo,Clave,IdRol) values('Melvin', 'mgonzalez@gmail.com','admin1234',1)

insert into USUARIOS(Nombres,Correo,Clave,IdRol) values('Ruben', 'rdelacruz@gmail.com','1234',2)

CREATE TABLE Contactos
(
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100),
    Phone NVARCHAR(20)
    -- Agrega otros campos según sea necesDario
);
GO


select Nombres,Correo,Clave,IdRol from USUARIOS where Correo = and Clave =

select Nombres, Correo, Clave, IdRol FROM USUARIOS WHERE Correo = 'mgonzalez@gmail.com' AND Clave = 'admin1234'
