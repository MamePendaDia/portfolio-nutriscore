# 🥗 Analyse Nutritionnelle – Open Food Facts

Projet personnel d'analyse de données, combinant SQL, Python, Power Query et Power BI, à partir du jeu de données [Open Food Facts](https://world.openfoodfacts.org/).

## 🎯 Objectif
Identifier les catégories d'aliments présentant les niveaux de sucre et de sel les plus élevés, pour mieux comprendre les risques nutritionnels par type de produit.

## 🔧 Étapes du projet
1. **MySQL** : import et structuration de 543 760 produits et 515 547 additifs dans une base relationnelle (tables `produits`, `valeurs_nutritionnelles`, `additifs`).
2. **Python** : filtrage et nettoyage d'un échantillon de données pour réduire la taille du fichier source.
3. **Power Query / Excel** : retraitement du fichier nettoyé, création de tableaux croisés dynamiques et de formules conditionnelles (niveau de sucre faible/élevé).
4. **Power BI** : connexion directe à la base MySQL via une requête SQL personnalisée (agrégation par catégorie), puis construction d'un tableau de bord avec :
   - KPI (nombre de catégories, sucre moyen pondéré, catégorie la plus sucrée)
   - Graphiques en barres triés, avec mise en forme conditionnelle (rouge/orange/vert selon le niveau de sucre/sel)
   - Segment interactif pour filtrer par niveau de risque

## 📊 Résultat
La catégorie "Sugary snacks" présente une moyenne de sucre de 39,9g/100g, très au-dessus de la moyenne générale (13,24g/100g pondérée sur 11 catégories).

## 🛠️ Outils utilisés
SQL (MySQL), Python, Power Query, Excel (VBA, TCD), Power BI

## 📁 Contenu du dépôt
- Requête SQL utilisée pour l'agrégation par catégorie
- Script Python de nettoyage des données
- Capture d'écran du tableau de bord Power BI
