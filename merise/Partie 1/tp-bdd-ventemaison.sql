#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: clients
#------------------------------------------------------------

CREATE TABLE clients(
        id                Int  Auto_increment  NOT NULL ,
        nom               Varchar (50) NOT NULL ,
        prenom            Varchar (50) NOT NULL ,
        date_de_naissance Varchar (50) NOT NULL ,
        mail              Varchar (50) NOT NULL ,
        budget            Float NOT NULL
	,CONSTRAINT clients_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: types de bien
#------------------------------------------------------------

CREATE TABLE types_de_bien(
        id        Int  Auto_increment  NOT NULL ,
        type_name Varchar (50) NOT NULL
	,CONSTRAINT types_de_bien_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: biens immobiliers
#------------------------------------------------------------

CREATE TABLE biens_immobiliers(
        id               Int  Auto_increment  NOT NULL ,
        nom              Varchar (50) NOT NULL ,
        type             Varchar (50) NOT NULL ,
        code_postal      Varchar (50) NOT NULL ,
        prix             Float NOT NULL ,
        id_types_de_bien Int NOT NULL
	,CONSTRAINT biens_immobiliers_PK PRIMARY KEY (id)

	,CONSTRAINT biens_immobiliers_types_de_bien_FK FOREIGN KEY (id_types_de_bien) REFERENCES types_de_bien(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: creneau horaire
#------------------------------------------------------------

CREATE TABLE creneau_horaire(
        id              Int  Auto_increment  NOT NULL ,
        tranche_horaire Time NOT NULL
	,CONSTRAINT creneau_horaire_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: rendez-vous
#------------------------------------------------------------

CREATE TABLE rendez_vous(
        id                   Int  Auto_increment  NOT NULL ,
        date                 Varchar (50) NOT NULL ,
        id_biens_immobiliers Int NOT NULL ,
        id_clients           Int NOT NULL ,
        id_creneau_horaire   Int NOT NULL
	,CONSTRAINT rendez_vous_PK PRIMARY KEY (id)

	,CONSTRAINT rendez_vous_biens_immobiliers_FK FOREIGN KEY (id_biens_immobiliers) REFERENCES biens_immobiliers(id)
	,CONSTRAINT rendez_vous_clients0_FK FOREIGN KEY (id_clients) REFERENCES clients(id)
	,CONSTRAINT rendez_vous_creneau_horaire1_FK FOREIGN KEY (id_creneau_horaire) REFERENCES creneau_horaire(id)
)ENGINE=InnoDB;

