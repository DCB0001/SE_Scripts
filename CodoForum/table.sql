SET sql_mode = '';
SET GLOBAL sql_mode = '';
UPDATE mysql.user SET plugin="mysql_native_password" WHERE User='root';
drop database if exists codoforum;
drop user if exists codouser;
create database if not exists codoforum;
create user if not exists codouser;
grant all privileges on *.* to codouser@localhost;
UPDATE mysql.user SET Password=PASSWORD(‘passx01’) WHERE user=”codouser”;