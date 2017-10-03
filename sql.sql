#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: User
#------------------------------------------------------------

CREATE TABLE User(
        id    int (11) Auto_increment  NOT NULL ,
        Name  Varchar (25) ,
        email Varchar (25) ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Organisation
#------------------------------------------------------------

CREATE TABLE Organisation(
        ID          int (11) Auto_increment  NOT NULL ,
        Name        Varchar (25) ,
        website_url Varchar (25) ,
        PRIMARY KEY (ID )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Tweet
#------------------------------------------------------------

CREATE TABLE Tweet(
        ID      int (11) Auto_increment  NOT NULL ,
        Content Varchar (25) ,
        PRIMARY KEY (ID )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relation0
#------------------------------------------------------------

CREATE TABLE relation0(
        id Int NOT NULL ,
        ID Int NOT NULL ,
        PRIMARY KEY (id ,ID )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relation1
#------------------------------------------------------------

CREATE TABLE relation1(
        id Int NOT NULL ,
        ID Int NOT NULL ,
        PRIMARY KEY (id ,ID )
)ENGINE=InnoDB;

ALTER TABLE relation0 ADD CONSTRAINT FK_relation0_id FOREIGN KEY (id) REFERENCES User(id);
ALTER TABLE relation0 ADD CONSTRAINT FK_relation0_ID FOREIGN KEY (ID) REFERENCES Tweet(ID);
ALTER TABLE relation1 ADD CONSTRAINT FK_relation1_id FOREIGN KEY (id) REFERENCES User(id);
ALTER TABLE relation1 ADD CONSTRAINT FK_relation1_ID FOREIGN KEY (ID) REFERENCES Organisation(ID);
