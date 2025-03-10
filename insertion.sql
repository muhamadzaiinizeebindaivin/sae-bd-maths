-- Insertion des pièces simples
INSERT INTO PIECE (nom, description, prixUnitaire, estComposee) VALUES 
    ('Vis en titane', 'Description 1', 2.50, false),
    ('Rivets en aluminium', 'Description 2', 0.75, false),
    ('Raidisseurs en composite', 'Description 3', 15.00, false),
    ('Plaque en alliage d''aluminium', 'Description 4', 50.00, false);

-- Insertion de la pièce composée "Panneau de fuselage"
INSERT INTO PIECE (nom, description, prixUnitaire, estComposee) VALUES 
    ('Panneau de fuselage', 'Description 5', 200.00, true);

-- Insertion des composants pour le "Panneau de fuselage"
INSERT INTO COMPOSITION (idComposee, idComposant, quantite) VALUES 
    (5, 1, 8),  -- Panneau de fuselage (idPiece 5) utilise 8 Vis en titane (idPiece 1)
    (5, 2, 20), -- Panneau de fuselage (idPiece 5) utilise 20 Rivets en aluminium (idPiece 2)
    (5, 3, 4),  -- Panneau de fuselage (idPiece 5) utilise 4 Raidisseurs en composite (idPiece 3)
    (5, 4, 1);  -- Panneau de fuselage (idPiece 5) utilise 1 Plaque en alliage d''aluminium (idPiece 4)

-- Insertion de la pièce "Segment de fuselage"
INSERT INTO PIECE (nom, description, prixUnitaire, estComposee) VALUES 
    ('Segment de fuselage', 'Description 6', 1000.00, true);

-- Insertion de la relation entre "Segment de fuselage" et "Panneau de fuselage"
INSERT INTO COMPOSITION (idComposee, idComposant, quantite) VALUES 
    (6, 5, 1);  -- Segment de fuselage (idPiece 6) utilise 1 Panneau de fuselage (idPiece 5)
