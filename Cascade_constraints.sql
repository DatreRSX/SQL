CREATE TABLE empleados(
id NUMBER(1),
NOMBRE VARCHAR2(10)
);

CREATE TABLE ventas(
Id NUMBER(1),
NUM_VENTAS NUMBER(1),
Emp NUMBER
);

--Modificar una tabla existente
ALTER TABLE empleados ADD CONSTRAINT pk_empleados PRIMARY KEY (Id);
ALTER TABLE empleados ADD CONSTRAINT fk_empleados FORGN KEY(emp) REFErences empleados(Id);

--Meter datos
INSERT INTRO empleados VALUES ('1','Santi');
INSERT INTRO empleados VALUES ('2','Dani');

--FORZAR MATERIALIZACION 
COMMIT;
--DESHACER CAMBIOS
ROLLBACK;

SELECT * FROM empleados;
SELECT * FROM ventas;

--Violacion de la restriccion de clave ajena:se a intentado añadir una venta de un empleado que no existe
INSERT INTO  ventas Values(3,1500,3);

DROP TABLE empleados;

--PODER ELIMINAR TABLAS CON RESTRICCIONES
DROP TABLE empleados CASCADE CONSTRAINT

--Aunque eliminemos la restriccion de la tabla ventas los datos siguen existiendo
SELECT * FROM empleados;
SELECT * FROM ventas;