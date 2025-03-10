-- 1. Lister les composants directs d’une pièce composée spécifique avec leur quantité.

-- 2. Lister les pièces composées triées par le nombre de composants qu’elles contiennent.


select idPiece, nom, description,prixUnitaire, estComposee, count(idComposant) as nbcomposant from PIECE join COMPOSITION on idPiece = idComposee group by idPiece;



-- 3. Compter le nombre de pièces composées existantes.
select count(distinct idPiece) as nombre_pieces_composees
from PIECE
where estComposee = 1;

-- 4. Calculer le coût total de chaque pièce composée.
SELECT p.idPiece, p.nom, p.description, p.prixUnitaire, SUM(c.quantite * pc.prixUnitaire) AS coutTotal
FROM PIECE p 
JOIN COMPOSITION c ON p.idPiece = c.idComposee
JOIN PIECE pc ON c.idComposant = pc.idPiece
GROUP BY p.idPiece, p.nom, p.description, p.prixUnitaire; 

-- 5. Trouver toutes les pièces (directes et indirectes) entrant dans la fabrication d’une pièce composée.
WITH RECURSIVE PieceComposants AS (
    SELECT idComposee, idComposant
    FROM COMPOSITION
    UNION ALL
    SELECT pc.idComposee, c.idComposant
    FROM COMPOSITION c
    INNER JOIN PieceComposants pc ON c.idComposee = pc.idComposant
)
SELECT idComposee, idComposant
FROM PieceComposants 
ORDER BY idComposee;

