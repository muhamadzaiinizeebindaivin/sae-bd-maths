drop table if exists COMPOSITION;
drop table if exists PIECE;

create or replace table PIECE (
    idPiece int primary key auto_increment,
    nom varchar(255),
    description varchar(255),
    prixUnitaire decimal(6,2),
    estComposee boolean
);

create or replace table COMPOSITION (
    idComposee int,
    idComposant int,
    quantite int,
    primary key (idComposee, idComposant),
    foreign key (idComposee) references PIECE(idPiece),
    foreign key (idComposant) references PIECE(idPiece)
);

create or replace type EquipeT as object (
    nomEquipe varchar(255), 
    fonctionEquipe varchar(255),
    member function get_nameSize RETURN number
);
/
create type EquipeTabT as table of EquipeT;
/

create or replace type IndicesQualiteT as object (
    nom varchar(255),
    valeur int,
    poids int
);
/
create type qualiteList as VARRAY(10) of IndicesQualiteT;
/