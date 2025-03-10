-- Insertion des pièces 
INSERT INTO PIECE (nom, description, prixUnitaire, estComposee) VALUES 
    ('Vis en titane', 'Vis résistante utilisée dans la fabrication d''éléments aéronautiques', 2.50, 0);

INSERT INTO PIECE (nom, description, prixUnitaire, estComposee) VALUES 
    ('Rivets en aluminium', 'Rivets légers pour l''assemblage de pièces', 0.75, 0);

INSERT INTO PIECE (nom, description, prixUnitaire, estComposee) VALUES 
    ('Raidisseurs en composite', 'Élément structurel léger utilisé dans les structures aéronautiques', 15.00, 0);

INSERT INTO PIECE (nom, description, prixUnitaire, estComposee) VALUES 
    ('Plaque en alliage d''aluminium', 'Plaque robuste en alliage d''aluminium pour assemblage', 50.00, 0);

INSERT INTO PIECE (nom, description, prixUnitaire, estComposee) VALUES 
    ('Panneau de fuselage', 'Assemblage de plusieurs éléments pour constituer une partie du fuselage d''un avion', 200.00, 1);

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
INSERT INTO PIECE (nom, description, prixUnitaire, estComposee) VALUES 
    ('Segment de fuselage', 'Assemblage plus complexe dans la structure de l''avion', 1000.00, 1);

-- Insertion de la relation entre "Segment de fuselage" et "Panneau de fuselage"
INSERT INTO COMPOSITION (idComposee, idComposant, quantite) VALUES 
    (6, 5, 1);
