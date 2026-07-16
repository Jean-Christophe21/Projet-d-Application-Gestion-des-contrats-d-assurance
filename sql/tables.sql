CREATE TABLE assure (
id INT PRIMARY KEY,
nom VARCHAR(50) NOT NULL,
prenom VARCHAR(50) NOT NULL,
dateNaiss DATE NOT NULL,
contact VARCHAR(50) NOT NULL UNIQUE,
adresse VARCHAR(50) NOT NULL,

--les contraintes sur les éléments de la table assure
CONSTRAINT CHK_contact CHECK(contact GLOB '[0-9]*' AND LENGTH(contact) > 0)
);


CREATE TABLE contrats (

contratNum VARCHAR(50) PRIMARY KEY,
assureId INT NOT NULL,
produit VARCHAR(20) NOT NULL,
prime DECIMAL(10, 2) NOT NULL, 
datedEffet DATE,
statut  BOOLEAN NOT NULL,

-- clé étrangère sur la table assure
FOREIGN KEY (assureId) REFERENCES assure(id),

-- les contraintes sur la table contrats
CONSTRAINT CHK_prime CHECK(prime > 0),
CONSTRAINT CHK_produit CHECK(produit IN ('BASE', 'MUTUELLE', 'PRIVEE_PARTICIPATION', 'PRIVEE_SANS_PARTICIPATION', 'REMBOURSEMENT', 'MIXTE'))
);