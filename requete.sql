-- 1. Lister les composants directs d’une pièce composée spécifique avec leur quantité.

-- 2. Lister les pièces composées triées par le nombre de composants qu’elles contiennent.

-- 3. Compter le nombre de pièces composées existantes.

-- 4. Calculer le coût total de chaque pièce composée.
SELECT p.idPiece, p.nom, p.description, p.prixUnitaire, SUM(c.quantite * pc.prixUnitaire) AS coutTotal
FROM PIECE p 
JOIN COMPOSITION c ON p.idPiece = c.idComposee
JOIN PIECE pc ON c.idComposant = pc.idPiece
GROUP BY p.idPiece, p.nom, p.description, p.prixUnitaire; 

-- 5. Trouver toutes les pièces (directes et indirectes) entrant dans la fabrication d’une pièce composée.