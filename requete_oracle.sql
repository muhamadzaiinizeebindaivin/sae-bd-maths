-- 1. Lister les composants directs d’une pièce composée spécifique avec leur quantité.
select p.*, quantite
from COMPOSITION, PIECE p
where idComposee=5 and idPiece=idComposant and idComposant in (
    select idComposant
    from COMPOSITION
    where idComposee=5
);


-- 2. Lister les pièces composées triées par le nombre de composants qu’elles contiennent.
select p.idPiece, p.nom, p.description, p.prixUnitaire, p.estComposee, count(c.idComposant) as nbcomposant 
from PIECE p join COMPOSITION c on p.idPiece = c.idComposee 
group by p.idPiece;



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

-- Incorrect
SELECT DISTINCT idComposee, idComposant
FROM COMPOSITION
START WITH idComposee IN (SELECT DISTINCT idComposee FROM COMPOSITION)
CONNECT BY PRIOR idComposant = idComposee
ORDER BY idComposee, idComposant;

