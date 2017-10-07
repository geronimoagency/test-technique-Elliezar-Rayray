#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Article
#------------------------------------------------------------

CREATE TABLE Article(
        IdArticle       int (11) Auto_increment  NOT NULL ,
        Image           Blob ,
        Texte           Varchar (25) ,
        Likes           Int ,
        DatePublication Datetime ,
        PRIMARY KEY (IdArticle )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Commentaires
#------------------------------------------------------------

CREATE TABLE Commentaires(
        IdCommentaire   int (11) Auto_increment  NOT NULL ,
        Pseudo          Varchar (25) ,
        Commentaires    Varchar (25) ,
        DateCommentaire Datetime ,
        IdArticle       Int ,
        PRIMARY KEY (IdCommentaire )
)ENGINE=InnoDB;

ALTER TABLE Commentaires ADD CONSTRAINT FK_Commentaires_IdArticle FOREIGN KEY (IdArticle) REFERENCES Article(IdArticle);
