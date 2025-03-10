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