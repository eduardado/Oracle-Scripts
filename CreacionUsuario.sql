--Script de creación de usuario

--Creación de usuario standard
CREATE USER eduardado IDENTIFIED BY 1234;

--Comprobación de usuarios de la base de datos
SELECT 
	username, default_tablespace, profile, authentication_type
FROM
	dba_users
WHERE
	account_status = 'OPEN';

--Dar permisos para poder hacer login
GRANT CREATE  SESSION TO eduardado;
