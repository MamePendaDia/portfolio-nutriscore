SELECT 
    p.pnns_groupe1 AS categorie,
    COUNT(*) AS nb_produits,
    ROUND(AVG(v.sucres), 1) AS moyenne_sucre,
    ROUND(AVG(v.sel), 2) AS moyenne_sel,
    CASE 
        WHEN AVG(v.sucres) >= 15 THEN 'Élevé'
        WHEN AVG(v.sucres) >= 5 THEN 'Moyen'
        ELSE 'Faible'
    END AS niveau_sucre
FROM nutrition.produits p
JOIN nutrition.valeurs_nutritionnelles v ON p.code = v.code
WHERE p.pnns_groupe1 IS NOT NULL AND p.pnns_groupe1 <> 'unknown'
GROUP BY p.pnns_groupe1
ORDER BY moyenne_sucre DESC;