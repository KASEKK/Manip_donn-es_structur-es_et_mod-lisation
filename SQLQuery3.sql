create table T_PRODUIT_PDT (
	produit_id int primary key,
	RAYON_ID int,
	FABRIQUANT_ID int,
	TVA_ID int,

	constraint FK_PRODUIT_RAYON foreign key (RAYON_ID) 
		references T_RAYON_RYN (RAYON_ID),

	constraint FK_PRODUIT_FABRIQUANT foreign key (FABRIQUANT_ID) 
		references T_FABRIQUANT_FBQ (FABRIQUANT_ID),

	constraint FK_PRODUIT_TVA foreign key (TVA_ID) 
		references T_TAUX_TVA (TVA_ID),

	code_ean13 int,
	prix_vente int,

)