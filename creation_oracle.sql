DROP TABLE COMPOSITION CASCADE CONSTRAINTS PURGE;
DROP TABLE PIECE CASCADE CONSTRAINTS PURGE;
DROP TYPE EquipeTabT;
DROP TYPE EquipeT;
drop type QualiteList;
DROP TYPE QualiteT;

create or replace type EquipeT as object (
    nomEquipe varchar(255), 
    fonctionEquipe varchar(255)
);
/
create type EquipeTabT as table of EquipeT;
/

create or replace type QualiteT as object (
    nom varchar(255),
    valeur int,
    poids int
);
/
create type QualiteList as VARRAY(10) of QualiteT;
/

CREATE TABLE PIECE (
    idPiece NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    nomP VARCHAR2(255),
    descP VARCHAR2(255),
    prixUnitaire NUMBER(6,2),
    estComposee NUMBER(1) CHECK (estComposee IN (0,1)),
    DateDebut TIMESTAMP,
    DateFin TIMESTAMP,
    Equipe EquipeTabT, 
    IndicesQualite QualiteList
)
NESTED TABLE Equipe STORE AS Equipe_nt;

CREATE TABLE COMPOSITION (
    idComposee NUMBER,
    idComposant NUMBER,
    quantite NUMBER,
    PRIMARY KEY (idComposee, idComposant),
    FOREIGN KEY (idComposee) REFERENCES PIECE(idPiece) ON DELETE CASCADE,
    FOREIGN KEY (idComposant) REFERENCES PIECE(idPiece) ON DELETE CASCADE
);



