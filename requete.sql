-- 1. Lister les composants directs d’une pièce composée spécifique avec leur quantité.

select p.*, quantite
from COMPOSITION, PIECE p
where idComposee=5 and idPiece=idComposant and idComposant in (
    select idComposant
    from COMPOSITION
    where idComposee=5
);


-- 2. Lister les pièces composées triées par le nombre de composants qu’elles contiennent.

-- 3. Compter le nombre de pièces composées existantes.
select *
from PIECE 
where estComposee=true;

-- 4. Calculer le coût total de chaque pièce composée.

-- 5. Trouver toutes les pièces (directes et indirectes) entrant dans la fabrication d’une pièce composée.

