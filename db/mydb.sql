/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : mydb

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-01-12 11:26:58
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `commande`
-- ----------------------------
DROP TABLE IF EXISTS `commande`;
CREATE TABLE `commande` (
  `idCommande` int(11) NOT NULL AUTO_INCREMENT,
  `nom_site` varchar(45) NOT NULL,
  `date_commande` datetime NOT NULL,
  `prix_livraison` double NOT NULL,
  `prix_total` double NOT NULL,
  `statut` varchar(45) NOT NULL,
  `nom_acheteur` varchar(45) NOT NULL,
  `add_acheteur` varchar(1000) NOT NULL,
  `Utilisateur_idUtilisateur` int(11) NOT NULL,
  PRIMARY KEY (`idCommande`,`Utilisateur_idUtilisateur`),
  KEY `fk_Commande_Utilisateur1_idx` (`Utilisateur_idUtilisateur`),
  CONSTRAINT `fk_Commande_Utilisateur1` FOREIGN KEY (`Utilisateur_idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commande
-- ----------------------------
INSERT INTO `commande` VALUES ('4', 'amazon', '2017-12-20 13:05:56', '8', '50', 'En Transit', 'Pierre', '10 CITE DES MONTBOUCONS', '2');
INSERT INTO `commande` VALUES ('5', 'amazon', '2017-12-22 20:11:52', '8', '104', 'En Transit', 'Sophie', 'UFC', '2');

-- ----------------------------
-- Table structure for `detailcommande`
-- ----------------------------
DROP TABLE IF EXISTS `detailcommande`;
CREATE TABLE `detailcommande` (
  `quantite` int(11) NOT NULL,
  `Commande_idCommande` int(11) NOT NULL,
  `Commande_Utilisateur_idUtilisateur` int(11) NOT NULL,
  `Produits_idProduits` int(11) NOT NULL,
  KEY `fk_detailCommande_Commande1_idx` (`Commande_idCommande`,`Commande_Utilisateur_idUtilisateur`),
  KEY `fk_detailCommande_Produits1_idx` (`Produits_idProduits`),
  CONSTRAINT `detailcommande_ibfk_1` FOREIGN KEY (`Produits_idProduits`) REFERENCES `product` (`idProduct`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detailCommande_Commande1` FOREIGN KEY (`Commande_idCommande`, `Commande_Utilisateur_idUtilisateur`) REFERENCES `commande` (`idCommande`, `Utilisateur_idUtilisateur`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detailcommande
-- ----------------------------
INSERT INTO `detailcommande` VALUES ('2', '4', '2', '2');
INSERT INTO `detailcommande` VALUES ('2', '4', '2', '12');
INSERT INTO `detailcommande` VALUES ('1', '4', '2', '15');
INSERT INTO `detailcommande` VALUES ('2', '5', '2', '10');

-- ----------------------------
-- Table structure for `entree`
-- ----------------------------
DROP TABLE IF EXISTS `entree`;
CREATE TABLE `entree` (
  `idEntree` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `prixUnite` double NOT NULL,
  `date` date NOT NULL,
  `Produits_idProduits` int(11) NOT NULL,
  PRIMARY KEY (`idEntree`),
  KEY `fk_Entree_Produits1_idx` (`Produits_idProduits`),
  CONSTRAINT `fk_Entree_Produits1` FOREIGN KEY (`Produits_idProduits`) REFERENCES `product` (`idProduct`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of entree
-- ----------------------------

-- ----------------------------
-- Table structure for `historiquecommande`
-- ----------------------------
DROP TABLE IF EXISTS `historiquecommande`;
CREATE TABLE `historiquecommande` (
  `idHistorique` int(11) NOT NULL AUTO_INCREMENT,
  `idUtilisateur` int(11) NOT NULL,
  `nomFichier` varchar(45) NOT NULL,
  `nomWeb` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`idHistorique`),
  KEY `idUtilisateur` (`idUtilisateur`),
  CONSTRAINT `idUtilisateur` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of historiquecommande
-- ----------------------------
INSERT INTO `historiquecommande` VALUES ('1', '2', 'commandes.xml', 'amazon', '2018-01-12 11:20:10');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `idProduct` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `marque` varchar(45) NOT NULL,
  `categorie` varchar(45) NOT NULL,
  `poid` double NOT NULL,
  `prix` double NOT NULL,
  `couleur` varchar(45) DEFAULT NULL,
  `taille` varchar(45) DEFAULT NULL,
  `description` varchar(1000) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `Utilisateur_idUtilisateur` int(11) NOT NULL,
  PRIMARY KEY (`idProduct`),
  KEY `fk_Produits_Utilisateur_idx` (`Utilisateur_idUtilisateur`),
  CONSTRAINT `fk_Produits_Utilisateur` FOREIGN KEY (`Utilisateur_idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', 'xx', 'doog', 'ddd', '12', '23', 'Couleur', '23', 'Entrez la descrption de produit', 'xxddd0.jpg', '1');
INSERT INTO `product` VALUES ('2', 'xx', 'doog', 'ddd', '12', '23', null, null, 'Entrez la descrption de produit', 'default.jpg', '1');
INSERT INTO `product` VALUES ('4', 'Title', 'Marque', 'Categorie', '22', '2', 'Couleur', '33', 'Entrez la descrption de produit', 'TitleCategorie0.jpg', '2');
INSERT INTO `product` VALUES ('5', 'Title', 'Marque', 'Categorie', '44', '33', 'Couleur', '44', 'Entrez la descrption de produit', 'TitleCategorie0.jpg', '2');
INSERT INTO `product` VALUES ('6', 'Title', 'Marque', 'Categorie', '22', '2', null, null, 'Entrez la descrption de produit', 'default.jpg', '2');
INSERT INTO `product` VALUES ('7', 'Title', 'Marque', 'Categorie', '22', '2', null, null, 'Entrez la descrption de produit', 'default.jpg', '2');
INSERT INTO `product` VALUES ('8', 'Title', 'Marque', 'Categorie', '22', '2', null, null, 'Entrez la descrption de produit', 'default.jpg', '2');
INSERT INTO `product` VALUES ('9', 'Title', 'Marque', 'Categorie', '22', '2', null, null, 'Entrez la descrption de produit', 'default.jpg', '2');
INSERT INTO `product` VALUES ('10', 'Title', 'Marque', 'Categorie', '22', '2', null, null, 'Entrez la descrption de produit', 'default.jpg', '2');
INSERT INTO `product` VALUES ('11', 'Title', 'Marque', 'Categorie', '22', '2', null, null, 'Entrez la descrption de produit', 'default.jpg', '2');
INSERT INTO `product` VALUES ('12', 'Title', 'Marque', 'Categorie', '22', '2', null, null, 'Entrez la descrption de produit', 'default.jpg', '2');
INSERT INTO `product` VALUES ('13', 'Title', 'Marque', 'Categorie', '22', '2', null, null, 'Entrez la descrption de produit', 'default.jpg', '2');
INSERT INTO `product` VALUES ('14', 'Title', 'Marque', 'Categorie', '22', '2', null, null, 'Entrez la descrption de produit', 'default.jpg', '2');
INSERT INTO `product` VALUES ('15', 'Title', 'Marque', 'Categorie', '22', '2', null, null, 'Entrez la descrption de produit', 'default.jpg', '2');

-- ----------------------------
-- Table structure for `stocage`
-- ----------------------------
DROP TABLE IF EXISTS `stocage`;
CREATE TABLE `stocage` (
  `quantite` int(11) NOT NULL,
  `Produits_idProduits` int(11) NOT NULL,
  KEY `fk_Stocage_Produits1_idx` (`Produits_idProduits`),
  CONSTRAINT `fk_Stocage_Produits1` FOREIGN KEY (`Produits_idProduits`) REFERENCES `product` (`idProduct`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stocage
-- ----------------------------

-- ----------------------------
-- Table structure for `utilisateur`
-- ----------------------------
DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE `utilisateur` (
  `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `rol` varchar(45) NOT NULL DEFAULT 'USER',
  PRIMARY KEY (`idUtilisateur`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of utilisateur
-- ----------------------------
INSERT INTO `utilisateur` VALUES ('1', 'HAN', 'qqqqq', 'han@gmail.com', '1234', 'USER');
INSERT INTO `utilisateur` VALUES ('2', 'lucas', 'xxxxx', 'lucas@gmail.com', '1234', 'user');
