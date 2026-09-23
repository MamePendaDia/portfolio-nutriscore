CREATE DATABASE IF NOT EXISTS nutrition;
USE nutrition;

CREATE TABLE produits (
    code VARCHAR(30) PRIMARY KEY,
    product_name VARCHAR(255),
    quantity VARCHAR(50),
    brands VARCHAR(255),
    categories TEXT,
    pnns_groupe1 VARCHAR(100),
    pnns_groupe2 VARCHAR(100),
    nutriscore_grade CHAR(1),
    nutriscore_score INT,
    nova_group INT,
    environmental_score_grade CHAR(1)
);

CREATE TABLE valeurs_nutritionnelles (
    code VARCHAR(30) PRIMARY KEY,
    energie_kcal FLOAT,
    matieres_grasses FLOAT,
    acides_gras_satures FLOAT,
    sucres FLOAT,
    fibres FLOAT,
    proteines FLOAT,
    sel FLOAT,
    FOREIGN KEY (code) REFERENCES produits(code)
);

CREATE TABLE additifs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(30),
    additif VARCHAR(150),
    FOREIGN KEY (code) REFERENCES produits(code)
);