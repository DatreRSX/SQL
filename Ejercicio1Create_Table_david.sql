create table LOCALIDAD(
cod_localidad number(5) constraint pk_localidad primary key not null ,
nombre char(10)
);

create table PUB(
cod_pub char(8) not null constraint pk_pub primary key,
Nombre char(20) not null,
Licencia_Fiscal char(20) not null,
Domicilio char(20),
Fecha_Apertura date,
horario char(4) check(horario in('HOR1','HOR2','HOR3')),
cod_localidad number(5) not null,
CONSTRAINT fk_Cod_Localidad FOREIGN KEY (cod_localidad)
REFERENCES LOCALIDAD(cod_localidad)
);


