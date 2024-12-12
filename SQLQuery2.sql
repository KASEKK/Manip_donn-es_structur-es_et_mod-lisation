create table T_MAINTENANCE_MTN ( 
	maintenance_id int primary key,
	numero int unique,
	vitesse int check (vitesse > 10),
	heure time NOT NULL,
)