#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Clients
#------------------------------------------------------------

CREATE TABLE Clients(
        id                Int  Auto_increment  NOT NULL ,
        nom               Varchar (50) NOT NULL ,
        prenom            Varchar (50) NOT NULL ,
        date_de_naissance Varchar (50) NOT NULL ,
        mail              Varchar (50) NOT NULL
	,CONSTRAINT Clients_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: genre
#------------------------------------------------------------

CREATE TABLE genre(
        id              Int  Auto_increment  NOT NULL ,
        horreur         Varchar (50) NOT NULL ,
        science_Fiction Varchar (50) NOT NULL ,
        Roman           Varchar (50) NOT NULL ,
        Jeunesse        Varchar (50) NOT NULL
	,CONSTRAINT genre_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Livres
#------------------------------------------------------------

CREATE TABLE Livres(
        id            Int  Auto_increment  NOT NULL ,
        titre         Varchar (50) NOT NULL ,
        genre         Varchar (50) NOT NULL ,
        nom_auteur    Varchar (50) NOT NULL ,
        prenom_auteur Varchar (50) NOT NULL ,
        id_genre      Int NOT NULL
	,CONSTRAINT Livres_PK PRIMARY KEY (id)

	,CONSTRAINT Livres_genre_FK FOREIGN KEY (id_genre) REFERENCES genre(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Registre
#------------------------------------------------------------

CREATE TABLE Registre(
        id           Int  Auto_increment  NOT NULL ,
        date_emprunt Varchar (50) NOT NULL ,
        date_retour  Varchar (50) NOT NULL ,
        id_Livres    Int NOT NULL ,
        id_Clients   Int NOT NULL
	,CONSTRAINT Registre_PK PRIMARY KEY (id)

	,CONSTRAINT Registre_Livres_FK FOREIGN KEY (id_Livres) REFERENCES Livres(id)
	,CONSTRAINT Registre_Clients0_FK FOREIGN KEY (id_Clients) REFERENCES Clients(id)
)ENGINE=InnoDB;

