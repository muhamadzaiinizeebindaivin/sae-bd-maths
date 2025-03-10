-- 1. Lister les composants directs d’une pièce composée spécifique avec leur quantité.

-- 2. Lister les pièces composées triées par le nombre de composants qu’elles contiennent.


select idPiece, nom, description,prixUnitaire, estComposee, count(idComposant) as nbcomposant from PIECE join COMPOSITION on idPiece = idComposee group by idPiece;



-- 3. Compter le nombre de pièces composées existantes.
select count(distinct idPiece) as nombre_pieces_composees
from PIECE
where estComposee = 1;

-- 4. Calculer le coût total de chaque pièce composée.

-- 5. Trouver toutes les pièces (directes et indirectes) entrant dans la fabrication d’une pièce composée.