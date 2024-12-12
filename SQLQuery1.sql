
CREATE TABLE T_office (
	office_id int,
	office_adress varchar(30),
	constraint PK_office primary key (office_id)
 )

 CREATE TABLE T_course (
	crs_code char(8) primary key,
	crs_name varchar(30),
	constraint UK_crs unique (crs_name))

create table T_professor (
	prf_id int not null primary key, 
	prf_name varchar(30),
	prf_course char(8),
	crs_code char,
	constraint FK_professor_course foreign key (prf_course) references T_course(crs_code) 
		ON DELETE SET NULL,
	office_id int references T_office, 
	constraint prf_name unique (prf_name)
	)
