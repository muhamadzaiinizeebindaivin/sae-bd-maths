-- Insertion des pièces 
INSERT INTO PIECE (nomP, descp, prixUnitaire, estComposee) VALUES 
    ('Vis en titane', 'Vis résistante utilisée dans la fabrication d''éléments aéronautiques', 2.50, 0);

INSERT INTO PIECE (nomP, descp, prixUnitaire, estComposee) VALUES     ('Rivets en aluminium', 'Rivets légers pour l''assemblage de pièces', 0.75, 0);

INSERT INTO PIECE (nomP, descp, prixUnitaire, estComposee) VALUES     ('Raidisseurs en composite', 'Élément structurel léger utilisé dans les structures aéronautiques', 15.00, 0);

INSERT INTO PIECE (nomP, descp, prixUnitaire, estComposee) VALUES     ('Plaque en alliage d''aluminium', 'Plaque robuste en alliage d''aluminium pour assemblage', 50.00, 0);

-- INSERT INTO PIECE (nomP, descp, prixUnitaire, estComposee) VALUES     ('Panneau de fuselage', 'Assemblage de plusieurs éléments pour constituer une partie du fuselage d''un avion', 200.00, 1);
INSERT INTO PIECE (nomP, descP, prixUnitaire, estComposee, DateDebut, DateFin, Equipe, IndicesQualite)
VALUES (
    'Panneau de fuselage', 
    'Description 5',
    200.00, 
    1,
    TO_TIMESTAMP('2025-06-11 13:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-06-13 19:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    EquipeTabT(
        EquipeT('Goscinny', 'Mécanicien'),
        EquipeT('Uderzo', 'Inspecteur')
    ),
    QualiteList(
        QualiteT('Carbone', 3, 4),
        QualiteT('Sécurité', 4, 5),
        QualiteT('Prix', 4, 3)
    )
);
-- Insertion des composants pour le "Panneau de fuselage"
INSERT INTO COMPOSITION (idComposee, idComposant, quantite) VALUES 
    (5, 1, 8);

INSERT INTO COMPOSITION (idComposee, idComposant, quantite) VALUES 
    (5, 2, 20);

INSERT INTO COMPOSITION (idComposee, idComposant, quantite) VALUES 
    (5, 3, 4);

INSERT INTO COMPOSITION (idComposee, idComposant, quantite) VALUES 
    (5, 4, 1);

-- Insertion de la pièce "Segment de fuselage"
INSERT INTO PIECE (nomP, descp, prixUnitaire, estComposee) VALUES   
    ('Segment de fuselage', 'Assemblage plus complexe dans la structure de l''avion', 1000.00, 1);

-- Insertion de la relation entre "Segment de fuselage" et "Panneau de fuselage"
INSERT INTO COMPOSITION (idComposee, idComposant, quantite) VALUES 
    (6, 5, 1);
